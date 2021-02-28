from selenium import webdriver
from bs4 import BeautifulSoup
from pyvirtualdisplay import Display
import time

display = Display(visible=0, size=(1280, 1024))
display.start()

try:
    driver = webdriver.Firefox()
    driver.maximize_window()
    driver.get('https://solotony.com/tools/ip')
    soup = BeautifulSoup(driver.page_source, features="html.parser")
    tag_title = soup.find('title')
    print(tag_title.text)
    driver.save_screenshot('scr.png')
except Exception as e:
    print(e)
    pass

if driver:
    driver.close()

display.stop()
