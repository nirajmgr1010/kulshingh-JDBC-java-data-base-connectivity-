<%-- 
    Document   : viewContact
    Created on : Mar 10, 2026, 8:33:13 PM
    Author     : acer
--%>

<%@page import="java.util.List"%>
<%@page import="com.entities.Contact"%>
<%@page import="com.DAO.ContactDAO"%>
<%@page import="com.con.DbConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="Components/allLink.jsp" %>
        <style type="text/css">
            .crd-ho:hover{
                background-color: #f7f7f7;
            }
            </style>
    </head>
    <body>
         <%@include file="Components/Navbar.jsp" %>
                  <%if(user == null){   
              session.setAttribute("invalidMsg","Login Please..");
              response.sendRedirect("login.jsp"); 
          }%> 
          
          <div class="container">
              <div class="row p-4">
                  <div class="col-md-3">
                      <%
                          
                       if(user!=null){
                            ContactDAO dao = new ContactDAO(DbConnect.getConn());
                        List<Contact> con = dao.getAllContact(user.getId());
                      for(Contact c:con){
                          %>
                           <div class="card crd-ho">
                          <div class="card-body">
                              <h5>Name: <%=c.getName()%></h5>
                              <p>Ph no: <%=c.getPhoneNo()%></p>
                              <p>Email: <%=c.getEmail()%> </p>
                              <p>About: <%=c.getAbout()%></p>  
                              <div class="text-center">
                                  <a class="btn btn-success btn-sm text-white">Edit</a>
                                  <a class="btn btn-danger btn-sm text-white">Delete</a>
                              </div>
                          </div>
                  </div>                       
                      <%
                      }
                       }                   
                        %>

              </div>
          </div>
    </body>
</html>
