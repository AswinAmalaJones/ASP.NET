<%@ Page Language="C#" AutoEventWireup="true" 
    CodeBehind="Program8.aspx.cs" 
    Inherits="program8.Program8" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 8</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddlStudents" runat="server"
                DataSourceID="SqlDataSource1"
                DataTextField="Name"
                DataValueField="StudentID">
            </asp:DropDownList>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>"
                SelectCommand="SELECT StudentID, Name FROM Student">
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
