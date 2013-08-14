<script src="/javascripts/jquery-1.8.0.js" type="text/javascript"></script>
<script src="/javascripts/wheels.jquery.js" type="text/javascript"></script>
<script type="text/javascript">
$(document).ready(function() {
    $('#submit').click(function(event){

        if($('.captchatext').val() != $('.confcaptcha').val()) {
            alert("Captcha text is incorrect");
            // Prevent form submission
            event.preventDefault();
        }

    });
});
</script>

<h2></h2>
<p></p>

<cfset statelist="N/A,AL,AK,AZ">
<cfset countrylist="United States,Albania,Kazakstan">
<cfset resellerlist="Bike Store,Gym,Grocery Market">
<cfset replist="N/A,Bob Bobberson,Terry Tate,Fu Manchu">
<cfset captchavalue= TimeFormat(Now(), "sslhhs")>

<cfoutput>

<h1>Create a New User</h1>

#startFormTag(remote="true", action="create", id="form1")#

    <div>Existing Customer? #radioButton(objectName="member", property="existing_customer", tagValue="1", label="Yes")#
    	 #radioButton(objectName="member", property="existing_customer", tagValue="0", label="No")#</div>


    <div>#select(objectName="member", property="existing_salesrep", options=replist, label="If yes, choose your sales rep")#</div>

    <div>#textField(objectName="member", property="existing_customernum", label="Customer ##")#</div>

    <div>#textField(objectName="member", property="name_prefix", label="Prefix")#</div>

    <div>#textField(objectName="member", property="name_first", label="First Name")#</div>

    <div>#textField(objectName="member", property="name_middle", label="Middle")#</div>

    <div>#textField(objectName="member", property="name_last", label="Last Name")#</div>

    <div>#textField(objectName="member", property="address_line1", label="Address")#</div>

    <div>#textField(objectName="member", property="address_city", label="City")#</div>

    <div>#select(objectName="member", property="address_state", options=statelist, label="State")#</div>

    <div>#textField(objectName="member", property="address_zip", label="Zip")#</div>

    <div>#select(objectName="member", property="address_country", options=countrylist, label="Country")#</div>

    <div>#textField(objectName="member", property="phone_number", label="Phone")#</div>

    <div>#textField(objectName="member", property="phone_extention", label="Extension")#</div>

    <div>#textField(objectName="member", property="email", label="Email")#</div>

    <div>#checkBox(objectName="member", property="email_offers", label="Please email me with special offers")#</div>

    <div>#textField(objectName="member", property="company", label="Company Name")#</div>

    <div>#select(objectName="member", property="resellertype", options=resellerlist, label="Type of Reseller")#</div>

    <div>#textField(objectName="member", property="taxid", label="EIN / Tax ID")#</div>

    <div>#textField(objectName="member", property="resalecertificate", label="Resale Certificate")#</div>

    <div>#textField(objectName="member", property="username", label="Username")#</div>

    <div>#passwordField(objectName="member", property="password", label="Password")#</div>

    <div>#passwordField(objectName="member", property="passwordConfirmation", label="Confirm Password")#</div>

    <div>Secret Question: #radioButton(objectName="member", property="secretquestion_type", tagValue="Pet Name", label="Pet Name")#
    	 #radioButton(objectName="member", property="secretquestion_type", tagValue="Mothers Maiden Name", label="Mothers Maiden Name")#</div>

    <div>#textField(objectName="member", property="secretquestion_answer", label="Secret Question Answer")#</div>

    <div>#textArea(objectName="member", property="comments", label="Comments")#</div>

	<div><cfimage action="captcha" width="300" height="75" text="#captchavalue#" fonts="verdana,arial"></div>

	<div>#textField(objectName="member", property="captchatext", label="Enter the characters above", class="captchatext")#</div>

    <div>#submitTag(id="submit")#</div>

	<input type="hidden" name="confcaptcha" value="#captchavalue#" class="confcaptcha">

#endFormTag()#

</cfoutput>

<p>
<cfoutput>#linkTo(text="Home", action="index")#</cfoutput><p>

