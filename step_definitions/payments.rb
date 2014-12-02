# coupon codes
  Then /^I should be able to redeem coupon code "([^\"]*)"/ do|coupon|
    touch(query("* id:'enter_code_btn'"))
    keyboard_enter_text("#{coupon}")
    touch(query("* id:'continue_button'"))
    sleep 5
    coupon_code_error = " * text:'Invalid coupon code'"
    if element_exists(coupon_code_error)
      screenshot({:prefix => "" ,:name => "couponcodeerror"})
      touch(query(" * id:'button1'"))
          else
      puts "coupon has been redeemed"
    end
    end
# credit card payment
Then /^I should be able to choose the payment method/ do
  sleep 5
  credit_card_box = "* text:'Setup New Credit Card'"
  if element_exists(credit_card_box)
  touch(query("* id:'buy_cardname'"))
  keyboard_enter_text("testing")
  sleep 2
  touch(query("* id:'buy_cardnumber'"))
  keyboard_enter_text("4444333322221111")
  
  touch(query("* text:'Expiry Month'"))
  touch(query("* text:'05 - May'"))
  sleep 2
  touch(query("* text:'Expiry Year'"))
  touch(query("* text:'2016'"))
  sleep 2
  touch(query("* id:'new_cvv'"))
  keyboard_enter_text("420")
  sleep 2
  touch(query("* id:'buy_use_saved_card_toggle'")) # save credit card details checkbox
  sleep 3
  touch(query("* id:'continue_button'"))
  sleep 8
else
  payment_labels = "* id:'payment_method_label'"
 if element_exists(payment_labels)
  touch(query("* id:'payment_method_label'"))
  sleep 2
  touch(query("* text:'New Credit Card'"))
  sleep 2
  touch(query("* id:'buy_cardname'"))
  keyboard_enter_text("testing")
  sleep 2
  touch(query("* id:'buy_cardnumber'"))
  keyboard_enter_text("4444333322221111")
  
  touch(query("* text:'Expiry Month'"))
  touch(query("* text:'05 - May'"))
  sleep 2
  touch(query("* text:'Expiry Year'"))
  touch(query("* text:'2016'"))
  sleep 2
  touch(query("* id:'new_cvv'"))
  keyboard_enter_text("420")
  sleep 2
  touch(query("* id:'buy_use_saved_card_toggle'")) # save credit card details checkbox
  sleep 3
  touch(query("* id:'continue_button'"))
  sleep 8
  else
    puts "payment by store credit or coupon codes"
  end
end
end

# payment when credit card details are saved
Then /^I should be able to make a payment with saved credit card/ do
 saved_credit_card = "* id:'payment_method_subtitle'"
 if element_exists(saved_credit_card)
   touch(query("* id:'new_cvv'"))
  keyboard_enter_text("420")
   sleep 10
  else
    puts "payment by store credit or coupon codes"
  end
 end

# Paypal payment steps
Then /^I should be able to choose the payment method as paypal/ do
  payment_labels = "* id:'payment_method_label'"
 if element_exists(payment_labels)
  touch(query("* id:'payment_method_label'"))
  sleep 2
  touch(query("* text:'PayPal'"))
  sleep 2
   touch(query("* id:'buy_button'"))
  sleep 20
  touch(query("webView css:'#email'"))
  keyboard_enter_text('ghentline1@yahoo.com.au')
  touch(query("webView css:'#password'"))
  keyboard_enter_text('12345678')
  sleep 2
  perform_action('drag',60,60,60,40,1)
  touch(query("webView css:'#login'"))
  sleep 18
  continue = "webview css:'input[id=\"continue\"]'"
  if element_exists(continue)
   touch(query("webview css:'input[id=\"continue\"]'"))
#   textContent" => "Continue to Scoo pon's Test Store to confirm payment.",
#query("webview css:'div'").find{|x| x["textContent"] =~  /Continue to Scoo pon's Test Store to confirm payment/}
  sleep 10
    touch(query("* id:'button3'"))
    sleep 10
    touch(query("* id:'refresh'")) # refresh on scoopon list
    sleep 3
     touch(query("* id:'refresh'")) # refresh on scoopon list
     sleep 3
    touch(query("* all textview id:'my_scoopons_name' index:0"))
    sleep 3
    deal_title = query("* id:'title'", :text)
#    puts deal_title.should eq @deal_title
else
 puts "didn't find the continue button"
end
   screenshot({:prefix => "" ,:name => "PaymentwithPayPal"})
  else
    puts "payment by store credit or coupon codes"
  end
 end

# V.me Payment steps
Then /^I should be able to choose the payment method as Vme/ do
   payment_labels = "* id:'payment_method_label'"
 if element_exists(payment_labels)
  touch(query("* id:'payment_method_label'"))
  sleep 2
   payment_method = "* text:'V.me by Visa'"
  if element_exists(payment_method)
     touch(query("* text:'V.me by Visa'"))
  else
     puts "V.me payment method doesn't available for this deal"
end

  sleep 4
  
  else
    puts "payment by store credit or coupon codes"
  end
  end
  Then /^I should be able to click on secure checkout button/ do
    touch(query("* id:'buy_button'"))
    sleep 7
    touch(query("button id:'button3'"))
    sleep 8
    touch(query("* id:'refresh'")) # refresh on scoopon list
    sleep 3
    touch(query("* id:'refresh'")) # refresh on scoopon list
    sleep 3
    touch(query("* all textview id:'my_scoopons_name' index:0"))
    sleep 3
    deal_title = query("* id:'title'", :text)
#    puts deal_title.should eq @deal_title
  end
  
  
#"text" => "Your order has now been sent for processing.\n\nOn successful completion, an email will be sent to you confirming your order details and your order number.\n\nMost Sco
#opons are available for immediate use but some will have a starting date, so be sure to check the fine print.",

#view my scoopons: touch(query("* id:'button3')) 
#touch(query("webView css:'#login'")) paypal login button
#touch(query("webView css:'#email'"))  paypal email address
#touch(query("webView css:'#password'"))  paypal password
#touch(query("webView css:'#continue'"))  continue payment