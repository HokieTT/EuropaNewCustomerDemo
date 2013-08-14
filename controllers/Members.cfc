<cfcomponent extends="Controller">

	<cffunction name="init">

		<cfset provides("html,js")>

	</cffunction>

	<cffunction name="admin">
	
		<cfset members = model("member").findAll(order="username")>
	
	</cffunction>
	
	<cffunction name="new">
	    
		<cfset member = model("member").new(existing_customer=0, secretquestion_type="Pet Name")>

	</cffunction>

	<cffunction name="create">

		<cfif isAjax()> 
			<cfset member = model("member").create(params.member)>
			<cfset addResp = {}>
		        <cfif member.save()>
				<cfset addResp["message"] = "Successfully created member.">
			<cfelse>
				<cfset addResp["message"] = errorMessagesFor("member")>
			</cfif>
			<cfset renderWith(addResp)>
	    	</cfif>

	</cffunction>

	<cffunction name="approve">
	
		<cfif isAjax()> 
			<cfset member = model("member").findByKey(params.key)>
			<cfset member.update(registration_approvalstatus="Approve")>
			<cfset addResp = {}>
			<cfset addResp["message"] = ".status#params.key#">
			<cfset renderWith(addResp)>
		</cfif>
		
	</cffunction>
	
	<cffunction name="disapprove">
	
		<cfif isAjax()> 
			<cfset member = model("member").findByKey(params.key)>
			<cfset member.update(registration_approvalstatus="Disapprove")>
			<cfset addResp = {}>
			<cfset addResp["message"] = ".status#params.key#">
			<cfset renderWith(addResp)>
		</cfif>
		
	</cffunction>

	<cffunction name="delete">

		<cfif isAjax()> 
			<cfset member = model("member").findByKey(params.key)>
			<cfset member.delete()>
			<cfset addResp = {}>
			<cfset addResp["message"] = ".member#params.key#">
			<cfset renderWith(addResp)>
		</cfif>

	</cffunction>

</cfcomponent>