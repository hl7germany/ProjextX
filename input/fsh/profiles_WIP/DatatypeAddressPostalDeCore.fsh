Profile: DatatypeAddressPostalDeCore
Parent: DatatypeAddressDeCore
Id: Datatype-Address-Postal-De-Core
Description: "This profile extends the Address data type for supporting streetname, housenumber and postal box."
* ^url = "https://fhir.prototype.de/StructureDefinition/DatatypeAddressPostalDeCore"
* . ^short = "Hier können Angaben zu einem Postfach gemacht werden."
* . ^definition = "Eine Adresse gemäß postalischer Konventionen (im Gegensatz zu bspw. GPS-Koordinaten). Die Adresse kann sowohl zur Zustellung von Postsendungen oder zum Aufsuchen von Orten, die keine gültige Postadresse haben, verwendet werden.\r\n\r\nDie verwendeten Extensions in diesem Profil bilden die Struktur der Adresse ab, wie sie im VSDM-Format der elektronischen Versichertenkarte verwendet wird.\r\n\r\nInsbesondere bei ausländischenOrt Adresse oder Adressen, die nicht durch Einlesen einer elektronischen Versichertenkarte erfasst wurden, sind abweichende Strukturen möglich. Die Verwendung der Extensions ist nicht verpflichtend."
* insert Meta
* obeys postBox-de-1
* obeys address-cnt-2or3-char
* type 1.. MS
  * ^short = "Adresstyp"
  * ^comment = "Hier ist stets der Wert `postal` anzugeben.  
  **Begründung Pflichtfeld:** Dient als Unterscheidungs- und Auswahlkriterium" 
* type = #postal
* line MS
  * ^short = "Adresszeile"
  * ^comment = "Diese Komponente enthält die Postfachadresse als String der Form 'Postfach: 12345'.
  Bei Verwendung der Postfach-Extension, um die Postfachnummer strukturiert zu übermitteln, 
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
  * extension[Strasse] 0..0
  * extension[Hausnummer] 0..0
  * extension[Adresszusatz] 0..0
  * extension[Postfach] 0..1 MS
    * ^short = "Postfachnummer"
    * ^comment = "Postfach-Adresse. Bei Angabe eines Postfaches in dieser Extension muss das Postfach auch in Address.line angegeben werden,
      um die Interoperabilität mit Systemen zu gewährleisten, die diese Extension nicht verwenden. 
      Eine Postfach-Adresse darf nicht in Verbindung mit Address.type `physical` oder `both` verwendet werden.  
      **Begründung MS:** Erforderlich für die verlustfreie Kommunikation von VSDM-Daten."
* city 0..1 MS
  * ^short = "Stadt"
  * ^comment = "**Begründung Pflichtfeld:** Ohne diese Angabe ist die Adresse nicht zustellbar."
* postalCode 0..1 MS
  * ^short = "Postleitzahl"
  * ^comment = "**Begründung Pflichtfeld:** Ohne diese Angabe ist die Adresse nicht zustellbar."
* country 0..1 MS
  * ^short = "Land"
  * ^comment = "**Begründung Pflichtfeld:** Ohne diese Angabe ist die Adresse nicht zustellbar."
//* country from $KBV_VS_Base_Deuev_Anlage_8 (extensible)
//* country ^definition = "Angabe des Staates als Länderkennzeichen nach DEUEV Anlage 8."