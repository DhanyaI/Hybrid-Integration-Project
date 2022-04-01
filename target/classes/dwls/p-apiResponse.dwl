%dw 2.0
output application/json
---
result: {
	resultCode: payload.O_ERR_CODE,
	resultDescription: payload.O_ERR_MSG,
	resultType: if ( payload.O_ERR_CODE == "1111" ) "SUCCESS"
	else "ERROR"
}
