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
           <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Calatori</asp:LinkButton>
            &nbsp;&nbsp;
            &nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Autobuze</asp:LinkButton>
             &nbsp;&nbsp;
            &nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Grafic</asp:LinkButton>
            </div>
          
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="id_cursa" DataSourceID="SqlDataSource1" Height="376px" Width="611px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
            <Columns>
                <asp:BoundField DataField="id_cursa" HeaderText="id_cursa" ReadOnly="True" SortExpression="id_cursa" />
                <asp:BoundField DataField="statie_plecare" HeaderText="statie_plecare" SortExpression="statie_plecare" />
                <asp:BoundField DataField="statie_sosire" HeaderText="statie_sosire" SortExpression="statie_sosire" />
                <asp:BoundField DataField="nr_statii" HeaderText="nr_statii" SortExpression="nr_statii" />
                <asp:BoundField DataField="id_autobuz" HeaderText="id_autobuz" SortExpression="id_autobuz" />
                <asp:BoundField DataField="id_calator" HeaderText="id_calator" SortExpression="id_calator" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Curse]"></asp:SqlDataSource>
    
              </form>
</body>
</html>
