Feature: Login

  Scenario:Successful Login
    Given User is on HomePage
    When User clicks on Login icon
#    Then User verifies Login form is displayed
    And And User enters valid data
    And User clicks on Anmelden button
    And User clicks on User icon
    Then User verifies his name

  @wrongEmail
  Scenario Outline:Successful Login
    Given User is on HomePage
    When User clicks on Login icon
#    Then User verifies Login form is displayed
    And User enters invalid data
      | email   | password   |
      | <email> | <password> |
    And User clicks on Anmelden button
#    And User quites browser
    Examples:
      | email           | password     |
      | tyson@gmail.com | Helloworld1! |
      | tyson7@gm.com   | Helloworld1! |
      | tykon@web.com   | Helloworld1! |













#  Scenario Outline: Login with wrong email and valid password
#    Given User is on HomePage
#    When User clicks on Login icon
#    And User verifies Login form is displayed
#    And User enters wrong email and valid password
#      | email | password |
#      | email | password |
#    And User clicks on Login button
#    Then User verifies Error message is displayed
#    And User clicks on OK button
#    And User quites browser
#    Examples:
#      | email        | password     |
#      | tyson@gm.com | HelloWorld!2 |
#      | tyson@gm.com | HelloWorlq!6 |
#      | tyson@gm.com | HelloWorlv!9 |