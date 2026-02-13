Profile: DatatypeContactpointDeCore
Parent: ContactPoint
Id: Datatype-Contactpoint-De-Core
Description: "Dieses Profil bildet Kontaktangaben wie Telefonnummern oder E-Mail-Adressen ab."
* ^url = "https://fhir.kbv.de/StructureDefinition/DatatypeContactpointDeCore"
* . ^definition = "Dieses Element beschreibt die vorhandenen Kontaktmöglichkeiten."
* insert Meta
* system 1.. MS
  * ^short = "Art der Kontaktdaten"
  * ^comment = "Hier ist der Art der Kontaktdaten anzugeben, z.B. `phone` für Telefonnummer oder `email` für E-Mail-Adresse.  
    **Begründung Pflichtfeld:** Dient der Unterscheidung verschiedener Kontaktarten"
  * ^definition = "Telekommunikationsform für die Kontaktstelle - Kommunikationssystem, welches erforderlich ist, um den Kontakt zu nutzen."
* value 1.. MS
  * ^short = "Wert der Kontaktdaten"
  * ^comment = "Enthält den eigentlichen Wert der Kontaktdaten, z.B. die Telefonnummer oder E-Mail-Adresse.  
    **Begründung Pflichtfeld:** Ohne diese Angabe sind die Kontaktdaten nicht nutzbar."
  * ^definition = "In diesem Element werden Kontaktinformationen passend zum Kontaktkanal angegeben. Beispiele für mögliche Werte sind: 'm.mustermann@mio42.de' (beim Kontaktkanal 'E-Mail', oder '030712345678' (beim Kontaktkanal 'Telefon')."