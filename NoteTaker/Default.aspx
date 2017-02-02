<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NoteTaker.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" />
    <title>NoteTaker App</title>
</head>
<body>

    <!--Begin Main Container-->
    <div class="container">

        <!--Heading-->
        <h1>Take Some Notes</h1>

        <!--Notes Table-->
        <table class="table table-bordered table-hover">
            <thead>

                <tr>
                    <th>Title</th>
                    <th>Body</th>
                    <th>Timestamp</th>
                    <th>Created</th>
                </tr>

            </thead>
            <tbody>
                <% foreach (var note in Notes)
                    { %>
                <tr>
                    <td><%= note.Title %></td>
                    <td><a href="Edit.aspx?id=<%= note.Id %>"><%= note.Body %></a></td>
                    <td><%= note.Timestamp %></td>
                    <td><%= note.Created %></td>
                </tr>
                <% } %>

            </tbody>
        </table>

        <!--End Main Container-->
    </div>
</body>
</html>
