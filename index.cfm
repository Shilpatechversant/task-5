<html>
<head>
<link rel="stylesheet" href="css/style.css">
<title>Task 5</title>
 </head>
    <body>
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
   <input type="submit" class="common-btn" name="submit" value="Submit"/>
    </div>
    </form>
    </div><hr>
    <cfif structKeyExists(form,'submit')>                                    
    <cfset parent_dob=form.parent_dob>
    <cfset child_dob=form.child_dob>   
    <cfset data=createObject("component","components.task1")>
    <cfset dob_data=data.dateFunc(parent_dob,child_dob)>
    <cfoutput>
    <h5>User's Age : #dob_data[1]#      </h5>
    <h5 > Delivery Age of mother  : #dob_data[2]#</h5>
    <h5 >Days left for User Birthday : #dob_data[3]#</h5>
    <h5 >Days left for Mother's Birthday : #dob_data[4]#</h5>                        
    </cfoutput></cfif>
    </section></div>
    </body>
    </html>
