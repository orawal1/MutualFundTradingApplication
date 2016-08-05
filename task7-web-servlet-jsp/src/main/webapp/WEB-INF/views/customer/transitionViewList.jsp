<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../common/header.jspf" %>

<div class="container">
    <div class="row">
        <div class="span3">
            <%@ include file="../common/sidebar_customer.jspf" %>
        </div>
        <div class="span9">
            <%@ include file="search.jspf" %>

            <div class="well">
                <%@ include file="../common/error.jspf" %>

                <c:choose>
                    <c:when test="${empty requestScope.transitionViewList}">
                        <div class="alert alert-info">
                            <div align="center">There is no transition history.
                            </div>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="page-header">
                            <h1>Transition List</h1>
                        </div>

                        <table class="table table-bordered table-striped">

                            <thead>
                            <tr>
                                <th>Content</th>
                                <th>Amount</th>
                                <th>Execute Date</th>
                            </tr>
                            </thead>

                            <tbody>
                            <c:forEach items="${requestScope.transitionViewList}" var="currentTransitionView">
                                <tr>
                                    <td>${currentTransitionView.content}</td>
                                    <td>${currentTransitionView.amountForDisplay}</td>
                                    <td>${currentTransitionView.time}</td>
                                </tr>
                            </c:forEach>

                            </tbody>
                            <tfoot>
                            <tr>
                                <td colspan="3">
                                    <div align="center">Total = <span
                                            class="badge badge-inverse">${requestScope.totalCountTransitionView}</span>
                                    </div>
                                </td>
                            </tr>
                            </tfoot>
                        </table>
                    </c:otherwise>
                </c:choose>


            </div>

        </div>
    </div>
</div>

<%--end content--%>
<%@ include file="../common/footer.jspf" %>
