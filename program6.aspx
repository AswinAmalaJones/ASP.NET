<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Program6.aspx.cs" Inherits="Program6" %>
<!DOCTYPE html>
<html xmlns="https://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Program 6</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Calendar Control -->
            <asp:Calendar ID="Calendar1" runat="server" 
                          OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
            <br /><br />

            <!-- Date TextBox -->
            Select Date: 
            <asp:TextBox ID="txtDate" runat="server" ReadOnly="True"></asp:TextBox>
            <br /><br />

            <!-- Required Field Validator -->
            <asp:RequiredFieldValidator ID="rfvFile" ControlToValidate="fuFile" 
                                        ErrorMessage="Select a file" runat="server"></asp:RequiredFieldValidator>
            <br /><br />

            <!-- File Upload -->
            <asp:FileUpload ID="fuFile" runat="server" />
            <br /><br />

            <!-- Submit Button -->
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                        OnClick="btnSubmit_Click" />
            <br /><br />

            <!-- Message Label -->
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
