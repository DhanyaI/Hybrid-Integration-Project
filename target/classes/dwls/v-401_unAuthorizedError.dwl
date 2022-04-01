%dw 2.0
output application/json
---
{
	"status": "401 Unauthorized Request",
	"message": error.description default "Unauthorized Request.",
    "error": (error.errorType.namespace default "") ++ ":" ++ (error.errorType.identifier default ""),
    "correlationId": vars.logProperties.correlationId,
    "targetSystem" : "sa-galaxy-sa0004"
}