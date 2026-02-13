Profile: DatatypeAddressStreetDeCore
Parent: DatatypeAddressDeCore
Id: Datatype-Address-Street-De-Core
Description: "This profile extends the Address data type for supporting streetname, housenumber and postal box."
* ^url = "https://fhir.prototype.de/StructureDefinition/DatatypeAddressStreetDeCore"
* . ^short = "Eine Straßenadresse gemäß postalischer Konventionen"
* . ^definition = "Hier können Angaben zur Straßenanschrift gemacht werden."
* insert Meta
* obeys address-cnt-2or3-char
* extension[Stadtteil] MS
* type 1.. MS
  * ^short = "Adresstyp"
  * ^comment = "Hier ist stets der Wert `both` anzugeben.
  **Begründung Pflichtfeld:** Dient als Unterscheidungs- und Auswahlkriterium"  
* type = #both
* line 1.. MS
  * ^short = "Adresszeile"
  * ^comment = "Diese Komponente kann Straßennamen, Hausnummer, Appartmentnummer, c/o 
  sowie weitere Zustellungshinweise enthalten. 
  Die Informationen können in mehrere line-Komponenten aufgeteilt werden. 
  Bei Verwendung der Extensions, um Straße, Hausnnummer und Postleitzahl strukturiert zu übermitteln, 
  müssen diese Informationen stets vollständig auch in der line-Komponente, 
  die sie erweitern, enthalten sein, um es Systemen, die diese Extensions nicht verwenden zu ermöglichen, 
  auf diese Informationen zugreifen zu können.  
  **Begründung Pflichtfeld:** Ohne diese Angabe ist die Adresse nicht zustellbar.  
  **Begründung für Reduktion der max. Kardinalität:** Die maximale Kardinalität wurde in Übereinstimmung mit der 
  DIN-Norm 5008 (Schreib- und Gestaltungsregeln für die Text- und Informationsverarbeitung) auf 3 beschränkt."
  * ^definition = "Diese Komponente kann Straßennamen, Hausnummer, Appartmentnummer, Postfach, c/o sowie weitere Zustellungshinweise enthalten. Die Informationen können in mehrere line-Komponenten aufgeteilt werden.\r\nBei Verwendung der Extensions, um Straße, Hausnnummer und Postleitzahl strukturiert zu übermitteln, müssen diese Informationen stets vollständig auch in der line-Komponente, die sie erweitern, enthalten sein, um es Systemen, die diese Extensions nicht verwenden zu ermöglichen, auf diese Informationen zugreifen zu können. Es wird empfohlen, dass die erste Zeile für Straße und Hausnummer, die zweite Zeile für den Zusatz und die dritte Zeile für den Stadtteil verwendet wird."
  * extension ^slicing.discriminator.type = #value
  * extension ^slicing.discriminator.path = "url"
  * extension ^slicing.rules = #open
  * extension ^min = 0
  * extension[Strasse] 0..1 MS
    * ^short = "Strassenname"
    * ^comment = "Strassenname (ohne Hausnummer).
      Bei Angabe einer Strasse in dieser Extension muss diese auch in Address.line angegeben werden,
      um die Interoperabilität mit Systemen zu gewährleisten, die diese Extension nicht verwenden.  
      **Begründung MS:** Erforderlich für die verlustfreie Kommunikation von VSDM-Daten."
  * extension[Hausnummer] 0..1 MS
    * ^short = "Hausnummer"
    * ^comment = "Hausnummer, sowie Zusätze (Appartmentnummer, Etage...). 
      Bei Angabe einer Hausnummer in dieser Extension muss diese auch in Address.line angegeben werden,
      um die Interoperabilität mit Systemen zu gewährleisten, die diese Extension nicht verwenden.   
      **Begründung MS:** Erforderlich für die verlustfreie Kommunikation von VSDM-Daten."
  * extension[Adresszusatz] 0..1 MS
    * ^short = "Adresszusatz"
    * ^comment = "Zusätzliche Informationen, wie z.B. '3. Etage', 'Appartment C'.
      Bei Angabe einer Zusatzinformation in dieser Extension muss diese auch in Address.line angegeben werden,
      um die Interoperabilität mit Systemen zu gewährleisten, die diese Extension nicht verwenden.  
      **Begründung MS:** Erforderlich für die verlustfreie Kommunikation von VSDM-Daten."  
  * extension[Postfach] 0..0
    * ^short = "Postfachnummer"
    * ^comment = "Postfach-Adresse. Bei Angabe eines Postfaches in dieser Extension muss das Postfach auch in Address.line angegeben werden,
      um die Interoperabilität mit Systemen zu gewährleisten, die diese Extension nicht verwenden. 
      Eine Postfach-Adresse darf nicht in Verbindung mit Address.type `physical` oder `both` verwendet werden.  
      **Begründung MS:** Erforderlich für die verlustfreie Kommunikation von VSDM-Daten."
* city MS
  * ^short = "Stadt"
  * ^comment = "**Begründung Pflichtfeld:** Ohne diese Angabe ist die Adresse nicht zustellbar."
* postalCode MS
  * ^short = "Postleitzahl"
  * ^comment = "**Begründung Pflichtfeld:** Ohne diese Angabe ist die Adresse nicht zustellbar."
* country MS
  * ^short = "Land"
  * ^comment = "**Begründung Pflichtfeld:** Ohne diese Angabe ist die Adresse nicht zustellbar."
//* country from $KBV_VS_Base_Deuev_Anlage_8 (extensible)
//* country ^definition = "Angabe des Staates als Länderkennzeichen nach DEUEV Anlage 8."