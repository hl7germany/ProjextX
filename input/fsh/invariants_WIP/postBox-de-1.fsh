Invariant: postBox-de-1
Description: "Die Extension 'http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-postBox' darf nur einmal vorkommen."
Severity: #error
Expression: "line.where($this.extension('http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-postBox').exists()).count()=1"