%dw 2.0
output application/json
---
{
	"status": "408 Timeout Exceeded",
	"message": error.description default "Connection timed out. Please contact to system administration.",
    "error": (error.errorType.namespace default "") ++ ":" ++ (error.errorType.identifier default ""),
    "correlationId": vars.logProperties.correlationId,
    "targetSystem" : "sa-galaxy-sa0004"
}