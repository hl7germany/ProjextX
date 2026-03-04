Instance: PatientDeCore-ISiK-normal
InstanceOf: PatientDeCore
Usage: #example
* identifier[versichertenId].type = $identifier-type-de-basis#KVZ10
* identifier[versichertenId].system = "http://fhir.de/sid/gkv/kvid-10"
* identifier[versichertenId].value = "A123456789"
* identifier[pid].type = $v2-0203#MR
* identifier[pid].system = "https://fhir.krankenhaus.example/sid/PID" 
* identifier[pid].value = "TestPID1"
* active = true
* name[name]
  * family = "Müller"
  * given = "Anna"
  * prefix = "Dr."
* name[geburtsname]
  * family = "Weber"
* gender = #female
* birthDate = "1957-08-12"
* address[Strassenanschrift]
  * line = "Musterweg 2"
  * city = "Demmin"
  * postalCode = "17109"
  * country = "DE"
* address[Postfach]
  * line = "Postfach 815"
  * city = "Musterhausen"
  * postalCode = "98764"
  * country = "DE"
* link[0].other = Reference(PatientDeCore-ISiK-short)
* link[=].type = #seealso