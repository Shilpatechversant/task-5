<html>
    <head>
        <link rel="stylesheet" href="css/style.css">
        <title>Task 5</title>
    </head>
    <body style="background-color:#8de3cd;">
        <section>
            <div class="main_container">
                <div class="forms card">
                    <h3>TASK 5 - Age Calculator</h3>
                    <hr>
                    <form action=" " method="post">
                        <div class="form-group">
                            <div class="form-control">
                                <label>Mother Date Of Birth</label>
                                <input type="text" name="parent_dob" required placeholder="dd/mm/yyyy" autocomplete="off">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-control">
                                <label>Son Date Of Birth</label>
                                <input type="text" name="child_dob" required placeholder="dd/mm/yyyy" autocomplete="off">
                            </div>
                        </div>
                        <div class="form-btn-control">
                            <input type="submit" class="common-btn" name="submit" value="Submit" />
                        </div>
                    </form>
                </div>  

<hr>
<cfif structKeyExists(form,'submit')>
<cfset parent_dob=#form.parent_dob# >
<cfset child_dob=#form.child_dob# >
<cfset birthDate=#parent_dob#>
<cfset cbirthDate=#child_dob#>
<div class="res">
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
</div>

</cfif>

        </section>
                </div>
    </body>
</html>