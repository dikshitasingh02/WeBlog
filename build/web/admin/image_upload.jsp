<%@page contentType="text/html" import="java.sql.*" pageEncoding="UTF-8"%>
<%
    if(request.getParameter("code").trim().length()>0){
        String code=request.getParameter("code").trim();
        %>
        <form method="post" ACTION="upload_image.jsp?code=<%=code%>" name="uploadForm" ENCTYPE='multipart/form-data'>
            Image : <input type="file" name="uploadFile" class="form-control"><br>
            <input type="submit" name="Submit" class="btn btn-danger" value="Submit">
        </form>
        <%
    }
%>