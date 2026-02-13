Profile: DatatypeMaidenNameDeCore
Parent: http://fhir.de/StructureDefinition/humanname-de-basis|1.6.0-ballot
Id: Datatype-Maiden-Name-De-Core
Description: "Dieses Profil bildet den Geburtsnamen einer Person mit den in Deutschland üblichen Namensbestandteilen ab."
* ^url = "https://fhir.prototype.de/StructureDefinition/DatatypeMaidenNameDeCore"
* . ^short = "Geburtsname"
* . ^definition = "Geburtsname mit in Deutschland üblichen Erweiterungen"
* insert Meta
* use 1.. MS
  * ^short = "Verwendungszweck"
  * ^comment = "Hier ist stets der Wert `maiden` anzugeben.  
    **Begründung Pflichtfeld:** Dient als Unterscheidungs- und Auswahlkriterium"  
* use = #maiden
* text ^short = "Vollständiger Name"
* text ^definition = "Vollständiger Name mit Vornamen und allen Vorsatzwörtern und Namenszusätzen. Der vollständige Name soll alle Namensteile in ihrer korrekten Reihenfolge abbilden."
* family 1.. MS
  * ^short = "Nachname"
  * ^comment = "Vollständiger Nachname bzw. Familienname des Patienten, einschließlich Vor- und Zusätze.  
    **Begründung Pflichtfeld:** Ist der Nachname zum Zeitpunkt der Geburt nicht bekannt, sollte der gesamte Slice weggelassen werden."
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
* given ..0
  * ^short = "Given names. Includes middle names"
* prefix ..0
* suffix ^definition = "Namensteile nach dem Nachnamen"