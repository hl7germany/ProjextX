Profile: DatatypeAddressStreetDeCore
Parent: DatatypeAddressDeCore
Id: Datatype-Address-Street-De-Core
Description: "This profile extends the Address data type for supporting streetname, housenumber and postal box."
* ^url = "https://fhir.prototype.de/StructureDefinition/DatatypeAddressStreetDeCore"
* . ^short = "Eine Straßenadresse gemäß postalischer Konventionen"
* . ^definition = "Hier können Angaben zur Straßenanschrift gemacht werden."
* insert Meta
* obeys address-cnt-2or3-char
* extension[Stadtteil]
* type 1..
  * ^short = "Adresstyp"
  * ^definition = "Hier ist stets der Wert `both` anzugeben.
  **Begründung Pflichtfeld:** Dient als Unterscheidungs- und Auswahlkriterium"  
* type = #both
* line 1..
  * ^short = "Adresszeile"
  * ^definition = "Diese Komponente kann Straßennamen, Hausnummer, Appartmentnummer, c/o 
  sowie weitere Zustellungshinweise enthalten. 
  Die Informationen können in mehrere line-Komponenten aufgeteilt werden. 
  Bei Verwendung der Extensions, um Straße, Hausnnummer und Postleitzahl strukturiert zu übermitteln, 
  müssen diese Informationen stets vollständig auch in der line-Komponente, 
  die sie erweitern, enthalten sein, um es Systemen, die diese Extensions nicht verwenden zu ermöglichen, 
  auf diese Informationen zugreifen zu können.  
  **Begründung Pflichtfeld:** Ohne diese Angabe ist die Adresse nicht zustellbar.  
  **Begründung für Reduktion der max. Kardinalität:** Die maximale Kardinalität wurde in Übereinstimmung mit der 
  DIN-Norm 5008 (Schreib- und Gestaltungsregeln für die Text- und Informationsverarbeitung) auf 3 beschränkt."
  * extension ^slicing.discriminator.type = #value
  * extension ^slicing.discriminator.path = "url"
  * extension ^slicing.rules = #open
  * extension ^min = 0
  * extension[Strasse] 0..1 
    * ^short = "Strassenname"
    * ^definition = "Strassenname (ohne Hausnummer).
      Bei Angabe einer Strasse in dieser Extension muss diese auch in Address.line angegeben werden,
      um die Interoperabilität mit Systemen zu gewährleisten, die diese Extension nicht verwenden."
    * ^comment = "**Begründung Obligation:** Erforderlich für die verlustfreie Kommunikation von VSDM-Daten."
    * insert obligation(#SHALL:populate, $creator-isik)
    * insert obligation(#SHALL:handle, $consumer-isik)
  * extension[Hausnummer] 0..1 
    * ^short = "Hausnummer"
    * ^definition = "Hausnummer, sowie Zusätze (Appartmentnummer, Etage...). 
      Bei Angabe einer Hausnummer in dieser Extension muss diese auch in Address.line angegeben werden,
      um die Interoperabilität mit Systemen zu gewährleisten, die diese Extension nicht verwenden."
    * ^comment = "**Begründung Obligation:** Erforderlich für die verlustfreie Kommunikation von VSDM-Daten."
    * insert obligation(#SHALL:populate, $creator-isik)
    * insert obligation(#SHALL:handle, $consumer-isik)
  * extension[Adresszusatz] 0..1 
    * ^short = "Adresszusatz"
    * ^definition = "Zusätzliche Informationen, wie z.B. '3. Etage', 'Appartment C'.
      Bei Angabe einer Zusatzinformation in dieser Extension muss diese auch in Address.line angegeben werden,
      um die Interoperabilität mit Systemen zu gewährleisten, die diese Extension nicht verwenden."  
    * ^comment = "**Begründung Obligation:** Erforderlich für die verlustfreie Kommunikation von VSDM-Daten."
    * insert obligation(#SHALL:populate, $creator-isik)
    * insert obligation(#SHALL:handle, $consumer-isik)
  * extension[Postfach] 0..0
    * ^short = "Postfachnummer"
    * ^definition = "Postfach-Adresse. Bei Angabe eines Postfaches in dieser Extension muss das Postfach auch in Address.line angegeben werden,
      um die Interoperabilität mit Systemen zu gewährleisten, die diese Extension nicht verwenden. 
      Eine Postfach-Adresse darf nicht in Verbindung mit Address.type `physical` oder `both` verwendet werden."
* city  
  * ^short = "Stadt"
  * ^comment = "**Begründung Obligation:** Ohne diese Angabe ist die Adresse nicht zustellbar."
  * insert obligation(#SHALL:populate, $creator-isik)
  * insert obligation(#SHALL:handle, $consumer-isik)
* postalCode 
  * ^short = "Postleitzahl"
  * ^comment = "**Begründung Obligation:** Ohne diese Angabe ist die Adresse nicht zustellbar."
  * insert obligation(#SHALL:populate, $creator-isik)
  * insert obligation(#SHALL:handle, $consumer-isik)
* country 
  * ^short = "Land"
  * ^comment = "**Begründung Obligation:** Ohne diese Angabe ist die Adresse nicht zustellbar."
  * insert obligation(#SHALL:populate, $creator-isik)
  * insert obligation(#SHALL:handle, $consumer-isik)
//* country from $KBV_VS_Base_Deuev_Anlage_8 (extensible)
//* country ^definition = "Angabe des Staates als Länderkennzeichen nach DEUEV Anlage 8."
