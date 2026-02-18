Profile: DatatypeContactpointDeCore
Parent: ContactPoint
Id: Datatype-Contactpoint-De-Core
Description: "Dieses Profil bildet Kontaktangaben wie Telefonnummern oder E-Mail-Adressen ab."
* ^url = "https://fhir.prototype.de/StructureDefinition/DatatypeContactpointDeCore"
* . ^definition = "Dieses Element beschreibt die vorhandenen Kontaktmöglichkeiten."
* insert Meta
* system 1..
  * ^short = "Art der Kontaktdaten"
  * ^definition = "Telekommunikationsform für die Kontaktstelle - Kommunikationssystem, welches erforderlich ist, um den Kontakt zu nutzen. 
    **Begründung Pflichtfeld:** Dient der Unterscheidung verschiedener Kontaktarten"
* value 1..
  * ^short = "Wert der Kontaktdaten"
  * ^definition = "In diesem Element werden Kontaktinformationen passend zum Kontaktkanal angegeben. Beispiele für mögliche Werte sind: 'm.mustermann@mio42.de' (beim Kontaktkanal 'E-Mail', oder '030712345678' (beim Kontaktkanal 'Telefon').  
    **Begründung Pflichtfeld:** Ohne diese Angabe sind die Kontaktdaten nicht nutzbar."