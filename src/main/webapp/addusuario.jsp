<%@ page import="com.crudjsp.dao.UsuarioDAO"%>
<jsp:useBean id="u" class="com.crudjsp.bean.Usuario"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<% 
	int i = UsuarioDAO.cadastrarUsuario(u);
	if (i > 0){
		response.sendRedirect("addusuario-sucess.jsp");
		
	}else{
		response.sendRedirect("addusuario-error.jsp");
	}
	
%>