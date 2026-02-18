Profile: DatatypeAddressDeCore
Parent: http://fhir.de/StructureDefinition/address-de-basis|1.6.0-ballot
Id: Datatype-Address-De-Core
Description: "This profile extends the Address data type for supporting streetname, housenumber and postal box."
* ^url = "https://fhir.prototype.de/StructureDefinition/DatatypeAddressDeCore"
* . ^short = "Eine Straßenadresse gemäß postalischer Konventionen"
* . ^definition = "Hier können Angaben zur Straßenanschrift gemacht werden."
* insert Meta
* country from DeuevAnlage8DeCore (extensible)
* country ^short = "Staat"
* country ^definition = "Angabe des Staates als Länderkennzeichen nach DEUEV Anlage 8."