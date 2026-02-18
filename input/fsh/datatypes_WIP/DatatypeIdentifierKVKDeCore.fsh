Profile: DatatypeIdentifierKVKDeCore
Parent: Identifier
Id: Datatype-Identifier-KVK-De-Core
Description: "Dieses Profil bildet die Versichertennummer der Krankenversichertenkarte (KVK) ab."
* ^url = "https://fhir.prototype.de/StructureDefinition/DatatypeIdentifierKVKDeCore"
* insert Meta
* . ^short = "Identifier KVK"
* . ^definition = "Versichertennummer der Krankenversichertenkarte (KVK)"
* type 1..
* type = https://fhir.prototype.de/CodeSystem/IdentifierTypeDeCore#kvk
* type.coding 1..1
* type.coding.system 1..
* type.coding.code 1..
* type.coding.display = "Krankenversichertenkarte"
* system 1..
* system = "http://fhir.de/sid/gkv/kvk-versichertennummer" (exactly)
* value 1..
* value obeys kvk-1