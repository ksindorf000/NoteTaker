<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NoteTaker.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <title>NoteTaker App</title>
</head>
<body>
    <div class="container">
        <h1>Take Some Notes</h1>


        <% foreach (var note in Notes)
            { %>
        <ul>
            <li><%=note %></li>
        </ul>
        <% } %>


        <!--End Main Container-->
    </div>
</body>
</html>
