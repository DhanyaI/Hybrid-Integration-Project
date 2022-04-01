%dw 2.0
output application/json
---
{
	"status": "415 Unsupported Media Type",
	"message": error.description default "Media Not Supported. Please provide valid Media Type.",
    "error": (error.errorType.namespace default "") ++ ":" ++ (error.errorType.identifier default ""),
    "correlationId": vars.logProperties.correlationId,
    "targetSystem" : "sa-galaxy-sa0004"
}