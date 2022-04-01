%dw 2.0
output application/json
---
{
	"status": "406 Not Acceptable",
	"message": error.description default "Not acceptable",
    "error": (error.errorType.namespace default "") ++ ":" ++ (error.errorType.identifier default ""),
    "correlationId": vars.logProperties.correlationId,
    "targetSystem" : "sa-galaxy-sa0004"
}