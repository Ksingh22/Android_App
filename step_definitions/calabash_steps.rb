require 'calabash-android/calabash_steps'
When /^I should be able to select location/ do
  sleep 6
  touch(query("* id:'action_bar_title'"))
  sleep 2
 
end

Then /^it should wait/ do
  sleep 3
end
When /^I press the menu key/ do
  press_menu_button
  end

 Then /^I press on "([^\"]*)"$/ do|settings|
tap_when_element_exists("* {text CONTAINS[c] '#{settings}'}")
 end
 
  Then /^I press on sign in link "([^\"]*)"$/ do|sign_in|
    tap_when_element_exists("* {text CONTAINS[c]'#{sign_in}'}")
    sleep 3
  end


#touch(query("* id:'action_bar_title'"))       CHANGE LOCATION
#touch(query("* id:'add_location'"))           ADD LOCATION
#touch(query("* id:'scoopon_container'"))       First deal
#touch(query("* id:'side_deal_item_holder'"))       First deal
#touch(query("all button id:'buy_button'"))    BUY NOW button
# "sign_up_sendemails_row", email subscription on sign up
# choose location
Then /^I enter suburb as "([^\"]*)" and press suburb with postcode as "([^\"]*)"$/ do|sub_string, suburb|
  touch(query("* id:'add_location'"))
  keyboard_enter_text("#{sub_string}")
  tap_when_element_exists("* {text CONTAINS[c]'#{suburb}'}")
 end
# payment
Then /^I should be able to click on deal/ do
  sleep 2
 touch(query("* id:'scoopon_container'"))
 sleep 4
 @deal_title = query("all textview id:'deal_title' index:0", :text)
 puts @deal_title
 touch(query("all button id:'buy_button'"))
end

Then /^I should be able to select the deal option or go to checkout page/ do
  sleep 3
  element= "* id:'split_deal_cell_title'"
  if element_exists(element)
   touch(query("* id:'split_deal_cell_button'"))
   sleep 3
else
  sleep 2
puts "Single sku deal"
end
end



