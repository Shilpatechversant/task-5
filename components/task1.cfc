<cffunction name="dateFunc" access="public" returnType="array" output="true">
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
        <cfset local.deliver_age=dateDiff("d", mom_year, user_year)>
        <cfset local.arrayN=arrayNew(1)>        
        <cfset local.user_bdy=CreateDate(current_year,local.user_month,local.user_day)>
        <cfset local.mom_bdy=CreateDate(current_year,local.mom_month,local.mom_day)>
        <cfset local.user_count=dateDiff("d",  now(), local.user_bdy)>
        <cfset local.mom_count=dateDiff("d",  now(), local.mom_bdy)>
        <cfset arrayAppend(arrayN,local.user_age)>
        <cfset arrayAppend(arrayN,local.deliver_age)>
        <cfset arrayAppend(arrayN,local.user_count)>
        <cfset arrayAppend(arrayN,local.mom_count)>       
        <cfreturn local.arrayN>
</cffunction>