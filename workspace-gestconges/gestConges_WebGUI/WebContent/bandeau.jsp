<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<%@page import="gestConges.data.model.Conge,gestConges.data.model.Salarie"%>

<%
  Object utilisateur = session.getAttribute("utilisateur");
%>
<tr >
<td>
<p style ="color: WHITE; font-size: 18px ;font-family: Verdana,Geneva,sans-serif; background-color: #003366">
	<%
	  if(utilisateur == null)
	  {
	    %>
	    Non connect� </br>
	    <a href="template.jsp?action=connexion" style ="color: WHITE; font-size: 12px ;font-family: Verdana,Geneva,sans-serif" >Connexion</a>
	    <%
	  }
	  else
	  {
	  	if(utilisateur instanceof Salarie)
	  	{
	  		Salarie s = (Salarie) utilisateur;
	  		%>
	  		<%=s.getPrenom()%> <%=s.getNom()%>   |   Solde : <%=s.getSolde()%> |   Solde Previsionnel: <%=s.getSoldePrev()%></br>
	  		<a href="deconnexion.jsp"  style ="color: WHITE; font-size: 12px ;font-family: Verdana,Geneva,sans-serif" >D�connexion</a>
	  		
	  		
	  	<%	
	  	}
	  }
	%>
</p>
</td>
<td>

</td>
</tr>