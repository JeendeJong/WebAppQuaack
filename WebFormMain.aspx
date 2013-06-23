<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormMain.aspx.cs" Inherits="WebAppQuaack.WebFormMain" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quaack mainpage</title>
</head>
<body>
    <form id="formMain" runat="server">
        <div id="div_container" style="width: auto; height: auto;">
            <div id="div_username">
                <div id="div_lbl_username" style="float: left; padding: 5px; width: 100px;">
                    <asp:Label ID="lbl_username" runat="server" Text="Username"></asp:Label>
                </div>
                <div id="div_tb_username"  style="padding: 5px;">
                    <asp:TextBox ID="tb_username" runat="server" Width="700px" OnTextChanged="tb_username_TextChanged" AutoPostBack="True"></asp:TextBox>
                </div>
            </div>
            <div id="div_pwd">
                <div id="div_lbl_pwd" style="float: left; padding: 5px; width: 100px;">
                    <asp:Label ID="lbl_pwd" runat="server" Text="Password"></asp:Label>
                </div>
                <div id="div_tb_pwd"  style="padding: 5px;">
                    <asp:TextBox ID="tb_pwd" runat="server" Width="700px" OnTextChanged="tb_pwd_TextChanged" AutoPostBack="True"></asp:TextBox>
                </div>
            </div>

            <div id="div_buttons">
                <div id="div_btn_login" style="float: left; padding: 5px; width: 100px;">
                    <asp:Button ID="btn_login" runat="server" Text="Login" OnClick="btn_login_Click" Width="100px" />
                </div>

                <div id="div_btn_register" style="float: left; padding: 5px;  width: 100px;">
                    <asp:Button ID="btn_register" runat="server" Text="Register" Width="100px" PostBackUrl="~/WebFormRegister.aspx" />
                </div>

                <div id="div_lbl_error"  style="float: left; padding: 5px; width: 700px;">
                    <asp:Label ID="lbl_error" runat="server" Text="" ForeColor="Red" BorderStyle="None"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
