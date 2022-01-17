<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="postList.aspx.cs" Inherits="BulletinBoard.postList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 60%;
        }

        .auto-style2 {
            width: 113px;
        }

        .auto-style3 {
            width: 187px;
        }

        .auto-style4 {
            width: 153px;
        }

        .auto-style5 {
            width: 139px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Post List"></asp:Label>
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" GridLines="None" DataKeyNames="id" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand"  OnRowDeleting="OnRowDeleting" OnRowDataBound="GridView1_RowDataBound" PageIndex="5" ForeColor="#333333" >
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#990000" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
                <Columns>
                  <%-- <asp:TemplateField HeaderText="Post Title">
                        <ItemTemplate>
                            <asp:Label Text='<%#Eval("title") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="title" Text='<%#Eval("title") %>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Post Description">
                        <ItemTemplate>
                            <asp:Label Text='<%#Eval("description") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="description" Text='<%#Eval("description") %>' runat="server"></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Posted User">
                        <ItemTemplate>
                            <asp:Label Text='<%#Eval("create_user_id") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Posted Date">
                        <ItemTemplate>
                            <asp:Label Text='<%#Eval("created_at") %>' runat="server"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="EditButton" runat="server" PostBackUrl="~/EditPost.aspx" CommandName="Edit">Edit</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="DeleteButton" runat="server" CommandName="Delete" OnClientClick="return isDelete();">Delete</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>--%>
                    <asp:BoundField DataField="id" HeaderText="ID"/>
                    <asp:BoundField  DataField="title" HeaderText="Post Title" />
                    <asp:BoundField DataField="description" HeaderText="Post Description"/>
                    <asp:BoundField  DataField="create_user_id" HeaderText="Posted User" />
                    <asp:BoundField DataField="created_at" HeaderText="Posted Date"/>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button  ID="btnEdit" runat="server" Text="Edit" CommandName="EditButton" CommandArgument="<%#((GridViewRow)Container).RowIndex %>"/>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:CommandField ShowDeleteButton="true" ButtonType="Button"/>
                    <%--<asp:CommandField ShowEditButton="true"/>
                    <asp:CommandField  ShowDeleteButton="true"/>--%>
                    <%--<asp:HyperLinkField Text="Edit" DataNavigateUrlFields="title"  />
                    <asp:HyperLinkField Text="Delete" DataNavigateUrlFields="title"/>--%>
                </Columns>
            </asp:GridView>
            <br />
        </div>
        <div>
    </form>
</body>
</html>
