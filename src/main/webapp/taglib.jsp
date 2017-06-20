<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
int port = request.getServerPort();
String basePath = "";
String serverPath = ""; //http://localhost:8080/
if(port==80){
	 basePath = request.getScheme()+"://"+request.getServerName()+path;
	 serverPath = request.getScheme()+"://"+request.getServerName();
}else{
	 basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
	 serverPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort();
}
request.setAttribute("basePath", basePath);
request.setAttribute("serverPath", serverPath);
%>
