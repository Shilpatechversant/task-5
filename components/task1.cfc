<cffunction name="dateFunc" access="remote" returnType="array">
        <cfargument  name="child_dob">
        <cfargument  name="parent_dob">
        <cfset current_year=DateFormat(Now(),"yyyy")>
        <cfset user_year=DateFormat(child_dob,"yyyy")>
        <cfset user_month=DateFormat(child_dob,"mm")>
        <cfset user_day=DateFormat(child_dob,"dd")>
        <cfset mom_year=DateFormat(parent_dob,"yyyy")>
        <cfset mom_month=DateFormat(parent_dob,"mm")>
        <cfset mom_day=DateFormat(parent_dob,"dd")>
        <cfset user_age=dateDiff("d", user_year, current_year)>
        <cfset deliver_age=dateDiff("d", mom_year, user_year)>
        <cfset arrayN=arrayNew(1)>        
        <cfset user_bdy=CreateDate(current_year,user_month,user_day)>
        <cfset mom_bdy=CreateDate(current_year,mom_month,mom_day)>
        <cfset user_count=dateDiff("d",  now(), user_bdy)>
        <cfset mom_count=dateDiff("d",  now(), mom_bdy)>
        <cfset arrayAppend(arrayN,user_age)>
        <cfset arrayAppend(arrayN,deliver_age)>
        <cfset arrayAppend(arrayN,user_count)>
        <cfset arrayAppend(arrayN,mom_count)>       
        <cfreturn arrayN>
</cffunction>