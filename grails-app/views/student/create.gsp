<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>


        <div class="container-fluid">
            <div class="row">
                <h2>Add Student Detail</h2>
            </div>

            <div class="col-md-8">
                <g:form action="save" method="post">
                    <g:render template="form"/>

                    <br/>
                    <input type="submit" value="Add Student" class="btn btn-success"/>

                </g:form>


            </div>

        </div>

    </body>
</html>
