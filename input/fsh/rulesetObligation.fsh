Alias: $creator = http://fhir.de/base/ActorDefinition/Creator
Alias: $consumer = http://fhir.de/base/ActorDefinition/Consumer
Alias: $isik = https://fhir.prototype.de/ActorDefinition/ISiK
Alias: $kbv = https://fhir.prototype.de/ActorDefinition/KBV
Alias: $ti-common = https://fhir.prototype.de/ActorDefinition/TI-Common
Alias: $eu-core = https://fhir.prototype.de/ActorDefinition/EU-Core
Alias: $vsdm = https://fhir.prototype.de/ActorDefinition/VSDM2

RuleSet: obligation(code, actorAlias)
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* ^extension[=].extension[+].url = "code"
* ^extension[=].extension[=].valueCode = {code}
* ^extension[=].extension[+].url = "actor"
* ^extension[=].extension[=].valueCanonical = {actorAlias}