<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewTransaction.aspx.cs" Inherits="Admin_ViewTransaction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    View All Transaction</p>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/database.accdb" SelectCommand="SELECT * FROM [Orders]"></asp:AccessDataSource>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="OID" DataSourceID="AccessDataSource1" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="OID" HeaderText="Order ID" InsertVisible="False" ReadOnly="True" SortExpression="OID" />
        <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
        <asp:BoundField DataField="PID" HeaderText="Product ID" SortExpression="PID" />
        <asp:BoundField DataField="PName" HeaderText="Product Name" SortExpression="PName" />
        <asp:BoundField DataField="PPrice" HeaderText="Price" SortExpression="PPrice" />
        <asp:BoundField DataField="Qty" HeaderText="Quantity" SortExpression="Qty" />
        <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
        <asp:BoundField DataField="OStatus" HeaderText="Order Status" SortExpression="OStatus" />
        <asp:BoundField DataField="ODateTime" HeaderText="Order Time" SortExpression="ODateTime" />
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
</asp:Content>

