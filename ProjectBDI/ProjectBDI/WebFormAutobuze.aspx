<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormAutobuze.aspx.cs" Inherits="ProjectBDI.WebFormAutobuze" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
          <asp:Image ID="Image1" runat="server" Height="105px" Width="402px" ImageUrl="~/STB.jpg" />
          <div style="margin-left: auto; margin-right: auto; text-align: center;">

            <asp:Label ID="Label1" runat="server" Text="Autobuze pe traseu"  Font-Bold="True"  Font-Size="X-Large" BackColor="#284775" ForeColor="White"></asp:Label>
        </div>

               <div style="margin-left: auto; margin-right: auto; text-align: center;">
           <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Calatori</asp:LinkButton>
            &nbsp;&nbsp;
            &nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Curse</asp:LinkButton>
            </div>
           &nbsp;&nbsp;
   
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="id_autobuz" DataSourceID="SqlDataSource1" GridLines="None" Height="214px" Width="654px" AllowPaging="True" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1">
            <Columns>
                <asp:BoundField DataField="id_autobuz" HeaderText="id_autobuz" ReadOnly="True" SortExpression="id_autobuz" />
                <asp:BoundField DataField="numar_inmatriculare" HeaderText="numar_inmatriculare" SortExpression="numar_inmatriculare" />
                <asp:BoundField DataField="numar_autobuz" HeaderText="numar_autobuz" SortExpression="numar_autobuz" />
                <asp:BoundField DataField="marca" HeaderText="marca" SortExpression="marca" />
                <asp:BoundField DataField="combustibil" HeaderText="combustibil" SortExpression="combustibil" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Autobuze]"></asp:SqlDataSource>
    </form>
</body>
</html>
