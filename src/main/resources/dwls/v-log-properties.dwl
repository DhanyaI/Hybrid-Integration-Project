%dw 2.0
import * from dw::core::Strings
output application/json
---
{
	"timeStamp": now(),
	"transactionId": (attributes.headers.transactionId default correlationId),
	"apiName": app.name,
	"apiId": substringBefore(app.name, "-"),
	"interfaceNumber": Mule::p('getCustomercompanyGroup.interfaceNumber'),
	"interfaceName": Mule::p('getCustomercompanyGroup.interfaceName'),
	"flowName": "mf-put-service-request-system",
	"businessProcess": Mule::p('getCustomercompanyGroup.businessProcess'),
	"sourceAppName": Mule::p('getCustomercompanyGroup.sourceAppName'),
	"targetAppName": Mule::p('getCustomercompanyGroup.targetAppName'),
	"businessIDType": Mule::p('getCustomercompanyGroup.businessIDType'),
	"businessIDValue": attributes.queryParams.billingAccountId
}