<%
    // Invalidate the session and redirect to login page
    session.invalidate(); // Invalidate the session
    response.sendRedirect("login.jsp"); // Redirect to login page
%>
