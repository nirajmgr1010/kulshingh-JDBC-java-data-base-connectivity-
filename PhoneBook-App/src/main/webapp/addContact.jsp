<%-- 
    Document   : addContact
    Created on : Mar 10, 2026, 8:53:54 PM
    Author     : acer
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="Components/allLink.jsp" %>
    </head>
    <body>
          <%@include file="Components/Navbar.jsp" %>
          
          <%if(user == null){   
              session.setAttribute("invalidMsg","Login Please..");
              response.sendRedirect("login.jsp"); 
          }%>
          
         <div class="container-fluid">
             <div class="row p-2">
                 <div class="col-md-6 offset-md-3">
                     <div class="card">
                         <div class="card-body">
                             <h4 class="text-center text-success">Add Contact Page</h4>
                             
                               <% String SuccMsg = (String)session.getAttribute("SuccMsg");
                                String failedMsg = (String)session.getAttribute("failedMsg");
                               if(SuccMsg != null){
                                   %>
                                     <p class="text-success text-center"><%=SuccMsg%></p>
                                <%
                                  session.removeAttribute("SuccMsg");
                               }
                               if(failedMsg != null){
                                 %>
                                   <p class="text-danger text-center"><%=failedMsg%></p>
                                <%
                                   session.removeAttribute("failedMsg");
                                    }
                                %>
                             
                             <form action="addcontact" method="post">
                                 
                                 <%
                                   if(user!=null){
                                       %>
                                   <input type="hidden" value="<%=user.getId()%>" name="userid">
                                  <% }
                                 %>
                                 
                                   <div class="form-group">
                                  <label for="exampleInputEmail1">Enter Name</label>
                                  <input name="name" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                </div>
                                 
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Email address</label>
                                  <input name="email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                                </div>
                                 
                                  <div class="form-group">
                                  <label for="exampleInputPhone">Enter Phone No</label>
                                  <input name="phone" type="text" class="form-control" id="exampleInputPhone">
                                </div>
                             
                                  <div class="form-group">
                                      <textarea rows="3" cols="" placeholder="Enter About" name="about" 
                                       class="form-control"></textarea>
                                </div> 
                                 
                                  <div class="text-center mt-2"> 
                                      <button type="submit" class="btn btn-primary">Save Contact</button>
                                  </div>
                                                               
                              </form>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
    </body>
</html>
