<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ChangePWD.aspx.cs" Inherits="ChangePWD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style12 {
        width: 318px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Change Password and Contact
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/database.accdb" SelectCommand="SELECT * FROM [Users] WHERE [Username] = ?" DeleteCommand="DELETE FROM [Users] WHERE [Username] = ?" InsertCommand="INSERT INTO [Users] ([Username], [Password], [UserType], [FullName], [Email], [ContactNo], [Address]) VALUES (?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE [Users] SET [Password] = ? WHERE [Username] = ?">
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
        <asp:Parameter Name="Password" Type="String" />
        <asp:Parameter Name="Username" Type="String" />
    </UpdateParameters>
</asp:AccessDataSource>
    <br />
<table class="auto-style1">
    <tr>
        <td class="auto-style12">
            <asp:Label ID="Label3" runat="server" Text="Please type your current password:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="183px"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="* Password is wrong, please retype!"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style12">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" />
        </td>
    </tr>
</table>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Username" DataSourceID="AccessDataSource1" ForeColor="#333333" GridLines="None" Visible="False">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:CommandField ShowEditButton="True" />
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
<br />
</asp:Content>

