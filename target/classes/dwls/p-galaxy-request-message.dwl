%dw 2.0
output application/json
---
{
	"I_CHANNEL": payload.messageHeaders.sourceAppName,
	"IVR_TRANS_ID": payload.messageHeaders.businessIDValue,
	"I_ACT_NUMBER": attributes.uriParams.billingAccountId,
	"I_SERVICE_FLAG": 'Y',
	"I_STREET_NUMBER": payload.customerGroup.customerIdentification.customerMailingAddress.streetNumber,
	"I_STREET_NAME": payload.customerGroup.customerIdentification.customerMailingAddress.streetName,
	"I_APT_NUMBER": payload.customerGroup.customerIdentification.customerMailingAddress.apartmentNumber,
	"I_CITY": payload.customerGroup.customerIdentification.customerMailingAddress.cityTownName,
	"I_STATE": payload.customerGroup.customerIdentification.customerMailingAddress.stateName,
	"I_ZIP_CODE": payload.customerGroup.customerIdentification.customerMailingAddress.postalCode,
	"I_COUNTRY": payload.customerGroup.customerIdentification.customerMailingAddress.country
}