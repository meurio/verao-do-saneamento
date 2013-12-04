Feature: support mobilization

  Scenario: when I fill a valid form
    Given I'm in "the homepage"
    And I fill in "the first name field" with "Nícolas"
    And I fill in "the last name field" with "Iensen"
    And I fill in "the email field" with "nicolas@gmail.com"
    And I fill in "the phone field" with "(21) 99999999"
    When I submit "the support form"
    Then I should be in "the new user page"
    And I should see "the tell a friend copy"
    And I should receive an email

  Scenario: when I fill a invalid form
    Given I'm in "the homepage"
    When I submit "the support form"
    Then I should see "an error in the first name field"
    And I should see "an error in the last name field"
    And I should see "an error in the email field"
    And I should see "an error in the phone field"
