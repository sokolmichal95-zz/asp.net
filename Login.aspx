<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style4" align="center" border="0" style="font-family: Arial, Helvetica, sans-serif; font-size: medium; border: thin none #000000; ">
        <tr>
            <td class="auto-style12">User name:</td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style10" Width="360px"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <p class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style11" ErrorMessage="User name required"></asp:RequiredFieldValidator>
                </p>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">Password:</td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style10" TextMode="Password" Width="360px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style11" ErrorMessage="Password required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style14">
                <asp:Button ID="LoginButton" runat="server" OnClick="LoginButton_Click" Text="Login" Width="147px" />
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style9">
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style10" NavigateUrl="~/Registration.aspx">Create new account</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style3 {
        height: 30px;
    }
    .auto-style4 {
        height: auto;
        position: absolute;
        width: auto;
        top: 194px;
        right: 244px;
        bottom: 246px;
        left: 172px;
    }
        .auto-style5 {
            width: 171px;
        }
        .auto-style7 {
            height: 40px;
            position: absolute;
            width: auto;
            top: 194px;
            right: 244px;
            bottom: 246px;
            left: 172px;
        }
        .auto-style8 {
            height: 24px;
            position: absolute;
            width: auto;
            top: 194px;
            right: 244px;
            bottom: 246px;
            left: 172px;
        }
        .auto-style9 {
            height: 29px;
            width: 368px;
        }
        .auto-style10 {
            height: 28px;
        }
        .auto-style11 {
            height: 27px;
        }
        .auto-style12 {
            height: 24px;
        }
        .auto-style13 {
            height: 24px;
            width: 368px;
        }
        .auto-style14 {
            height: 30px;
            width: 368px;
        }
    </style>
</asp:Content>

