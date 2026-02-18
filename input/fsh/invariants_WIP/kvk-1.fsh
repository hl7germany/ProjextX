Invariant: kvk-1
Description: "Die Krankenversichertenkartenummer muss numerisch und 6- bis 12-stellig sein."
Severity: #error
Expression: "matches('^[0-9]{6,12}$')"