<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Program3.aspx.cs" Inherits="Program3" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program3</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="txtinput" runat="server" placeholder="Enter text"></asp:TextBox>
            <br /><br />
            <asp:Button ID="btnDisplay" runat="server" Text="Display" OnClick="btnDisplay_Click" />
            <br /><br />
            <asp:Label ID="lbloutput" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
