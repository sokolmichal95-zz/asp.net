<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User" MasterPageFile="~/MasterPage.master" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="User" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <asp:Label ID="Label1" runat="server" Text="Welcome"></asp:Label>

        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logout" />
        <br />
        <br />
        <asp:Label ID="Question" runat="server"></asp:Label>
        <asp:DropDownList ID="DDL1" runat="server"></asp:DropDownList>
    </div>
</asp:Content>
