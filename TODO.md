Things to have in project:
General grails:
 - Caching (for domain classes such as roles, countries etc)
 - No @transaction calls in Controllers. All persistence (CRUD) calls to be moved to Service
 - Use of taglibs 
 - Use of messages.properties, i18n
 - validation with constraints, custom validation, use of hasErrors, flash scope

Domain classes:
 - Correct use of hasMany and belongsTo (optimize according to Burts way)
 - Use of hasMany= [report:Report] instead of declaring extra Report report attribute and hasMany = [Report]
 - Prefer objects over primitives

Testing: - Good tests are essential!!!
 - use grails plugin build-test-data (http://grails.org/plugin/build-test-data)
 - Use interactive mode for testing
 - Unit
 - Integration
 - Functional
(see section notes 10 Nov 2014)

Security (spring security)
 - Role based authentication, Super roles
 - ACL for row security
 - Spring security UI
 - Implement custom CSS for login
 - URL protections
 - Check Security notes (Lec 12). 
 - Check rich text field vulnerability to XSS

Config
 - Seperate, externalised configs for dev, prod, test
 - No passwords in code
 -

Groovy stuff:
 - Dynamic methods, metaclass 
 - closures, delegates

Audit logging:

Log4j: Configure correctly See Lec 13 notes

Plugins:
 - See lec 10 notes on dir structure

Misc:
OK - Use the errors readability tip by Burt in Bootstrap.groovy
OK - use domainClass.load(id) vs domainClass.get(id), no need for flush:true (leave it to the trans)



TODO - cbm

Country:
-----------------------
##### Step 1:
OK - Move country drop down to a taglib

OK - CountryService.getLocale name should be used instead of Domainclass.getName

OK - Domain class should not contain injected service

##### Step 2
OK - First level and second level caching should be enabled for country domain

##### Step 3: 

Move country domain and taglib to a plugin
