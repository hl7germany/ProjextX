Profile: DatatypeAddressStreetDeBase
Parent: http://fhir.de/StructureDefinition/address-de-basis|1.6.0-ballot
Id: Datatype-Address-Street-De-Base
Description: "This profile extends the Address data type for supporting streetname, housenumber and postal box."
* ^url = "https://fhir.prototype.de/StructureDefinition/DatatypeAddressStreetDeBase"
* . ^short = "Eine Straßenadresse gemäß postalischer Konventionen"
* . ^definition = "Hier können Angaben zur Straßenanschrift gemacht werden."
* insert Meta
* obeys address-cnt-2or3-char
* extension[Stadtteil]
* type 1..1
* type = #both (exactly)
  * ^short = "Adresstyp"
  * ^definition = "Hier ist stets der Wert `both` anzugeben.
  **Begründung Pflichtfeld:** Dient als Unterscheidungs- und Auswahlkriterium"  
* line
  * ^short = "Adresszeile"
  * ^definition = "Diese Komponente kann Straßennamen, Hausnummer, Appartmentnummer, c/o 
  sowie weitere Zustellungshinweise enthalten. 
  Die Informationen können in mehrere line-Komponenten aufgeteilt werden. 
  Bei Verwendung der Extensions, um Straße, Hausnnummer und Postleitzahl strukturiert zu übermitteln, 
  müssen diese Informationen stets vollständig auch in der line-Komponente, 
  die sie erweitern, enthalten sein, um es Systemen, die diese Extensions nicht verwenden zu ermöglichen, 
  auf diese Informationen zugreifen zu können.      
  **Begründung für Reduktion der max. Kardinalität:** Die maximale Kardinalität wurde in Übereinstimmung mit der 
  DIN-Norm 5008 (Schreib- und Gestaltungsregeln für die Text- und Informationsverarbeitung) auf 3 beschränkt."
  //**Begründung Pflichtfeld:** Ohne diese Angabe ist die Adresse nicht zustellbar.
  * extension ^slicing.discriminator.type = #value
  * extension ^slicing.discriminator.path = "url"
  * extension ^slicing.rules = #open
  * extension[Strasse] 
    * ^short = "Strassenname"
    * ^definition = "Strassenname (ohne Hausnummer).
      Bei Angabe einer Strasse in dieser Extension muss diese auch in Address.line angegeben werden,
      um die Interoperabilität mit Systemen zu gewährleisten, die diese Extension nicht verwenden."
  * extension[Hausnummer]
    * ^short = "Hausnummer"
    * ^definition = "Hausnummer, sowie Zusätze (Appartmentnummer, Etage...). 
      Bei Angabe einer Hausnummer in dieser Extension muss diese auch in Address.line angegeben werden,
      um die Interoperabilität mit Systemen zu gewährleisten, die diese Extension nicht verwenden."
  * extension[Adresszusatz]
    * ^short = "Adresszusatz"
    * ^definition = "Zusätzliche Informationen, wie z.B. '3. Etage', 'Appartment C'.
      Bei Angabe einer Zusatzinformation in dieser Extension muss diese auch in Address.line angegeben werden,
      um die Interoperabilität mit Systemen zu gewährleisten, die diese Extension nicht verwenden."  
  * extension[Postfach] 0..0
* city
  * ^short = "Stadt"
  // Extension aus MII Kerndatensatz Person
  //* extension contains http://fhir.de/StructureDefinition/destatis/ags named gemeindeschluessel 0..1 MS
* postalCode 
  * ^short = "Postleitzahl"
* country from DeuevAnlage8DeBase (extensible)
  * ^short = "Land"
  * ^definition = "Angabe des Staates als Länderkennzeichen nach DEUEV Anlage 8."
  * extension contains http://hl7.org/fhir/StructureDefinition/iso21090-codedString named anlage8 0..1
    * value[x] from DeuevAnlage8DeBase (required)