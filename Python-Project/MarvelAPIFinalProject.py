from hashlib import md5 #import hash library 
from requests import get #requests for http
from datetime import datetime #import system time
import sys #import system parameters and functions for input of public and private key to connect to marvel api
 
comp_time = datetime.now().strftime('%Y-%m-%d%H:%M:%S') #computer time

#input sys.argv as follows MarvelAPIFinalProject.py "public key" "private key"
pub_key = sys.argv[1] 
priv_key = sys.argv[2]
 
#hash function
def hashed_params(): 
    hash_md5 = md5()
    hash_md5.update(f'{comp_time}{priv_key}{pub_key}'.encode('utf-8'))
    hashed_parameter = hash_md5.hexdigest()
    return hashed_parameter
 
#user request Marvel Character Input
char_name = input("Choose a Marvel Character. (Ex. Hulk or Thanos): ").lower()
 
#structure of data to be received from the api
parameter = {'ts': comp_time, 'apikey': pub_key, 'hash': hashed_params(), 'nameStartsWith': char_name}
results = get('https://gateway.marvel.com:443/v1/public/characters', params=parameter)
data = results.json()

#formatting and displaying results using for loop
if data['data']['count'] == 1:
        print("Marvel Character found:")
        for results in data['data']['results']:
            print(f"Character Name: {results['name']}")
            if 'description' in results and results['description']:
                print(f"Description: {results['description']}")
            else:
                print('No Description')

elif data['data']['count'] > 1:
        print("Multiple Marvel Characters found:")
        for results in data['data']['results']:
            print(f"Character Name: {results['name']}")
            if 'description' in results and results['description']:
                print(f"Description: {results['description']}")
            else:
                print('No Description')
                
else:
        print('Marvel Character not found, Run Script Again')
