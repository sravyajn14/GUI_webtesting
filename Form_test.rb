require 'rubygems'
require 'selenium-webdriver'
require 'test/unit'
require "test/unit/assertions"
include Test::Unit::Assertions
gem 'test-unit'
class Form_test < Test::Unit::TestCase       
     #setting up selenium web driver    
    driver=Selenium::WebDriver.for :chrome
    driver.manage.window.maximize
    driver.navigate.to "https://docs.google.com/forms/d/e/1FAIpQLSeT6MPuoZm8Ks3TUw9j3lTKeUlwvcVseFeear6OF4ey24Q40g/viewform"
    
    #testing required fields
      name =driver.find_element(:id,'entry_1041466219')
      name.send_keys "Sravya "
      checkbox =driver.find_element(:class,'ss-choice-label')
      checkbox.click
      name.submit
     puts "Form is successfully submitted"
      assert_equal('Sravya',name)
        assert_equal('Yes',checkbox)
        
    #giving some time before closing    
   sleep 3
   #closing the browser
  driver.quit
  
end     