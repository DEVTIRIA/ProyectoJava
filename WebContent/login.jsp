<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Iniciar sesión</title>
    <link rel="stylesheet" type="text/css" href="Estilos.css">
</head>
<body>
    <div class="contenedor">
        <header>
            <div id="titulo">
                <img src="logo3.jpg"><h1>Mercado-Moto</h1>
            </div>
        </header>
        <c:if test="${!empty param.login_error}">
            <div style="color: red; margin-bottom:1em; font-size:large;" id="error">Usuario y/o Contraseña Incorrecto</div>
        </c:if>
        <section>
            <hr><br><br>
            <form name="insertar" method="post" action="<c:url value='/j_spring_security_check'/>">
                <input type="text" name="j_username" placeholder="Nombre de usuario" class="input">
                <input type="password" name="j_password" placeholder="Contraseña" class="input">
                <input type="submit" name="submit" value="INICIAR SESIÓN" class="input" id="regist">
                <p id="olvido_passwd"><a href="#">¿Has olvidado tu contraseña?</a></p>
                <P id="sesion">¿No tienes cuenta? <a href="../index.html">Registrarse</a></P>
            </form>
        </section>
    </div>
</body>
</html>
