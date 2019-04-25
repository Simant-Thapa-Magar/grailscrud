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
                <g:render template="form" model="[student: student]"/>
                <br/>
                <input type="submit" value="Update Student" class="btn btn-success"/>

            </g:form>


        </div>

    </div>
    </body>
</html>
