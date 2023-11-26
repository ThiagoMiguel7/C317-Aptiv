import unittest
import requests
import unittest
import HtmlTestRunner

class TestAPI(unittest.TestCase):
       
    def test_login(self):
        url = 'http://localhost:5000/login'
        data = {
            'registro': '1',
            'senha': 'rhaptiv001'
        }
        
        response = requests.post(url, json=data)
        result = response.json()        
        self.assertTrue(result['success'])
        self.assertEqual(response.status_code, 200)
        self.assertEqual(result['name'], 'RH APTIV')
    
    def test_login_failure(self):
        url = 'http://localhost:5000/login'
        data = {
            'registro': '2',
            'senha': 'messi'
        }
        response = requests.post(url, json=data)
        result = response.json()
        self.assertFalse(result['success'])
        self.assertEqual(response.status_code, 200)

    def test_list_colaboradores_success(self):
        url = 'http://localhost:5000/colaboradores'
        response = requests.get(url)
        result = response.json()
        self.assertTrue(result['success'])
        self.assertEqual(response.status_code, 200)

    def test_register_user(self):
        url = 'http://localhost:5000/register'
        data = {
            'nome': 'THIAGO DA ROCHA MIGUEL',
            'email': 'Thiago.Miguel@CR7.com',
            'telefone': '(77) 77777-7777',
            'id_unidade': '7',
            'senha': 'SIIIIIII'
        }
        
        response = requests.post(url, json=data)
        result = response.json()        
        self.assertTrue(result['success'])
        self.assertEqual(response.status_code, 200)

    def test_tipo_dado_incorreto(self):
        url = 'http://localhost:5000/register'
        data = {
            'nome': 'Rayan',
            'email': 'Rayan@cr7.com',
            'telefone': '(77) 777777777',
            'id_unidade': 'x', # tipo de dado incorreto
            'senha': 'cr7'
        }        
        response = requests.post(url, json=data)
        result = response.json()        
        self.assertFalse(result['success'])
        self.assertEqual(response.status_code, 500)

    def test_register_user_failure(self):
        url = 'http://localhost:5000/register'
        data = {
            # Dados incompletos ou inválidos
        }
        response = requests.post(url, json=data)
        result = response.json()
        self.assertFalse(result['success'])
        self.assertEqual(response.status_code, 400)

    def test_delete_user_success(self):
        url = 'http://localhost:5000/delete_user'
        data = {
            'registro': '3'
        }
        response = requests.delete(url, json=data)
        result = response.json()
        self.assertTrue(result['success'])
        self.assertEqual(response.status_code, 200)

if __name__ == '__main__':
    unittest.main(testRunner=HtmlTestRunner.HTMLTestRunner(output=r'C:\C317\C317-Aptiv\artifacts'))

    
