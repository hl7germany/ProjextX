Profile: DatatypeAddressDeCore
Parent: http://fhir.de/StructureDefinition/address-de-basis|1.6.0-ballot
Id: Datatype-Address-De-Core
Description: "This profile extends the Address data type for supporting streetname, housenumber and postal box."
* ^url = "https://fhir.prototype.de/StructureDefinition/DatatypeAddressDeCore"
* . ^short = "Eine Straßenadresse gemäß postalischer Konventionen"
* . ^definition = "Hier können Angaben zur Straßenanschrift gemacht werden."
* insert Meta
* use ^short = "Purpose of this address"
* type ^short = "Address type (postal | physical)"
* line ^comment = "When extensions are used for providing structured information the line element SHOULD be populated with a human readable representation of the line."
* line ^definition = "Diese Komponente kann Straßennamen, Hausnummer, Appartmentnummer, Postfach, c/o sowie weitere Zustellungshinweise enthalten. Die Informationen können in mehrere line-Komponenten aufgeteilt werden.\r\nBei Verwendung der Extensions, um Straße, Hausnnummer und Postleitzahl strukturiert zu übermitteln, müssen diese Informationen stets vollständig auch in der line-Komponente, die sie erweitern, enthalten sein, um es Systemen, die diese Extensions nicht verwenden zu ermöglichen, auf diese Informationen zugreifen zu können. Es wird empfohlen, dass die erste Zeile für Straße und Hausnummer, die zweite Zeile für den Zusatz und die dritte Zeile für den Stadtteil verwendet wird."
* city ^short = "City"
* country from $KBV_VS_Base_Deuev_Anlage_8 (extensible)
* country ^short = "Staat"
* country ^definition = "Angabe des Staates als Länderkennzeichen nach DEUEV Anlage 8."
* postalCode ^short = "Postal code"