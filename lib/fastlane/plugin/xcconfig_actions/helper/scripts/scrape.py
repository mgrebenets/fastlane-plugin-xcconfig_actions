# https://stackoverflow.com/questions/8049520/web-scraping-javascript-page-with-python
from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions
from selenium.webdriver.common.by import By

options = webdriver.FirefoxOptions()
options.headless = True
driver = webdriver.Firefox(firefox_options=options)

id = "itcaec37c2a6"
url = "https://help.apple.com/xcode/mac/10.2/#/{}".format(id)
driver.get(url)

# https://stackoverflow.com/questions/26566799/wait-until-page-is-loaded-with-selenium-webdriver-for-python
WebDriverWait(driver, 10).until(
    expected_conditions.text_to_be_present_in_element(
        (By.ID, id),
        'Build settings reference'
    )
)
# TODO: Parse it!
print driver.page_source.encode('utf-8').strip()
