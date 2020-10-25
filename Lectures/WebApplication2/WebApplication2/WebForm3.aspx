<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication2.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 741px">
    <form id="form1" runat="server">
        <asp:Button ID="btnCreare" runat="server" Height="38px" OnClick="btnCreare_Click" Text="Creare" Width="277px" />
        <br />
        <br />
        MinSold<asp:TextBox ID="tbMinSold" runat="server"></asp:TextBox>
        <br />
        <div>
            MaxSold<asp:TextBox ID="tbMaxSold" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnApel" runat="server" OnClick="btnApel_Click" Text="Apel" />
            <br />
            Nr. clienti&nbsp; <asp:TextBox ID="tbNrClienti" runat="server"></asp:TextBox>
            <br />
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" Height="251px" Width="523px">
        </asp:GridView>
        <p>
            <asp:TextBox ID="tbMesaj" runat="server" BackColor="#FFFF99" Height="61px" ReadOnly="True" TextMode="MultiLine" Width="513px"></asp:TextBox>
        </p>
    </form>
</body>
</html>
