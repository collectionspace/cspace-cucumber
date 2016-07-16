package org.collectionspace.qa.records;

public class Cataloging extends Record {
    public Cataloging() {

        dropDownMap.put("Collection"               , "csc-object-identification-collection");
        dropDownMap.put("Form"                     , "csc-object-description-form");
        dropDownMap.put("Object Component Name"    , "csc-object-description-object-component-name");
        dropDownMap.put("Object Status"            , "csc-object-description-object-status");
        dropDownMap.put("Phase"                    , "csc-object-description-phase");
        dropDownMap.put("Record Status"            , "csc-object-identification-record-status");
        dropDownMap.put("Responsible Department"   , "csc-object-identification-responsible-department");
        dropDownMap.put("Sex"                      , "csc-object-description-sex");
        dropDownMap.put("Technical Attribute"      , "csc-object-description-technical-attribute");

        fieldSelectorByLabel.put("Brief Description",              "csc-object-identification-brief-description");
        fieldSelectorByLabel.put("Copy Number",                    "csc-object-description-copy-number");
        fieldSelectorByLabel.put("Distinguishing Features",        "csc-object-identification-distinguishing-features");
        fieldSelectorByLabel.put("Edition Number",                 "csc-object-description-edition-number");
        fieldSelectorByLabel.put("Field collection event name",    "csc-collection-object-fieldColEventName");
        fieldSelectorByLabel.put("Identification Number",          "csc-object-identification-object-number");
        fieldSelectorByLabel.put("Inscription Method Search",      "csc-object-description-inscription-description-method");
        fieldSelectorByLabel.put("Material",                       "csc-object-description-material");
        fieldSelectorByLabel.put("Non-Textual Inscription Method", "csc-object-description-inscription-description-method"); // Non-Textual
        fieldSelectorByLabel.put("Object Name",                    "csc-object-identification-object-name");
        fieldSelectorByLabel.put("Production Date",                "csc-objectProductionDateGroup-objectProductionDate"); // Will have to fix all date fields eventually
        fieldSelectorByLabel.put("Production people",              "csc-object-production-people");
        fieldSelectorByLabel.put("Production place",               "csc-object-production-place");
        fieldSelectorByLabel.put("Style",                          "csc-object-description-style");
        fieldSelectorByLabel.put("Technique",                      "csc-object-production-technique");
        fieldSelectorByLabel.put("Textual Inscription Method",     "csc-object-description-inscription-content-method"); // Textual
        fieldSelectorByLabel.put("Title",                          "csc-object-identification-object-title");

        xpathMap.put("Earliest/Single Production Date Day",     "//*[@id=\"all-content\"]/div/div/div/div/div/div[2]/div[2]/div/div[3]/div[3]/div[2]/div/div/div/div[2]/div/ul/li/div/div/div[2]/div/div/table/tbody/tr/td[4]/input");
        xpathMap.put("Earliest/Single Production Date Month",   "//*[@id=\"all-content\"]/div/div/div/div/div/div[2]/div[2]/div/div[3]/div[3]/div[2]/div/div/div/div[2]/div/ul/li/div/div/div[2]/div/div/table/tbody/tr/td[3]/input");
        xpathMap.put("Earliest/Single Production Date Year",    "//*[@id=\"all-content\"]/div/div/div/div/div/div[2]/div[2]/div/div[3]/div[3]/div[2]/div/div/div/div[2]/div/ul/li/div/div/div[2]/div/div/table/tbody/tr/td[2]/input");
        xpathMap.put("Inscriber Search",                        "//*[@id=\".csc-collection-object-nonTextualInscriptionGroup\"]/div/div[1]/div/div[2]/input[2]");
        xpathMap.put("Non-Textual Inscriber",                   "//*[@id=\".csc-collection-object-nonTextualInscriptionGroup\"]/div[2]/div[2]/div[1]/div[1]/div[2]/input[2]"); // Non-Textual Inscription Inscriber
        xpathMap.put("Textual Inscriber",                       "//*[@id=\".csc-collection-object-textualInscriptionGroup\"]/div[2]/div[2]/div[1]/div[1]/div[2]/input[2]"); // Textual Inscription Inscriber
        xpathMap.put("Latest Production Date Day",              "//*[@id=\"all-content\"]/div/div/div/div/div/div[2]/div[2]/div/div[3]/div[3]/div[2]/div/div/div/div[2]/div/ul/li/div/div/div[2]/div/div/table/tbody/tr[2]/td[4]/input");
        xpathMap.put("Latest Production Date Month",            "//*[@id=\"all-content\"]/div/div/div/div/div/div[2]/div[2]/div/div[3]/div[3]/div[2]/div/div/div/div[2]/div/ul/li/div/div/div[2]/div/div/table/tbody/tr[2]/td[3]/input");
        xpathMap.put("Latest Production Date Year",             "//*[@id=\"all-content\"]/div/div/div/div/div/div[2]/div[2]/div/div[3]/div[3]/div[2]/div/div/div/div[2]/div/ul/li/div/div/div[2]/div/div/table/tbody/tr[2]/td[2]/input");
        xpathMap.put("Production organization Search",          "//*[@id=\".csc-collection-object-objectProductionOrganizationGroup\"]/input[2]");
        xpathMap.put("Production organization",                 "//*[@id=\"repeat::-14\"]/td[2]/input[2]");
        xpathMap.put("Production person Search",                "//*[@id=\".csc-collection-object-objectProductionPersonGroup\"]/input[2]");
        xpathMap.put("Production person",                       "//*[@id=\"repeat::-12\"]/td[2]/input[2]");

    }
}
