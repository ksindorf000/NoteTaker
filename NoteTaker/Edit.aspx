<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="NoteTaker.Edit" %>

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

        <!--Edit Fields-->
        <form id="form1" runat="server">
            <div class="form-group">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Title</th>
                            <th>Body</th>
                            <th>Timestamp</th>
                            <th>Created</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <input class="form-control" type="text" name="title" value="<%=noteInstance.Title %>" /></td>
                            <td>
                                <input class="form-control" type="text" name="body" value="<%=noteInstance.Body %>" /></td>
                            <td>
                                <input class="form-control" type="text" name="timestamp" value="<%=noteInstance.Timestamp %>" /></td>
                            <td>
                                <%= noteInstance.Created %>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div>
                <input type="submit" class="btn btn-success" />
                <input type="submit" class="btn btn-danger" value="Cancel"/>
            </div>
        </form>



        <!--End Main Container-->
    </div>
</body>
</html>
