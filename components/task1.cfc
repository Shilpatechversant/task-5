<cffunction  name="display_message" hint="birthdate calculator">
<cfset parent_dob=#arguments.parent_dob# >
<cfset child_dob=#arguments.child_dob# >


<cfset birthDate=#parent_dob#>
<cfset cbirthDate=#child_dob#>
<cfoutput>
Mother Age - 
#dateDiff("yyyy", birthDate, now())#
</cfoutput></br>
<cfoutput>
Son Age - 
#dateDiff("yyyy", cbirthDate, now())#
</cfoutput></br>
Mother Delivery age-
<cfoutput>
#dateDiff("yyyy", "#parent_dob#", "#child_dob#")#
</cfoutput> </br>
<cfset mdate= DateTimeFormat(parent_dob,"dd/mm/2022")>
<cfset cdate= DateTimeFormat(child_dob,"dd/mm/2022")>
<cfoutput>
Days remaining for Mother Birthday
#dateDiff("d", mdate, now())#
</cfoutput></br>
<cfoutput>
Days remaining for Son Birthday
#dateDiff("d", cdate, now())#
</cfoutput></br>

</cffunction>