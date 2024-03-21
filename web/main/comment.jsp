
<%@page contentType="text/html" import="java.sql.*,java.util.*" pageEncoding="UTF-8"%>

<%
               
                String comment = request.getParameter("comment").trim();   
                String name = request.getParameter("name").trim(); 
                String email = request.getParameter("email").trim(); 
                String to_code = request.getParameter("id").trim();
                LinkedList l = new LinkedList();
                for(char ch='A' ; ch<='Z' ; ch++){
                    l.add(""+ch);
                }
                for(char ch='a' ; ch<='z' ; ch++){
                    l.add(""+ch);
                }
                for(int ch='0' ; ch<='9' ; ch++){
                    l.add(""+ch);
                }
                Collections.shuffle(l);
                String code = "";
                for(int i=0 ; i<6 ; i++){
                    code = code+l.get(i);
                }
                int sn = 0;
		String dt =""+new java.util.Date();
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/blog","root","");
                    Statement st = cn.createStatement();
                    ResultSet rs = st.executeQuery("select MAX(sn) from comment where to_code='"+to_code+"'");
                    if(rs.next()){
                        sn = rs.getInt(1);
                    }
                    sn++;
                    code = code+"_"+sn;					
                    PreparedStatement ps = cn.prepareStatement("insert into comment values(?,?,?,?,?,?,?)");
                    ps.setInt(1,sn);
                    ps.setString(2,code);
                    ps.setString(3,comment);
	            ps.setString(4,name);
		    ps.setString(5,email);
                    ps.setString(6,dt);
		    ps.setString(7,to_code);
                    if(ps.executeUpdate()>0){
                        response.sendRedirect("post-elements.jsp?id="+to_code+"");
                    }
                    cn.close();
                }
                catch(Exception er){
                    out.println(er.getMessage());
                }
                
               


%>
