%dw 2.0
output application/json
---
{
	"status": "404 Resource Not Found",
	"message": error.description default "Resource not found. Please provide the valid resource.",
    "error": (error.errorType.namespace default "") ++ ":" ++ (error.errorType.identifier default ""),
    "correlationId": vars.logProperties.correlationId,
    "targetSystem" : "sa-galaxy-sa0004"
}