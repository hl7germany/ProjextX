Profile: DatatypeNameDeCore
Parent: http://fhir.de/StructureDefinition/humanname-de-basis|1.6.0-ballot
Id: Datatype-Name-De-Core
Description: "Dieses Profil bildet den Geburtsnamen einer Person mit den in Deutschland üblichen Namensbestandteilen ab."
* ^url = "https://fhir.prototype.de/StructureDefinition/DatatypeNameDeCore"
* . ^definition = "Dieses Element beschreibt diverse Namensbestandteile einer Person."
* insert Meta
* use 1.. MS
  * ^short = "Verwendungszweck"
  * ^comment = "Hier ist stets der Wert `official` anzugeben.  
    **Begründung Pflichtfeld:** Dient als Unterscheidungs- und Auswahlkriterium"  
* use = #official
* text ^short = "Vollständiger Name"
* text ^definition = "Vollständiger Name mit Vornamen und allen Vorsatzwörtern und Namenszusätzen. Der vollständige Name soll alle Namensteile in ihrer korrekten Reihenfolge abbilden."
* family 1.. MS
  * ^short = "Nachname"
  * ^comment = "Vollständiger Nachname bzw. Familienname der Person, einschließlich Vor- und Zusätze.  
    **Begründung Pflichtfeld:** Ein offizieller Name ist nur zulässig, wenn der Nachname und mindestens ein Vorname angegeben sind."   
  * ^definition = "Family name. When more the family is composed of more than one name, this element documents the full composed family name with the proper name order. The parts are recorded in the father and mother family names extensions."
  * ^example.label = "spanish"
  * ^example.valueString = "Valero Iglesias"
  * extension ^slicing.discriminator.type = #value
  * extension ^slicing.discriminator.path = "url"
  * extension ^slicing.rules = #open
  * extension ^min = 0
  * extension[namenszusatz] 0..1 MS
    * ^short = "Namenszusatz"
    * ^comment = "Enthält ehem. Adelstitel wie z.B. 'Graf', 'Baronesse', 'Freiherr'...  
      **Begründung MS:** Erforderlich für die verlustfreie Kommunikation von VSDM-Daten."
  * extension[nachname] 0..1 MS
    * ^short = "Nachname"
    * ^comment = "Nachname ohne Vor- und Zusätze.  
      **Begründung MS:** Erforderlich für die verlustfreie Kommunikation von VSDM-Daten."   
  * extension[vorsatzwort] 0..1 MS
    * ^short = "Vorsatzwort"
    * ^comment = "Enthält Vorsätze, die vor dem Nachnamen stehen, z.B. 'von', 'van', 'zu'...  
      **Begründung MS:** Erforderlich für die verlustfreie Kommunikation von VSDM-Daten."    
* given 0..* MS
  * ^short = "Vorname"
  * ^comment = "Kann mehrfach verwendet werden, um den Rufnamen sowie weitere Vornamen, Mittelnamen oder Mittel-Initialen abzubilden.
    **Begründung Pflichtfeld:** Ein offizieller Name ist nur zulässig, wenn der Nachname und mindestens ein Vorname angegeben sind." 
* prefix MS
  * ^short = "Präfix"
  * ^comment = "Präfix, z.B. akademischer Titel od. militärischer Rang"
  * extension ^slicing.discriminator.type = #value
  * extension ^slicing.discriminator.path = "url"
  * extension ^slicing.rules = #open
  * extension[prefix-qualifier] 0..1 MS
    * ^short = "Extension, um das Präfix als akademischen Titel zu qualifizieren"
    * ^comment = "Hier ist stets der Wert `AC` anzugeben.  
      **Begründung MS:** Erforderlich für die verlustfreie Kommunikation von VSDM-Daten."    
    * value[x] ^slicing.discriminator.type = #type
    * value[x] ^slicing.discriminator.path = "$this"
    * value[x] ^slicing.rules = #open
    * value[x] contains valueCode 1..1
    * valueCode = #AC (exactly)
* suffix ..1