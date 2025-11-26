<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit User Profile</title>
    <link rel="stylesheet" href="styles/main.css" type="text/css"/>
</head>
<body>
    <header>
        <h1>Update User</h1>
    </header>

    <main>
        <p class="note"><strong>Note:</strong> For security reasons, the email address cannot be changed.</p>
        
        <form action="userAdmin" method="post">
            <input type="hidden" name="action" value="update_user">
            
            <label for="email">Email Address</label>
            <input type="email" id="email" name="email" value="${user.email}" readonly>

            <label for="firstName">First Name</label>
            <input type="text" id="firstName" name="firstName" value="${user.firstName}" required>

            <label for="lastName">Last Name</label>
            <input type="text" id="lastName" name="lastName" value="${user.lastName}" required>
            
            <input type="submit" value="Save Changes">
        </form>
        
        <nav style="text-align: center; margin-top: 1rem;">
             <a href="userAdmin">Return to User List</a>
        </nav>
    </main>
</body>
</html>