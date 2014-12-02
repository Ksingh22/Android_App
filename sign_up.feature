Feature: Sign up feature

  Scenario: As a valid user I should be able to sign up
    When I press the menu key
    Then I press on "Settings"
    Then I press on sign in link "Sign in"
    Then I press on sign up button and enter email as "wattmula+", password as "password1" and confirm password as "password1"
    Then I press sign up button
    Then I agree with terms and conditions by pressing I agree button

   