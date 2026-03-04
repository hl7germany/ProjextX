Instance: PatientDeCore-ISiK-long
InstanceOf: PatientDeCore
Usage: #example
* identifier[versichertenId].type = $identifier-type-de-basis#KVZ10
* identifier[versichertenId].system = "http://fhir.de/sid/gkv/kvid-10"
* identifier[versichertenId].value = "A123456789"
* identifier[pid].type = $v2-0203#MR
* identifier[pid].system = "https://fhir.krankenhaus.example/sid/PID"
* identifier[pid].value = "TestPID"
* identifier[versichertennummer_pkv].use = #secondary
* identifier[versichertennummer_pkv].type = $identifier-type-de-basis#PKV
* identifier[versichertennummer_pkv].value = "1234567890"
* identifier[versichertennummer_pkv].assigner.display = "Test PKV AG"
* active = true
* name[name]
  * family = "Fürstin von Musterfrau"
    * extension[0].url = "http://fhir.de/StructureDefinition/humanname-namenszusatz"
    * extension[=].valueString = "Fürstin"
    * extension[+].url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
    * extension[=].valueString = "Musterfrau"
    * extension[+].url = "http://hl7.org/fhir/StructureDefinition/humanname-own-prefix"
    * extension[=].valueString = "von"
  * given = "Erika"
  * prefix = "Dr."
    * extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-EN-qualifier"
    * extension.valueCode = #AC
* name[geburtsname]
  * family = "Gabler"
    * extension.url = "http://hl7.org/fhir/StructureDefinition/humanname-own-name"
    * extension.valueString = "Gabler"
* gender = #female
* birthDate = "1964-08-12"
* address[0].type = #both
* address[=].line[0] = "Musterweg 2"
* address[=].line[+] = "3. Etage"
* address[=].line[0].extension[0].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"
* address[=].line[=].extension[=].valueString = "Musterweg"
* address[=].line[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"
* address[=].line[=].extension[=].valueString = "2"
* address[=].line[+].extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator"
* address[=].line[=].extension.valueString = "3. Etage"
* address[=].city = "Musterhausen"
* address[=].postalCode = "98764"
* address[=].country = "DE"
* address[+].type = #postal
* address[=].line = "Postfach 8 15"
  * extension.url = "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-postBox"
  * extension.valueString = "Postfach 8 15"
* address[=].city = "Musterhausen"
* address[=].postalCode = "98764"
* address[=].country = "DE"

/*Anna Müller, geboren Weber, 67 Jahre, mit der Diagnose primäre Gonarthrose, 
beidseitig (ICD M17.0), die durch ihre Orthopädin (Frau Dr. Peters) gestellt wurde,
möchte durch die geplante Implantation einer Knie-Endoprothese (OPS 5-822)
in einem Krankenhaus ihre Mobilität und Lebensqualität verbessern.*/