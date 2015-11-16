#created by Alan Kwok at 11/15/2015
#needs to be completed

@loanout
Feature: Loan Out Page Testing

  #Check
  Scenario: Loan Out Number
  	Given user is on the "Create New" page
    And selects the "Loan Out" radio button on the Create New page
    And clicks on the Create button
    And user enters "James" in the "Borrower" field
    And user selects "James Adams" from dropdown in "James Adams" row
    And user clicks on the Save button
    Then the error message bar should appear with "Please specify an Loan Out Number"
    When user clicks on the "Select number pattern" button
    And user selects "Loan Out" from dropdown in "Type" row
    Then "LO2015.1.38" should be in the "Loan Out Number" field
    #I don't know how to test the increment by one, might be wrong.
    When user selects "Loan Out" from dropdown in "Type" row
    Then "LO2015.1.39" should be in the "Loan In Number" field
    And close the browser

  Scenario:

  Scenario:

  Scenario:

  Scenario:

  Scenario:

  Scenario:

  Scenario:

  Scenario:

  Scenario:

  Scenario:

  Scenario:

  Scenario:

  Scenario:

  Scenario:

