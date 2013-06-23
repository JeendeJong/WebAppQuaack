<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormFollowers.aspx.cs" Inherits="WebAppQuaack.WebFormFollowers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Followers</title>
</head>
<body>
    <form id="formFollowers" runat="server">
        <div id="div_container" style="width: auto; height: auto;">
            <div id="div_gv_users">
                <asp:GridView ID="gv_followers" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="followid" DataSourceID="SqlDataSourceQuaack" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="followid" HeaderText="followid" InsertVisible="False" ReadOnly="True" SortExpression="followid" />
                        <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                        <asp:BoundField DataField="follower" HeaderText="follower" SortExpression="follower" />
                        <asp:CheckBoxField DataField="blocked" HeaderText="blocked" SortExpression="blocked" />
                        <asp:CheckBoxField DataField="requestpending" HeaderText="requestpending" SortExpression="requestpending" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>

                <asp:SqlDataSource ID="SqlDataSourceQuaack" runat="server" ConnectionString="<%$ ConnectionStrings:QuaackConnectionString %>" SelectCommand="SELECT * FROM [follower]"></asp:SqlDataSource>

            </div>
            <div id="div_buttons">
                 <div id="div_btn_cancel" style="float: left; padding: 5px;  width: 100px;">
                     <asp:Button ID="btn_cancel" runat="server" Text="Cancel" Width="100px" PostBackUrl="~/WebFormLoggedIn.aspx" />
                 </div>
            </div>
        </div>
    </form>
</body>
</html>
