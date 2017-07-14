<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="Member_EditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Edit Profile
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
    You can modify your details:</p>
<asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/database.accdb" DeleteCommand="DELETE FROM [Users] WHERE [Username] = ?" InsertCommand="INSERT INTO [Users] ([Username], [Password], [UserType], [FullName], [Email], [ContactNo], [Address]) VALUES (?, ?, ?, ?, ?, ?, ?)" SelectCommand="SELECT * FROM [Users] WHERE [Username] = @Username" UpdateCommand="UPDATE [Users] SET  [FullName] = ?, [Email] = ?, [ContactNo] = ?, [Address] = ? WHERE [Username] = ?">
    <DeleteParameters>
        <asp:Parameter Name="Username" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Username" Type="String" />
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="UserType" Type="String" />
        <asp:Parameter Name="FullName" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="ContactNo" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:SessionParameter Name="Username" SessionField="Username" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="FullName" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="ContactNo" Type="String" />
        <asp:Parameter Name="Address" Type="String" />
        <asp:Parameter Name="Username" Type="String" />
    </UpdateParameters>
</asp:AccessDataSource>
<asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Username" DataSourceID="AccessDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
    <AlternatingRowStyle BackColor="White" />
    <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
    <EditRowStyle BackColor="#7C6F57" />
    <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
    <Fields>
        <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
        <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        <asp:CommandField ShowEditButton="True" />
    </Fields>
    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#E3EAEB" />
</asp:DetailsView>
<br />
<br />
<br />
<br />
<br />
</asp:Content>

