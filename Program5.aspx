<%@ Page Language="C#" AutoEventWireup="true" 
    CodeBehind="Program5.aspx.cs" 
    Inherits="program5.Program5" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 5</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListBox ID="lstFruits" runat="server" SelectionMode="Multiple">
                <asp:ListItem>Apple</asp:ListItem>
                <asp:ListItem>Banana</asp:ListItem>
                <asp:ListItem>Cherry</asp:ListItem>
            </asp:ListBox>
            <br /><br />
            <asp:CheckBoxList ID="cbHobbies" runat="server">
                <asp:ListItem>Reading</asp:ListItem>
                <asp:ListItem>Travelling</asp:ListItem>
                <asp:ListItem>Swimming</asp:ListItem>
            </asp:CheckBoxList>
            <br /><br />
            <asp:Button ID="btnShowSelections" runat="server" Text="Show Selections" OnClick="btnShowSelections_Click" />
            <br /><br />
            <asp:Label ID="lblSelections" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
