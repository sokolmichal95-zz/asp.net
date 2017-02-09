<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="_Default" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="Registration" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <table class="auto-style1">
            <tr>
                <td class="auto-style3">User Name:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="UserNameTB" runat="server" Width="333px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserNameTB" CssClass="auto-style6" ErrorMessage="User Name is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">E-mail:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="EmailTB" runat="server" Width="333px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailTB" CssClass="auto-style6" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTB" CssClass="auto-style6" ErrorMessage="Email is not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="PasswdTB" runat="server" TextMode="Password" Width="333px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="PasswdTB" CssClass="auto-style6" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Confirm Password:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="ConfirmPasswdTB" runat="server" TextMode="Password" Width="333px"></asp:TextBox>
                </td>
                <td class="auto-style5">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ConfirmPasswdTB" CssClass="auto-style6" ErrorMessage="Confirm Password is required"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PasswdTB" ControlToValidate="ConfirmPasswdTB" CssClass="auto-style6" ErrorMessage="Passwords do not match"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style8"></td>
                <td class="auto-style9">
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="RegisterButton" runat="server" OnClick="RegisterButton_Click" Text="Register" />
                    <input id="Reset1" type="reset" value="reset" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>
