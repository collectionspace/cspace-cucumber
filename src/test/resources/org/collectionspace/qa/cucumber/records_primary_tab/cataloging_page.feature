# Created by xxx on mo/day/2015

@recordsprimarytab
Feature: Cataloging Page Test Plan

Scenario: Identification number
    Given user creates a new Cataloging record
    And clicks on the "save" button
    Then the message "Please specify an Identification Number" should be displayed in the bottom message bar
    When user clicks "Select number pattern" and select one of the patterns from the drop down
    Then the number pattern should be displayed in the identification number field, with the proper values
    When user clicks "Select number pattern" again, and select the number pattern again
    Then the number pattern should be displayed in the identification number field, but with the last number incremented by one

Scenario: Correct Display of header on new
    When user enters "test" in the "Object Identification Information, Object Name, Object Name" field
    And clicks on the "save" button
    Then the identification number should now be displayed above the tabs
    Then the object name should be displayed following the identification number
    When user enters something in the "Object Identification Information, Title, Title" field
    And clicks on the "save" button
    Then the identification number should be displayed above the tabs
    Then the title should be displayed following the identification number

Scenario: All fields saved on new cataloging record and edited record

Actions:
    Variation b: Continue from Scenario(or edit existing Cataloging record)
    Variation a: Create a new Cataloging record
    Fill out the entire formula based on the following:
        In the select boxes (drop down boxes), select something other than the first
        In the authority fields, either write something and add it using the small dialog that appears. Make sure that at least two fields contains the same value. Or write something and select from the options that appears. The authority fields are:
            Object Identification Information->Object Name->Object Name (Concept Authority ver. 1.x)
            Object Description Information->Style (Concept Authority ver. 1.x)
            Object Description Information->Material->Material (Concept authority ver. 1.x)
            Object Description Information->Material->Material Component (Concept authority ver. 1.x)
            Object Description Information->Material->Material Source (Location authority ver. 1.x)
            Object Description Information->Content->People (People Name Authority ver 1.x)
            Object Description Information->Content->Person (Person Name Authority)
            Object Description Information->Content->Organization (Organization Name Authority)
            Object Description Information->Content->Other (Concept or Subject Authority ver. 1.x)
            Object Description Information->Content->Concept (Concept Authority ver. 1.x)
            Object Description Information->Content->Activity (Concept Authority ver. 1.x)
            Object Description Information->Content->Event Name (Subject Authority ver. 1.x)
            Object Description Information->Content->Event Name Type (Concept Authority ver. 1.x)
            Object Description Information->Inscription Content->Inscriber (Name Authority - ie. Person, Organization, People ver. 1.x)
            Object Description Information->Inscription Description->Inscriber (Name Authority - ie. Person, Organization, People ver. 1.x)
            Object Production Information->Production People (People Authority (ver. 1.x))
            Object Production Information->Production Person (Person Authority)
            Object Production Information->Production Organization (Organization Authority)
            Object History and Association Information->Associations->Associated Event Organization (Organization Authority)
            Object History and Association Information->Associations->Associated Event People (People Authority (ver. 1.x))
            Object History and Association Information->Associations->Associated Event Person (Person Authority)
            Object History and Association Information->Associations->Associated Organization (Organization Authority)
            Object History and Association Information->Associations->Associated People (People Authority (ver. 1.x))
            Object History and Association Information->Associations->Associated Person (Person Authority)
        In the text areas (multiline text fields), write multiline text.
        In the regular text areas write regular text
    Click the bottom save button
Expected:
    A "New Record successfully created" (variation a)/"Record successfully saved" (variation b) message should appear along with the current time in the bottom message bar
    After successful save message, All the fields should contain the same value as you entered/selected
    After successful save message, The newlines should still be present in text areas (version 1.x)
    After successful save message, The "Term" column in Terms Used should contain the display name of the authority
    After successful save message, The "Field" column in Terms Used should equal the name of the field the authority is listed in
    After successful save message, The "Vocabulary" column in Terms Used should display the type of authority it is (see previous Scenario for a list of types)
Actions:
    Variations: for each of the types of (person, location, etc) authorities click the term for one of the entries on the list
Expected:
    This should bring you to the edit page of the authority you clicked

Scenario 6: Structured Date

    Given user creates a new Cataloging record
    When user enters an Identification number "xxx"
    And clicks inside the "Production Date" field
    # Fill in all fields
    And clicks on the "save" button
    Then "Display Date" should appear in the "Production Date" field
    And clicks inside the "Production Date" field
    Then all fields should display as entered

Scenario 7: Removing values from all fields
    # if you have not done Scenario 5: open or create a Cataloging record with all fields filled in and save it
    Remove the values from all the fields in the formula, except the Identification number
    click the Save button
Expected:
    A success message from save should appear
    The header above the tabs should show only identification number and no title for object record
    The Terms Used area in the right sidebar should be empty.
    All the fields should be saved as empty (check by browsing to the object record via find and edit)
