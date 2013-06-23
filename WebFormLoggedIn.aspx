<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormLoggedIn.aspx.cs" Inherits="WebAppQuaack.WebFormLoggedIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LoggedIn</title>
</head>
<body>
    <form id="formLoggedIn" runat="server">
        <div id="div_buttons">
            <div id="div_btn_users" style="float: left; padding: 5px;  width: 100px;">
                <asp:Button ID="btn_users" runat="server" Text="Users" Width="100px" PostBackUrl="~/WebFormUsers.aspx" />
            </div>
            <div id="div_btn_messages" style="float: left; padding: 5px;  width: 100px;">
                <asp:Button ID="btn_messages" runat="server" Text="Messages" Width="100px" PostBackUrl="~/WebFormMessages.aspx" />
            </div>
            <div id="div_btn_followers" style="float: left; padding: 5px;  width: 100px;">
                <asp:Button ID="btn_followers" runat="server" Text="Followers" Width="100px" PostBackUrl="~/WebFormFollowers.aspx" />
            </div>
            <div id="div_btn_mail" style="float: left; padding: 5px;  width: 100px;">
                <asp:Button ID="btn_mail" runat="server" Text="Mail" Width="100px" PostBackUrl="~/WebFormMail.aspx" />
            </div>
            <div id="div_btn_cancel" style="float: left; padding: 5px;  width: 100px;">
                <asp:Button ID="btn_cancel" runat="server" Text="Cancel" Width="100px" PostBackUrl="~/WebFormMain.aspx" />
            </div>
         </div>
    </form>
</body>
</html>
