Profile: DatatypeNameDeCore
Parent: http://fhir.de/StructureDefinition/humanname-de-basis|1.6.0-ballot
Id: Datatype-Name-De-Core
Description: "Dieses Profil bildet den Geburtsnamen einer Person mit den in Deutschland üblichen Namensbestandteilen ab."
* ^url = "https://fhir.prototype.de/StructureDefinition/DatatypeNameDeCore"
* . ^definition = "Dieses Element beschreibt diverse Namensbestandteile einer Person."
* insert Meta
* use 1..
  * ^short = "Verwendungszweck"
  * ^definition = "Hier ist stets der Wert `official` anzugeben.  
    **Begründung Pflichtfeld:** Dient als Unterscheidungs- und Auswahlkriterium"  
* use = #official
* text ^short = "Vollständiger Name"
* text ^definition = "Vollständiger Name mit Vornamen und allen Vorsatzwörtern und Namenszusätzen. Der vollständige Name soll alle Namensteile in ihrer korrekten Reihenfolge abbilden."
* family 1..
  * ^short = "Nachname"
  * ^definition = "Vollständiger Nachname bzw. Familienname der Person, einschließlich Vor- und Zusätze.  
    **Begründung Pflichtfeld:** Ein offizieller Name ist nur zulässig, wenn der Nachname und mindestens ein Vorname angegeben sind."   
  // "The parts are recorded in the father and mother family names extensions."
  //Die hier benannten Extensions existieren weder im EU Core/Base Profil noch in den deutschen Profilen.
  //* ^definition = "Wenn der Familienname aus mehr als einem Namen besteht, dokumentiert dieses Element den vollständig zusammengesetzten Familiennamen in der korrekten Reihenfolge. Die einzelnen Bestandteile werden in den Erweiterungen für den Familiennamen des Vaters und den Familiennamen der Mutter erfasst."
  * ^example.label = "spanish"
  * ^example.valueString = "Valero Iglesias"
  * extension ^slicing.discriminator.type = #value
  * extension ^slicing.discriminator.path = "url"
  * extension ^slicing.rules = #open
  * extension ^min = 0
  * extension[namenszusatz] 0..1
    * ^short = "Namenszusatz"
    * ^definition = "Enthält ehem. Adelstitel wie z.B. 'Graf', 'Baronesse', 'Freiherr'..."
  * extension[nachname] 0..1
    * ^short = "Nachname"
    * ^definition = "Nachname ohne Vor- und Zusätze."   
  * extension[vorsatzwort] 0..1
    * ^short = "Vorsatzwort"
    * ^definition = "Enthält Vorsätze, die vor dem Nachnamen stehen, z.B. 'von', 'van', 'zu'..."    
* given 0..*
  * ^short = "Vorname"
  * ^definition = "Kann mehrfach verwendet werden, um den Rufnamen sowie weitere Vornamen, Mittelnamen oder Mittel-Initialen abzubilden." 
* prefix
  * ^short = "Präfix"
  * ^comment = "Präfix, z.B. akademischer Titel od. militärischer Rang"
  * extension ^slicing.discriminator.type = #value
  * extension ^slicing.discriminator.path = "url"
  * extension ^slicing.rules = #open
  * extension[prefix-qualifier] 0..1
  * extension[prefix-qualifier] ^short = "Extension, um das Präfix als akademischen Titel zu qualifizieren"
    * ^comment = "Hier ist stets der Wert `AC` anzugeben."    
    * value[x] ^slicing.discriminator.type = #type
    * value[x] ^slicing.discriminator.path = "$this"
    * value[x] ^slicing.rules = #open
    * value[x] contains valueCode 1..1
    * valueCode = #AC (exactly)
* suffix ..1