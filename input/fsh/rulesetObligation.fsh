Alias: $creator = http://fhir.de/base/ActorDefinition/Creator
Alias: $consumer = http://fhir.de/base/ActorDefinition/Consumer

RuleSet: obligation(code, actorAlias)
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/obligation"
* ^extension[=].extension[+].url = "code"
* ^extension[=].extension[=].valueCode = {code}
* ^extension[=].extension[+].url = "actor"
* ^extension[=].extension[=].valueCanonical = {actorAlias}
