Alias: $creator = http://fhir.de/base/ActorDefinition/Creator
Alias: $consumer = http://fhir.de/base/ActorDefinition/Consumer
Alias: $creator-isik = https://fhir.prototype.de/ActorDefinition/Creator-ISiK
Alias: $consumer-isik = https://fhir.prototype.de/ActorDefinition/Consumer-ISiK
Alias: $creator-kbv = https://fhir.prototype.de/ActorDefinition/Creator-KBV
Alias: $consumer-kbv = https://fhir.prototype.de/ActorDefinition/Consumer-KBV
Alias: $creator-ti-common = https://fhir.prototype.de/ActorDefinition/Creator-TI-Common
Alias: $consumer-ti-common = https://fhir.prototype.de/ActorDefinition/Consumer-TI-Common
Alias: $creator-epa = https://fhir.prototype.de/ActorDefinition/Creator-ePA
Alias: $consumer-epa = https://fhir.prototype.de/ActorDefinition/Consumer-ePA
Alias: $server = https://fhir.prototype.de/ActorDefinition/Server
Alias: $client = https://fhir.prototype.de/ActorDefinition/Client
Alias: $ambulant = https://fhir.prototype.de/ActorDefinition/ambulant
Alias: $stationaer = https://fhir.prototype.de/ActorDefinition/stationaer

RuleSet: obligation(code, actorAlias)
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* ^extension[=].extension[+].url = "code"
* ^extension[=].extension[=].valueCode = {code}
* ^extension[=].extension[+].url = "actor"
* ^extension[=].extension[=].valueCanonical = {actorAlias}