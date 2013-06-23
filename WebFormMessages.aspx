<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormMessages.aspx.cs" Inherits="WebAppQuaack.WebFormMessages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Users</title>
</head>
<body>
    <form id="formMessages" runat="server">
        <div id="div_container" style="width: auto; height: auto;">
            <div id="div_gv_users">
                <asp:GridView ID="gv_messages" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="messid" DataSourceID="SqlDataSourceQuaack" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="messid" HeaderText="messid" InsertVisible="False" ReadOnly="True" SortExpression="messid" />
                        <asp:BoundField DataField="messdatetime" HeaderText="messdatetime" SortExpression="messdatetime" />
                        <asp:BoundField DataField="sender" HeaderText="sender" SortExpression="sender" />
                        <asp:BoundField DataField="parentmessid" HeaderText="parentmessid" SortExpression="parentmessid" />
                        <asp:BoundField DataField="message" HeaderText="message" SortExpression="message" />
                        <asp:CheckBoxField DataField="removed" HeaderText="removed" SortExpression="removed" />
                        <asp:BoundField DataField="removedby" HeaderText="removedby" SortExpression="removedby" />
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

                <asp:SqlDataSource ID="SqlDataSourceQuaack" runat="server" ConnectionString="<%$ ConnectionStrings:QuaackConnectionString %>" SelectCommand="SELECT * FROM [message]"></asp:SqlDataSource>

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
