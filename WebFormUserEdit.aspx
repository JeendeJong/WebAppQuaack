<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormUserEdit.aspx.cs" Inherits="WebAppQuaack.WebFormUserEdit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit user</title>
</head>
<body>
    <form id="formUserEdit" runat="server">
        <div id="div_container">
            <div id="div_profileid">
                <div id="div_lbl_profileid" style="float: left; padding: 5px; width: 200px;">
                    <asp:Label ID="lbl_profileid" runat="server" Text="Profile ID"></asp:Label>
                </div>
                <div id="div_tb_profileid" style="padding: 5px;">
                    <asp:TextBox ID="tb_profileid" runat="server" ReadOnly="True"></asp:TextBox>
                </div>
            </div>

            <div id="div_username">
                <div id="div_lbl_username" style="float: left; padding: 5px; width: 200px;">
                    <asp:Label ID="lbl_username" runat="server" Text="Username"></asp:Label>
                </div>
                <div id="div_tb_username" style="padding: 5px;">
                    <asp:TextBox ID="tb_username" runat="server"></asp:TextBox>
                </div>
            </div>

            <div id="div_password">
                <div id="div_lbl_password" style="float: left; padding: 5px; width: 200px;">
                    <asp:Label ID="lbl_password" runat="server" Text="Password"></asp:Label>
                </div>
                <div id="div_tb_password" style="padding: 5px;">
                    <asp:TextBox ID="tb_password" runat="server"></asp:TextBox>
                </div>
            </div>

            <div id="div_profile">
                <div id="div_lbl_profile" style="float: left; padding: 5px; width: 200px;">
                    <asp:Label ID="lbl_profile" runat="server" Text="Profile"></asp:Label>
                </div>
                <div id="div_tb_profile" style="padding: 5px;">
                    <asp:TextBox ID="tb_profile" runat="server"></asp:TextBox>
                </div>
            </div>

            <div id="div_email">
                <div id="div_lbl_email" style="float: left; padding: 5px; width: 200px;">
                    <asp:Label ID="Label4" runat="server" Text="Email account"></asp:Label>
                </div>
                <div id="div_tb_email" style="padding: 5px;">
                    <asp:TextBox ID="tb_email" runat="server"></asp:TextBox>
                </div>
            </div>

            <div id="div_avatarlocation">
                <div id="div_lbl_avatarlocation" style="float: left; padding: 5px; width: 200px;">
                    <asp:Label ID="lbl_avatarlocation" runat="server" Text="Avator location"></asp:Label>
                </div>
                <div id="div_tb_avatarlocation" style="padding: 5px;">
                    <asp:TextBox ID="tb_avatarlocation" runat="server"></asp:TextBox>
                </div>
            </div>

            <div id="div_mobilenumber">
                <div id="div_lbl_mobilenumber" style="float: left; padding: 5px; width: 200px;">
                    <asp:Label ID="lbl_mobilenumber" runat="server" Text="Mobile number"></asp:Label>
                </div>
                <div id="div_tb_mobilenumber" style="padding: 5px;">
                    <asp:TextBox ID="tb_mobilenumber" runat="server"></asp:TextBox>
                </div>
            </div>

            <div id="div_verificationpending">
                <div id="div_lbl_verificationpending" style="float: left; padding: 5px; width: 200px;">
                    <asp:Label ID="Label7" runat="server" Text="verificationpending"></asp:Label>
                </div>
                <div id="div_tb_verificationpending" style="padding: 5px;">
                    <asp:TextBox ID="tb_verificationpending" runat="server"></asp:TextBox>
                </div>
            </div>

            <div id="div_verficationpendingdatetime">
                <div id="div_lbl_verficationpendingdatetime" style="float: left; padding: 5px; width: 200px;">
                    <asp:Label ID="lbl_verficationpendingdatetime" runat="server" Text="Verfication pending date/time"></asp:Label>
                </div>
                <div id="div_tb_verficationpendingdatetime" style="padding: 5px;">
                    <asp:TextBox ID="tb_verficationpendingdatetime" runat="server"></asp:TextBox>
                </div>
            </div>

            <div id="div_tempblocked">
                <div id="div_lbl_tempblocked" style="float: left; padding: 5px; width: 200px;">
                    <asp:Label ID="lbl_tempblocked" runat="server" Text="Temp blocked"></asp:Label>
                </div>
                <div id="div_tb_tempblocked" style="padding: 5px;">
                    <asp:TextBox ID="tb_tempblocked" runat="server"></asp:TextBox>
                </div>
            </div>

            <div id="div_tempblockeddatetime">
                <div id="div_lbl_tempblockeddatetime" style="float: left; padding: 5px; width: 200px;">
                    <asp:Label ID="lbl_tempblockeddatetime" runat="server" Text="Temp blocked date/time"></asp:Label>
                </div>
                <div id="div_tb_tempblockeddatetime" style="padding: 5px;">
                    <asp:TextBox ID="tb_tempblockeddatetime" runat="server"></asp:TextBox>
                </div>
            </div>

            <div id="div_permblocked">
                <div id="div_lbl_permblocked" style="float: left; padding: 5px; width: 200px;">
                    <asp:Label ID="lbl_permblocked" runat="server" Text="perm blocked"></asp:Label>
                </div>
                <div id="div_tb_permblocked" style="padding: 5px;">
                    <asp:TextBox ID="tb_permblocked" runat="server"></asp:TextBox>
                </div>
            </div>

            <div id="div_permblockeddatetime">
                <div id="div_lbl_permblockeddatetime" style="float: left; padding: 5px; width: 200px;">
                    <asp:Label ID="Label12" runat="server" Text="Perm blocked date/time"></asp:Label>
                </div>
                <div id="div_tb_permblockeddatetime" style="padding: 5px;">
                    <asp:TextBox ID="tb_permblockeddatetime" runat="server"></asp:TextBox>
                </div>
            </div>

            <div id="div_removed">
                <div id="div_lbl_removed" style="float: left; padding: 5px; width: 200px;">
                    <asp:Label ID="lbl_removed" runat="server" Text="Removed"></asp:Label>
                </div>
                <div id="div_tb_removed" style="padding: 5px;">
                    <asp:TextBox ID="tb_removed" runat="server"></asp:TextBox>
                </div>
            </div>

            <div id="div_removeddatetime">
                <div id="div_lbl_removeddatetime" style="float: left; padding: 5px; width: 200px;">
                    <asp:Label ID="lbl_removeddatetime" runat="server" Text="Removed date/time"></asp:Label>
                </div>
                <div id="div_tb_removeddatetime" style="padding: 5px;">
                    <asp:TextBox ID="tb_removeddatetime" runat="server"></asp:TextBox>
                </div>
            </div>

            <div id="div_button">
                <div id="div_btn_save" style="float: left; padding: 5px; width: 200px;">
                    <asp:Button ID="btn_save" runat="server" Text="Save" OnClick="btn_save_Click" Width="100px" />
                </div>
                <div id="div_btn_cancel" style="float: left; padding: 5px; width: 200px;">
                    <asp:Button ID="btn_cancel" runat="server" Text="Cancel" Width="100px" PostBackUrl="~/WebFormUsers.aspx" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
