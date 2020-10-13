﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:TextBox ID="tbA" runat="server" ForeColor="Black">1</asp:TextBox>
            <asp:TextBox ID="tbB" runat="server">2</asp:TextBox>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="80px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="64px">
                <asp:ListItem>+</asp:ListItem>
                <asp:ListItem>-</asp:ListItem>
                <asp:ListItem>*</asp:ListItem>
                <asp:ListItem>/</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:TextBox ID="tbRes" runat="server"></asp:TextBox>
        </p>
        <p>
        <asp:TextBox ID="tbMessage" runat="server" Height="177px" TextMode="MultiLine" Width="289px"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="tbTest" runat="server" Height="48px" OnClick="tbTest_Click" Text="Testeaza" Width="283px" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>