<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Manager.aspx.cs" Inherits="Manager" MasterPageFile="~/MasterPage.master" %>


<asp:Content ID="Admin" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Logout" />
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Insert question:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="400px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Insert answer 1:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="400px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Insert answer 2:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="400px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Insert answer 3:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="400px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Insert answer 4:</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="400px"></asp:TextBox>
                </td>
            </tr>
        </table>

    </div>
    <asp:Button ID="Button1" runat="server" Text="Save" Width="91px" OnClick="Button1_Click" />
    &nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Clear" Width="91px" />
</asp:Content>
