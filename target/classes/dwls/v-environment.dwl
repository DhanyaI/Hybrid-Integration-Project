   %dw 2.0
output application/java
---
{
	host: p('db.galaxy.host'),
	servicename: p('db.galaxy.servicename'),
	port: p('db.galaxy.port'),
	username: p('db.galaxy.username'),
	password: p('secure::db.galaxy.password')
	
	
}