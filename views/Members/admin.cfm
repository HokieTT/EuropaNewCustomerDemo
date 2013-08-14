<script src="/javascripts/jquery-1.8.0.js" type="text/javascript"></script>
<script src="/javascripts/wheels.jquery.js" type="text/javascript"></script>

<cfoutput>

<h2></h2>

<h1>Users</h1>

<table border=1>
    <thead>
        <tr>
            <th>Existing</th>
            <th>Sales Rep</th>
            <th>Cust ##</th>

            <th>Prefix</th>
            <th>First</th>
            <th>Middle</th>
            <th>Last</th>
            <th>Address</th>
            <th>City</th>
            <th>State</th>
            <th>Zip</th>
            <th>Country</th>
            <th>Phone</th>
            <th>Ext</th>
            <th>Email</th>
            <th>Offers?</th>
            <th>Company</th>
            <th>Reseller</th>
            <th>TaxID</th>
            <th>Resale</th>
            <th>Username</th>
            <th>Password</th>
            <th>Secret Q</th>
            <th>Answer</th>
            <th>Comments</th>
            <th>Status</th>
            <th colspan="3"></th>
        </tr>
    </thead>
    <tbody>
        <cfloop query="members">
            <tr class="member#members.id#">
                <td>#members.existing_customer#</td>
                <td>#members.existing_salesrep#</td>
                <td>#members.existing_customernum#</td>
                <td>#members.name_prefix#</td>
                <td>#members.name_first#</td>
                <td>#members.name_middle#</td>
                <td>#members.name_last#</td>
                <td>#members.address_line1#</td>
                <td>#members.address_city#</td>
                <td>#members.address_state#</td>
                <td>#members.address_zip#</td>
                <td>#members.address_country#</td>
                <td>#members.phone_number#</td>
                <td>#members.phone_extension#</td>
                <td>#members.email#</td>
                <td><cfif members.email_offers eq 1>Y<cfelse>N</cfif></td>
                <td>#members.company#</td>
                <td>#members.resellertype#</td>
                <td>#members.taxid#</td>
                <td>#members.resalecertificate#</td>
                <td>#members.username#</td>
                <td>#members.password#</td>
                <td>#members.secretquestion_type#</td>
                <td>#members.secretquestion_answer#</td>
                <td>#members.comments#</td>
                <td class="status#members.id#">#members.registration_approvalstatus#</td>

                <td>
                    #linkTo(remote="true",
                        text="Approve", action="approve", key=members.id,
                        title="Edit #members.username#"
                    )#
                </td>
                <td>
                    #linkTo(remote="true",
                        text="Disapprove", action="disapprove", key=members.id,
                        title="Disapprove #members.username#"
                    )#
                </td>
                <td>
                    #linkTo(remote="true",
                        text="Delete", action="delete", key=members.id,
                        title="Delete #members.username#", confirm="Are you sure that you want to delete #members.username#?"
                    )#
                </td>
            </tr>
        </cfloop>
    </tbody>
</table>

</cfoutput>

<p>
<cfoutput>#linkTo(text="Home", action="index")#</cfoutput><p>