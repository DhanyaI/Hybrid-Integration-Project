%dw 2.0
output application/json
---
{
	"status": "405 Method Not Allowed",
	"message": error.description default "Method Not Supported.",
    "error": (error.errorType.namespace default "") ++ ":" ++ (error.errorType.identifier default ""),
    "correlationId": vars.logProperties.correlationId,
    "targetSystem" : "sa-galaxy-sa0004"
}