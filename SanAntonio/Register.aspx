<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 80%;
        }
    .auto-style12 {
        height: 29px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Member Registration
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        Please enter the following details:</p>
    <table class="auto-style1">
        <tr>
            <td>Name:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="* Name required!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Username:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="* Username required!" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="* Username already exist!"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Password:</td>
            <td class="auto-style12">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="* Password required!" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="* Password not match!" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>Re-type Password:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="* Re-type password!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Email:</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="* Email required!" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="* Email not match!" ForeColor="Red"></asp:CompareValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="* Invalid email format!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>Re-type Email:</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Width="200px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="* Re-type email!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Contact Number:</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" Width="200px"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" Display="Dynamic" ErrorMessage="* Contact Number required!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="vertical-align: top">Address:</td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server" Rows="5" TextMode="MultiLine" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" Display="Dynamic" ErrorMessage="* Address required!" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="Reset" CausesValidation="False" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
    <br />
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/database.accdb" DeleteCommand="DELETE FROM [Users] WHERE [Username] = ?" InsertCommand="INSERT INTO [Users] ([Username], [Password], [UserType], [FullName], [Email], [ContactNo], [Address]) VALUES (?, ?, ?, ?, ?, ?, ?)" SelectCommand="SELECT * FROM [Users] WHERE [Username] = ?" UpdateCommand="UPDATE [Users] SET [Password] = ?, [UserType] = ?, [FullName] = ?, [Email] = ?, [ContactNo] = ?, [Address] = ? WHERE [Username] = ?">
        <DeleteParameters>
            <asp:Parameter Name="Username" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="TextBox2" Name="Username" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox3" Name="Password" PropertyName="Text" Type="String" />
            <asp:Parameter DefaultValue="user" Name="UserType" Type="String" />
            <asp:ControlParameter ControlID="TextBox1" DefaultValue="" Name="FullName" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox5" Name="Email" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox7" Name="ContactNo" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox8" Name="Address" PropertyName="Text" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox2" Name="Username" PropertyName="Text" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="UserType" Type="String" />
            <asp:Parameter Name="FullName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="ContactNo" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
        </UpdateParameters>
    </asp:AccessDataSource>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

