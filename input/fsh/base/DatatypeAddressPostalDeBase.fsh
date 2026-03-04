Profile: DatatypeAddressPostalDeBase
Parent: http://fhir.de/StructureDefinition/address-de-basis|1.6.0-ballot
Id: Datatype-Address-Postal-De-Base
Description: "This profile extends the Address data type for supporting streetname, housenumber and postal box."
* ^url = "https://fhir.prototype.de/StructureDefinition/DatatypeAddressPostalDeBase"
* . ^short = "Hier können Angaben zu einem Postfach gemacht werden."
* . ^definition = "Eine Adresse gemäß postalischer Konventionen (im Gegensatz zu bspw. GPS-Koordinaten). Die Adresse kann sowohl zur Zustellung von Postsendungen oder zum Aufsuchen von Orten, die keine gültige Postadresse haben, verwendet werden.\r\n\r\nDie verwendeten Extensions in diesem Profil bilden die Struktur der Adresse ab, wie sie im VSDM-Format der elektronischen Versichertenkarte verwendet wird.\r\n\r\nInsbesondere bei ausländischenOrt Adresse oder Adressen, die nicht durch Einlesen einer elektronischen Versichertenkarte erfasst wurden, sind abweichende Strukturen möglich. Die Verwendung der Extensions ist nicht verpflichtend."
* insert Meta
* obeys postBox-de-1
* obeys address-cnt-2or3-char
* type 1..1
* type = #postal (exactly)
  * ^short = "Adresstyp"
  * ^definition = "Hier ist stets der Wert `postal` anzugeben.  
  **Begründung Pflichtfeld:** Dient als Unterscheidungs- und Auswahlkriterium" 
* line
  * ^short = "Adresszeile"
  * ^definition = "Diese Komponente enthält die Postfachadresse als String der Form 'Postfach: 12345'.
  Bei Verwendung der Postfach-Extension, um die Postfachnummer strukturiert zu übermitteln, 
  müssen diese Informationen stets vollständig auch in der line-Komponente, 
  die sie erweitern, enthalten sein, um es Systemen, die diese Extensions nicht verwenden zu ermöglichen, 
  auf diese Informationen zugreifen zu können.      
  **Begründung für Reduktion der max. Kardinalität:** Die maximale Kardinalität wurde in Übereinstimmung mit der 
  DIN-Norm 5008 (Schreib- und Gestaltungsregeln für die Text- und Informationsverarbeitung) auf 3 beschränkt."
  //**Begründung Pflichtfeld:** Ohne diese Angabe ist die Adresse nicht zustellbar.
  * extension ^slicing.discriminator.type = #value
  * extension ^slicing.discriminator.path = "url"
  * extension ^slicing.rules = #open
  * extension[Strasse] 0..0
  * extension[Hausnummer] 0..0
  * extension[Adresszusatz] 0..0
  * extension[Postfach]
    * ^short = "Postfachnummer"
    * ^definition = "Postfach-Adresse. Bei Angabe eines Postfaches in dieser Extension muss das Postfach auch in Address.line angegeben werden,
      um die Interoperabilität mit Systemen zu gewährleisten, die diese Extension nicht verwenden. 
      Eine Postfach-Adresse darf nicht in Verbindung mit Address.type `physical` oder `both` verwendet werden."
* city
  * ^short = "Stadt"
  // Extension aus MII Kerndatensatz Person
  //* extension contains http://fhir.de/StructureDefinition/destatis/ags named gemeindeschluessel 0..1
* postalCode
  * ^short = "Postleitzahl"
* country from DeuevAnlage8DeBase (extensible)
  * ^short = "Land"
  * ^definition = "Angabe des Staates als Länderkennzeichen nach DEUEV Anlage 8."
  * extension contains http://hl7.org/fhir/StructureDefinition/iso21090-codedString named anlage8 0..1
    * value[x] from DeuevAnlage8DeBase (required)