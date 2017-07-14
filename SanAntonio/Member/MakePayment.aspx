<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MakePayment.aspx.cs" Inherits="Member_MakePayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 80%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Check Out 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
    You are making payment for the fiollowing order:</p>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/database.accdb" SelectCommand="SELECT * FROM [Orders] WHERE [OID] = ?" UpdateCommand="UPDATE Orders SET [OStatus] = 'PAID' WHERE [OID] = ?">
        <SelectParameters>
            <asp:SessionParameter Name="OID" SessionField="OID" />
        </SelectParameters>
        <UpdateParameters>
            <asp:SessionParameter Name="OID" SessionField="OID" />
        </UpdateParameters>
    </asp:AccessDataSource>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="OID" DataSourceID="AccessDataSource1" CellPadding="4" ForeColor="#333333">
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
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
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
            &nbsp;<table class="auto-style1" style="width: 640px">
                <tr>
                    <td style="font-weight: bold; color: #333333">Order ID:</td>
                    <td>
                        <asp:Label ID="OIDLabel" runat="server" Text='<%# Eval("OID") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bold; color: #333333">User name:</td>
                    <td>
                        <asp:Label ID="UsernameLabel" runat="server" Text='<%# Bind("Username") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bold; color: #333333">Product ID: </td>
                    <td>
                        <asp:Label ID="PIDLabel" runat="server" Text='<%# Bind("PID") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bold; color: #333333">Product Name:</td>
                    <td>
                        <asp:Label ID="PNameLabel" runat="server" Text='<%# Bind("PName") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bold; color: #333333">Price:</td>
                    <td>$<asp:Label ID="PPriceLabel" runat="server" Text='<%# Bind("PPrice") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bold; color: #333333">Quantity:</td>
                    <td>
                        <asp:Label ID="QtyLabel" runat="server" Text='<%# Bind("Qty") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bold; color: #333333">Total:</td>
                    <td>
                        <asp:Label ID="TotalLabel" runat="server" Text='<%# Bind("Total") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bold; color: #333333">Order Status:</td>
                    <td>
                        <asp:Label ID="OStatusLabel" runat="server" Text='<%# Bind("OStatus") %>' />
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bold; color: #333333">Order DateTime:</td>
                    <td>
                        <asp:Label ID="ODateTimeLabel" runat="server" Text='<%# Bind("ODateTime") %>' />
                    </td>
                </tr>
            </table>

        </ItemTemplate>
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:FormView>
<br />
    Please enter payment details:<br />
    <br />
    <table class="auto-style2" style="width: 640px">
        <tr>
            <td style="color: #333333; font-weight: bold">Card Type:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Master</asp:ListItem>
                    <asp:ListItem>Visa</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="color: #333333; font-weight: bold">Card No.: </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="160px">4100 5601 1271 237</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #333333; font-weight: bold">Name:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="160px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #333333; font-weight: bold">Email: </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="160px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #333333; font-weight: bold">Tel:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="160px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #333333; font-weight: bold;">Delivery Address:</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Rows="5" TextMode="MultiLine" Width="160px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color: #333333; font-weight: bold">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" />
            </td>
        </tr>
    </table>
    <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/database.accdb" SelectCommand="SELECT * FROM [Users] WHERE [Username] = ?">
        <SelectParameters>
            <asp:SessionParameter Name="Username" SessionField="Username" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:AccessDataSource ID="AccessDataSource3" runat="server" DataFile="~/App_Data/database.accdb" DeleteCommand="DELETE FROM [Payments] WHERE [PayID] = ?" InsertCommand="INSERT INTO [Payments] ([Username], [OID], [CardType], [CardNo], [FullName], [Email], [Tel], [DeliveryAdd], [PayDateTime]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" SelectCommand="SELECT * FROM [Payments]" UpdateCommand="UPDATE [Payments] SET [Username] = ?, [OID] = ?, [CardType] = ?, [CardNo] = ?, [FullName] = ?, [Email] = ?, [Tel] = ?, [DeliveryAdd] = ?, [PayDateTime] = ? WHERE [PayID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="PayID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:SessionParameter Name="Username" SessionField="Username" Type="String" />
            <asp:SessionParameter Name="OID" SessionField="OID" Type="Int32" />
            <asp:ControlParameter ControlID="DropDownList1" Name="CardType" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="TextBox1" Name="CardNo" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox2" Name="FullName" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox3" Name="Email" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox4" Name="Tel" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox5" Name="DeliveryAdd" PropertyName="Text" Type="String" />
            <asp:SessionParameter Name="PayDateTime" SessionField="Now" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="OID" Type="Int32" />
            <asp:Parameter Name="CardType" Type="String" />
            <asp:Parameter Name="CardNo" Type="String" />
            <asp:Parameter Name="FullName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Tel" Type="String" />
            <asp:Parameter Name="DeliveryAdd" Type="String" />
            <asp:Parameter Name="PayDateTime" Type="DateTime" />
            <asp:Parameter Name="PayID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>
    <br />
&nbsp;<br />
    <br />
&nbsp;<br />
    <br />
&nbsp;<br />
&nbsp;<br />
<br />
</asp:Content>

