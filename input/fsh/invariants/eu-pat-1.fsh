Invariant: eu-pat-1
Description: "given, family, text or a data-absent-reason extension SHALL be present"
Severity: #error
Expression: "family.exists() or given.exists() or text.exists() or extension('http://hl7.org/fhir/StructureDefinition/data-absent-reason').exists()"