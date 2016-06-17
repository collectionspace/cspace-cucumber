#Created by Forest Yang on 1/11/2016
# Working as of June 16, 2016 -Cesar 
@advancedsearch
Feature: Advanced Search - Person

  #Test1
  Scenario: Advanced Search Fields
    # Given user is on the "Create New" page
    #   And selects the "Person" radio button on the Create New page
    #   And clicks on the Create button
    Given user is on a blank "Local Persons" record
      And enters "Fleet Foxes" in the "Person" "Display Name" field
    And selects "Accepted" from the "Person" "Status" dropdown
      And enters "2011-01-01" in the "Person" "Birth Date" field
      And enters "2011" in the "Person" "Earliest/Single Birth Date Year" field
      And enters "01" in the "Person" "Earliest/Single Birth Date Month" field
      And enters "01" in the "Person" "Earliest/Single Birth Date Day" field

      And enters "2011-01-01" in the "Person" "Death Date" field
      And enters "2011" in the "Person" "Earliest/Single Death Date Year" field
      And enters "01" in the "Person" "Earliest/Single Death Date Month" field
      And enters "01" in the "Person" "Earliest/Single Death Date Day" field
      And enters "Fetty Wap" in the "Person" "Group" field
      And enters "Trapanese" in the "Person" "Nationality" field
      And selects "Male" from the "Person" "Gender" dropdown
      And enters "Emcee" in the "Person" "Occupation" field
      And enters "Banger" in the "Person" "School/Style" field
      And clicks the "Save" button
    Then the record is successfully saved
      And clicks the "Advanced Search" button
    And selects "Person" from the "AdvancedSearch" "record type" dropdown
      And enters "Fleet Foxes" in the "Person" "Display Name" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Fleet Foxes"
    # Then close the browser

  # Scenario: Search by Status
    # Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Person" from the "AdvancedSearch" "record type" dropdown
      And selects "Accepted" from the "Person" "Status" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should contain "Fleet Foxes"
    # Then close the browser

  # Scenario: Search by Birth Date
    # Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Person" from the "AdvancedSearch" "record type" dropdown
      And enters "2011-01-01" in the "Person" "Earliest Birth Date" field
      And enters "2011-01-01" in the "Person" "Latest Birth Date" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Fleet Foxes"
    # Then close the browser

  # Scenario: Search by Death Date
    # Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Person" from the "AdvancedSearch" "record type" dropdown
      And enters "2011-01-01" in the "Person" "Earliest Death Date" field
      And enters "2011-01-01" in the "Person" "Latest Death Date" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Fleet Foxes"
    # Then close the browser

  # Scenario: Search by Group
    # Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Person" from the "AdvancedSearch" "record type" dropdown
      And enters "Fetty Wap" in the "Person" "Group" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Fleet Foxes"
    # Then close the browser

  # Scenario: Search by Occupation
    # Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Person" from the "AdvancedSearch" "record type" dropdown
      And enters "Emcee" in the "Person" "Occupation" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Fleet Foxes"
    # Then close the browser

  # Scenario: Search by Nationality
    # Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Person" from the "AdvancedSearch" "record type" dropdown
      And enters "Trapanese" in the "Person" "Nationality" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Fleet Foxes"
    # Then close the browser

  # Scenario: Search by Gender
    # Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Person" from the "AdvancedSearch" "record type" dropdown
      And selects "Male" from the "Person" "Gender" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should contain "Fleet Foxes"
    # Then close the browser

  # Scenario: Search by School/Style
    # Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Person" from the "AdvancedSearch" "record type" dropdown
      And enters "Banger" in the "Person" "School/Style" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Fleet Foxes"
    # Then close the browser

  # Scenario: Search by Modified Date
    # Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Person" from the "AdvancedSearch" "record type" dropdown
      And enters today's date in the "Person" "Earliest Modified Date" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Fleet Foxes"
    # Then close the browser

  # Scenario: Search by username
    # Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Person" from the "AdvancedSearch" "record type" dropdown
      And enters "admin@core.collectionspace.org" in the "Person" "Record last modified by" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Fleet Foxes"
    Then close the browser

  # Test2
  Scenario: Boolean field-based search
    # Given user is on the "Create New" page
    #   And selects the "Person" radio button on the Create New page
    #   And clicks on the Create button
    Given user is on a blank "Local Persons" record
      And enters "Lorelai" in the "Person" "Display Name" field
      And enters "1975-07-05" in the "Person" "Birth Date" field
      And enters "1975" in the "Person" "Earliest/Single Birth Date Year" field
      And enters "07" in the "Person" "Earliest/Single Birth Date Month" field
      And enters "05" in the "Person" "Earliest/Single Birth Date Day" field
      And selects "Female" from the "Person" "Gender" dropdown
      And enters "testtest" in the "Person" "Name Notes" field
      And clicks the "Save" button
    # Then the record is successfully saved

    # Given user is on the "Create New" page
    #   And selects the "Person" radio button on the Create New page
    #   And clicks on the Create button
    Given user is on a blank "Local Persons" record
      And enters "Andrea" in the "Person" "Display Name" field
      And enters "1975-07-05" in the "Person" "Birth Date" field
      And enters "1975" in the "Person" "Earliest/Single Birth Date Year" field
      And enters "07" in the "Person" "Earliest/Single Birth Date Month" field
      And enters "05" in the "Person" "Earliest/Single Birth Date Day" field
      And selects "Female" from the "Person" "Gender" dropdown
      And enters "testtest" in the "Person" "Biographical Note" field
      And clicks the "Save" button
    # Then the record is successfully saved

    # Given user is on the "Create New" page
    #   And selects the "Person" radio button on the Create New page
    #   And clicks on the Create button
    Given user is on a blank "Local Persons" record
      And enters "DD" in the "Person" "Display Name" field
      And enters "1975-07-05" in the "Person" "Birth Date" field
      And enters "1975" in the "Person" "Earliest/Single Birth Date Year" field
      And enters "07" in the "Person" "Earliest/Single Birth Date Month" field
      And enters "05" in the "Person" "Earliest/Single Birth Date Day" field
      And selects "Male" from the "Person" "Gender" dropdown
      And enters "textbook" in the "Person" "Name Notes" field
      And clicks the "Save" button
    # Then the record is successfully saved

      And clicks the "Advanced Search" button
      And selects "Person" from the "AdvancedSearch" "record type" dropdown
      And selects "any (OR)" from the "AdvancedSearch" "Field-based search" dropdown
    #should automatically go in earliest.. i think
      And enters "1975-06-05" in the "Person" "Earliest Birth Date" field
      And selects "Male" from the "Person" "Gender" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should contain "Lorelai"
    Then the search results should contain "Andrea"
    Then the search results should contain "DD"

      And clicks the "Advanced Search" button
      And selects "Person" from the "AdvancedSearch" "record type" dropdown
      And selects "all (AND)" from the "AdvancedSearch" "Field-based search" dropdown
      And enters "1975-06-06" in the "Person" "Earliest Birth Date" field
      And selects "Female" from the "Person" "Gender" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should contain "Lorelai"
    Then the search results should contain "Andrea"
    Then the search results should not contain "DD"
    Then close the browser

  #Test3
  Scenario: Boolean and Keyword Search
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Person" from the "AdvancedSearch" "record type" dropdown
      And selects "any (OR)" from the "AdvancedSearch" "Field-based search" dropdown
      And enters "testtest" in the "AdvancedSearch" "Keyword Search" field
      And enters "1975-06-05" in the "Person" "Earliest Birth Date" field
      And selects "Male" from the "Person" "Gender" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should contain "Lorelai"
    Then the search results should contain "Andrea"
    Then the search results should not contain "DD"

      And clicks the "Advanced Search" button
      And selects "Person" from the "AdvancedSearch" "record type" dropdown
      And selects "all (AND)" from the "AdvancedSearch" "Field-based search" dropdown
      And enters "textbook" in the "AdvancedSearch" "Keyword Search" field
      And enters "1975-06-05" in the "Person" "Earliest Birth Date" field
      And selects "Male" from the "Person" "Gender" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should not contain "Lorelai"
    Then the search results should not contain "Andrea"
    Then the search results should contain "DD"
    Then close the browser

  Scenario: Record deletion
      Given user is on the "My CollectionSpace" page
      And navigates to the record with identification number "Fleet Foxes"
      And clicks on the "Delete" button
      Then delete confirmation dialogue should appear
      And clicks the confirmation delete button
      Then "Person" deletion should be confirmed in a dialog
      And clicks delete confirmation OK button

      And navigates to the record with identification number "DD"
      And clicks on the "Delete" button
      Then delete confirmation dialogue should appear
      And clicks the confirmation delete button
      Then "Person" deletion should be confirmed in a dialog
      And clicks delete confirmation OK button

      And navigates to the record with identification number "Lorelai"
      And clicks on the "Delete" button
      Then delete confirmation dialogue should appear
      And clicks the confirmation delete button
      Then "Person" deletion should be confirmed in a dialog
      And clicks delete confirmation OK button

      And navigates to the record with identification number "Andrea"
      And clicks on the "Delete" button
      Then delete confirmation dialogue should appear
      And clicks the confirmation delete button
      Then "Person" deletion should be confirmed in a dialog
      And clicks delete confirmation OK button
      Then close the browser
