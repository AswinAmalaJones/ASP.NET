<%@ Page Language="C#" AutoEventWireup="true" 
    CodeBehind="Program7.aspx.cs" 
    Inherits="program7.Program7" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 7</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server"
                AutoGenerateColumns="False"
                DataKeyNames="StudentID"
                DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="StudentID" 
                        HeaderText="StudentID" ReadOnly="True" />
                    <asp:BoundField DataField="Name" 
                        HeaderText="Name" />
                    <asp:BoundField DataField="Age" 
                        HeaderText="Age" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:SchoolDBConnectionString %>"
                SelectCommand="SELECT * FROM Student">
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
</body>
</html>
