<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormCalatori.aspx.cs" Inherits="ProjectBDI.WebFormCalatori" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Image ID="Image1" runat="server" Height="105px" Width="402px" ImageUrl="~/STB.jpg" />
       <div  style="margin-left: auto; margin-right: auto; text-align: center;">
             <asp:Label ID="Label1" runat="server" Text="Calatori"  Font-Bold="True"  Font-Size="X-Large" BackColor="#284775" ForeColor="White"></asp:Label>  
        </div>
        <div style="margin-left: auto; margin-right: auto; text-align: center;">
          <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Curse</asp:LinkButton>
            &nbsp;&nbsp;
            &nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"  >Autobuze</asp:LinkButton>
   </div>
             &nbsp;&nbsp;

         <div align="center">
             <asp:Label ID="Label2" runat="server" Text="Inregistrare calator nou" Font-Bold="True" ForeColor="#284775"></asp:Label>
                <table>
                    <tr>
                        <td>Nume: &nbsp;</td>
                       <td>  <asp:TextBox ID="TextBox1" runat="server" Height="24px" Width="195px"></asp:TextBox></td>
                    </tr>
                        <tr>
                        <td>Prenume: &nbsp;</td>
                       <td>  <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="195px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>CNP: &nbsp;</td>
                       <td>  <asp:TextBox ID="TextBox3" runat="server" Height="24px" Width="195px"></asp:TextBox></td>
                    </tr>
                 <tr>
                        <td>Adresa: &nbsp;</td>
                       <td>  <asp:TextBox ID="TextBox4" runat="server" Height="24px" Width="195px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>Email: &nbsp;</td>
                       <td>  <asp:TextBox ID="TextBox5" runat="server" Height="24px" Width="195px"></asp:TextBox></td>
                    </tr>
                       <tr>
                        <td>Telefon: &nbsp;</td>
                       <td>  <asp:TextBox ID="TextBox6" runat="server" Height="24px" Width="195px"></asp:TextBox></td>
                    </tr>
                     <tr>
                     <td> &nbsp;</td>
                     <td>&nbsp;</td>
                 </tr>
                      <tr>
                     <td> 
                          <asp:TextBox ID="TextBox7" runat="server" TextMode="MultiLine" Height="80px" Width="371px"></asp:TextBox>
                     </td>
                     <td>
                         &nbsp;
                        <asp:Button ID="Button1" runat="server" Text="Adaugare"  Height="44px" Width="200px" OnClick="Button1_Click" />
                     </td>
                 </tr>
                </table>

         </div>
           <!-- Grid -->
  &nbsp;&nbsp;
        <div align="center">
     
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id_calator" DataSourceID="SqlDataSource1" Height="212px" Width="562px" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="id_calator" HeaderText="id_calator" ReadOnly="True" SortExpression="id_calator" />
                <asp:BoundField DataField="nume" HeaderText="nume" SortExpression="nume" />
                <asp:BoundField DataField="prenume" HeaderText="prenume" SortExpression="prenume" />
                <asp:BoundField DataField="cnp" HeaderText="cnp" SortExpression="cnp" />
                <asp:BoundField DataField="adresa" HeaderText="adresa" SortExpression="adresa" />
                <asp:BoundField DataField="mail" HeaderText="mail" SortExpression="mail" />
                <asp:BoundField DataField="telefon" HeaderText="telefon" SortExpression="telefon" />
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
            </Columns>
             </asp:GridView>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Calatori]" DeleteCommand="DELETE FROM [Calatori] WHERE [id_calator] = ?" InsertCommand="INSERT INTO [Calatori] ([id_calator], [nume], [prenume], [cnp], [adresa], [mail], [telefon]) VALUES (?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE [Calatori] SET [nume] = ?, [prenume] = ?, [cnp] = ?, [adresa] = ?, [mail] = ?, [telefon] = ? WHERE [id_calator] = ?">
                      <DeleteParameters>
                          <asp:Parameter Name="id_calator" Type="Int32" />
                      </DeleteParameters>
                      <InsertParameters>
                          <asp:Parameter Name="id_calator" Type="Int32" />
                          <asp:Parameter Name="nume" Type="String" />
                          <asp:Parameter Name="prenume" Type="String" />
                          <asp:Parameter Name="cnp" Type="String" />
                          <asp:Parameter Name="adresa" Type="String" />
                          <asp:Parameter Name="mail" Type="String" />
                          <asp:Parameter Name="telefon" Type="String" />
                      </InsertParameters>
                      <UpdateParameters>
                          <asp:Parameter Name="nume" Type="String" />
                          <asp:Parameter Name="prenume" Type="String" />
                          <asp:Parameter Name="cnp" Type="String" />
                          <asp:Parameter Name="adresa" Type="String" />
                          <asp:Parameter Name="mail" Type="String" />
                          <asp:Parameter Name="telefon" Type="String" />
                          <asp:Parameter Name="id_calator" Type="Int32" />
                      </UpdateParameters>
            </asp:SqlDataSource>
          </div>  
    </form>
</body>
</html>
