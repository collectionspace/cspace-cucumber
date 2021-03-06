package org.collectionspace.qa.records;

public class Organization extends Record {

    public Organization() {

        //*[@id="secondary-nav"]/div/div[2]/div[2]/div/div[3]/div/div[2]/div[2]/div/

        requiredMap.put("csc-orgAuthority-termDisplayName", "The organization to which to belong");
        dropDownMap.put("Status", "csc-orgAuthority-termStatus");
        xpathMap.put("Earliest/Single Foundation Date Year",           "//*[@id=\"secondary-nav\"]/div/div[2]/div[2]/div/div[3]/div/div[2]/div[2]/div/div[2]/div[2]/div/div/div[2]/div/div/table/tbody/tr/td[2]/input");
        xpathMap.put("Earliest/Single Foundation Date Month",          "//*[@id=\"secondary-nav\"]/div/div[2]/div[2]/div/div[3]/div/div[2]/div[2]/div/div[2]/div[2]/div/div/div[2]/div/div/table/tbody/tr/td[3]/input");
        xpathMap.put("Earliest/Single Foundation Date Day",            "//*[@id=\"secondary-nav\"]/div/div[2]/div[2]/div/div[3]/div/div[2]/div[2]/div/div[2]/div[2]/div/div/div[2]/div/div/table/tbody/tr/td[4]/input");
        xpathMap.put("Latest Foundation Date Year",                    "//*[@id=\"secondary-nav\"]/div/div[2]/div[2]/div/div[3]/div/div[2]/div[2]/div/div[2]/div[2]/div/div/div[2]/div/div/table/tbody/tr[2]/td[2]/input");
        xpathMap.put("Latest Foundation Date Month",                   "//*[@id=\"secondary-nav\"]/div/div[2]/div[2]/div/div[3]/div/div[2]/div[2]/div/div[2]/div[2]/div/div/div[2]/div/div/table/tbody/tr[2]/td[3]/input");
        xpathMap.put("Latest Foundation Date Day",                     "//*[@id=\"secondary-nav\"]/div/div[2]/div[2]/div/div[3]/div/div[2]/div[2]/div/div[2]/div[2]/div/div/div[2]/div/div/table/tbody/tr[2]/td[4]/input");

        xpathMap.put("Earliest/Single Dissolution Date Year",          "//*[@id=\"primaryTab\"]/div/div[3]/div/div[2]/div[2]/div/div[4]/div[2]/div/div/div[2]/div/div/table/tbody/tr/td[2]/input");
        xpathMap.put("Earliest/Single Dissolution Date Month",         "//*[@id=\"primaryTab\"]/div/div[3]/div/div[2]/div[2]/div/div[4]/div[2]/div/div/div[2]/div/div/table/tbody/tr/td[3]/input");
        xpathMap.put("Earliest/Single Dissolution Date Day",           "//*[@id=\"primaryTab\"]/div/div[3]/div/div[2]/div[2]/div/div[4]/div[2]/div/div/div[2]/div/div/table/tbody/tr/td[4]/input");
        xpathMap.put("Latest Dissolution Date Year",                   "//*[@id=\"primaryTab\"]/div/div[3]/div/div[2]/div[2]/div/div[4]/div[2]/div/div/div[2]/div/div/table/tbody/tr[2]/td[2]/input");
        xpathMap.put("Latest Dissolution Date Month",                  "//*[@id=\"primaryTab\"]/div/div[3]/div/div[2]/div[2]/div/div[4]/div[2]/div/div/div[2]/div/div/table/tbody/tr[2]/td[3]/input");
        xpathMap.put("Latest Dissolution Date Day",                    "//*[@id=\"primaryTab\"]/div/div[3]/div/div[2]/div[2]/div/div[4]/div[2]/div/div/div[2]/div/div/table/tbody/tr[2]/td[4]/input");

        fieldSelectorByLabel.put("Earliest Foundation Date",                         "csc-organization-foundingDateGroupStart");
        fieldSelectorByLabel.put("Latest Foundation Date",                          "csc-organization-foundingDateGroupEnd");
        fieldSelectorByLabel.put("Earliest Dissolution Date",                      "csc-organization-dissolutionDateGroupStart");
        fieldSelectorByLabel.put("Latest Dissolution Date",                        "csc-organization-dissolutionDateGroupEnd");
        fieldSelectorByLabel.put("Earliest Modified Date",                         "csc-organization-updatedAtStart");
        fieldSelectorByLabel.put("Latest Modified Date",                           "csc-organization-updatedAtEnd");
        fieldSelectorByLabel.put("Record last modified by",                        "csc-organization-updatedBy");


        // ----- Start of entries generated by an automated script -----
        //
        // (Note: These require review by a human.)
        // (Note: Entries for structured date fields are not yet generated.)

        fieldSelectorByLabel.put("Additions to Name", "csc-orgAuthority-additionsToName");
        fieldSelectorByLabel.put("Address", "csc-contact-addressGroup");
        fieldSelectorByLabel.put("Broader Context", "csc-hierarchy-broaderContext");
        fieldSelectorByLabel.put("Broader object type", "csc-hierarchy-broaderContextType");
        fieldSelectorByLabel.put("Contact Information", "csc-organization-contactInformation");
        fieldSelectorByLabel.put("Contact name", "csc-orgAuthority-contactName"); // Manually corrected to this selector
        fieldSelectorByLabel.put("Country", "csc-contact-addressCountry");
        fieldSelectorByLabel.put("Created At", "csc-contact-createdAt");
        fieldSelectorByLabel.put("Created By", "csc-contact-createdBy");
        fieldSelectorByLabel.put("Display Name", "csc-orgAuthority-termDisplayName");
        fieldSelectorByLabel.put("Dissolution Date", "csc-organizationAuthority-dissolutionDate");
        fieldSelectorByLabel.put("Email", "csc-contact-email");
        fieldSelectorByLabel.put("Equivalent Context", "csc-hierarchy-equivalentContexts");
        fieldSelectorByLabel.put("Fax Number", "csc-contact-faxNumber");
        fieldSelectorByLabel.put("Formatted Display Name", "csc-orgAuthority-termFormattedDisplayName");
        fieldSelectorByLabel.put("Foundation Date", "csc-organizationAuthority-foundingDate");
        fieldSelectorByLabel.put("Foundation Place", "csc-orgAuthority-foundingPlace"); // Manually corrected to this selector
        fieldSelectorByLabel.put("Function", "csc-orgAuthority-function"); // Manually corrected to this selector
        fieldSelectorByLabel.put("Group", "csc-orgAuthority-group"); // Manually corrected to this selector
        fieldSelectorByLabel.put("History", "csc-orgAuthority-historyNotes");
        fieldSelectorByLabel.put("Language", "csc-orgAuthority-termLanguage");
        fieldSelectorByLabel.put("Line 1", "csc-contact-addressPlace1");
        fieldSelectorByLabel.put("Line 2", "csc-contact-addressPlace2");
        fieldSelectorByLabel.put("Main Body Name", "csc-orgAuthority-mainBodyName");
        fieldSelectorByLabel.put("Municipality", "csc-contact-addressMunicipality");
        fieldSelectorByLabel.put("Narrower Context", "csc-hierarchy-narrowerContext");
        fieldSelectorByLabel.put("Number", "csc-contact-telephoneNumber");
        fieldSelectorByLabel.put("Object component type", "csc-hierarchy-narrowerContextType");
        fieldSelectorByLabel.put("Organization Information", "csc-organization-organizationNameAuthorityInformation");
        fieldSelectorByLabel.put("Organization Record Type", "csc-organization-organizationRecordType");
        fieldSelectorByLabel.put("Organization Term Group(s)", "csc-organization-preferredOrganization");
        fieldSelectorByLabel.put("Postal Code", "csc-contact-addressPostCode");
        fieldSelectorByLabel.put("Pref for Lang", "csc-orgAuthority-termPrefForLang");
        fieldSelectorByLabel.put("Qualifier", "csc-orgAuthority-termQualifier");
        fieldSelectorByLabel.put("Related Term", "csc-hierarchy-relatedTerms");
        fieldSelectorByLabel.put("Source", "csc-orgAuthority-termSource");
        fieldSelectorByLabel.put("Source Detail", "csc-orgAuthority-termSourceDetail");
        fieldSelectorByLabel.put("Source ID", "csc-orgAuthority-termSourceID");
        fieldSelectorByLabel.put("Source Note", "csc-orgAuthority-termSourceNote");
        fieldSelectorByLabel.put("State/Province", "csc-contact-addressStateOrProvince");
        fieldSelectorByLabel.put("Telephone Number", "csc-contact-telephoneNumberGroup");
        fieldSelectorByLabel.put("Term", "csc-orgAuthority-termName");
        fieldSelectorByLabel.put("Term Flag", "csc-orgAuthority-termFlag");
        fieldSelectorByLabel.put("Term Type", "csc-orgAuthority-termType");
        fieldSelectorByLabel.put("Type", "csc-contact-addressType");
        fieldSelectorByLabel.put("Type", "csc-contact-emailType");
        fieldSelectorByLabel.put("Type", "csc-contact-faxNumberType");
        fieldSelectorByLabel.put("Type", "csc-contact-telephoneNumberType");
        fieldSelectorByLabel.put("Type", "csc-contact-webAddressType");
        fieldSelectorByLabel.put("Updated At", "csc-contact-updatedAt");
        fieldSelectorByLabel.put("Updated By", "csc-contact-updatedBy");
        fieldSelectorByLabel.put("Web Address", "csc-contact-webAddress");

        // Entries above with duplicate text labels, to be checked by a human.
        //
        // Some may represent labels for headers above repeatable fields/groups.
        // Duplicate text label: Type (appears 5 times)

        // Messagekeys in the 'uispec' file not matched by text labels
        // in the message bundles file (e.g. 'core-messages.properties').
        //
        // Some of these may be record metadata that is never displayed
        // in the UI. If so, they can be added to the script's stoplist.
        //
        // In other instances, these may represent messagekeys for section
        // headers in the record, rather than for fields.
        //
        // Finally, these may represent sub-records (e.g. Contact in
        // Person and Organization) or other sub-data structures.
        //
        // Not found: text label for message key 'contact-contactInformationLabel'
        // Not found: text label for message key 'contact-coreInformationLabel'
        // Not found: text label for message key 'contact-csidLabel'
        // Not found: text label for message key 'contact-deprecatedLabel'
        // Not found: text label for message key 'contact-displayNameLabel'
        // Not found: text label for message key 'contact-domaindataLabel'
        // Not found: text label for message key 'contact-inAuthorityLabel'
        // Not found: text label for message key 'contact-inItemLabel'
        // Not found: text label for message key 'contact-otherInformationLabel'
        // Not found: text label for message key 'contact-proposedLabel'
        // Not found: text label for message key 'contact-refNameLabel'
        // Not found: text label for message key 'contact-revLabel'
        // Not found: text label for message key 'contact-sasLabel'
        // Not found: text label for message key 'contact-tenantIdLabel'
        // Not found: text label for message key 'contact-uriLabel'
        // Not found: text label for message key 'contact-workflowLabel'
        // Not found: text label for message key 'hierarchy-domaindataLabel'
        // Not found: text label for message key 'hierarchy-equivalentContextLabel'
        // Not found: text label for message key 'hierarchy-equivalentInformationLabel'
        // Not found: text label for message key 'hierarchy-hierarchyInformationLabel'
        // Not found: text label for message key 'hierarchy-narrowerContextsLabel'
        // Not found: text label for message key 'hierarchy-relatedTermLabel'
        // Not found: text label for message key 'organization-contactLabel'
        // Not found: text label for message key 'organization-contactNameLabel'
        // Not found: text label for message key 'organization-historyNoteLabel'
        // Not found: text label for message key 'organization-organizationRecordTypesLabel'
        // Not found: text label for message key 'orgAuthority-orgTermGroupLabel'
        // Not found: text label for message key 'orgAuthority-termInformationLabel'

        // ----- End of entries generated by an automated script -----

      }
}
