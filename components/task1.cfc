<cffunction name="dateFunc" access="remote" returnType="array">
        <cfargument  name="child_dob" type="string" required="true">
        <cfargument  name="parent_dob" type="string" required="true">
        <cfset local.current_year=DateFormat(Now(),"yyyy")>
        <cfset local.user_year=DateFormat(child_dob,"yyyy")>
        <cfset local.user_month=DateFormat(child_dob,"mm")>
        <cfset local.user_day=DateFormat(child_dob,"dd")>
        <cfset local.mom_year=DateFormat(parent_dob,"yyyy")>
        <cfset local.mom_month=DateFormat(parent_dob,"mm")>
        <cfset local.mom_day=DateFormat(parent_dob,"dd")>
        <cfset local.user_age=dateDiff("d", user_year, current_year)>
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