<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title> Locales </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <%@include file="/public/header.jsp" %>
    </head>
    <body>
        <%@include file="/public/menuGeneral.jsp" %>
        <div class="container-fluid">
            <div class="row-fluid">
                <%@include file="/public/menuAdm.jsp" %>
                <div class="span9">
                    <form action="<%=contextPath%>/adm/campo/save" method="post">
                        <input type ="hidden" value="${campo.id}" name="id">
                        <div class="control-group">
                            <label class="control-label">Local</label>
                            <div class="controls">
                                <select type="text" name="local.id">
                                    <c:forEach var="item" items="${locales}">
                                        <c:choose>
                                            <c:when test='${campo.local != null && item.id == campo.local.id}'>
                                                <option value="${item.id}" selected>${item.descripcion}</option>
                                            </c:when>
                                            <c:otherwise>
                                                <option value="${item.id}">${item.descripcion}</option>
                                            </c:otherwise>
                                        </c:choose>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Descripción</label>
                            <div class="controls">
                                <input type="text" name="descripcion" value="${campo.descripcion}">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Costo/Hora</label>
                            <div class="controls">
                                <input type="text" name="costoHora" value="${campo.costoHora}">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Estado</label>
                            <label class="checkbox">
                                <input type="checkbox" name="estado" value="${campo.estado}">
                            </label>
                        </div>

                        <div class="control-group">
                            <div class="controls">
                                <a class="btn" href="<%=contextPath%>/adm/campo">Cancelar</a>
                                <button type="submit" class="btn btn-primary">Guardar</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <%@include file="/public/footer.jsp" %>
    </body>
</html>




