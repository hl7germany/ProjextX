Profile: DatatypeIdentifierReisepassnummerDeCore
Parent: Identifier
Id: Datatype-Identifier-Reisepassnummer-De-Core
Description: "Dieses Profil bildet die Reisepassnummer einer Person ab.“"
* ^url = "https://fhir.prototype.de/StructureDefinition/DatatypeIdentifierReisepassnummerDeCore"
* insert Meta
* . ^short = "Identifier Reisepassnummer"
* . ^definition = "Identifierprofil für die Reisepassnummer"
* type 1..
* type = $v2-0203#PPN
* type.coding 1..1
* type.coding.system 1..
* type.coding.code 1..
* type.coding.display = "Passport number"
* value 1..