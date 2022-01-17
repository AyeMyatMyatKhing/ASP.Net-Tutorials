<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uploadImage.aspx.cs" Inherits="UploadAndShowImage.uploadImage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Upload Image<br />
            <br />
            <asp:FileUpload ID="FileUpload1" runat="server" />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="upload" />
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="150px" Width="200px" />
        </div>
    </form>
</body>
</html>
