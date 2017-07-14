<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewHistory.aspx.cs" Inherits="Member_ViewHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    View History
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
    Below is your shopping History:</p>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/database.accdb" SelectCommand="SELECT * FROM [Payments] WHERE [Username] = ?">
        <SelectParameters>
            <asp:SessionParameter Name="Username" SessionField="Username" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="OID" DataSourceID="AccessDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="PayID" HeaderText="PayID" InsertVisible="False" ReadOnly="True" SortExpression="PayID" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" Visible="False" />
            <asp:BoundField DataField="OID" HeaderText="OID" SortExpression="OID" />
            <asp:BoundField DataField="CardType" HeaderText="CardType" SortExpression="CardType" />
            <asp:BoundField DataField="CardNo" HeaderText="CardNo" SortExpression="CardNo" Visible="False" />
            <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Tel" HeaderText="Tel" SortExpression="Tel" />
            <asp:BoundField DataField="DeliveryAdd" HeaderText="DeliveryAdd" SortExpression="DeliveryAdd" />
            <asp:BoundField DataField="PayDateTime" HeaderText="PayDateTime" SortExpression="PayDateTime" />
            <asp:CommandField SelectText="View Order" ShowSelectButton="True" />
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
<br />
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/database.accdb" SelectCommand="SELECT * FROM [Orders] WHERE [OID] = ?">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="OID" PropertyName="SelectedValue" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="OID" DataSourceID="AccessDataSource2" style="margin-right: 278px">
        <EditItemTemplate>
            OID:
            <asp:Label ID="OIDLabel1" runat="server" Text='<%# Eval("OID") %>' />
            <br />
            Username:
            <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
            <br />
            PID:
            <asp:TextBox ID="PIDTextBox" runat="server" Text='<%# Bind("PID") %>' />
            <br />
            PName:
            <asp:TextBox ID="PNameTextBox" runat="server" Text='<%# Bind("PName") %>' />
            <br />
            PPrice:
            <asp:TextBox ID="PPriceTextBox" runat="server" Text='<%# Bind("PPrice") %>' />
            <br />
            Qty:
            <asp:TextBox ID="QtyTextBox" runat="server" Text='<%# Bind("Qty") %>' />
            <br />
            Total:
            <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("Total") %>' />
            <br />
            OStatus:
            <asp:TextBox ID="OStatusTextBox" runat="server" Text='<%# Bind("OStatus") %>' />
            <br />
            ODateTime:
            <asp:TextBox ID="ODateTimeTextBox" runat="server" Text='<%# Bind("ODateTime") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Username:
            <asp:TextBox ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
            <br />
            PID:
            <asp:TextBox ID="PIDTextBox" runat="server" Text='<%# Bind("PID") %>' />
            <br />
            PName:
            <asp:TextBox ID="PNameTextBox" runat="server" Text='<%# Bind("PName") %>' />
            <br />
            PPrice:
            <asp:TextBox ID="PPriceTextBox" runat="server" Text='<%# Bind("PPrice") %>' />
            <br />
            Qty:
            <asp:TextBox ID="QtyTextBox" runat="server" Text='<%# Bind("Qty") %>' />
            <br />
            Total:
            <asp:TextBox ID="TotalTextBox" runat="server" Text='<%# Bind("Total") %>' />
            <br />
            OStatus:
            <asp:TextBox ID="OStatusTextBox" runat="server" Text='<%# Bind("OStatus") %>' />
            <br />
            ODateTime:
            <asp:TextBox ID="ODateTimeTextBox" runat="server" Text='<%# Bind("ODateTime") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table class="auto-style1" style="width: 640px">
                <tr>
                    <td style="color: #333333; font-weight: bold">Order ID:</td>
                    <td>
                        <asp:Label ID="OIDLabel" runat="server" Text='<%# Eval("OID") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="color: #333333; font-weight: bold">User name:</td>
                    <td>
                        <asp:Label ID="UsernameLabel" runat="server" Text='<%# Bind("Username") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="color: #333333; font-weight: bold">Product ID:</td>
                    <td>
                        <asp:Label ID="PIDLabel" runat="server" Text='<%# Bind("PID") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="color: #333333; font-weight: bold">Product Name:</td>
                    <td>
                        <asp:Label ID="PNameLabel" runat="server" Text='<%# Bind("PName") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="color: #333333; font-weight: bold">Price:</td>
                    <td>$<asp:Label ID="PPriceLabel" runat="server" Text='<%# Bind("PPrice") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="color: #333333; font-weight: bold">Quantity: </td>
                    <td>
                        <asp:Label ID="QtyLabel" runat="server" Text='<%# Bind("Qty") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="color: #333333; font-weight: bold">Total:</td>
                    <td>
                        <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("Total") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="color: #333333; font-weight: bold">Order Status:</td>
                    <td>
                        <asp:Label ID="OStatusLabel" runat="server" Text='<%# Bind("OStatus") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="color: #333333; font-weight: bold">Order Time:</td>
                    <td>
                        <asp:Label ID="ODateTimeLabel" runat="server" Text='<%# Bind("ODateTime") %>' />
                    </td>
                </tr>
            </table>
            <br />

        </ItemTemplate>
    </asp:FormView>
    <br />
    <br />
<br />
<br />
<br />
</asp:Content>

