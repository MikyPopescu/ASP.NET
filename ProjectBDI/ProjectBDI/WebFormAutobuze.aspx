<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormAutobuze.aspx.cs" Inherits="ProjectBDI.WebFormAutobuze" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
          <asp:Image ID="Image1" runat="server" Height="105px" Width="402px" ImageUrl="~/STB.jpg" />
          <div   style="margin-left: auto; margin-right: auto; text-align: center;">

            <asp:Label ID="Label1" runat="server" Text="Autobuze pe traseu"  Font-Bold="True"  Font-Size="X-Large" BackColor="#284775" ForeColor="White"></asp:Label>
        </div>

               <div style="margin-left: auto; margin-right: auto; text-align: center;">
           <asp:LinkButton ID="LinkButton1" runat="server">Calatori</asp:LinkButton>
            &nbsp;&nbsp;
            &nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Curse</asp:LinkButton>
            </div>
           &nbsp;&nbsp;
   
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_autobuz" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="214px" Width="654px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="id_autobuz" HeaderText="id_autobuz" ReadOnly="True" SortExpression="id_autobuz" />
                <asp:BoundField DataField="numar_inmatriculare" HeaderText="numar_inmatriculare" SortExpression="numar_inmatriculare" />
                <asp:BoundField DataField="numar_autobuz" HeaderText="numar_autobuz" SortExpression="numar_autobuz" />
                <asp:BoundField DataField="marca" HeaderText="marca" SortExpression="marca" />
                <asp:BoundField DataField="combustibil" HeaderText="combustibil" SortExpression="combustibil" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Autobuze]"></asp:SqlDataSource>
    </form>
</body>
</html>
