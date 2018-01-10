<cffunction name = "getFullName" returnType = "string" access = "public" output="false">
    <cfargument name="firstname" type="string" required="false" default="" />
    <cfargument name="lastname" type="string" required="false" default="" />
    <cfset var fullname = arguments.firstname & " " & arguments.lastname />
    <cfreturn fullname>
</cffunction>

<cfset fullName = getFullName(firstName="Emily", lastName="Christ") />

<!--- <cfset fullname = getFullName("Emily", "Christ") /> --->
<cfoutput>
  #fullName#
</cfoutput>
