package org.collectionspace.qa.records;

public class ValuationControl extends Record {

    public ValuationControl() {

      fieldSelectorByLabel.put("Amount",                              "csc-valuationcontrol-valueAmount");
      fieldSelectorByLabel.put("Currency",                            "csc-valuationcontrol-valueCurrency");
      fieldSelectorByLabel.put("Date",                                "csc-valuationcontrol-valueDate");
      fieldSelectorByLabel.put("Note",                                "csc-valuationcontrol-valueNote");
      fieldSelectorByLabel.put("Object Valuation Information",        "csc-valuationcontrol-objectValuationInformation");
      fieldSelectorByLabel.put("Renewal Date",                        "csc-valuationcontrol-valueRenewalDate");
      fieldSelectorByLabel.put("Valuation Control Reference Number",  "csc-valuationcontrol-valuationcontrolRefNumber");
      fieldSelectorByLabel.put("Earliest Modified Date",              "csc-valuationcontrol-updatedAtStart");
      fieldSelectorByLabel.put("Latest Modified Date",                "csc-valuationcontrol-updatedAtEnd");
      fieldSelectorByLabel.put("Record last modified by",             "csc-valuationcontrol-updatedBy");
      fieldSelectorByLabel.put("Earliest Date",                       "csc-valuationcontrol-valueDateStart");
      fieldSelectorByLabel.put("Latest Date",                         "csc-valuationcontrol-valueDateEnd");
      fieldSelectorByLabel.put("Earliest Renewal Date",               "csc-valuationcontrol-valueRenewalDateStart");
      fieldSelectorByLabel.put("Latest Renewal Date",                 "csc-valuationcontrol-valueRenewalDateEnd");

      dropDownMap.put("Type", "csc-valuationcontrol-valueType");

      xpathMap.put("Source",         "//*[@id=\"primaryTab\"]/div/div[3]/div[2]/div[2]/div[2]/div[1]/div[2]/input[2]");
      xpathMap.put("Source Search",  "//*[@class=\"cs-autocomplete-input\"]");
    }
}
