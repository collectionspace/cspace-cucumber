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
    Then "LO2015.1.39" should be in the "Loan Out Number" field
    And close the browser

  #Check
  Scenario: Borrower and Loans Out number displayed on new
    Given user is on the "Create New" page
    And selects the "Loan Out" radio button on the Create New page
    And clicks on the Create button
    And user enters "testloanout1234" in the "Loan Out Number" field
    And user enters "John Doe" in the "Borrower" field
    And user selects "John Doe" from dropdown in "John Doe" row
    Then the titlebar should contain "testloanout1234 - John Doe"
    #This part is harder to test
    When user clicks "+" button next to the "Borrower" field
    And user enters "Albert Smith" in the new "Borrower" field
    And user selects "Albert Smith" from dropdown in "Albert Smith" row
    And user selects the radio button next to "Albert Smith"
    And user clicks on the Save button
    Then the titlebar should contain "testloanout1234 - Albert Smith"
    And close the browser

  #Incomplete
  Scenario: All fields saved on new Loans Out record
    Given user is on the "Create New" page
    And selects the "Loan Out" radio button on the Create New page
    And clicks on the Create button
    And #all fields should be filled in
    And user clicks on the bottom Save button
    Then #A "New Record successfully created" message should appear along with the current time
    And #After the success message appear, All the fields should contain the same value as you entered/selected
    And #After the success message appear, The name authorities should be displayed under Integrated Vocabularies
    And #After the success message appear, The newlines should still be present in text areas
    And close the browser

  #Incomplete
  Scenario: All fields saved on edited Loans Out record
    Given user is on the "Find and Edit" page
    And selects "Loan Out" from the top nav search record type select field
    And clicks on the top nav search submit button
    And #selects one of the loan out records
    And #all fields should be filled in
    And user clicks on the bottom Save button
    Then #A "New Record successfully created" message should appear along with the current time
    And #After the success message appear, All the fields should contain the same value as you entered/selected
    And #After the success message appear, The name authorities should be displayed under Integrated Vocabularies
    And #After the success message appear, The newlines should still be present in text areas
    And close the browser

  Scenario: Integrated Vocabulary display and pivoting

  Scenario: Removing values from all fields

  Scenario: Deletion of Loan Out Record

  Scenario: Deletion of Loan Out Record with Relationships

  Scenario: Folding and Unfolding boxes

  #Warnings

  Scenario: Cancel Changes buttons

  Scenario: Warning on attempting to leave edited page on new loan out record

  Scenario: Warning on attempting to leave edited page on edited loan out record

  Scenario: Warning on attempting to add related object/procedures to unsaved Loans Out

  Scenario: All fields available via the keyboard

  Scenario: Vocabulary Fields usable via keyboard only

