# Created by Cesar Villalobos on 06/28/2016
@advancedsearchvocab @concept


Feature: Searching a new concept record

    Scenario: Record creation and search by Display Name
        Given user is on a blank "Associated Concepts" record
        And enters "CQA51" in the "Concept" "Display Name" field
        And selects "French" from the "Concept" "Language" dropdown
        And selects "Accepted" from the "Concept" "Status" dropdown
        And enters "CQA51 Term" in the "Concept" "Term" field
        And clicks the "Save" button

        And clicks the "Advanced Search" button
        And selects "Concept" from the "AdvancedSearch" "record type" dropdown
        And enters "CQA51" in the "Concept" "Display Name" field
        And clicks the "Advanced Search search" button
        Then the search results should contain "CQA51"
        Then close the browser

    Scenario: Search by fields
        Given user is on a blank "Associated Concepts" record
        And clicks the "Advanced Search" button
        And selects "Concept" from the "AdvancedSearch" "record type" dropdown
        And enters "CQA51" in the "Concept" "Display Name" field
        And clicks the "Advanced Search search" button
        Then the search results should contain "CQA51"

        And clicks the "Advanced Search" button
        And selects "Concept" from the "AdvancedSearch" "record type" dropdown
        And selects "French" from the "Concept" "Language" dropdown
        And clicks the "Advanced Search search" button
        Then the search results should contain "CQA51"

        And clicks the "Advanced Search" button
        And selects "Concept" from the "AdvancedSearch" "record type" dropdown
        And selects "Accepted" from the "Concept" "Status" dropdown
        And clicks the "Advanced Search search" button
        Then the search results should contain "CQA51"

        And clicks the "Advanced Search" button
        And selects "Concept" from the "AdvancedSearch" "record type" dropdown
        And enters "CQA51 Term" in the "Concept" "Term" field
        And clicks the "Advanced Search search" button
        Then the search results should contain "CQA51"
        Then close the browser

    Scenario: Search by today's date and username
        Given user is on a blank "Associated Concepts" record
        And clicks the "Advanced Search" button
        And selects "Concept" from the "AdvancedSearch" "record type" dropdown
        And enters "admin@core.collectionspace.org" in the "Concept" "Record last modified by" field
        And clicks the "Advanced Search search" button
        Then the search results should contain "CQA51"

        And clicks the "Advanced Search" button
        And selects "Concept" from the "AdvancedSearch" "record type" dropdown
        And enters today's date in the "Concept" "Earliest Modified Date" field
        And clicks the "Advanced Search search" button
        Then the search results should contain "CQA51"
        Then close the browser

    Scenario: Record Deletion
        And navigates to the record with identification number "CQA51"
        And clicks on the "Delete" button
        Then delete confirmation dialogue should appear
        And clicks the confirmation delete button
        Then "Concept" deletion should be confirmed in a dialog
        And clicks delete confirmation OK button
        Then close the browser
