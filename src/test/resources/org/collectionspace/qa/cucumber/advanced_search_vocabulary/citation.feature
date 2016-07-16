# Created by Regina Xu on 2/26/16
# CQA-21
# NOTE: Commented-Out Parts not working for some reason. The WebElement can't be found.
@advancesearchvocab
Feature: Advanced Search - Citation

    Scenario: Advanced Search Fields
        Given user is on a blank "Local Citations" record
        And enters "CQA21" in the "Citation" "Display Name" field
        And enters "CQA21 Citation" in the "Citation" "Full Citation" field
        And selects "French" from the "Citation" "Language" dropdown
        And selects "Accepted" from the "Citation" "Status" dropdown
        And selects "Biography" from the "Citation" "Term Type" dropdown
        And enters "CQA21 Title" in the "Citation" "Title" field
        And clicks the "Save" button

        And clicks the "Advanced Search" button
        And selects "Citation" from the "AdvancedSearch" "record type" dropdown
        And enters "CQA21" in the "Citation" "Display Name" field
        And clicks the "Advanced Search search" button
        Then the search results should contain "CQA21"
        Then close the browser

    Scenario: Search by fields
        Given user is on the "My CollectionSpace" page
        And clicks the "Advanced Search" button
        And selects "Citation" from the "AdvancedSearch" "record type" dropdown
        And enters "CQA21 Citation" in the "Citation" "Full Citation" field
        And clicks the "Advanced Search search" button
        Then the search results should contain "CQA21"

        And clicks the "Advanced Search" button
        And selects "Citation" from the "AdvancedSearch" "record type" dropdown
        And selects "French" from the "Citation" "Language" dropdown
        And clicks the "Advanced Search search" button
        Then the search results should contain "CQA21"

        And clicks the "Advanced Search" button
        And selects "Citation" from the "AdvancedSearch" "record type" dropdown
        And selects "Accepted" from the "Citation" "Status" dropdown
        And clicks the "Advanced Search search" button
        Then the search results should contain "CQA21"

        And clicks the "Advanced Search" button
        And selects "Citation" from the "AdvancedSearch" "record type" dropdown
        And selects "Biography" from the "Citation" "Term Type" dropdown
        And clicks the "Advanced Search search" button
        Then the search results should contain "CQA21"

        And clicks the "Advanced Search" button
        And selects "Citation" from the "AdvancedSearch" "record type" dropdown
        And enters "CQA21 Title" in the "Citation" "Title" field
        And clicks the "Advanced Search search" button
        Then the search results should contain "CQA21"
        Then close the browser


    # Scenario: Search by last modified by username
    #     Given user is on the "My CollectionSpace" page
    #     And clicks the "Advanced Search" button
    #     And selects "Citation" from the "AdvancedSearch" "record type" dropdown
    #     And enters "admin@core.collectionspace.org" in the "Citation" "Record last modified by" field
    #     And clicks the "Advanced Search search" button
    #     Then the search results should contain "CQA21"

    # Scenario: Search by last modified date
    #     And clicks the "Advanced Search" button
    #     And selects "Citation" from the "AdvancedSearch" "record type" dropdown
    #     And enters today's date in the "Citation" "Earliest Modified Date" field
    #     And clicks the "Advanced Search search" button
    #     Then the search results should contain "CQA21"
    #     Then close the browser

    Scenario: Record deletion
        Given user is on the "My CollectionSpace" page
        And navigates to the record with identification number "CQA21"
        And clicks on the "Delete" button
        Then delete confirmation dialogue should appear
        And clicks the confirmation delete button
        Then "Citation" deletion should be confirmed in a dialog
        And clicks delete confirmation OK button
        Then close the browser