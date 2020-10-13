<script language="c#" runat="server">
double Patrate(double nr) { return (nr)*(nr); } </script>
<html>
<h2> Patratele primelor 10 numere naturale </h2>
<table border="”2”">
	<tr>
	<th> Numarul  </th><th>Patratul </th>
	</tr>
<% 
for (double i = 1.0; i<=10.0; i++)
 {  Response.Output.Write(  "<tr><td>{0}</td><td>" + "{1:f}</td><tr>", i, Patrate(i));
 } 
%>
</table>
</html>
