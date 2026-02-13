Profile: PatientDeCore
Parent: Patient
Id: Patient-De-Core
Description: "Dieses Profil spezifiziert die Minimalanforderungen für die Bereitstellung von administrativen Patientendaten."
* ^url = "https://fhir.prototype.de/StructureDefinition/PatientDeCore"
* . ^definition = "Dieses Element beschreibt eine Person, die eine oder mehrere medizinische Leistungen in Anspruch nimmt."
* insert Meta
* insert CommonElements
* obeys pat-de-1
* . ^constraint[5].source = Canonical(PatientDeCore)
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    $birth-place named Geburtsort 0..1 and
    $clinical-sex-parameter named klinisches-Geschlecht 0..* and
    $gender-identity named Geschlechtsidentitaet 0..* and
    $pronouns named Pronomen 0..* and
    $citizenship named Staatsangehoerigkeit 0..* and
    $nationality named Nationalitaet 0..* and
    $birth-time named Geburtszeitpunkt 0..1
* extension[Geburtsort].value[x] only DatatypeAddressDeCore
* extension[klinisches-Geschlecht] ^short = "Klinisches Geschlecht"
* extension[Geschlechtsidentitaet] ^short = "Geschlechtsidentität"
* extension[Pronomen] ^short = "Pronomen"
* extension[Staatsangehoerigkeit] ^short = "Staatsangehörigkeit"
* extension[Nationalitaet] ^short = "Nationalität"
* extension[Geburtszeitpunkt] ^short = "Geburtszeitpunkt"
* identifier MS
  * ^short = "Patient identifiers"
  * ^comment = "Eindeutiger Identifier des Patienten" 
  * ^definition = "In diesem Element wird der Identifier (Identifikator) für die Person eingetragen. Der Identifikator kann aus diversen Quellen stammen."
  * ^slicing.discriminator[0].type = #value
  * ^slicing.discriminator[=].path = "type"
  * ^slicing.discriminator[+].type = #value
  * ^slicing.discriminator[=].path = "system"
  * ^slicing.rules = #open
* identifier contains
    pid 0..* MS and
    versichertenId 0..1 MS and
    versichertennummer_pkv 0..1 MS and
    reisepassnummer 0..* MS and
    versichertennummer_kvk 0..1 MS
