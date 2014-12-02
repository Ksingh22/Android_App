Feature: Login feature

  Scenario: As a valid user I can log into my app
    When I should be able to select location
    Then I enter suburb as "Mulgrave" and press suburb with postcode as "Mulgrave, VIC 3170"
    Then it should wait
    Then I press "Travel"
    When I press the menu key
    Then I press on "Settings"
    Then I press on sign in link "Sign in"
    Then I enter my Email address as "kanwal.singh@scoopon.com.au" and password as "manoobilli"
    Then I click on sign in button
   