import unittest
import requests

class ShareTest(unittest.TestCase):

    def test_share_login(self):
        r = requests.get('http://localhost/alfresco/service/index', auth=('admin', 'admin'))
        r.status_code
        self.assertEqual(r.status_code, 200)

    def test_share_login_fail(self):
        r = requests.get('http://localhost/alfresco/service/index', auth=('admin', 'notadmin'))
        r.status_code
        self.assertEqual(r.status_code, 401)

if __name__ == '__main__':
    unittest.main()


