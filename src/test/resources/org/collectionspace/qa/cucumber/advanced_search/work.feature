# Created by Forest Yang on 1/8/2016
# Working as of June 28th 2016

@advancedsearch
Feature: Advanced Search - Work

  #Test1
  Scenario: Advanced Search Fields
    # Given user is on the "Create New" page
    #   And selects the "Work" radio button on the Create New page
    #   And clicks on the Create button
    Given user is on a blank "Local Works" record
      And enters "Carly" in the "Work" "Display Name" field
      And selects "Ancient Greek" from the "Work" "Language" dropdown
      And selects "Complete" from the "Work" "Status" dropdown
      And selects "Built" from the "Work" "Work Record Type" dropdown
      And enters "Rae" in the "Work" "Creator" autocomplete field
      And clicks the "Save" button
    Then the record is successfully saved

      And clicks the "Advanced Search" button
      And selects "Work" from the "AdvancedSearch" "record type" dropdown
      And enters "Carly" in the "Work" "Display Name" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Carly"
    Then close the browser

  Scenario: Search by language
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Work" from the "AdvancedSearch" "record type" dropdown
      And selects "Ancient Greek" from the "Work" "Language" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should contain "Carly"
    Then close the browser

  Scenario: Search by Status
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Work" from the "AdvancedSearch" "record type" dropdown
      And selects "Complete" from the "Work" "Status" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should contain "Carly"
    Then close the browser

  Scenario: Search by Work type
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Work" from the "AdvancedSearch" "record type" dropdown
      And selects "Built" from the "Work" "Work Record Type" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should contain "Carly"
    Then close the browser

  Scenario: Search by Creator
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Work" from the "AdvancedSearch" "record type" dropdown
      And enters "Rae" in the "Work" "Creator Search" autocomplete field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Carly"
    Then close the browser

  Scenario: Search by Modified Date
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Work" from the "AdvancedSearch" "record type" dropdown
      And enters today's date in the "Work" "Earliest Modified Date" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Carly"
    Then close the browser

  Scenario: Search by username
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Work" from the "AdvancedSearch" "record type" dropdown
      And enters "admin@core.collectionspace.org" in the "Work" "Record last modified by" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Carly"
    Then close the browser

  Scenario: Record deletion
    Given user is on the "My CollectionSpace" page
      And navigates to the record with identification number "Carly"
      And clicks on the "Delete" button
    Then delete confirmation dialogue should appear
      And clicks the confirmation delete button
    Then "Work" deletion should be confirmed in a dialog
      And clicks delete confirmation OK button
    Then close the browser
