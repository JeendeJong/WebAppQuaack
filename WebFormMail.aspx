<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormMail.aspx.cs" Inherits="WebAppQuaack.WebFormMail" %>

<!DOCTYPE html>

<!-- update database Quaack zie link -->
<!--http://msdn.microsoft.com/en-us/library/hh873188.aspx -->

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quaack</title>
</head>
    <body>
        <form id="formMail" runat="server">
            <div id="div_container" style="width: auto; height: auto;">
                <div id="div_subject">
                    <div id="div_lbl_subject" style="float: left; padding: 5px; width: 100px;">
                        <asp:Label ID="lbl_subject" runat="server" Text="Subject"></asp:Label>
                    </div>
                    <div id="div_tb_subject"  style="padding: 5px;">
                        <asp:TextBox ID="tb_subject" runat="server" Width="700px" OnTextChanged="tb_subject_TextChanged" AutoPostBack="True"></asp:TextBox>
                    </div>
                </div>

                <div id="div_message" >
                    <div id="div_lbl_message" style="float: left; padding: 5px; width: 100px;">
                        <asp:Label ID="lbl_message" runat="server" Text="Message"></asp:Label>
                    </div>
                    <div id="div_tb_message" style="padding: 5px;">
                        <asp:TextBox ID="tb_message" runat="server" TextMode="MultiLine" Width="700px" Height="300px" AutoPostBack="True" OnTextChanged="tb_message_TextChanged"></asp:TextBox>
                    </div>
                </div>

                <div id="div_sendto">
                    <div id="div_lbl_sendto" style="float: left; padding: 5px; width: 100px;">
                         <asp:Label ID="lbl_sendto" runat="server" Text="Send to"></asp:Label>
                    </div>
                    <div id="div_tb_emailaddress" style="padding: 5px; width: auto;">
                        <asp:TextBox ID="tb_emailaddress" runat="server" Width="300px" AutoPostBack="True" OnTextChanged="tb_emailaddress_TextChanged"></asp:TextBox>
                    </div>
                </div>

                <div id="div_buttons">
                    <div id="div_btn_send" style="float: left; padding: 5px; width: 100px;">
                        <asp:Button ID="btn_send" runat="server" Text="Send mail" OnClick="btn_send_Click" Width="100px" />
                    </div>

                    <div id="div_btn_cancel" style="float: left; padding: 5px;  width: 100px;">
                        <asp:Button ID="btn_cancel" runat="server" Text="Cancel" Width="100px" PostBackUrl="~/WebFormLoggedIn.aspx" />
                    </div>

                    <div id="div_lbl_error"  style="float: left; padding: 5px; width: 700px;">
                        <asp:Label ID="lbl_error" runat="server" Text="" ForeColor="Red" BorderStyle="None"></asp:Label>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>
