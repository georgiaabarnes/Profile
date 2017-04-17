'''Python 2.7.13
Georgia Barnes
Purpose: As part of a Job Board application, this script will compare
the companies listed on portlandtech.org to the companies in the current 
database and add any new companies to the database.
Assumes: geopy, usaddress, BeautifulSoup and selenium is installed and firefox's webdriver 
is in the path'''

import requests
import re
from itertools import islice
from BeautifulSoup import BeautifulSoup
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.keys import Keys
from geopy.geocoders import Nominatim


# Scrape company names
url = 'http://portlandtech.org/'
response = requests.get(url)
html = response.content

soup = BeautifulSoup(html)
table = soup.find('div', attrs={'id': 'fulllist'})
list_of_urls= []
list_of_addresses = []
list_of_latLong = []

for row in table.findAll('li'):
	for link in row.findAll('a'):
		company = re.sub(r'\(.*?\)','',link.text)
		#replaces weird characters with characters used in google search url
		companyName =  company.replace('+','%2B').replace(' ', '+').replace('&', '%26')
		#makes list of google search url fragments
		companyUrl = ('https://www.google.com/webhp?sourceid=chrome-instant&rlz=1C1CHZL_enUS712US712&ion=1&espv=2&ie=UTF-8#q={}+portland+address&*'.format(companyName))
		list_of_urls.append(companyUrl)

for url in islice(list_of_urls,0,len(list_of_urls)):
	#open Firefox webdriver
	driver = webdriver.Firefox()
	#search company name + portland address
	driver.get(url)
	driver.implicitly_wait(2)
	try:
		answer = driver.find_element_by_xpath(".//div[@class='_XWk']")
		list_of_addresses.append(answer.text)
		driver.quit()
	except:
		list_of_addresses.append("Null")
		driver.quit()
		
for address in islice(list_of_addresses, 0, len(list_of_addresses)):
	if place != "Null":
		geolocator = Nominatim()
		location = geolocator.geocode(place)
		list_of_latLong.append((location.latitude, location.longitude))
	else:
		list_of_latLong.append("Null")

