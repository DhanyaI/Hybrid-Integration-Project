%dw 2.0
output application/json
---
{
	"status": "400 Bad Request",
    "message": error.description default "Bad Request. Please contact to system administration.",
    "error": (error.errorType.namespace default "") ++ ":" ++ (error.errorType.identifier default ""),
    "correlationId": vars.logProperties.correlationId,
    "targetSystem" : "sa-galaxy-sa0004"
}