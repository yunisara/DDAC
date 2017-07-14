<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style12 {
            width: 960px;
            height: 78px;
        }

        .auto-style13 {
            color: #000000;
            background-color: #FFFFFF;
        }

        .auto-style14 {
            width: 320px;
            height: 40px;
        }

        .auto-style15 {
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <img alt="shipping-bar" class="auto-style12" src="Images/shipping-bar.gif" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    &nbsp;<table class="auto-style1">
        <tr>
            <td style="width: 320px">
                <asp:ImageButton ID="ImageButton2" runat="server" CausesValidation="False" Height="210px" ImageUrl="~/Images/Marina.jpg" PostBackUrl="~/Products/Marina.aspx" Width="320px" />
            </td>
            <td style="width: 320px">
                <asp:ImageButton ID="ImageButton3" runat="server" CausesValidation="False" Height="209px" ImageUrl="~/Images/Nudu.jpg" PostBackUrl="~/Products/Nude.aspx" Width="320px" />
            </td>
            <td style="width: 320px">
                <asp:ImageButton ID="ImageButton4" runat="server" CausesValidation="False" Height="184px" ImageUrl="~/Images/Weekender.jpg" PostBackUrl="~/Products/Weekender.aspx" Width="319px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style14" style="text-align: center">Woman&#39;s Marina - Brown<br />
                <span class="auto-style13"><strong>$157.0</strong></span></td>
            <td class="auto-style14" style="text-align: center">Woman&#39;s Nudu - White<br />
                <span class="auto-style15"><strong>$131.0</strong></span></td>
            <td class="auto-style14" style="text-align: center">Man&#39;s Weekender - Oporto<br />
                <span class="auto-style15"><strong>$165</strong></span></td>
        </tr>
    </table>
    <br />
    <div id="video">
        <asp:ImageButton ID="ImageButton5" runat="server" CausesValidation="False" Height="190px" ImageUrl="~/Images/video-banner-home2.gif" PostBackUrl="~/Vedio.aspx" Width="960px" />
    </div>
</asp:Content>

