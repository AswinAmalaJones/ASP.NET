<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Program12.aspx.cs" Inherits="Program12" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 4</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Dropdown for Colors -->
            <asp:DropDownList ID="ddlColors" runat="server">
                <asp:ListItem Text="Red" Value="Red"></asp:ListItem>
                <asp:ListItem Text="Green" Value="Green"></asp:ListItem>
                <asp:ListItem Text="Blue" Value="Blue"></asp:ListItem>
            </asp:DropDownList>
            <br /><br />

            <!-- Checkbox for Bold -->
            <asp:CheckBox ID="chkBold" runat="server" Text="Bold" />
            <br /><br />

            <!-- RadioButtonList for Font Size -->
            <asp:RadioButtonList ID="rblSize" runat="server">
                <asp:ListItem Text="10" Value="10"></asp:ListItem>
                <asp:ListItem Text="14" Value="14"></asp:ListItem>
                <asp:ListItem Text="18" Value="18"></asp:ListItem>
            </asp:RadioButtonList>
            <br /><br />

            <!-- Button -->
            <asp:Button ID="btnStyle" runat="server" Text="Apply Style" OnClick="btnStyle_Click" />
            <br /><br />

            <!-- Label -->
            <asp:Label ID="lblStyledText" runat="server" Text="Sample Text"></asp:Label>
        </div>
    </form>
</body>
</html>
