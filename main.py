from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
# Initiate the browser
browser  = webdriver.Chrome(ChromeDriverManager().install())

browser.get('https://leboncoin.fr')




# headless chrome                                       => run not in my pc
# clicking on elements                                  => no resizing issue
# with enought timings (internet slowdown resilience)   => no manual checking
# feedback when it goes right (posted) = gmail