from flask import Flask, request, jsonify
from database import BancoDeDados
from flask_cors import CORS
import bcrypt
from mysql.connector.cursor import MySQLCursorDict

app = Flask(__name__)
CORS(app)
bancoDados = BancoDeDados("127.0.0.1", "root", "root", "BD_RH")

@app.route('/register', methods=['POST'])
def register_user():
    data = request.json
    
    
    required_fields = ['nome', 'email', 'telefone', 'id_unidade', 'senha']
    if not all(field in data for field in required_fields):
        return jsonify({"success": False, "message": "Dados faltando."}), 400
    
    nome = data['nome']
    email = data['email']
    telefone = data['telefone']
    id_unidade = data['id_unidade']
    senha = data['senha']
    
    hashed_senha = bcrypt.hashpw(senha.encode('utf-8'), bcrypt.gensalt())

    try:
        cnx = bancoDados.get_connection()
        cursor = cnx.cursor()
        add_user = ("INSERT INTO colaboradores "
                    "(nome, email, telefone, senha, id_unidade) "
                    "VALUES (%s, %s, %s, %s, %s)")
        user_data = (nome, email, telefone, hashed_senha, id_unidade)
        cursor.execute(add_user, user_data)
        cnx.commit()

        user_id = cursor.lastrowid

    except Exception as err:
        print(f"Erro: {err}")
        return jsonify({"success": False, "message": "Erro ao registrar usuário."}), 500
    finally:
        cursor.close()
        cnx.close()
    return jsonify({"success": True, "message": "Usuário registrado com sucesso!", "registro": user_id})

@app.route('/login', methods=['POST'])
def login():
    data = request.json
    registro = data['registro']
    senha = data['senha'].encode('utf-8')
    
    cursor = None
    cnx = None

    try:
        cnx = bancoDados.get_connection()
        cursor = cnx.cursor()
        query = "SELECT * FROM colaboradores WHERE registro = %s"
        cursor.execute(query, (registro,))
        user = cursor.fetchone()
    except Exception as err:
        print(f"Erro: {err}")
        return jsonify({"success": False, "message": "Erro interno do servidor."}), 500
    finally:
        if cursor:
            cursor.close()
        if cnx:
            cnx.close()

    if user:
        senha_hashed = user['senha'].encode('utf-8')
        if bcrypt.checkpw(senha, senha_hashed):  
            return jsonify({"success": True, "message": "Login bem-sucedido!", "name": user['nome']})
        else:
            return jsonify({"success": False, "message": "Senha incorreta!"})
    else:
        return jsonify({"success": False, "message": "Falha no login! Usuário não encontrado."})

@app.route('/delete_user', methods=['DELETE'])
def delete_user():
    data = request.json
    registro = data['registro']
    
    try:
        cnx = bancoDados.get_connection()
        cursor = cnx.cursor()
        delete_query = "DELETE FROM colaboradores WHERE registro = %s"
        cursor.execute(delete_query, (registro,))
        cnx.commit()
        return jsonify({"success": True, "message": "Usuário excluído com sucesso."})
    except Exception as err:
        print(f"Erro: {err}")
        return jsonify({"success": False, "message": "Erro ao excluir usuário."}), 500
    finally:
        if cursor:
            cursor.close()
        if cnx:
            cnx.close()

@app.route('/beneficios/<int:registro>', methods=['GET'])
def pesquisar_beneficio(registro):
    try:
        cnx = bancoDados.get_connection()
        cursor = cnx.cursor(dictionary=True)  
        query = "SELECT * FROM beneficios WHERE registro = %s"
        cursor.execute(query, (registro,))
        beneficios_list = cursor.fetchall()
        cursor.close()
        cnx.close()
        return jsonify({"success": True, "beneficios": beneficios_list}), 200
    except Exception as err:
        print(f"Erro: {err}")
        return jsonify({"success": False, "message": "Erro ao buscar benefícios."}), 500

@app.route('/holerite/<int:registro>', methods=['GET'])
def pesquisar_holerite(registro):
    try:
        cnx = bancoDados.get_connection()
        cursor = cnx.cursor(dictionary=True)
        query = "SELECT * FROM beneficios WHERE registro = %s"
        cursor.execute(query, (registro,))
        holerite_data = cursor.fetchall()
        cursor.close()
        cnx.close()
        return jsonify({"success": True, "holerite": holerite_data}), 200
    except Exception as err:
        print(f"Erro: {err}")
        return jsonify({"success": False, "message": "Erro ao buscar holerite."}), 500
    

@app.route('/colaboradores', methods=['GET'])
def listar_colaboradores():
    cnx = None
    cursor = None
    try:
        cnx = bancoDados.get_connection()
        cursor = cnx.cursor()  
        query = "SELECT nome, registro, email, telefone, id_unidade FROM colaboradores"
        cursor.execute(query)
        # Se você está esperando dicionários, você pode converter as tuplas para dicionários manualmente aqui
        columns = [col[0] for col in cursor.description]
        print(columns)
        dados = cursor.fetchall()
        return jsonify({"success": True, "colaboradores": dados})
    except Exception as e:
        print(f"Erro: {e}")
        return jsonify({"success": False, "message": "Erro ao buscar colaboradores.", "error": str(e)}), 500
    finally:
        if cursor is not None:
            cursor.close()
        if cnx is not None:
            cnx.close()

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
