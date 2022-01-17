<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="post.aspx.cs" Inherits="BulletinBoard.post" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 185px;
        }
        .auto-style2 {
            width: 694px;
            height: 167px;
        }
    </style>
</head>
<body style="height: 259px">
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text="Create Post"></asp:Label>
            <table class="auto-style2">
                <tr>

                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Title"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="title" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Description"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDesc"  runat="server"  TextMode="MultiLine"> </asp:TextBox>
                    </td>
                    <td class="auto-style1">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>

                <tr>
                    <td></td>
                    <td>
                          <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirm" /> &nbsp;
                         <asp:Button ID="Button2" runat="server" Text="Clear" />
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
