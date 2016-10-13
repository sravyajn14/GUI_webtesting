
require 'rubygems'
require 'selenium-webdriver'
#setting up
driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://docs.google.com/forms/d/e/1FAIpQLSeT6MPuoZm8Ks3TUw9j3lTKeUlwvcVseFeear6OF4ey24Q40g/viewform"

# name
if driver.find_element(:id,'entry_1041466219').displayed?
  driver.find_element(:id,'entry_1041466219').send_keys 'Nrusimha Sravya Jillella'
  puts "Full Name is entered in the text box"
else
  put "text box cannot be displayed"
end
#giving some time in between operations
sleep 2
# enjoy development
if driver.find_element(:class,'ss-choice-label').displayed?
  driver.find_element(:class,'ss-choice-label').click
  puts " yes is selected in the check box"
else
  put " check box cannot be displayed"
end
sleep 2
#favourite testing famework
if driver.find_element(:id,'entry_262759813').displayed?
  option1= driver.find_elements(:tag_name=>"option" )
  option1.each do |e1|
    if(e1.text=="JUnit")
       e1.click
       puts"junit element is selected"
       break
    end
  end
else
  puts"check box not found"
end
sleep 2
#comments
if driver.find_element(:id,'entry_649813199').displayed?
  driver.find_element(:id,'entry_649813199').send_keys 'No comments'
  puts "comments are entered in the text box"
else
  put "comments box cannot be displayed"
end
#submit button
sleep 2
if driver.find_element(:id,'ss-submit').displayed?
  driver.find_element(:id,'ss-submit').click
  puts "  submit button is clicked"
else
  put " submit cannot be displayed"
end

sleep 2
#closing the browser
driver.quit