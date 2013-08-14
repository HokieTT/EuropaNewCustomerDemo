<cfcomponent extends="Model" output="false">
  
    <cffunction name="init">
        <cfset validatesPresenceOf(properties="name_first,name_last,password")>
        <cfset validatesLengthOf(properties="name_first,name_last", maximum=50)>
        <cfset validatesUniquenessOf(property="email,username")>
	<cfset validatesConfirmationOf(property="password,captchatext")>
    </cffunction>

</cfcomponent>