<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginForm.aspx.cs" Inherits="BulletinBoard.loginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
        }
        .auto-style2 {
            height: 50px;
            width: 625px;
        }
        .auto-style3 {
            width: 180px;
        }
        .auto-style4 {
            height: 50px;
            width: 180px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left:350px; margin-top:50px">

            <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Text="Login Form"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
             <table class="auto-style1" border="0" dir="auto" style="text-align: left">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtemail" runat="server" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtpwd" runat="server" Height="30px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style2">
                    <asp:Button ID="btnlogin" runat="server" OnClick="btnlogin_Click" Text="LogIn" BackColor="#FF9966" BorderColor="#FF9966" ForeColor="Black" Height="35px" Width="75px" />
&nbsp;
                    <asp:Button ID="btncancel" runat="server" Text="Cancel" BackColor="#FF9966" BorderColor="#FF9966" Height="35px" Width="75px" OnClick="btncancel_Click" />
                </td>
            </tr>
        </table>
        </div>
       
    </form>
</body>
</html>
