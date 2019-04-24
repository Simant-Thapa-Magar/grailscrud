<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'person.label', default: 'Person')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>

        <div class="container-fluid">
            <br/><br/>
            <div class="row">
                <a href="${createLink(controller: 'person')}" class="btn btn-info">Get All Person</a>
            </div>

            <div class="btn btn-success" style="float: right">
                <a href="${createLink(controller: 'person', action: 'create')}">Create Person</a>
            </div>

            <table>

                <tr>
                    <td>Firstname</td>
                    <td>Lastname</td>
                    <td>Contact number</td>
                    <td>Address</td>
                    <td>Action</td>
                </tr>

                <g:each in="${personList}" var="p">
                    <tr>
                    <td>${p.firstname}</td>
                        <td>${p.lastname}</td>
                        <td>${p.phoneNumber}</td>
                        <td>${p.address}</td>
                        <td><a href="${createLink(controller: 'person', action: 'edit',params: [id: p.id])}" class="btn btn-success" >
                        Edit
                        </a>


                            <a href="${createLink(controller: 'person', action: 'delete',params: [id: p.id])}" class="btn btn-success" >
                                Delete
                            </a>
                        </td>

                    </tr>

                </g:each>
            </table>

        </div>
    </body>
</html>