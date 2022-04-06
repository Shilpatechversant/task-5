<html>
    <head>
        <link rel="stylesheet" href = "css/style.css">
        <title>Task 1</title>
    </head>
    <body>
        <section>
            <div class="main_container">
                <div class = "forms card">
                    <h3>Age Calculator</h3>
                    <hr>
                    <form action="infoAction.cfm" method = "post">
                      <div class="form-group">
                        <div class="form-control">
                     
                        <label>Mother Date Of Birth</label>
                            <input type="text" name="parent_dob" 
                            required placeholder="dd/mm/yyyy" autocomplete="off">
                        </div>
                        </div>

                        <div class="form-group">
                        <div class="form-control">                     
                        <label>Son Date Of Birth</label>
                            <input type="text" name="child_dob" 
                            required placeholder="dd/mm/yyyy" autocomplete="off">
                        </div>
                        </div>
                
                        <div class="form-btn-control">
                            <input type="submit" class="common-btn" name="submit" 
                            value="Show message"/>
                        </div>
                    </form>
                </div>
            </div>
        </section>
    </body>
</html>

