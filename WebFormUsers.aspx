<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormUsers.aspx.cs" Inherits="WebAppQuaack.WebFormUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Users</title>
</head>
<body>
    <form id="formUsers" runat="server">
        <div id="div_container" style="width: auto; height: auto;">
            <div id="div_gv_users">
                <asp:GridView ID="gv_users" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="profileid" DataSourceID="SqlDataSourceQuaack" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="profileid" HeaderText="profileid" InsertVisible="False" ReadOnly="True" SortExpression="profileid" />
                        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                        <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                        <asp:BoundField DataField="profile" HeaderText="profile" SortExpression="profile" />
                        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        <asp:BoundField DataField="avatarlocation" HeaderText="avatarlocation" SortExpression="avatarlocation" />
                        <asp:BoundField DataField="mobilenumber" HeaderText="mobilenumber" SortExpression="mobilenumber" />
                        <asp:CheckBoxField DataField="verificationpending" HeaderText="verificationpending" SortExpression="verificationpending" />
                        <asp:BoundField DataField="verficationpendingdatetime" HeaderText="verficationpendingdatetime" SortExpression="verficationpendingdatetime" />
                        <asp:CheckBoxField DataField="tempblocked" HeaderText="tempblocked" SortExpression="tempblocked" />
                        <asp:BoundField DataField="tempblockeddatetime" HeaderText="tempblockeddatetime" SortExpression="tempblockeddatetime" />
                        <asp:CheckBoxField DataField="permblocked" HeaderText="permblocked" SortExpression="permblocked" />
                        <asp:BoundField DataField="permblockeddatetime" HeaderText="permblockeddatetime" SortExpression="permblockeddatetime" />
                        <asp:CheckBoxField DataField="removed" HeaderText="removed" SortExpression="removed" />
                        <asp:BoundField DataField="removeddatetime" HeaderText="removeddatetime" SortExpression="removeddatetime" />
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

                <asp:SqlDataSource ID="SqlDataSourceQuaack" runat="server" ConnectionString="<%$ ConnectionStrings:QuaackConnectionString %>" SelectCommand="SELECT * FROM [profile]"></asp:SqlDataSource>

            </div>
            <div id="div_buttons">
                 <div id="div_btn_send" style="float: left; padding: 5px; width: 100px;">
                     <asp:Button ID="btn_edit" runat="server" Text="Edit" Width="100px" PostBackUrl="~/WebFormUserEdit.aspx" />
                 </div>
                 <div id="div_btn_insert" style="float: left; padding: 5px;  width: 100px;">
                     <asp:Button ID="btn_insert" runat="server" Text="Insert" Width="100px" />
                 </div>
                 <div id="div_btn_delete" style="float: left; padding: 5px;  width: 100px;">
                     <asp:Button ID="btn_delete" runat="server" Text="Delete" Width="100px" />
                 </div>
                <div id="div_btn_cancel" style="float: left; padding: 5px;  width: 100px;">
                     <asp:Button ID="btn_cancel" runat="server" Text="Cancel" Width="100px" PostBackUrl="~/WebFormLoggedIn.aspx" />
                 </div>
            </div>
        </div>
    </form>
</body>
</html>
