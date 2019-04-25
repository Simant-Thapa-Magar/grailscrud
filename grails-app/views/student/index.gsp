<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>

    <div class="container-fluid">
        <g:if test="${flash.message}">

            <div class="alert alert-success">
                <a href="#" class="close" data-dismiss="alert" aria-label="close" title="close">&times;</a>

                ${flash.message}
            </div>
        </g:if>

        <div class="row float-right">
            <a href="${createLink(controller: 'student', action: 'create')}" class="btn btn-success">Add new Student</a>
        </div>


        <table class="table table-hover table-bordered">
            <tr>
                <td>S.N</td>
                <td>First name</td>
                <td>Last name</td>
                <td>Age</td>
                <td>Address</td>
                <td>Action</td>
            </tr>
           <g:each in="${studentList}" var="s" status="i">
               <tr>
                   <td>${i+1}</td>
                   <td>${s.firstname}</td>
                   <td>${s.lastname}</td>
                   <td>${s.age}</td>
                   <td>${s.address}</td>
                   <td>
                       <a href="${createLink(controller: 'student', action: 'edit' , params: [id: s.id])}" class="btn btn-success">Edit</a>
                       <a href="${createLink(controller: 'student', action: 'delete',params: [id: s.id])}" class="btn btn-danger">Delete</a>
                   </td>
               </tr>

            </g:each>
        </table>
    </div>


    </body>
</html>