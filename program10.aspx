<%@ Page Language="C#" AutoEventWireup="true" 
    CodeBehind="Program10.aspx.cs" 
    Inherits="program10.Program10" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 10</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Student ID:<br />
            <asp:TextBox ID="txtID" runat="server" ReadOnly="true"></asp:TextBox>
            <br /><br />
            Name:<br />
            <asp:TextBox ID="txtName10" runat="server"></asp:TextBox>
            <br /><br />
            Age:<br />
            <asp:TextBox ID="txtAge10" runat="server"></asp:TextBox>
            <br /><br />

            <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" />
            <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" />
            <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" />
            <br /><br />

            <asp:Label ID="lblResult10" runat="server" ForeColor="Green"></asp:Label>
            <br /><br />

            <asp:GridView ID="GridView1" runat="server"
                AutoGenerateColumns="True"
                AutoGenerateSelectButton="True"
                OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