Actions:
    Delete the Identification Number
    Click the save button
Expected:
    The message "Please specify an Identification Number" should be displayed above object formula
    Object should not be saved

Scenario 9: Deletion of Record

Actions:
    Create a new object record and fill in at least the identification number
    Take note of the identification number of the record
    Click the "Delete" button in the very bottom of the object record
Expected:
    The delete button should be disabled and nothing should happen
Actions:
    Save the record
    Click the "Delete" button in the very bottom of the object record
Expected:
    A dialog should appear asking you to confirm deletion
Actions:
    click cancel.
Expected
    Dialog should be dismissed
    no other changes should occur.
Actions:
    Click the delete button again
Actions:
    click the close symbol
Expected
    Dialog should be dismissed
    no other changes should occur.
Actions:
    And click on the "delete" button
    And in the appearing dialog, click "Delete"
    Then user should be redirected to the "Find and Edit" page
    When using the top right search area, select "Object" from the drop down and enter the identification number of the deleted record
    Then the Object should not be found.

Actions:
    Create a new cataloging record and fill in at least the identification number
    Take note of the identification number of the record
    Save the record
    Add a related Loan In record
    Save
    Click the "Delete" button in the very bottom of the object record
Expected:
    A dialog should appear asking you to delete this record and its relationships
Actions:
    click cancel.
Expected
    Dialog should be dismissed
    no other changes should occur.
Actions:
    Click the delete button again
Actions:
    click the close symbol
Expected
    Dialog should be dismissed
    no other changes should occur.
Actions:
    Click the delete button again
    In the appearing dialog, click Delete
Expected:
    You should be redirected to the Find and Edit page
Actions:
    Using the top right search area, select Object from the drop down and enter the identification number of the deleted record
Expected:
    The Object should not be found.

Scenario 11: Fold/Unfolding boxes

Actions:
    variations: Do this for each of the boxed areas (Object Identification Information, Object Description Information, etc)
    click the fold/unfold symbol
Expected:
    First time the boxed area should fold, and symbol should change to folded
    Second time the boxed area should unfold, and symbol should change to unfolded

Warnings
Scenario 21: Cancel Changes buttons

Actions:
    Open an existing Cataloging record, do not make any changes
    Variation A: Click Cancel changes button at the top of the page
    Variation B: Click Cancel changes button at the bottom of the page
Expected:
    Cancel changes buttons should be disabled and nothing should happen
Actions:
    Edit at least one field
    Variation A: Click Cancel changes button at the top of the page
    Variation B: Click Cancel changes button at the bottom of the page
Expected:
    Cancel changes button should be active
    Record should be reverted to before changes were made
Actions:
    Click the Save button
    Variation A: After successful save, click the Cancel changes button at the top of the page
    Variation B: After successful save, click the Cancel changes button at the bottom of the page
Expected:
    Cancel changes button should be disabled and nothing should happen

Scenario 23: Warning on attempting to leave edited page

Actions:
    Variation A: Create a new Cataloging record
    Variation B: Edit an existing Cataloging record
    Edit at least one field (on Variation A, also fill out Identification Number)
    Click any link/item that will navigate you away from the current page (except browsers navigation buttons)
Expected:
    A dialog should appear, warning to navigate away from edited/unsaved page
Actions:
    Variation I: click Save button
    Variation II: click Don't Save button
    Variation III: click the Cancel button
    Variation IV: click the close symbol in NE corner
Expected:
    on (I): object should be saved and user directed to selected destination. Check whether saved by navigating back to the object.
    on (II): object should not be saved and user directed to selected destination. Check whether saved by navigating back to the object.
    on (III) and (IV): dialog should be dismissed without any changes (no saves or redirects).

Scenario: Warning on attempting to add related object/procedures to unsaved object

Actions:
    Create a new object record
    Variation a: Click the Add button on the Used By / Cataloging area to the right
    Variation b: Click the Add button on the Used By / Procedures area to the right
Expected:
    A message should be displayed in the bottom of the screen saying "Please save the record you are creating before trying to relate other records to it"

Keyboard Navigation:
Scenario: All fields available via the keyboard

Actions:
    Use tab through the entire formula
Expected:
    Each of the fields should be reachable
    The two save buttons, as well as Cancel button, should be reachable
    The folding functionality should be usable (tab to it and hit space)

Scenario: Vocabulary Fields usable via keyboard only
Go to a name authority field (e.g. Object Description Information->Content->Person)
    Variation a: Write a prefix to an existing person name authority (e.g. "james")
    Variation b: Write a non-existing person name authority
Expected
    Variation a: The drop down of existing authorities should be reachable using keyboard only
    Variation b: The options to clear one's entry without adding, or to add an entry to a name authority via the drop down menu, should be available using keyboard only
