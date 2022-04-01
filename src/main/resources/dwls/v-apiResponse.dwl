%dw 2.0
output application/json
---
{
  transactionId: vars.logProperties.correlationId,
  code: 200,
  status: "SUCCESS",
  message: "Successfully Updated mailing address",
  details: "Free form description",
  requestTimestamp: vars.logProperties.requestTimestamp,
  responseTimestamp: now(),
data: {
    O_ERR_CODE: payload.O_ERR_CODE,
    O_ERR_MSG : payload.O_ERR_MSG
  }
}