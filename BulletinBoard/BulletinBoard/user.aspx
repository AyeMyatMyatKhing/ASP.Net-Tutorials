<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user.aspx.cs" Inherits="BulletinBoard.user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
        }
        .auto-style2 {
            width: 150px;
        }
        .auto-style5 {
            width: 150px;
            height: 50px;
        }
        .auto-style6 {
            height: 50px;
            width: 268px;
        }
        .auto-style7 {
            width: 150px;
            height: 51px;
        }
        .auto-style8 {
            height: 51px;
            width: 268px;
        }
        .auto-style9 {
            width: 203px;
            height: 60px;
        }
        .auto-style10 {
            width: 268px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left:350px;margin-top:50px">
            <asp:Label ID="Label1" runat="server" Text="Create User" Font-Bold="True" Font-Size="Large"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label11" runat="server" Text=""></asp:Label>
            <table class="auto-style1" style="width:600px">
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtName" runat="server" Height="30px"></asp:TextBox>
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label3" runat="server" Text="Email Address"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtEmail" runat="server" Height="30px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtPwd" runat="server" Height="30px"></asp:TextBox>
                       
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtConfirmPwd" runat="server" TextMode="Password" Height="35px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label6" runat="server" Text="Type"></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="35px">
                            <asp:ListItem>Admin</asp:ListItem>
                            <asp:ListItem>User</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label7" runat="server" Text="Phone"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone" Height="35px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label8" runat="server" Text="Date Of Birth"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtDob" runat="server" TextMode="Date" Height="35px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label9" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtAddr" runat="server" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label10" runat="server" Text="Profile"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:FileUpload ID="imageUpload" runat="server" Height="35px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9" colspan="2">
                        <asp:Button ID="btnConfirm" runat="server" OnClick="btnConfirm_Click" Text="Confirm" BackColor="#FF9966" BorderColor="#FF9966" Height="35px" />
&nbsp;&nbsp;
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" BackColor="#FF9966" BorderColor="#FF9966" Height="35px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
