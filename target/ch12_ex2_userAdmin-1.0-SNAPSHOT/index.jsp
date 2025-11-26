<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>User Management System</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <body>
        <header>
            <h1>User Management</h1>
        </header>

        <main>
            <c:if test="${not empty message}">
                <output class="alert alert-success">
                    ${message}
                </output>
            </c:if>
            <section>
                <table>
                    <thead>
                        <tr>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                            <th colspan="2">Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="user" items="${users}">
                        <tr>
                            <td>${user.firstName}</td>
                            <td>${user.lastName}</td>
                            <td>${user.email}</td>
                            <td style="width: 1%; white-space: nowrap;">
                                <a href="userAdmin?action=display_user&amp;email=${user.email}" class="action-btn update">Update</a>
                            </td>
                            <td style="width: 1%; white-space: nowrap;">
                                <a href="userAdmin?action=delete_user&amp;email=${user.email}" class="action-btn delete" 
                                   onclick="return confirm('Are you sure you want to delete this user?');">Delete</a>
                            </td>
                        </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </section>

            <nav>
                <a href="userAdmin" class="btn-refresh">Refresh List</a>
            </nav>
        </main>
    </body>
</html>