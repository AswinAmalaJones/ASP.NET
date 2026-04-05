<%@ Page Language="C#" AutoEventWireup="true" 
    CodeBehind="Program9.aspx.cs" 
    Inherits="program9.Program9" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 9</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DetailsView ID="DetailsView1" runat="server"
                AutoGenerateRows="True"
                DataKeyNames="StudentID"
                DataSourceID="SqlDataSource1">
            </asp:DetailsView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>"
                SelectCommand="SELECT StudentID, Name, Age FROM Student WHERE StudentID=1">
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
