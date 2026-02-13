Alias: $CoreDeVersion = 0.1.0

RuleSet: Meta
* ^version = $CoreDeVersion
* ^status = #draft
* ^experimental = true
//* ^publisher = "gematik GmbH"
//* ^contact.name = "gematik GmbH"
//* ^contact.telecom[0].system = #url
//* ^contact.telecom[=].value = "https://www.gematik.de"
//* ^contact.telecom[+].system = #email
//* ^contact.telecom[=].value = "patientteam [ at ] gematik.de"
//* ^copyright = "gematik GmbH / Dieses Artefakt ist lizenziert unter [Apache License](./license.html), Version 2.0."
* ^jurisdiction = urn:iso:std:iso:3166#DE
* ^date = "2026-02-05"

RuleSet: CommonElements
* id MS
  * ^short = "serverseitige, interne ID des Datensatzes"
  * ^comment = "**bedingtes Pflichtfeld/bedingtes MS:** Alle von einem Server bereitgestellten Ressourcen MÜSSEN über eine `id` verfügen.
  Von Clients erzeugte Ressourcen, die im Kontext einer CREATE-Interaktion übermittelt werden, MÜSSEN NICHT über eine `id`verfügen. "
* meta.lastUpdated
  * ^short = "Zeitpunkt der letzten Änderung"
  * ^comment = "Alle von einem Server bereitgestellten Ressourcen SOLLEN über ein `lastUpdate` verfügen.
  Von Clients erzeugte Ressourcen, die im Kontext einer CREATE-Interaktion übermittelt werden, MÜSSEN NICHT über ein `lastUpdate`verfügen. " 
* meta.versionId 
  * ^short = "Eindeutiger Name der serverseitigen Version des Datensatzes"
  * ^comment = "Alle von einem Server bereitgestellten Ressourcen SOLLEN über eine `versionID` verfügen.
  Von Clients erzeugte Ressourcen, die im Kontext einer CREATE-Interaktion übermittelt werden, MÜSSEN NICHT über eine `versionID`verfügen. " 