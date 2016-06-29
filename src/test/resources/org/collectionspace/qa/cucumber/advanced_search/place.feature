#Created by Forest Yang on 1/9/2016
# Working as of June 28 2016

@advancedsearch
Feature: Advanced Search - Place

  #Test1
  Scenario: Advanced Search Fields
    # Given user is on the "Create New" page
    #   And selects the "Place" radio button on the Create New page
    #   And clicks on the Create button
    Given user is on a blank "Local Places" record
      And enters "Conyay" in the "Place" "Display Name" field
      And enters "RealFrend" in the "Place" "Name" field
      And selects "Under Review" from the "Place" "Status" dropdown
      And selects "Japanese" from the "Place" "Language" dropdown
      And selects "Borough" from the "Place" "Place type" dropdown
      And enters "I love you honeybear" in the "Place" "Place note" field
      And enters "Travvy" in the "Place" "Owner" autocomplete field
      And clicks the "Save" button
    Then the record is successfully saved
      And clicks the "Advanced Search" button
      And selects "Place" from the "AdvancedSearch" "record type" dropdown
      And enters "Conyay" in the "Place" "Display Name" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Conyay"
    Then close the browser

  Scenario: Search by Name
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Place" from the "AdvancedSearch" "record type" dropdown
      And enters "RealFrend" in the "Place" "Name" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Conyay"
    Then close the browser

  Scenario: Search by Status
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Place" from the "AdvancedSearch" "record type" dropdown
      And selects "Under Review" from the "Place" "Status" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should contain "Conyay"
    Then close the browser

  Scenario: Search by Language
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Place" from the "AdvancedSearch" "record type" dropdown
      And selects "Japanese" from the "Place" "Language" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should contain "Conyay"
    Then close the browser

  Scenario: Search by place type
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Place" from the "AdvancedSearch" "record type" dropdown
      And selects "Borough" from the "Place" "Place type" dropdown
      And clicks the "Advanced Search search" button
    Then the search results should contain "Conyay"
    Then close the browser

  Scenario: Search by Place note
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Place" from the "AdvancedSearch" "record type" dropdown
      And enters "I love you honeybear" in the "Place" "Place note" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Conyay"
    Then close the browser

  Scenario: Search by owner
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Place" from the "AdvancedSearch" "record type" dropdown
      And enters "Travvy" in the "Place" "Owner Search" autocomplete field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Conyay"
    Then close the browser

  Scenario: Search by Modified Date
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Place" from the "AdvancedSearch" "record type" dropdown
      And enters today's date in the "Place" "Earliest Modified Date" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Conyay"
    Then close the browser

  Scenario: Search by username
    Given user is on the "My CollectionSpace" page
      And clicks the "Advanced Search" button
      And selects "Place" from the "AdvancedSearch" "record type" dropdown
      And enters "admin@core.collectionspace.org" in the "Place" "Record last modified by" field
      And clicks the "Advanced Search search" button
    Then the search results should contain "Conyay"
    Then close the browser

  Scenario: Record deletion
      Given user is on the "My CollectionSpace" page
      And navigates to the record with identification number "Conyay"
      And clicks on the "Delete" button
      Then delete confirmation dialogue should appear
      And clicks the confirmation delete button
      Then "Place" deletion should be confirmed in a dialog
      And clicks delete confirmation OK button
      Then close the browser
