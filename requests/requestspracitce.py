#passing parameters in the URLs
import requests
payload={'key1':'value1','key2':'value2'}
r=requests.get('https://httpbin.org/get',params=payload)
print(r.url)

#response content
r = requests.get('https://api.github.com/events')
print(r.text)

#json respinse content
r=requests.get('https://api.github.com/events')
print(r.json())

#raw respose content
r = requests.get('https://api.github.com/events', stream=True)
print(r.raw)
print(r.raw.read(10))

#custom headers
url = 'https://api.github.com/some/endpoint'
headers = {'user-agent': 'my-app/0.0.1'}
r=requests.get(url,headers=headers)

#POST requests
import requests
payload={'key1':'value1','key2':'value2'}
r=requests.post('https://httpbin.org/post',data=payload)
print(r.text)

#if we want to send multiple values for the same key
payload_tuples = [('key1', 'value1'), ('key1', 'value2')]
r1 = requests.post('https://httpbin.org/post', data=payload_tuples)
payload_dict = {'key1': ['value1', 'value2']}
r2 = requests.post('https://httpbin.org/post', data=payload_dict)
print(r1.text)

import json
url='https://api.github.com/some/endpoint'
payload={'some':'data'}
r=requests.post(url,data=json.dumps(payload))

url='https://httpbin.org/post'
files={'file':open('report.xls','rb')}
r=requests.post(url,files=files)
print(r.text)

import requests
url = 'https://httpbin.org/post'
files = {'file': ('report.csv', 'some,data,to,send\nanother,row,to,send\n')}

r = requests.post(url, files=files)
print(r.text)
#'rb' mode: always open the fiels in binary mode(rb).this ensures requests can accurately calculate the fiel size in butes for the content-length header.opening in test mode can cause errors

import requests
r=requests.get('https://httpbin.org/get')
print(r.status_code)

bad_r=requests.get('https://httpbin.org/status/404')
print(bad_r.status_code)
print(bad_r.raise_for_status())

import requests
r = requests.get('https://api.github.com/events')
print(r.headers)
print(r.headers['Content-Type'])

#Cookies
url='http://example.com/some/cookies/setting/url'
r=requests.get(url)
print(r.cookies['example_cookie_name'])

import requests
url='https://httpbin.org/cookies'
cookies=dict(cookies_are='working')
r=requests.get(url,cookies=cookies)
print(r.text)

