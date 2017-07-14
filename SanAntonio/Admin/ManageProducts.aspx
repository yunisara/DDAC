<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageProducts.aspx.cs" Inherits="Admin_ManageProducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 80%;
        }
        .auto-style3 {
            height: 22px;
        }
    .auto-style12 {
        width: 281px;
    }
    .auto-style13 {
        height: 22px;
        width: 281px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Manage Products
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        Product Management:</p>
    <table class="auto-style2" style="width: 700px">
        <tr>
            <td>Industry Name:</td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="* Product name required!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Container Image:</td>
            <td class="auto-style12">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="FileUpload1" Display="Dynamic" ErrorMessage="* File missing!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Container Quantity:</td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="* Price required!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Container Navigate URL:</td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox3" runat="server">#</asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="* Navigate URL required!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="vertical-align: top">Container Description:</td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox4" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="* Description required!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style13">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                <asp:Button ID="Button2" runat="server" Text="Reset" CausesValidation="False" />
            </td>
        </tr>
    </table>
    <br />
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/database.accdb" DeleteCommand="DELETE FROM [Products] WHERE [PID] = ?" InsertCommand="INSERT INTO [Products] ([PName], [PImagePath], [PPrice], [PNavURL], [PDesc]) VALUES (?, ?, ?, ?, ?)" SelectCommand="SELECT * FROM [Products]" UpdateCommand="UPDATE [Products] SET [PName] = ?, [PImagePath] = ?, [PPrice] = ?, [PNavURL] = ?, [PDesc] = ? WHERE [PID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="PID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="PName" PropertyName="Text" Type="String" />
            <asp:SessionParameter Name="PImagePath" SessionField="PImagePath" Type="String" />
            <asp:ControlParameter ControlID="TextBox2" Name="PPrice" PropertyName="Text" Type="Decimal" />
            <asp:ControlParameter ControlID="TextBox3" Name="PNavURL" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox4" Name="PDesc" PropertyName="Text" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="PName" Type="String" />
            <asp:Parameter Name="PImagePath" Type="String" />
            <asp:Parameter Name="PPrice" Type="Decimal" />
            <asp:Parameter Name="PNavURL" Type="String" />
            <asp:Parameter Name="PDesc" Type="String" />
            <asp:Parameter Name="PID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PID" DataSourceID="AccessDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="PID" HeaderText="Container ID" InsertVisible="False" ReadOnly="True" SortExpression="PID" />
            <asp:BoundField DataField="PName" HeaderText="Container Name" SortExpression="PName" />
            <asp:TemplateField HeaderText="Container Image" SortExpression="PImagePath">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("PImagePath") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="128px" ImageUrl='<%# Eval("PImagePath") %>' Width="233px" />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("PImagePath") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Container Quantity" SortExpression="PPrice">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PPrice") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    $<asp:Label ID="Label2" runat="server" Text='<%# Bind("PPrice", "{0:0.00}") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Container Navigate URL" SortExpression="PNavURL">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("PNavURL") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("PNavURL") %>' Text='<%# Eval("PNavURL") %>'></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="PDesc" HeaderText="Container Description" SortExpression="PDesc" />
            <asp:CommandField CausesValidation="False" ShowDeleteButton="True" ShowEditButton="True" />
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
    <br />
    <br />
</asp:Content>

