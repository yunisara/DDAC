<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style13 {
            width: 640px;
        }
        .auto-style14 {
            width: 254px;
        }
        .auto-style15 {
            width: 86px;
        }
        .auto-style16 {
            width: 141px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Product Catalog</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        Please select an item:</p>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/database.accdb" SelectCommand="SELECT * FROM [Products]"></asp:AccessDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="PID" DataSourceID="AccessDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="PID" HeaderText="Container ID" InsertVisible="False" ReadOnly="True" SortExpression="PID" />
            <asp:BoundField DataField="PName" HeaderText="Industry" SortExpression="PName" />
            <asp:TemplateField HeaderText="Container Picture" SortExpression="PImagePath">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("PImagePath") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="156px" ImageUrl='<%# Eval("PImagePath") %>' Width="310px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Container Quantity" SortExpression="PPrice">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("PPrice") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    $
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("PPrice", "{0:0.00}") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Container Details" SortExpression="PNavURL">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PNavURL") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("PNavURL") %>'>More Info</asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="PDesc" HeaderText="Container Status" SortExpression="PDesc" />
            <asp:CommandField SelectText="Add to Cart" ShowSelectButton="True" />
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
    <asp:Panel ID="Panel1" runat="server" Visible="False">
        You have selected:<br />
        <br />
        <table class="auto-style13">
            <tr>
                <td class="auto-style16" style="font-weight: bold; color: #333333; text-align: right;">Product ID: </td>
                <td class="auto-style15" style="font-weight: bold; color: #333333">&nbsp;</td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style16" style="font-weight: bold; color: #333333; text-align: right;">Product Name:</td>
                <td class="auto-style15" style="font-weight: bold; color: #333333">&nbsp;</td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style16" style="font-weight: bold; color: #333333; text-align: right;">Product Price:</td>
                <td class="auto-style15" style="font-weight: bold; color: #333333">&nbsp;</td>
                <td>$
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style16" style="font-weight: bold; color: #333333; text-align: right;">Quatity: </td>
                <td class="auto-style15" style="font-weight: bold; color: #333333">&nbsp;</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style16" style="font-weight: bold; color: #333333; text-align: right;">Total: </td>
                <td class="auto-style15" style="font-weight: bold; color: #333333">&nbsp;</td>
                <td>$
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style16" style="font-weight: bold; color: #333333; text-align: right;">&nbsp;</td>
                <td class="auto-style15" style="font-weight: bold; color: #333333">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" />
                </td>
            </tr>
        </table>
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/database.accdb" DeleteCommand="DELETE FROM [Orders] WHERE [OID] = ?" InsertCommand="INSERT INTO [Orders] ([Username], [PID], [PName], [PPrice], [Qty], [Total], [OStatus], [ODateTime]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" SelectCommand="SELECT * FROM [Orders]" UpdateCommand="UPDATE [Orders] SET [Username] = ?, [PID] = ?, [PName] = ?, [PPrice] = ?, [Qty] = ?, [Total] = ?, [OStatus] = ?, [ODateTime] = ? WHERE [OID] = ?">
            <DeleteParameters>
                <asp:Parameter Name="OID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:SessionParameter Name="Username" SessionField="Username" Type="String" />
                <asp:ControlParameter ControlID="Label2" Name="PID" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="Label3" Name="PName" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="Label4" Name="PPrice" PropertyName="Text" Type="Decimal" />
                <asp:ControlParameter ControlID="DropDownList1" Name="Qty" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="Label5" Name="Total" PropertyName="Text" Type="Decimal" />
                <asp:Parameter DefaultValue="NEW" Name="OStatus" Type="String" />
                <asp:SessionParameter DefaultValue="" Name="ODateTime" SessionField="Now" Type="DateTime" />
            </InsertParameters>
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
        <br />
    </asp:Panel>
</asp:Content>


