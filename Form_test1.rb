require 'rubygems'
require 'selenium-webdriver'
require 'test/unit'
require "test/unit/assertions"
include Test::Unit::Assertions
gem 'test-unit'
class Form_test < Test::Unit::TestCase       
         
    #setting up selenium webdriver
    driver=Selenium::WebDriver.for :chrome
    driver.manage.window.maximize
    driver.navigate.to "https://docs.google.com/forms/d/e/1FAIpQLSeT6MPuoZm8Ks3TUw9j3lTKeUlwvcVseFeear6OF4ey24Q40g/viewform"
    
    #test case for failure
      name =driver.find_element(:id,'entry_1041466219')
      name.send_keys " "
      checkbox =driver.find_element(:class,'ss-choice-label')
      checkbox.click
      stest =driver.find_element(:class,'required-message').text
      #printing the message to console
 
      puts "Form cannot be submitted"
    assert_equal('',stest,"error message")
 
      
   sleep 3
  driver.quit
end