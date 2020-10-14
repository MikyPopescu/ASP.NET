<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="idClient" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="230px" Width="421px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                    <asp:BoundField DataField="idClient" HeaderText="idClient" ReadOnly="True" SortExpression="idClient" />
                    <asp:BoundField DataField="nume" HeaderText="nume" SortExpression="nume" />
                    <asp:BoundField DataField="sold" HeaderText="sold" SortExpression="sold" />
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbBankConnectionString %>" DeleteCommand="DELETE FROM [Clienti] WHERE [idClient] = @idClient" InsertCommand="INSERT INTO [Clienti] ([idClient], [nume], [sold]) VALUES (@idClient, @nume, @sold)" ProviderName="<%$ ConnectionStrings:dbBankConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Clienti]" UpdateCommand="UPDATE [Clienti] SET [nume] = @nume, [sold] = @sold WHERE [idClient] = @idClient">
                <DeleteParameters>
                    <asp:Parameter Name="idClient" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="idClient" Type="Int32" />
                    <asp:Parameter Name="nume" Type="String" />
                    <asp:Parameter Name="sold" Type="Double" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nume" Type="String" />
                    <asp:Parameter Name="sold" Type="Double" />
                    <asp:Parameter Name="idClient" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <asp:TextBox ID="tbId" runat="server" BackColor="#00FFCC"></asp:TextBox>
        <asp:TextBox ID="tbNume" runat="server" BackColor="#00FFCC"></asp:TextBox>
        <asp:TextBox ID="tbSold" runat="server" BackColor="#00FFCC"></asp:TextBox>
        <asp:Button ID="btnInsert" runat="server" OnClick="btnInsert_Click" Text="Insert" />
        <p>
            <asp:TextBox ID="tbError" runat="server" BackColor="#FFFFCC" Height="97px" TextMode="MultiLine" Width="423px"></asp:TextBox>
        </p>
        <asp:DropDownList ID="selectGraph" runat="server" AutoPostBack="True" Height="16px" OnSelectedIndexChanged="selectGraph_SelectedIndexChanged" Width="322px">
            <asp:ListItem>Selectati Tip Grafic</asp:ListItem>
            <asp:ListItem>Bare</asp:ListItem>
            <asp:ListItem>Pie</asp:ListItem>
            <asp:ListItem>Linie</asp:ListItem>
            <asp:ListItem>3D</asp:ListItem>
        </asp:DropDownList>
    </form>
</body>
</html>
