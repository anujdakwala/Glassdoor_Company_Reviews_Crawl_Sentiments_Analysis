import os
import re

current_dir = os.path.dirname(os.path.realpath(__file__))


# Request
url = 'https://www.glassdoor.co.in/Reviews/Tech-Mahindra-Reviews-E135932_P59.htm'

name = re.findall(r'https://.+/Reviews/([A-Za-z0-9].+).htm', url)
name = name[0] + '.db'


database = 'Tech_Mahindra.db'
host = ""
user = ""