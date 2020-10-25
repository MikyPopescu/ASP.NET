<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormCurseTransportComun.aspx.cs" Inherits="ProjectBDI.WebFormCurseTransportComun" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
             <asp:Image ID="Image1" runat="server" Height="116px" Width="541px" ImageUrl="~/STB.jpg" />
        <div style="margin-left: auto; margin-right: auto; text-align: center;">
       
            <asp:Label ID="Label1" runat="server" Text="Curse transport in comun" Font-Bold="True"  Font-Size="X-Large" BackColor="#284775" ForeColor="White"></asp:Label>
         
            </div>
        <div style="margin-left: auto; margin-right: auto; text-align: center;">
           <asp:LinkButton ID="LinkButton1" runat="server">Calatori</asp:LinkButton>
            &nbsp;&nbsp;
            &nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Autobuze</asp:LinkButton>
            </div>
          
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id_cursa" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="376px" Width="611px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="id_cursa" HeaderText="id_cursa" ReadOnly="True" SortExpression="id_cursa" />
                <asp:BoundField DataField="statie_plecare" HeaderText="statie_plecare" SortExpression="statie_plecare" />
                <asp:BoundField DataField="statie_sosire" HeaderText="statie_sosire" SortExpression="statie_sosire" />
                <asp:BoundField DataField="nr_statii" HeaderText="nr_statii" SortExpression="nr_statii" />
                <asp:BoundField DataField="id_autobuz" HeaderText="id_autobuz" SortExpression="id_autobuz" />
                <asp:BoundField DataField="id_calator" HeaderText="id_calator" SortExpression="id_calator" />
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
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Curse]"></asp:SqlDataSource>
    
              </form>
</body>
</html>
