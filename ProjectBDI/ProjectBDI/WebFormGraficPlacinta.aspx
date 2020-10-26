<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormGraficPlacinta.aspx.cs" Inherits="ProjectBDI.WebFormGraficPlacinta" %>

<%@ Register assembly="ZedGraph.Web" namespace="ZedGraph.Web" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <cc1:ZedGraphWeb ID="ZedGraphWeb1" runat="server" Height="500" Width="500">
        </cc1:ZedGraphWeb>
        <div>
        </div>
    </form>
</body>
</html>
