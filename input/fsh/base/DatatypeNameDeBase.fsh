Profile: DatatypeNameDeBase
Parent: http://fhir.de/StructureDefinition/humanname-de-basis|1.6.0-ballot
Id: Datatype-Name-De-Base
Description: "Dieses Profil bildet den Geburtsnamen einer Person mit den in Deutschland üblichen Namensbestandteilen ab."
* ^url = "https://fhir.prototype.de/StructureDefinition/DatatypeNameDeBase"
* . ^definition = "Dieses Element beschreibt diverse Namensbestandteile einer Person."
* insert Meta
* use 1..1
* use = #official
  * ^short = "Verwendungszweck"
  * ^definition = "Hier ist stets der Wert `official` anzugeben.  
    **Begründung Pflichtfeld:** Dient als Unterscheidungs- und Auswahlkriterium"  
* text ^short = "Vollständiger Name"
* text ^definition = "Vollständiger Name mit Vornamen und allen Vorsatzwörtern und Namenszusätzen. Der vollständige Name soll alle Namensteile in ihrer korrekten Reihenfolge abbilden."
* family
  * ^short = "Nachname"
  * ^definition = "Vollständiger Nachname bzw. Familienname der Person, einschließlich Vor- und Zusätze."    
    //**Begründung Pflichtfeld:** Ein offizieller Name ist nur zulässig, wenn der Nachname und mindestens ein Vorname angegeben sind. 
  // "The parts are recorded in the father and mother family names extensions."
  //Die hier benannten Extensions existieren weder im EU Core/Base Profil noch in den deutschen Profilen.
  //* ^definition = "Wenn der Familienname aus mehr als einem Namen besteht, dokumentiert dieses Element den vollständig zusammengesetzten Familiennamen in der korrekten Reihenfolge. Die einzelnen Bestandteile werden in den Erweiterungen für den Familiennamen des Vaters und den Familiennamen der Mutter erfasst."
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
* given
  * ^short = "Vorname"
  * ^definition = "Kann mehrfach verwendet werden, um den Rufnamen sowie weitere Vornamen, Mittelnamen oder Mittel-Initialen abzubilden." 
* prefix
  * ^short = "Präfix"
  * ^definition = "Präfix, z.B. akademischer Titel od. militärischer Rang"
  * extension ^slicing.discriminator.type = #value
  * extension ^slicing.discriminator.path = "url"
  * extension ^slicing.rules = #open
  * extension[prefix-qualifier] 0..1 
  * extension[prefix-qualifier] ^short = "Extension, um das Präfix als akademischen Titel zu qualifizieren"
    * ^definition = "Kodierte Angabe der Art des Namenspräfix zur technischen Unterscheidung zwischen verschieden Präfixen wie akademischem Titel. 
    Achtung: Für das Vorsatzwort ist das Attribut family.extension[vorsatzwort] zu verwenden. 
    Für akademische Titel ist verpflichtend die Kennzeichnung AC (academic) zu verwenden."    
    * value[x] ^slicing.discriminator.type = #type
    * value[x] ^slicing.discriminator.path = "$this"
    * value[x] ^slicing.rules = #open
    * value[x] contains valueCode 1..1
    * valueCode = #AC (exactly)