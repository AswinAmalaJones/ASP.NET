<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Program5.aspx.cs" Inherits="Program5" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 5</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Fruits ListBox -->
            <asp:ListBox ID="lstFruits" runat="server" SelectionMode="Multiple">
                <asp:ListItem>Apple</asp:ListItem>
                <asp:ListItem>Banana</asp:ListItem>
                <asp:ListItem>Cherry</asp:ListItem>
            </asp:ListBox>
            <br /><br />

            <!-- Hobbies CheckBoxList -->
            <asp:CheckBoxList ID="cbHobbies" runat="server">
                <asp:ListItem>Reading</asp:ListItem>
                <asp:ListItem>Travelling</asp:ListItem>
                <asp:ListItem>Swimming</asp:ListItem>
            </asp:CheckBoxList>
            <br /><br />

            <!-- Button -->
            <asp:Button ID="btnShowSelections" runat="server" Text="Show Selections" OnClick="btnShowSelections_Click" />
            <br /><br />

            <!-- Label -->
            <asp:Label ID="lblSelections" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
