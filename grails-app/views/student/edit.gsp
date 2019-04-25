<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
    <div class="container-fluid">
        <div class="row">
            <h2>Updated Student Detail</h2>
        </div>

        <div class="col-md-8">
            <g:form action="updateStudent" method="post">
                <input type="hidden" name="id" value="${student.id}"/>
                <div class="row form-row">
                    <label>First Name</label>
                    <input type="text" name="firstname" class="form-control" value="${student.firstname}"/>
                </div>


                <div class="row form-row">
                    <label>Last Name</label>
                    <input type="text" name="lastname" class="form-control" value="${student.lastname}"/>
                </div>

                <div class="row form-row">
                    <label>Age</label>
                    <input type="text" name="age" class="form-control" value="${student.age}"/>
                </div>

                <div class="row form-row">
                    <label>Address</label>
                    <input type="text" name="address" class="form-control" value="${student.address}"/>
                </div>

                <br/>
                <input type="submit" value="Update Student" class="btn btn-success"/>

            </g:form>


        </div>

    </div>
    </body>
</html>
