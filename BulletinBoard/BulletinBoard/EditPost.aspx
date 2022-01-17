<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditPost.aspx.cs" Inherits="BulletinBoard.EditPost" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            height: 55px;
            width: 404px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
            height: 55px;
            width: 135px;
        }
        .auto-style6 {
            height: 68px;
            width: 135px;
        }
        .auto-style7 {
            height: 68px;
            width: 404px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left:350px;margin-top:50px">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Edit Post"></asp:Label>
            <br />
            <br />
            <table class="auto-style2" border="0">
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblTitle" runat="server" Text="Title"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtTitle" runat="server" CssClass="auto-style4" Height="30px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server" Text="Description"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Height="30px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                    <td class="auto-style7">
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="UpdateBtn_Click" BackColor="#FF9966" BorderColor="#FF9966" Height="30px" />
&nbsp;
                        <asp:Button ID="CancelUpdateBtn" runat="server" Text="Cancel" OnClick="CancelUpdateBtn_Click" BackColor="#FF9966" BorderColor="#FF9966" Height="30px" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
