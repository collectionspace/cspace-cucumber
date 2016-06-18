#Created by Forest Yang on 1/5/2015

@advancedsearch
Feature: Advanced Search - Valuation

  #Test1
  Scenario: Advanced Search Field
    # Given user is on the "Create New" page
    #   And selects the "Valuation Control" radio button on the Create New page
    #   And clicks on the Create button
    Given user is on a blank "Valuation Control" record
      And enters "multilove" in the "Valuation Control" "Valuation Control Reference Number" field
      And enters "06-06-1666" in the "Valuation Control" "Date" field
      And enters "06-06-1666" in the "Valuation Control" "Renewal Date" field
      And selects "Current Value" from the "Valuation Control" "Type" dropdown
      And enters "sarcastish" in the "Valuation Control" "Source" autocomplete field
      And enters "textbook" in the "Valuation Control" "Note" field
      And clicks the "Save" button
    # Then the record is successfully saved

      And clicks the "Advanced Search" button
      And selects "Valuation Control" from the "AdvancedSearch" "record type" dropdown
      And selects "Current Value" from the "Valuation Control" "Type" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should contain "multilove"
    # Then close the browser

  # Scenario: Search by ref number
    # Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Valuation Control" from the "AdvancedSearch" "record type" dropdown
      And enters "multilove" in the "Valuation Control" "Valuation Control Reference Number" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "multilove"
    # Then close the browser

  # Scenario: Search by Date
    # Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Valuation Control" from the "AdvancedSearch" "record type" dropdown
      And enters "1666-06-06" in the "Valuation Control" "Earliest Date" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "multilove"
    # Then close the browser

  # Scenario: Search by Renewal Date
    # Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Valuation Control" from the "AdvancedSearch" "record type" dropdown
      And enters "1666-06-06" in the "Valuation Control" "Earliest Renewal Date" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "multilove"
    # Then close the browser

  # Scenario: Search by Source
    # Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Valuation Control" from the "AdvancedSearch" "record type" dropdown
      And enters "sarcastish" in the "Valuation Control" "Source Search" autocomplete field
      And clicks the "Advanced Search search" button
    Then the search results should contain "multilove"
    # Then close the browser

  # Scenario: Search by note
    # Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Valuation Control" from the "AdvancedSearch" "record type" dropdown
      And enters "textbook" in the "AdvancedSearch" "Keyword Search" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "multilove"
    # Then close the browser

  # Scenario: Search by Modified Date
    # Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Valuation Control" from the "AdvancedSearch" "record type" dropdown
      And enters today's date in the "Valuation Control" "Earliest Modified Date" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "multilove"
    # Then close the browser

  # Scenario: Search by username
    # Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Valuation Control" from the "AdvancedSearch" "record type" dropdown
      And enters "admin@core.collectionspace.org" in the "Valuation Control" "Record last modified by" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "multilove"
    Then close the browser

  #Test2
  Scenario: Boolean-based field search
    # Given user is on the "Create New" page
    #   And selects the "Valuation Control" radio button on the Create New page
    #   And clicks on the Create button
    Given user is on a blank "Valuation Control" record
      And enters "Extreme Wealth" in the "Valuation Control" "Valuation Control Reference Number" field
      And enters "Jane Doe" in the "Valuation Control" "Source" autocomplete field
      And selects "Current Value" from the "Valuation Control" "Type" dropdown
      And enters "testtest" in the "Valuation Control" "Note" field
      And clicks the "Save" button
    # Then the record is successfully saved
    # Given user is on the "Create New" page
    #   And selects the "Valuation Control" radio button on the Create New page
    #   And clicks on the Create button
    And user is on a blank "Valuation Control" record
      And enters "Casual Cruelty" in the "Valuation Control" "Valuation Control Reference Number" field
      And enters "Jane Doe" in the "Valuation Control" "Source" autocomplete field
      And selects "Current Value" from the "Valuation Control" "Type" dropdown
      And enters "testtest" in the "Valuation Control" "Note" field
      And clicks the "Save" button
    # Then the record is successfully saved
    # Given user is on the "Create New" page
    #   And selects the "Valuation Control" radio button on the Create New page
    #   And clicks on the Create button
    And user is on a blank "Valuation Control" record
      And enters "Unknown Mortal" in the "Valuation Control" "Valuation Control Reference Number" field
      And enters "Jane Doe" in the "Valuation Control" "Source" autocomplete field
      And selects "Original Value" from the "Valuation Control" "Type" dropdown
      And enters "testtest" in the "Valuation Control" "Note" field
      And clicks the "Save" button
    # Then the record is successfully saved

      And clicks the "Advanced Search" button
      And selects "Valuation Control" from the "AdvancedSearch" "record type" dropdown
      And selects "any (OR)" from the "AdvancedSearch" "Field-based search" dropdown
      And enters "Jane Doe" in the "Valuation Control" "Source Search" autocomplete field
      And selects "Current Value" from the "Valuation Control" "Type" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should contain "Extreme Wealth"
    Then the search results should contain "Casual Cruelty"
    Then the search results should contain "Unknown Mortal"

      And clicks the "Advanced Search" button
      And selects "Valuation Control" from the "AdvancedSearch" "record type" dropdown
      And selects "all (AND)" from the "AdvancedSearch" "Field-based search" dropdown
      And enters "Jane Doe" in the "Valuation Control" "Source Search" autocomplete field
      And selects "Current Value" from the "Valuation Control" "Type" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should contain "Extreme Wealth"
    Then the search results should contain "Casual Cruelty"
    Then the search results should not contain "Unknown Mortal"
    Then close the browser

  #Test3
  Scenario: Boolean and Keyword Search
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Valuation Control" from the "AdvancedSearch" "record type" dropdown
      And selects "any (OR)" from the "AdvancedSearch" "Field-based search" dropdown
      And enters "testtest" in the "AdvancedSearch" "Keyword Search" field
      And enters "Jane Doe" in the "Valuation Control" "Source Search" autocomplete field
      And selects "Current Value" from the "Valuation Control" "Type" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should contain "Extreme Wealth"
    Then the search results should contain "Casual Cruelty"
    Then the search results should contain "Unknown Mortal"

      And clicks the "Advanced Search" button
      And selects "Valuation Control" from the "AdvancedSearch" "record type" dropdown
      And selects "all (AND)" from the "AdvancedSearch" "Field-based search" dropdown
      And enters "testtest" in the "AdvancedSearch" "Keyword Search" field
      And enters "Jane Doe" in the "Valuation Control" "Source Search" autocomplete field
      And selects "Current Value" from the "Valuation Control" "Type" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should contain "Extreme Wealth"
    Then the search results should contain "Casual Cruelty"
    Then the search results should not contain "Unknown Mortal"
    Then close the browser

    Scenario: Record deletion
      Given user is on the "My CollectionSpace" page
        And navigates to the record with identification number "multilove"
        And clicks on the "Delete" button
      Then delete confirmation dialogue should appear
        And clicks the confirmation delete button
      Then "Valuation Control" deletion should be confirmed in a dialog
        And clicks delete confirmation OK button

        And navigates to the record with identification number "Extreme Wealth"
        And clicks on the "Delete" button
      Then delete confirmation dialogue should appear
        And clicks the confirmation delete button
      Then "Valuation Control" deletion should be confirmed in a dialog
        And clicks delete confirmation OK button

        And navigates to the record with identification number "Casual Cruelty"
        And clicks on the "Delete" button
      Then delete confirmation dialogue should appear
        And clicks the confirmation delete button
      Then "Valuation Control" deletion should be confirmed in a dialog
        And clicks delete confirmation OK button

        And navigates to the record with identification number "Unknown Mortal"
        And clicks on the "Delete" button
      Then delete confirmation dialogue should appear
        And clicks the confirmation delete button
      Then "Valuation Control" deletion should be confirmed in a dialog
        And clicks delete confirmation OK button
      Then close the browser
