# MyPatient - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MyPatient**

## Resource Profile: MyPatient 

| | |
| :--- | :--- |
| *Official URL*:http://gefyra.info/training/StructureDefinition/MyPatient | *Version*:0.1.0 |
| Draft as of 2026-02-13 | *Computable Name*:MyPatient |

 
An example profile of the Patient resource. 

**Usages:**

* Examples for this Profile: [Patient/PatientExample](Patient-PatientExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/info.gefyra.training|current/StructureDefinition/MyPatient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MyPatient.csv), [Excel](StructureDefinition-MyPatient.xlsx), [Schematron](StructureDefinition-MyPatient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MyPatient",
  "url" : "http://gefyra.info/training/StructureDefinition/MyPatient",
  "version" : "0.1.0",
  "name" : "MyPatient",
  "status" : "draft",
  "date" : "2026-02-13T10:55:57+00:00",
  "publisher" : "Gefyra GmbH",
  "contact" : [
    {
      "name" : "Gefyra GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://gefyra.info/"
        }
      ]
    }
  ],
  "description" : "An example profile of the Patient resource.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient"
      },
      {
        "id" : "Patient.name",
        "path" : "Patient.name",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Patient.name.family",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://fhir.de/base/ActorDefinition/Creator"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://fhir.de/base/ActorDefinition/Consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Patient.name.family",
        "mustSupport" : true
      },
      {
        "id" : "Patient.name.given",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:populate-if-known"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://fhir.de/base/ActorDefinition/Creator"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHOULD:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "http://fhir.de/base/ActorDefinition/Consumer"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Patient.name.given",
        "mustSupport" : true
      }
    ]
  }
}

```
