<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ include file="dynamic/head.jspf" %>


<body id="page-top" class="bg-light">
<!-- Page Wrapper -->
<div id="wrapper">

    <%@ include file="dynamic/navbar.jspf" %>

    <div class="container">
        <div class="row mb-4 ">
            <div class="col-12">
                <div class="card shadow-sm p-4">
                    <h1 class="display-5">Województwo ${voivodeship.name} - Placówki Pocztowe</h1>
                    <p class="mt-4">Placówki pocztowe w województwie dolnośląskim z uwzględnieniem podziału wg powiatów. Łączna liczba placówek pocztowych w woj. dolnośląskim wynosi 353. Najwięcej bo, aż 132 urzędy pocztowe znajdują się w powiecie wrocławskim, zaś najmniej
                    placówek dostępnych jest w powiecie głogowskim: 12. </p>
                    <p>Kliknij na nazwę wybranego powiatu, aby wyświetlić listę placówek pocztowych dostępnych na jego terenie.</p>
                </div>
            </div>
        </div>

    </div>

    <div class="container">
        <h2 class="display-6 mb-4 text-secondary">Placówki Pocztowe wg Powiatów</h2>
        <div class="col-sm-12">
        <div class="row row-eq-height mb-4">
            <c:forEach items="${countyList}" var="county">
                <div class="col-md-6 mb-3">
                    <div class="card shadow-sm h-100">
                        <div class="card-body p-3">
                            <div class="row">
                                <div class="col-sm-2 text-center border-right"><i class="far fa-map text-primary fa-2x"></i></div>
                                <div class="col-sm-6 text-center border-right"><a href="w-${voivodeship.nameUrl}/p-${county.nameUrl}" alt="Powiat ${county.name} - Lista Placówek Pocztowych">Powiat ${county.name}</a></div>
                                <div class="col-sm-4 text-center">
                                    <c:set var="communityCount" value="${county.communityList.size()}"/>
                                <c:choose>
                                    <c:when test="${communityCount == 1}">${county.communityList.size()} Gmina</c:when>
                                    <c:when test="${((communityCount % 10) >= 2) and ((communityCount % 10) <= 4)}">${county.communityList.size()} Gminy</c:when>
                                    <c:when test="${((communityCount % 10) >= 5)}">${county.communityList.size()} Gmin</c:when>
                                </c:choose>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
    </div>


    <div class="container">
        <h2 class="display-6 mb-4 text-secondary">Losowo Wybrane Placówki</h2>
        <div class="col-sm-12">
            <div class="row row-eq-height mb-4">
                <c:forEach items="${randomPostOfficeListBy}" var="randomPostOffice">
                    <div class="col-md-6 mb-3">
                        <div class="card shadow-sm h-100">
                            <div class="card-body p-3">
                                <div class="row">
                                    <div class="col-sm-2 text-center border-right"><i class="far fa-map text-primary fa-2x"></i></div>
                                    <div class="col-sm-6 text-center border-right overflow-hidden mh-50"><a href="/${randomPostOffice.url}" alt="Poczta ${randomPostOffice.city.name} - Adres ${randomPostOffice.address}">Poczta ${randomPostOffice.city.name} <br/>
                                        ${randomPostOffice.address} - ${randomPostOffice.postcode.code}</a></div>
                                    <div class="col-sm-4 text-center">
                                        <c:if test="${randomPostOffice.prepareOpenHoursToCard() == null}">
                                            <small class="mb-0 text-danger">${todayNamePl} Nieczynne</small>
                                        </c:if>
                                        <c:if test="${randomPostOffice.prepareOpenHoursToCard() != null}">
                                            <small class="mb-0">${todayNamePl} Czynne:</small>
                                            <small class="mb-0 form-text text-muted">${randomPostOffice.prepareOpenHoursToCard()}</small>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>





</div>
<!-- End of Page Wrapper -->

<%@ include file="dynamic/footer.jspf" %>
<%@ include file="dynamic/js.jspf" %>
</body>
</html>