
Instance: Creator-ISiK
InstanceOf: R5-ActorDefinition-for-R4
Usage: #example
* extension[0].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition"

// url
* extension[0].extension[0].url = "url"
* extension[0].extension[0].valueUri = "https://fhir.prototype.de/ActorDefinition/Creator-ISiK"

// version
* extension[0].extension[+].url = "version"
* extension[0].extension[=].valueString = "0.1.0"

// name
* extension[0].extension[+].url = "name"
* extension[0].extension[=].valueString = "Creator_ISiK"

// title
* extension[0].extension[+].url = "title"
* extension[0].extension[=].valueString = "Creator (ISiK)"

// status
* extension[0].extension[+].url = "status"
* extension[0].extension[=].valueCode = #unknown

// date
* extension[0].extension[+].url = "date"
* extension[0].extension[=].valueDateTime = "2026-02-05"

// description
* extension[0].extension[+].url = "description"
* extension[0].extension[=].valueMarkdown = "Ein ISiK-Creator ist ein System, das Daten erstellt und deren Inhalte versendet."

// type
* extension[0].extension[+].url = "type"
* extension[0].extension[=].valueCode = #entity

// documentation
* extension[0].extension[+].url = "documentation"
* extension[0].extension[=].valueMarkdown = "Ein Producer stellt von dieser Spezifikation profilierte FHIR‑Daten und ‑Ereignisse für andere Systeme bereit, die Daten abrufen, Operationen aufrufen oder sich für Nachrichten bzw. Ereignisse registrieren.
- Zweck: Abbildung eines FHIR‑Servers bzw. -Systems, das Konformität zu einem oder mehreren Profilen dieser Spezifikation erklärt.
- Geltungsbereich der Erwartungen: Ein Producer ist nur für die Verpflichtungen verantwortlich, die für jene Profile gelten, zu denen er Konformität erklärt."

// publisher
//* extension[0].extension[+].url = "publisher"
//* extension[0].extension[=].valueString = "Kernprofile"

// contact
//* extension[0].extension[+].url = "contact"
//* extension[0].extension[=].valueContactDetail.name = "Kernprofile"
//* extension[0].extension[=].valueContactDetail.telecom.system = #url
//* extension[0].extension[=].valueContactDetail.telecom.value = "https://fhir.prototype.de"