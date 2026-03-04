Invariant: DatatypeContactpointTIMessengerID-mxid-1
Description: "Die TI-Messenger-ID muss eine [gültige MXID](https://spec.matrix.org/latest/appendices/#user-identifiers) sein."
* severity = #error
* expression = "matches('matrix:@[a-z0-9\\\\-\\\\._=\\/\\\\+]{1,}:[a-zA-Z0-9\\\\-\\\\.]{1,255}(:[0-9+]{1,5})?') and length() <= 262"