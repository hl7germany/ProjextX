
Instance: Consumer-ISiK
InstanceOf: R5-ActorDefinition-for-R4
Usage: #example
* extension[0].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-ActorDefinition"

// url
* extension[0].extension[0].url = "url"
* extension[0].extension[0].valueUri = "https://fhir.prototype.de/ActorDefinition/Consumer-ISiK"

// version
* extension[0].extension[+].url = "version"
* extension[0].extension[=].valueString = "0.1.0"

// name
* extension[0].extension[+].url = "name"
* extension[0].extension[=].valueString = "Consumer_ISiK"

// title
* extension[0].extension[+].url = "title"
* extension[0].extension[=].valueString = "Consumer (ISiK)"

// status
* extension[0].extension[+].url = "status"
* extension[0].extension[=].valueCode = #unknown

// date
* extension[0].extension[+].url = "date"
* extension[0].extension[=].valueDateTime = "2026-02-05"

// description
* extension[0].extension[+].url = "description"
* extension[0].extension[=].valueMarkdown = "Ein ISiK-Consumer ist ein System, das Daten empfängt und deren Inhalte verwendet."

// type
* extension[0].extension[+].url = "type"
* extension[0].extension[=].valueCode = #entity

// documentation
* extension[0].extension[+].url = "documentation"
* extension[0].extension[=].valueMarkdown = "Ein ISiK-Consumer ruft konforme Inhalte ab oder empfängt sie, um Gesundheitsdaten anzuzeigen, zu verarbeiten oder weiterzuverwenden.
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