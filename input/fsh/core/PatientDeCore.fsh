Profile: PatientDeCore
Parent: PatientDeBase
Id: Patient-De-Core
Description: "Dieses Profil spezifiziert die Minimalanforderungen für die Bereitstellung von administrativen Patientendaten."
* ^url = "https://fhir.prototype.de/StructureDefinition/PatientDeCore"
* . ^definition = "Dieses Profil beschreibt eine Person, die eine oder mehrere medizinische Leistungen in Anspruch nimmt."
* identifier
  * insert obligation(#SHALL:populate, $isik)
  * insert obligation(#SHALL:populate, $vsdm)
* identifier[pid]
  * ^comment = "Begründung Obligation: Für eine Weiterverarbeitung einer Patient-Ressource innerhalb von klininschen Informationssysteme MUSS eine Patienten-ID vorliegen. Innerhalb des ambulanten Sektors SOLLTE die Patienten-ID vorliegen."
  * insert obligation(#SHALL:populate, $isik)
  * type.coding
    * insert obligation(#SHALL:populate, $kbv)
    * system
      * insert obligation(#SHALL:populate, $kbv)
    * code
      * insert obligation(#SHALL:populate, $kbv)
* identifier[versichertenId]
  * insert obligation(#SHALL:populate, $vsdm)
  * type
    * insert obligation(#SHALL:populate, $kbv)
    * insert obligation(#SHALL:populate, $isik)
    * coding
      * insert obligation(#SHALL:populate, $kbv)
      * system
        * insert obligation(#SHALL:populate, $kbv)
      * code
        * insert obligation(#SHALL:populate, $kbv)
* identifier[versichertennummer_pkv]
  * type
    * insert obligation(#SHALL:populate, $kbv)
    * insert obligation(#SHALL:populate, $isik)
    * coding
      * insert obligation(#SHALL:populate, $kbv)
      * system
        * insert obligation(#SHALL:populate, $kbv)
      * code
        * insert obligation(#SHALL:populate, $kbv)
* name
  //* obeys eu-pat-1
  * insert obligation(#SHALL:populate, $isik)
  * insert obligation(#SHALL:populate, $ti-common)
  * insert obligation(#SHALL:populate, $kbv)
  * insert obligation(#SHALL:populate, $vsdm)
  * insert obligation(#SHALL:populate, $eu-core)
* name[name]
  * ^comment = "**Begründung Obligation:** Der offizielle Name des Patienten ist unerlässlich, um Verwechlungen zu vermeiden und den Patienten im Versorgungskontext korrekt anzusprechen.
  Wenn kein Name vorliegt, MUSS die [data-absent-reason-Extension](https://www.hl7.org/fhir/R4/extension-data-absent-reason.html) eingesetzt werden."
  * insert obligation(#SHALL:populate, $isik)
  * insert obligation(#SHALL:populate, $ti-common)
  * insert obligation(#SHALL:populate, $vsdm)
  * family
    * insert obligation(#SHALL:populate, $isik)
    * insert obligation(#SHALL:populate, $ti-common)
    * insert obligation(#SHALL:populate, $kbv)
  * given 
    * ^comment = "**Begründung Obligation:** Ein offizieller Name ist nur zulässig, wenn der Nachname und mindestens ein Vorname angegeben sind."
    * insert obligation(#SHALL:populate, $isik)
    * insert obligation(#SHALL:populate, $ti-common)
  * prefix.extension 
    * insert obligation (#SHALL:populate, $kbv)
  * prefix.extension[prefix-qualifier] 
    * ^comment = "**Begründung Obligation:** Erforderlich für die verlustfreie Kommunikation von VSDM-Daten"
    * insert obligation(#SHALL:populate, $kbv)
      * value[x] 
        * insert obligation(#SHALL:populate, $ti-common)
* name[geburtsname]
  * family
    * insert obligation(#SHALL:populate, $isik)
    * insert obligation(#SHALL:populate, $ti-common)
    * insert obligation(#SHALL:populate, $kbv)
* telecom
  * system
    * insert obligation(#SHALL:populate, $isik)
    * insert obligation(#SHALL:populate, $kbv)
  * value
    * insert obligation(#SHALL:populate, $isik)
    * insert obligation(#SHALL:populate, $kbv)
* gender
  * ^comment = "**Begründung Obligation:** Die Geschlechtsangabe ist für viele Versorgungsprozesse unerlässlich, z.B.  
    * Bettendisposition
    * Ermittlung von Referenzwerten
    * korrekte Anrede des Patienten"
  * insert obligation(#SHALL:populate, $isik)
* birthDate
  * insert obligation(#SHALL:populate, $isik)
  * insert obligation(#SHALL:populate, $ti-common)
  * insert obligation(#SHALL:populate, $kbv)
  * insert obligation(#SHALL:populate, $vsdm)
  * insert obligation(#SHALL:populate, $eu-core)
  * extension[data-absent-reason].valueCode 
    * insert obligation (#SHALL:populate, $kbv)
* address[Strassenanschrift]
  * line
    * insert obligation(#SHALL:populate, $isik)
  * city  
    * ^comment = "**Begründung Obligation:** Ohne diese Angabe ist die Adresse nicht zustellbar."
    * insert obligation(#SHALL:populate, $isik)
  * postalCode 
    * ^comment = "**Begründung Obligation:** Ohne diese Angabe ist die Adresse nicht zustellbar."
    * insert obligation(#SHALL:populate, $isik)
  * country 
    * ^comment = "**Begründung Obligation:** Ohne diese Angabe ist die Adresse nicht zustellbar."
    * insert obligation(#SHALL:populate, $isik)
    * extension[countryCode]
      * insert obligation(#SHALL:populate, $vsdm)
* address[Postfach]
  * line
    * insert obligation(#SHALL:populate, $isik)
  * city  
    * ^comment = "**Begründung Obligation:** Ohne diese Angabe ist die Adresse nicht zustellbar."
    * insert obligation(#SHALL:populate, $isik)
  * postalCode 
    * ^comment = "**Begründung Obligation:** Ohne diese Angabe ist die Adresse nicht zustellbar."
    * insert obligation(#SHALL:populate, $isik)
  * country 
    * ^comment = "**Begründung Obligation:** Ohne diese Angabe ist die Adresse nicht zustellbar."
    * insert obligation(#SHALL:populate, $isik)
    * extension[countryCode]
      * insert obligation(#SHALL:populate, $vsdm)
* maritalStatus
  * coding
    * system
      * insert obligation(#SHALL:populate, $kbv)
    * code
      * insert obligation(#SHALL:populate, $kbv)
    * display
      * insert obligation(#SHALL:populate, $kbv)