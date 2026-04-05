<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Program3.aspx.cs"
    Inherits="program1.Program3" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 3</title>
</head>
<body>
    <form id="form1" runat="server">

        <asp:TextBox
            ID="txtMessage"
            runat="server"
            Text="WELCOME TO ASP LAB">
        </asp:TextBox>

        <br /><br />

        <asp:Button
            ID="btnDisplay"
            runat="server"
            Text="Display"
            OnClick="btnDisplay_Click" />

        <br /><br />

        <asp:Label
            ID="lblResult"
            runat="server">
        </asp:Label>

    </form>
</body>
</html>