* identifier[pid] only http://fhir.de/StructureDefinition/identifier-pid|1.6.0-ballot
  * ^definition = "Dieses Element enthält die Abbildung einer organisationsspezifischen Patienten-ID."
  * ^short = "Organisationsinterner Patienten-Identifier (PID)"
  * ^comment = "Organisationsintere Patienten-Identifier werden von z.B. von KIS-Systemen vergeben 
  und dienen innerhalb einer Einreichtung meist als primäres Identifikationsmerkmal für Patienten, 
  u.A. in der HL7 V2-Kommunikation.  
  **Weitere Hinweise:** siehe [Deutschen Basisprofile](https://simplifier.net/guide/leitfaden-de-basis-r4/ig-markdown-OrganisationsinternerPatienten-Identifier?version=current)"
  * type 1.. MS
    * ^short = "Art des Identifiers"
    * ^comment = "Hier ist stets der Code `MR` 
    aus dem CodeSystem `http://terminology.hl7.org/CodeSystem/v2-0203` anzugeben.  
    **Begründung Pflichtfeld:** `type` dient der Unterscheidung verschiedener Identifier-Typen"
      * coding 1..1
        * system 1..
        * code 1..
  * system MS
    * ^short = "Namensraum des Identifiers"
    * ^comment = "Hier ist stets der eindeutige Name (URL) des Namensraums anzugeben, 
    aus dem der Identifier stammt. 
    Hinweise zur Festlegung der URLs für lokale Namensräume sind in den 
    [Deutschen Basisprofilen](https://simplifier.net/guide/leitfaden-de-basis-r4/ig-markdown-Terminologie-Namensraeume?version=current) beschrieben.  
    **Begründung Pflichtfeld:** `system` stellt in Kombination mit `value` die Eindeutigkeit eines Identifiers sicher."
  * value MS
    * ^comment = "Enthält den eigentlichen Wert des Identifiers.  
    **Begründung Pflichtfeld:** Ist der Wert nicht bekannt, sollte der gesamte Slice weggelassen werden."
* identifier[versichertenId] only http://fhir.de/StructureDefinition/identifier-kvid-10|1.6.0-ballot
  * ^definition = "Hier wird der unveränderliche Teil der einheitlichen Krankenversicherungsnummer der GKV gemäß § 290 SGB V angegeben. 
  Die 10-stellige Zeichenfolge beginnt mit einem zufällig vergebene Großbuchstaben, darauf folgen 8 zufällige Ziffern.  Das 10.Zeichen ist eine Prüfziffer."
  * ^short = "Lebenslange Krankenversichertennummer"
  * ^comment = "Die als 'KVZ10' kodierte Versichertennummer ist der 10-stellige, 
    unveränderbare Teil der Versichertennummer, 
    der lesbar auf die Elektronische Gesundheitskarte aufgedruckt ist.
    Er gilt für alle Krankenversichertennummern, 
    unabhängig davon, ob es sich um GKV, PKV oder Sonderkostenträger handelt. Für eine Weiterverarbeitung einer Patient-Ressource in der ePA ist dieser Identifier im EPAPatient-Profil ein Pflichtfeld.  
    **WARNUNG**: Die Verwendung der 'GKV'-Kodierung einer Versichertennummer ist abgekündigt, da die lebenslangen Versichertennummer ab 2024 auch für PKV oder Sonderkostenträger eingeführt wird.
    **Weitere Hinweise:** siehe [Deutschen Basisprofile](https://simplifier.net/guide/leitfaden-de-basis-r4/ig-markdown-LebenslangeKrankenversichertennummer10-stelligeKVID-Identifier?version=current)"
  * type 1.. MS
    * coding 1..
      * system 1..
      * code 1..
    * ^short = "Art des Identifiers"
    * ^comment = "Hier ist stets der Code `KVZ10` aus dem CodeSystem `http://fhir.de/CodeSystem/identifier-type-de-basis` anzugeben. **Begründung Pflichtfeld:** `type` dient der Unterscheidung verschiedener Identifier-Typen"
  * system MS
    * ^short = "Namensraum der Versichertennummer"
    * ^comment = "Hier ist stets der Wert `http://fhir.de/sid/gkv/kvid-10` anzugeben.  
    **Begründung Pflichtfeld:** `system` stellt in Kombination mit `value` die Eindeutigkeit eines Identifiers sicher."
  * value MS
    * ^comment = "Enthält den eigentlichen Wert des Identifiers.  
    **Begründung Pflichtfeld:** Ist der Wert nicht bekannt, sollte der gesamte Slice weggelassen werden."
* identifier[versichertennummer_pkv] only http://fhir.de/StructureDefinition/identifier-pkv|1.6.0-ballot
  * ^definition = "Hier wird der Identifikator für eine Privatversichertennummer angegeben."
  * ^short = "Private Krankenversichertennummer"
  * ^comment = "Für Privatpatienten, die noch nicht über eine lebenslange, unveränderliche Krankenversichertennummer (KVNR) verfügen,
  können bis auf weiteres noch die versicherungsspezifischen PKV-Nummern angegeben werden. 
  Da bei diesen der Bezeichner des vom Kostenträger verwendeten Namensraums meist nicht ermittelt werden kann,
  ist statt dessen der Name des Kostenträgers in `assigner` anzugeben.
  **Achtung:**  Dieser Slice dient NICHT zur Abbildung einer 10-stelligen PKV-VersichertenId nach § 362 SGB V. Diese sind durch den Slice 'versichertenId' abzubilden, da die Nummernkreise dieser Identifier identisch sind.
  **Weitere Hinweise:** siehe [Deutsche Basisprofile](https://simplifier.net/guide/leitfaden-de-basis-r4/ig-markdown-PrivateKrankenversichertennummer-Identifier?version=current)
  Der Identifier kann jedoch zusätzlich zur KVNR verwendet werden, wenn für eine Zusatzversicherung eine separate, versicherungsspezifische PKV-Nummer vorliegt."
  * use MS
    * ^short = "Verwendungszeck des Identifiers"
    * ^comment = "Hier ist stets der Wert `secondary` anzugeben."
  * type 1.. MS
    * ^short = "Art des Identifiers"
    * ^comment = "Hier ist stets der Code `PKV` 
    aus dem CodeSystem `http://fhir.de/CodeSystem/identifier-type-de-basis` anzugeben.  
    **Begründung Pflichtfeld:** `type` dient der Unterscheidung verschiedener Identifier-Typen"
    * coding 1..
      * system 1..
      * code 1..
    //* ^patternCodeableConcept.coding = $KBV_CS_Base_identifier_type#pkv-nr
  * value MS
    * ^short = "Private Krankenversichertennummer"
    * ^comment = "Enthält den eigentlichen Wert des Identifiers.  
    **Begründung Pflichtfeld:** Ist der Wert nicht bekannt, sollte der gesamte Slice weggelassen werden."  
  * assigner MS
    * identifier.system MS
      * ^short = "Namensraum des Identifiers"
      * ^comment = "Hier ist stets der Wert `http://fhir.de/sid/arge-ik/iknr` anzugeben."
    * identifier.value MS
      * ^short = "IK-Nummer des Kostenträgers"
      * ^comment = "IK-Nummer des Kostenträgers, aus dessen Nummernkreis die PKV-Nummer stammt."
    * display MS
      * ^short = "Name des Kostenträgers"
      * ^comment = "Name des Kostenträgers, aus dessen Nummernkreis die PKV-Nummer stammt."
* identifier[reisepassnummer] only https://fhir.kbv.de/StructureDefinition/KBV_PR_Base_Identifier_Reisepassnummer|1.8.0
  * ^definition = "Hier wird die Reisepassnummer angegeben."
* identifier[versichertennummer_kvk] only https://fhir.kbv.de/StructureDefinition/KBV_PR_Base_Identifier_KVK|1.8.0
  * ^definition = "Hier wird die Versichertennummer der Krankenversichertenkarte (KVK) angegeben."
* active MS
  * ^short = "Status des Datensatzes"
  * ^comment = "
  `true` = Der Datensatz befindet sich in Verwendung/kann verwendet werden  
  `false`= Der Datensatz wurde storniert (z.B. bei Dubletten, Merge) oder archiviert  
  **Einschränkung der übergreifenden MS-Definition:**  
  Verfügt ein bestätigungsrelevantes System nicht über die Datenstruktur zur Hinterlegung des Aktivitätsstatus einer Patienten-Ressource, 
  so MUSS dieses System die Information NICHT abbilden. 
  Das System SOLL jedoch den Aktivitätsstatus hart kodieren in der Patienteninstanz 
  (Patient.active auf 'true'), sodass Clients nicht missverständlich mit einer inaktiven 
  Patient-Ressource interagieren."
* name 1.. MS
  * ^comment = "Angabe der Namen"
  * ^requirements = "Need to be able to track the patient by multiple names. Examples are your official name and a partner name.\r\nThe Alphabetic representation of the name SHALL be always provided"
  * ^definition = "Dieses Element beschreibt den vollständigen Namen der behandelten Person."
  * .text ^definition = "Text representation of the full name. Due to the cultural variance around the world a consuming system may not know how to present the name correctly; moreover not all the parts of the name go in given or family. Creators are therefore strongly encouraged to provide through this element a presented version of the name. Future versions of this guide may require this element."
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "use"
  * ^slicing.rules = #open
* name contains
    name 0..1 MS and
    geburtsname 0..1 MS
* name[name] only https://fhir.prototype.de/StructureDefinition/DatatypeNameDeCore|0.1.0
  * ^short = "Offizieller Name"
  * ^definition = "Dieses Element beschreibt diverse Namensbestandteile der behandelten Person."
  * ^comment = "Offizieller Name des Patienten, wie er z.B. in Ausweis oder Versicherungsdokumenten erscheint. 
  **Begründung Pflichtfeld:** Der offizielle Name des Patienten ist unerlässlich, um Verwechlungen zu vermeiden und den Patienten im Versorgungskontext korrekt anzusprechen.
  Wenn kein Name vorliegt, MUSS die [data-absent-reason-Extension](https://www.hl7.org/fhir/R4/extension-data-absent-reason.html) eingesetzt werden.   
  **Weitere Hinweise:** siehe [Deutsche Basisprofile](https://simplifier.net/guide/leitfaden-de-basis-r4/ig-markdown-Ressourcen-Patient?version=current#ig-markdown-Ressourcen-Patient-Name)"
* name[geburtsname] only https://fhir.prototype.de/StructureDefinition/DatatypeMaidenNameDeCore|0.1.0
  * ^definition = "Hier wird das Geburtsdatum der behandelten Person angegeben. Ist dieses nicht bekannt kann die Extension 'data-absent-reason' verwendet werden, um das Nichtvorhandensein zu dokumentieren."
  * ^short = "Geburtsname"
  * ^comment = "Familienname zum Zeitpunkt der Geburt, sofern abweichend vom offiziellen Namen."
* telecom only https://fhir.kbv.de/StructureDefinition/DatatypeContactpointDeCore|0.1.0
* telecom MS
  * ^short = "Angabe der Kontaktdaten"
  * ^comment = "Angabe der Kontaktdaten des Patienten, z.B. Telefonnummer oder E-Mail-Adresse.
  **Bedingtes MS:** Kontaktdaten sind im Kontext der Terminplanung unerlässlich, z.B. für Terminvereinbarungen oder Rückfragen. Das Must-Support gilt ausschließlich für Systeme, die
  Kontaktdaten persistieren."
  * ^definition = "Dieses Element beschreibt die vorhandenen Kontaktmöglichkeiten."
* gender 0..1 MS
  * ^short = "Administratives Geschlecht" 
  * ^definition = "Hier wird die Geschlechtsdefinition nach den Versichertenstammdaten (VSD) angegeben."
  * ^comment = "Für die Geschlechtskennzeichen 'unbestimmt' und 'divers' ist der international vereinbarte code `other` zu verwenden.
    Zur weiteren Differenzierung kann dann die Extension `Geschlecht-Admnistrativ` verwendet werden.
    **Begründung Pflichtfeld:** Die Geschlechtsangabe ist für viele Versorgungsprozesse unerlässlich, z.B.  
    * Bettendisposition
    * Ermittlung von Referenzwerten
    * korrekte Anrede des Patienten  
    **Weitere Hinweise:** siehe [Deutsche Basisprofile](https://simplifier.net/guide/leitfaden-de-basis-r4/ig-markdown-Ressourcen-Patient?version=current#ig-markdown-Ressourcen-Patient-Geschlecht)"
  * extension ^slicing.discriminator.type = #value
  * extension ^slicing.discriminator.path = "url"
  * extension ^slicing.rules = #open
  * extension ^min = 0
  * extension contains GenderOtherDE named Geschlecht-Administrativ 0..1 MS
  * extension[Geschlecht-Administrativ]
    * ^short = "Extension zur Differenzierung des Geschlechtskennzeichens"
    * ^comment = "Diese Extension darf nur in Verbindung mit dem Geschlechtskennzeichen `other` verwendet werden
      und dient der Differenzierung zwischen den in Deutschland möglichen Geschlechtskennzeichen `D` (divers) und `X`(unbestimmt)"
* birthDate 1.. MS
  * ^short = "Geburtsdatum"
  * ^comment = "Tages-, monats- oder jahresgenaues Geburtsdatum.  
    **Begründung Pflichtfeld:** Das Geburstdatum dient - in Verbindung mit dem Namen - als wichtiges Such- und Unterscheidungskriterium.  
    **Weitere Hinweise:** siehe [Deutsche Basisprofile](https://simplifier.net/guide/leitfaden-de-basis-r4/ig-markdown-Ressourcen-Patient?version=current#ig-markdown-Ressourcen-Patient-Geburtsdatum)"
  * ^definition = "Hier wird das Geburtsdatum der behandelten Person angegeben. Ist dieses nicht bekannt kann die Extension 'data-absent-reason' verwendet werden, um das Nichtvorhandensein zu dokumentieren."
  * extension ^slicing.discriminator.type = #value
  * extension ^slicing.discriminator.path = "url"
  * extension ^slicing.rules = #open
  * extension ^min = 0
  * extension contains $data-absent-reason named Data-Absent-Reason 0..1 MS
  * extension[Data-Absent-Reason]
    * ^short = "Begründung für fehlende Information"
    //* ^comment = "ToDo"
    * value[x] ^slicing.discriminator.type = #type
    * value[x] ^slicing.discriminator.path = "$this"
    * value[x] ^slicing.rules = #open
    * value[x] contains valueCode 1..1
    * valueCode MS
    * valueCode = #unknown (exactly)
* deceased[x] MS
  * ^comment = "**Einschränkung der übergreifenden MS-Definition:** Die Implementierung dieses Elements ist für Server optional. Die Kennzeichnung als Must-Support erfolgt, da es sich um ein als Modifier-Element markiertes Feld in der Kernspezifikation handelt. 
    **WICHTIGER Hinweis für Implementierer:**  
  * Alle server-seitigen Implementierungen SOLLEN in der Lage sein, die systemintern möglichen Statuswerte korrekt in FHIR abzubilden.
  * Alle client-seitigen Implementierungen SOLLEN in der Lage sein, sämtliche Status-Codes zu interpretieren und dem Anwender in angemessener Form darstellen zu können."
* address MS
  * ^comment = "Angabe der Adressen"
  * ^definition = "Hier werden Angaben zur Anschrift der behandelten Person gemacht."
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* address contains
    Strassenanschrift 0..* MS and
    Postfach 0..* MS
* address[Strassenanschrift] only https://fhir.prototype.de/StructureDefinition/DatatypeAddressStreetDeCore|0.1.0
  * ^short = "Straßenanschrift"
  * ^comment = "Wohn- oder Aufenthaltsort des Patienten"
  * ^definition = "Hier werden Angaben zur Straßenanschrift gemacht."
* address[Postfach] only https://fhir.prototype.de/StructureDefinition/DatatypeAddressPostalDeCore|0.1.0
  * ^short = "Postfachadresse"
  * ^comment = "Adresse, die nur für postalische Zustellung genutzt werden kann."
  * ^definition = "Hier werden Angaben zu einem Postfach gemacht."
* maritalStatus ^short = "Personenstand"
* maritalStatus ^definition = "Hier wird der Personenstand (Familienstand) der behandelten Person angegeben."
  * coding.system 1..
  * coding.code 1..
  * coding.display 1..
* contact.relationship ^short = "Contact relationship"
* contact.name ^short = "Contact name"
* contact.telecom ^short = "Contact details for the person"
* contact.address only DatatypeAddressDeCore
  * ^short = "Contact person address"
//* contact.address.country from $KBV_VS_Base_Deuev_Anlage_8 (extensible)
//* contact.address.country ^short = "Staat"
//* contact.address.country ^definition = "Angabe des Staates als Länderkennzeichen nach DEUEV Anlage 8."
* communication.language from $KBV_VS_Base_CommonLanguages (preferred) //Die Namen sind nicht in Stein gemeißelt, die können noch geändert werden.
  * ^short = "Bevorzugte Sprache"
  * ^definition = "Hier werden Sprachen angegeben, die zur Kommunikation mit der behandelten Person über medizinische Themen verwendet werden können."
* generalPractitioner ^short = "Patient's nominated primary care provider."
* link MS
  * ^short = "Link"
  * ^comment = "Dieses und untergeordnete Elemente KÖNNEN bei einem erfolgten Patient merge entsprechend der Festlegungen unter {{pagelink:Patient-merge}} befüllt werden. 
  Da das Element der Unterstützung der Patient merge Notification dient, 
  MUSS es im Rahmen des Bestätigungsverfahrens NICHT unterstützt werden (Stand: Stufe 4)."
  * other MS
    * identifier MS
      * ^comment = "Logischer Verweis auf Identifier[Patientennummer]"
  * type MS