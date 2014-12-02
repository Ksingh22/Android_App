  # Sign in 
   Then /^I enter my Email address as "([^\"]*)" and password as "([^\"]*)"$/ do|email, password|
  touch(query("* id:'sign_in_email'"))
  keyboard_enter_text ("#{email}")
  touch(query("* id:'sign_in_password'"))
  keyboard_enter_text ("#{password}")
end

 Then /^I click on sign in button/ do
   touch(query("* id:'sign_in_button'"))
   sleep 2
   touch(query("* id:'action_bar_title'"))
#   touch(query("* text:'Sign out'"))
end
#sign up 
Then /^I press on sign up button and enter email as "([^\"]*)", password as "([^\"]*)" and confirm password as "([^\"]*)"$/ do|email, password, confirm_password|
  touch(query("* id:'sign_up_tab'"))
   touch(query("* id:'sign_up_firstname'"))
  keyboard_enter_text('Kanwal')
  touch(query("* id:'sign_up_lastname'"))
  keyboard_enter_text ('Singh')
  touch(query("* id:'sign_up_email'"))
  r = Random.new
  e = email+r.rand(1..50).to_s+'@gmail.com'
  keyboard_enter_text ("#{e}")
  touch(query("* id:'sign_up_password'"))
  keyboard_enter_text ("#{password}")
  touch(query("* id:'sign_up_password_confirm'"))
  keyboard_enter_text ("#{confirm_password}")
  touch(query("* id:'sign_up_suburb'"))
  keyboard_enter_text ('Mulgrave')
  perform_action('drag',60,60,60,40,1)
  touch(query("* id:'sign_up_postcode'"))
  keyboard_enter_text ('3170')
  perform_action('drag',60,60,60,40,1)
  touch(query("* id:'sign_up_gender'"))
  sleep 1
  perform_action('drag',60,60,60,40,1)
  touch(query("* id:'text1'"))
  touch(query("* id:'sign_up_sendemails_checkbox'"))
end
Then /^I press sign up button/ do
   touch(query("* id:'sign_up_button'"))
   sleep 5
   screenshot({:prefix => "" ,:name => "termsandconditions"})
end
Then /^I agree with terms and conditions by pressing I agree button/ do
   touch(query("* id:'button1'"))
   sleep 10
   screenshot({:prefix => "" ,:name => "account created"})
 end
