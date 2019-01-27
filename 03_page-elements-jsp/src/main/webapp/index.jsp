<%@ page import="foo.bar.Color" %>
<%@ page import="foo.bar.Quote" %>
<%@ page import="foo.bar.Font" %>
<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%@page pageEncoding="UTF-8" %>

<html>
    <body style="background-color: orange">
        <h2>Hello from index.jsp! </h2>

        <%--<jsp:forward page="forward-destination.jsp" />--%>

        <%--<jsp:include page="included-section.jsp"/>--%>

        <%--<jsp:forward page="forward-destination.jsp" >--%>
            <%--<jsp:param name="giftFromIndexJsp" value="gold" />--%>
        <%--</jsp:forward>--%>

        <%--<jsp:include page="included-section.jsp">--%>
            <%--<jsp:param name="giftFromIndexJsp" value="silver" />--%>
        <%--</jsp:include>--%>

        <%--<h2>Good bye from index.jsp! </h2>--%>

        <h2>Your quote of day!</h2>
        <jsp:include page="colorfull-quote.jsp">
            <jsp:param name="quoteText" value="<%= Quote.drawQuote().getText()%>" />
            <jsp:param name="quoteAuthor" value="<%= Quote.drawQuote().getAuthor()%>" />
            <jsp:param name="color" value="<%= Color.getRandomColorHashCode()%>" />
            <jsp:param name="fontStyle" value="<%= Font.drawFont().getStyle() %>" />
        </jsp:include>

    </body>
</html>
