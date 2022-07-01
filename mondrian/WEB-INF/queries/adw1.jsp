<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost/dwo123?user=root&password=" catalogUri="/WEB-INF/queries/adw1.xml">

select {[Measures].[Unit Sold],[Measures].[Unit Price],[Measures].[Dollar Total]} ON COLUMNS,
  {([Time].[All Times],[Product].[All Product],[SalesPerson].[All SalesPerson],[ShipMethod].[All Method],[Territory].[All Territory])} ON ROWS
from [SalesFact]


</jp:mondrianQuery>





<c:set var="title01" scope="session">Query AdventureWorks salesfact using Mondrian OLAP</c:set>
