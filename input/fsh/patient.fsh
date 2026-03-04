// This is a simple example of a FSH file.
// This file can be renamed, and additional FSH files can be added.
// SUSHI will look for definitions in any file using the .fsh ending.
Profile: MyPatient
Parent: Patient
Description: "An example profile of the Patient resource."

* name 1..* MS
  * given MS
    * insert obligation(#SHOULD:populate-if-known, $creator)
    * insert obligation(#SHOULD:handle, $consumer)
  * family MS
    * insert obligation(#SHALL:populate-if-known, $creator)
    * insert obligation(#SHALL:handle, $consumer)  
* link 
  * insert status(#informative)    

//test:  Obligations pro Rolle in Code-Blöcken
* name.given insert obligation(#SHALL:populate, $iProducer)  
* name.family insert obligation(#SHALL:populate, $iProducer)  
* birthDate insert obligation(#SHALL:populate-if-known, $iProducer)  

Instance: PatientExample
InstanceOf: MyPatient
Description: "An example of a patient with a license to krill."
* name
  * given[0] = "James"
  * family = "Pond"
