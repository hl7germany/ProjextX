Instance: PatientDeCore-KBV
InstanceOf: PatientDeCore
Usage: #example
* text.status = $narrative-status#generated "Generated"
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Diese FHIR Instanz des Profils KBV_PR_Base_Patient beschreibt die Patientendaten für Melissa Gonzales, einschließlich ihrer Adressen, Telefonnummer, Identifikatoren und dem Status des Familienstands.</div>"
* extension[0].url = "http://hl7.org/fhir/StructureDefinition/patient-sexParameterForClinicalUse"
* extension[=].extension[0].url = "value"
* extension[=].extension[=].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/sex-parameter-for-clinical-use#male-typical "Apply male-typical setting or reference range"
* identifier[0].type = $v2-0203#MR "Medical record number"
* identifier[=].system = "http://www.acmedasdd.com/identifiers/patient"
* identifier[=].value = "1002345"
* identifier[+].type = $identifier-type-de-basis#KVZ10 "Krankenversichertennummer"
* identifier[=].system = "http://fhir.de/sid/gkv/kvid-10"
* identifier[=].value = "K004567123"
* identifier[+].type.coding[0] = $identifier-type-de-basis#PKV
* identifier[=].type.coding[+] = $KBV_CS_Base_identifier_type#pkv-nr "Private Krankenversicherung"
* identifier[=].value = "123456"
* identifier[=].assigner.display = "XYZ Medical Clinic"
* identifier[+].type = $v2-0203#PPN "Passport number"
* identifier[=].value = "L388G569"
* identifier[+].type = $KBV_CS_Base_identifier_type#kvk "Krankenversichertenkarte"
* identifier[=].system = "http://fhir.de/sid/gkv/kvk-versichertennummer"
* identifier[=].value = "123456784"
* identifier[=].assigner.display = "XYZ Medical Clinic"
* name[0].use = #official
* name[=].family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
* name[=].family.extension.valueString = "Gonzales"
* name[=].family = "Gonzales"
* name[=].given = "Melissa"
* name[+].use = #maiden
* name[=].text = "Melisandre Gonzales"
* name[=].family.extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
* name[=].family.extension.valueString = "Gonzales"
* name[=].family = "Gonzales"
* telecom.system = #phone
* telecom.value = "0172 8611693"
* gender.extension.url = "http://fhir.de/StructureDefinition/gender-amtlich-de"
* gender.extension.valueCoding = $gender-amtlich-de#D
* gender = #other
* birthDate.extension.url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* birthDate.extension.valueCode = #unknown
* address[0].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-precinct"
* address[=].extension.valueString = "Mitte"
* address[=].type = #both
* address[=].line[0] = "Musterstr. 1"
* address[=].line[+] = "Mitte"
* address[=].line[+] = "Mitte"
* address[=].line[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address[=].line[=].extension[=].valueString = "1"
* address[=].line[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address[=].line[=].extension[=].valueString = "Musterstr."
* address[=].city = "Berlin"
* address[=].postalCode = "64283"
* address[=].country = "D"
* address[+].type = #postal
* address[=].line = "124xx"
* address[=].line.extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-postBox"
* address[=].line.extension.valueString = "124xx"
* address[=].city = "Berlin"
* address[=].postalCode = "15457"
* address[=].country = "D"
* maritalStatus.coding.version = "2018-08-12"
* maritalStatus.coding = $v3-MaritalStatus#A "Annulled"
* contact.address.country = "D"
* communication.language.coding.version = "2.0.1"
* communication.language.coding = urn:ietf:bcp:47#es "Spanish"
* communication.preferred = true