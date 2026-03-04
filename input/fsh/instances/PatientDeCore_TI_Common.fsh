Instance: PatientDeCore-TI-Common
InstanceOf: PatientDeCore
Usage: #example
* identifier.system = "http://fhir.de/sid/gkv/kvid-10"
* identifier.value = "G995030566"
* name[0].use = #official
* name[=].family = "Gundlach"
* name[=].given = "Monika"
* name[=].prefix = "Dr."
* name[=].prefix.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
* name[=].prefix.extension.valueCode = #AC
* name[+].use = #maiden
* name[=].family = "Blohm"
* name[=].family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
* name[=].family.extension.valueString = "Blohm"
* gender = #female
* birthDate = "1954-02-27"