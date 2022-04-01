%dw 2.0
output application/json
---
{
	"status": "501 Not Implemented",
	"message": error.description default "An unknown error has occurred , Please contact your system administrator",
    "error": (error.errorType.namespace default "") ++ ":" ++ (error.errorType.identifier default ""),
    "correlationId": vars.logProperties.correlationId,
    "targetSystem" : "sa-galaxy-sa0004"
}