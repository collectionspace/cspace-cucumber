@administration
#Created by Forest Yang on 12/22/2015
Feature: Permission Enforcement
  

  #crippling lack of step defs

  #Test1
  Scenario: No access to any administration
    Given user is logged in as "User I"
      And user clicks the "Administration" menu item
    Then the "Users" tab should not be present
    Then the "Roles & Permissions" tab should not be present

  #Test2 continues from Test1
      And user selects the "Term List Management" tab
      And user clicks on a Termlist
    Then the details should be read only
    Then the "Save" button should not be present
    Then the "Cancel" button should not be present
    Then close the browser

  #Test3
  Scenario: Read only access to Users
    Given user is logged in as "User II"
      And user clicks the "Administration" menu item
    Then "Users" tab should be selected by default
    Then the "+ User" button should not be present
      And user clicks on a User
    Then the "Save" button should not be present
    Then the "Cancel" button should not be present
    Then the "Delete" button should not be present
    Then the details should be read only
  
  #Test5: Read only access to Roles and Permissions; continues from Test3
      And user selects the "Roles & Permissions" tab
    Then the "+ Role" button should not be present
      And user clicks on a Role
    Then the details should be read only
    Then the "Save" button should not be present
    Then the "Cancel" button should not be present
    Then the "Delete" button should not be present
    Then close the browser

  #Test7
  Scenario: Write access to Users
    Given user is logged in as "User III"
      And user clicks the "Administration" menu item
    Then the "+ User" button should be present
      And user clicks on a User
    Then the details should be editable
    Then the "Delete" button should not be present
      And user clicks the "+ User" button
      And user fills out required fields
      And user assigns an existing Role
      And user clicks on the Save button
    Then then the User is saved successfully
    Then a confirmation message should appear
      And user clicks the recently created User
      And user assigns a different Role
      And user clicks on the Save button
    Then the User should not be saved successfully
    Then an error message containing "You do not have permission to edit user roles" should appear

  #Continued from above: Test8: Write access to Roles & Permissions
      And user selects the "Roles & Permissions" 
    Then the "+ Role" button should be present
      And user clicks on a Role
    Then the details should be editable
    Then the "Delete" button should not be present
      And user clicks the "+ Role" button
      And user fills out required fields
      And user changes a Permission
      And user clicks on the Save button
    Then the Role is saved successfully
    Then a confirmation message should appear
      And user clicks the recently created Role
      And user changes a Role
      And user clicks on the Save button
    Then the Role should not be saved successfully
    Then an error message containing "You do not have permission to edit roles" should appear

  #Continued from above: Test10: Write access to Term List Management
      And user selects the "Term List Management" tab
      And user clicks on a Termlist
    Then the details should be editable
    Then the "Save" button should be present
    Then the "Cancel" button should be present
    Then the "Cancel" button should not be clickable
      And user changes the "Name" field
      And user changes the "Source" field
      And user changes the "Destination" field
      And user clicks the "+" button
      And user fills out required fields
      And user clicks on the Save button
    Then the Termlist is saved successfully
    Then close the browser

  #Test11
  Scenario: Checking Deletion of Roles
    Given user is logged in as "User IV"
      And user selects the "Administration" tab
      And user selects the "Roles & Permissions" tab
      And user clicks the "+ Role" button
      And user fills out required fields
      And user clicks on the Save button
    Then the Role is saved successfully
      And user clicks the recently created Role
      And user clicks the "Delete" button
    Then the Role should be deleted

  #Continued from above: Test13: Checking Deletion of Users
      And user selects the "Users" tab
      And user clicks the "+ User" button
      And user enters "test@collectionspace.org" in the "Email Address" field
      And user enters "test@collectionspace.org" in the "Full Name" field
      And user enters "test@collectionspace.org" in the "Password" field
      And user enters "test@collectionspace.org" in the "Confirm Password" field
      And user assigns an existing Role
      And user clicks on the Save button
    Then the User is saved successfully
      And user opens a different browser
    Given user is logged in as "test@collectionspace.org" with the password "test@collectionspace.org" on the second browser
      And user clicks the "test@collectionspace.org" user
    Then the "Delete" button should not be present
    Then the "Term List Management" tab should not be present
    Then close the browser





