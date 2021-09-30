<%@page contentType = "text/html" pageEncoding = "UTF-8" isELIgnored = "false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head><title>Index</title></head>
<body>
<form  name = "firstForm" method="POST">
 <label for="figures">Choose a figure:</label>

<select name="figure">
  <option value="default">Please select figure</option>
  <option value="cube">Cube</option>
  <option value="parall">Parallelepiped</option>
  <option value="sphere">Sphere</option>
</select>
  <input type="submit" value="Submit"/>
</form>
<form action="testServlet" method="POST">
    <c:if test="${param.figure eq 'cube'}">
    <p>Enter cube side</p>
    <input type = "text" name = "side"/>
    <input type="submit" value="Calculate figure's volume"/>
    <input type = "hidden" name = "figure" value = "cube"/>
    </c:if>
    <c:if test="${param.figure eq 'parall'}">
    <p>Enter paralls hight</p>
    <input type = "text" name = "parallHeight"/>
    <p>Enter paralls base square</p>
     <input type = "text" name = "parallBaseSquare"/>
     <input type="submit" value="Calculate figure's volume"/>
     <input type = "hidden" name = "figure" value = "parall"/>
    </c:if>
    <c:if test="${param.figure eq 'sphere'}">
    <p>Enter sphere radius</p>
    <input type = "text" name = "sphereRadius"/>
    <input type="submit" value="Calculate figure's volume"/>
    <input type = "hidden" name = "figure" value = "sphereRadius"/>
    </c:if>

</form>

</body>
</html>
