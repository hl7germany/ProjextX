Profile: DatatypeMaidenNameDeBase
Parent: http://fhir.de/StructureDefinition/humanname-de-basis|1.6.0-ballot
Id: Datatype-Maiden-Name-De-Base
Description: "Dieses Profil bildet den Geburtsnamen einer Person mit den in Deutschland üblichen Namensbestandteilen ab."
* ^url = "https://fhir.prototype.de/StructureDefinition/DatatypeMaidenNameDeBase"
* . ^short = "Geburtsname"
* . ^definition = "Geburtsname mit in Deutschland üblichen Erweiterungen"
* insert Meta
* use 1..1
* use = #maiden
  * ^short = "Verwendungszweck"
  * ^definition = "Hier ist stets der Wert `maiden` anzugeben. 
    **Begründung Pflichtfeld:** Dient als Unterscheidungs- und Auswahlkriterium"   
* text ^short = "Vollständiger Name"
* text ^definition = "Vollständiger Name mit Vornamen und allen Vorsatzwörtern und Namenszusätzen. Der vollständige Name soll alle Namensteile in ihrer korrekten Reihenfolge abbilden."
* family
  * ^short = "Nachname"
  * ^definition = "Vollständiger Nachname bzw. Familienname des Patienten, einschließlich Vor- und Zusätze."  
    //**Begründung Pflichtfeld:** Ist der Nachname zum Zeitpunkt der Geburt nicht bekannt, sollte der gesamte Slice weggelassen werden.
// "The parts are recorded in the father and mother family names extensions."
//Die hier benannten Extensions existieren weder im EU Core/Base Profil noch in den deutschen Profilen.
//  * ^definition = "Family name. When more the family is composed of more than one name, this element documents the full composed family name with the proper name order. The parts are recorded in the father and mother family names extensions."
  * ^example.label = "spanish"
  * ^example.valueString = "Valero Iglesias"
  * extension ^slicing.discriminator.type = #value
  * extension ^slicing.discriminator.path = "url"
  * extension ^slicing.rules = #open
  * extension[namenszusatz]
    * ^short = "Namenszusatz"
    * ^definition = "Enthält ehem. Adelstitel wie z.B. 'Graf', 'Baronesse', 'Freiherr'..."
    * value[x] from DeuevAnlage7DeBase (preferred)
  * extension[nachname]
    * ^short = "Nachname"
    * ^definition = "Nachname ohne Vor- und Zusätze."   
  * extension[vorsatzwort]
    * ^short = "Vorsatzwort"
    * ^definition = "Enthält Vorsätze, die vor dem Nachnamen stehen, z.B. 'von', 'van', 'zu'..."  
    * value[x] from DeuevAnlage6DeBase (preferred)  
* given ..0
  * ^short = "Given names. Includes middle names"
* prefix ..0
* suffix ^definition = "Namensteile nach dem Nachnamen"