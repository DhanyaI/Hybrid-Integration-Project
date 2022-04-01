%dw 2.0
output application/json
---
{
	"status": 502,
	"message": error.description default "Cannot connect to the server, please contact your system administrator.",
    "error": (error.errorType.namespace default "") ++ ":" ++ (error.errorType.identifier default ""),
    "correlationId": vars.logProperties.correlationId,
    "targetSystem" : "sa0004-galaxy"
}