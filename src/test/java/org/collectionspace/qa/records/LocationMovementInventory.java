package org.collectionspace.qa.records;

public class LocationMovementInventory extends Record {

    public LocationMovementInventory() {




      dropDownMap.put("Inventory Action Required",     "csc-movement-inventoryActionRequired");
      dropDownMap.put("Inventory Frequency",           "csc-movement-frequencyForInventory");
      dropDownMap.put("Movement Method",               "csc-movement-movementMethods");
      dropDownMap.put("Reason for move",               "csc-movement-reasonForMove");

      fieldSelectorByLabel.put("Earliest Inventory Date",        "csc-movement-inventoryDateStart");
      fieldSelectorByLabel.put("Earliest Location Date",         "csc-movement-locationDateStart");
      fieldSelectorByLabel.put("Earliest Modified Date",         "csc-movement-updatedAtEnd");
      fieldSelectorByLabel.put("Earliest Modified Date",         "csc-movement-updatedAtStart");
      fieldSelectorByLabel.put("Earliest Next Inventory Date",   "csc-movement-nextInventoryDateStart");
      fieldSelectorByLabel.put("Earliest Planned removal date",  "csc-movement-plannedRemovalDateStart");
      fieldSelectorByLabel.put("Earliest Removal date",          "csc-movement-removalDateStart");
      fieldSelectorByLabel.put("Fitness",                        "csc-movement-currentLocationFitness");
      fieldSelectorByLabel.put("Inventory Date",                 "csc-movement-inventoryDate");
      fieldSelectorByLabel.put("Inventory Information",          "csc-movement-inventory");
      fieldSelectorByLabel.put("Inventory Note",                 "csc-movement-inventoryNote");
      fieldSelectorByLabel.put("Latest Inventory Date",          "csc-movement-inventoryDateEnd");
      fieldSelectorByLabel.put("Latest Location Date",           "csc-movement-locationDateEnd");
      fieldSelectorByLabel.put("Latest Next Inventory Date",     "csc-movement-nextInventoryDateEnd");
      fieldSelectorByLabel.put("Latest Planned removal date",    "csc-movement-plannedRemovalDateEnd");
      fieldSelectorByLabel.put("Latest Removal date",            "csc-movement-removalDateEnd");
      fieldSelectorByLabel.put("Location Date",                  "csc-movement-locationDate");
      fieldSelectorByLabel.put("Movement Information",           "csc-movement-movementControlInformation");
      fieldSelectorByLabel.put("Movement Note",                  "csc-movement-movementNote");
      fieldSelectorByLabel.put("Next Inventory Date",            "csc-movement-nextInventoryDate");
      fieldSelectorByLabel.put("Object Location Information",    "csc-movement-locationMovementInformation");
      fieldSelectorByLabel.put("Object Location Note",           "csc-movement-currentLocationNote");
      fieldSelectorByLabel.put("Planned removal date",           "csc-movement-plannedRemovalDate");
      fieldSelectorByLabel.put("Record last modified by",        "csc-movement-updatedBy");
      fieldSelectorByLabel.put("Reference Number",               "csc-movement-movementReferenceNumber");
      fieldSelectorByLabel.put("Removal date",                   "csc-movement-removalDate");

      xpathMap.put("Current Location Search",  "//*[@id=\"all-content\"]/div/div[1]/div/div/div/div[2]/div[4]/div/div/div/div/div/div[2]/div/ul/li/input[3]");
      xpathMap.put("Inventory Contact Search", "//*[@id=\"all-content\"]/div/div[1]/div/div/div/div[2]/div[4]/div/div/div/div/div[11]/div[2]/div/ul/li/input[3]");
      xpathMap.put("Inventory Contact",        "//*[@id=\"primaryTab\"]/div/div[3]/div[3]/div[2]/div[2]/div[1]/div/div[2]/div/ul/li/input[3]");
      xpathMap.put("Movement Contact Search", "//*[@id=\"all-content\"]/div/div[1]/div/div/div/div[2]/div[4]/div/div/div/div/div[4]/div[2]/div/ul/li/input[3]");
      xpathMap.put("Movement Contact",         "//*[@id=\"secondary-nav-menu\"]/div[2]/div/div[3]/div[2]/div[2]/div/div[2]/div/div[2]/input[2]");
      xpathMap.put("Normal Location Search",   "//*[@id=\"all-content\"]/div/div[1]/div/div/div/div[2]/div[2]/div/div[3]/div[2]/div[2]/div/div[2]/div/div[2]/input[2]");
      xpathMap.put("Normal Location",          "//*[@id=\"primaryTab\"]/div/div[3]/div[1]/div[2]/div[1]/div[2]/div/div[2]/input[2]");
      xpathMap.put("Current Location",         "//*[@id=\"primaryTab\"]/div/div[3]/div[1]/div[2]/div[2]/div/div[2]/table/tbody/tr/td[1]/input[2]");


      // And enters "Jane Doe" in the "Location/Movement/Inventory" "Movement Contact" autocomplete field
      // And enters "In a Shoebox" in the "Location/Movement/Inventory" "Current Location" autocomplete field

      // And enters "Jane Doe" in the "Location/Movement/Inventory" "Movement Contact" autocomplete field
      // And enters "In a Shoebox" in the "Location/Movement/Inventory" "Current Location" autocomplete field




    }
}
