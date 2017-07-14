<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewCart.aspx.cs" Inherits="Member_ViewCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    View Shopping Cart
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        Your order(s):</p>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/database.accdb" DeleteCommand="DELETE FROM [Orders] WHERE [OID] = ?" InsertCommand="INSERT INTO [Orders] ([OID], [Username], [PID], [PName], [PPrice], [Qty], [Total], [OStatus], [ODateTime]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" SelectCommand="SELECT * FROM [Orders] WHERE [Username] = ? AND [OStatus] = 'NEW'" UpdateCommand="UPDATE [Orders] SET [Username] = ?, [PID] = ?, [PName] = ?, [PPrice] = ?, [Qty] = ?, [Total] = ?, [OStatus] = ?, [ODateTime] = ? WHERE [OID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="OID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="OID" Type="Int32" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="PID" Type="Int32" />
            <asp:Parameter Name="PName" Type="String" />
            <asp:Parameter Name="PPrice" Type="Decimal" />
            <asp:Parameter Name="Qty" Type="Int32" />
            <asp:Parameter Name="Total" Type="Decimal" />
            <asp:Parameter Name="OStatus" Type="String" />
            <asp:Parameter Name="ODateTime" Type="DateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="Username" SessionField="Username" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="PID" Type="Int32" />
            <asp:Parameter Name="PName" Type="String" />
            <asp:Parameter Name="PPrice" Type="Decimal" />
            <asp:Parameter Name="Qty" Type="Int32" />
            <asp:Parameter Name="Total" Type="Decimal" />
            <asp:Parameter Name="OStatus" Type="String" />
            <asp:Parameter Name="ODateTime" Type="DateTime" />
            <asp:Parameter Name="OID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="OID" DataSourceID="AccessDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="OID" HeaderText="Order ID" InsertVisible="False" ReadOnly="True" SortExpression="OID" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="PID" HeaderText="Container ID" SortExpression="PID" />
            <asp:BoundField DataField="PName" HeaderText="Industry Name" SortExpression="PName" />
            <asp:BoundField DataField="PPrice" HeaderText="Container Quantity" SortExpression="PPrice" />
            <asp:BoundField DataField="Qty" HeaderText="Quantity" SortExpression="Qty" />
            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
            <asp:BoundField DataField="OStatus" HeaderText="Order Status" SortExpression="OStatus" />
            <asp:BoundField DataField="ODateTime" HeaderText="Order Time" SortExpression="ODateTime" />
            <asp:CommandField SelectText="Make Payment" ShowDeleteButton="True" ShowSelectButton="True" />
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
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Products.aspx">Continue Shopping</asp:HyperLink>
    <br />
    <br />
    <br />
    <br />
</asp:Content>

