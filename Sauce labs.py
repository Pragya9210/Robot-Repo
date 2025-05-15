#from operator import truediv

#from Scripts.select import select
#from cffi.cffi_opcode import CLASS_NAME
from selenium import webdriver

#from selenium.webdriver import support
from selenium.webdriver.support.ui import Select
#from selenium.webdriver.common.alert import Alert


from selenium.webdriver.common.by import By
import time

driver = webdriver.Chrome()
driver.get("https://www.saucedemo.com/")

time.sleep(2)
driver.find_element(By.NAME,"user-name").click()
driver.find_element(By.NAME,"user-name").send_keys("visual_user")
#time.sleep(5)

#driver.implicitly_wait(10)

driver.find_element(By.NAME,"password").click()
driver.find_element(By.NAME,"password").send_keys("secret_sauce")
driver.implicitly_wait(5)

driver.find_element(By.ID,"login-button").click()
driver.implicitly_wait(20)

dropdown_element = driver.find_element(By.CLASS_NAME,"product_sort_container")
dropdown = Select(dropdown_element)
dropdown.select_by_visible_text("Price (low to high)")
driver.implicitly_wait(10)


#scroll to the end of the page
driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")
time.sleep(2)

#add first product to the cart
driver.find_element(By.LINK_TEXT,"Sauce Labs Fleece Jacket").click()
driver.implicitly_wait(4)



#scroll to the top of the page
#driver.execute_script("window.scrollTo(0,0);")
#time.sleep(2)

#add second product to the cart
#driver.find_element(By.ID,"add-to-cart-sauce-labs-bike-light").click()
#driver.implicitly_wait(4)

#driver.find_element(By.CLASS_NAME,"shopping_cart_link")






breakpoint()