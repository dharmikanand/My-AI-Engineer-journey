#Web Scraping
#webscraping is a term for using a program to download and process content from the web
#google runs many webscraping programs to index web pages for its search engine
# webbrowser Comes with Python and opens a browser to a specific page

# requests Downloads files and web pages from the internet

# Beautiful Soup (bs4) Parses HTML, the format that web pages are written in, to extract the information you want

# Selenium Launches and controls a web browser, such as by filling in forms and simulating mouse clicks

# Playwright Launches and controls a web browser; newer than Selenium and has some additional features

#URL-uniform resource locator
#HTTPS-hyper text transfer protocol secure,the protocol that your web brouser uses to access websites
#HTTPS is an encrypted version of  HTTP
#VPN-virtual private network

#opening websites using webbrowser module
import webbrowser
webbrowser.open('https://inventwithpython.com/')

#downloading files from the web with requests module
import requests
response = requests.get('https://automatetheboringstuff.com/files/rj.txt')