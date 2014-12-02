Feature: Payment with store credit feature

  Scenario: As a valid user I can log into my app and make a purchase with store credit
    When I press "Select Location"
    Then it should wait
    Then I enter suburb as "Springvale South" and press suburb with postcode as "Springvale South, VIC 3172"
    Then I press "Travel"
    Then I press "Local"
    When I press the menu key
    Then I press on "Settings"
    Then I press on sign in link "Sign in"
    Then I enter my Email address as "androidfix3.2@gmail.com" and password as "manoobilli"
    Then I click on sign in button
    Then I should be able to click on deal
    Then I should be able to select the deal option or go to checkout page
    Then I should be able to choose the payment method
    Then I should be able to click on secure checkout button
    