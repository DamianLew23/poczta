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
                    <h1 class="display-5">Placówka Pocztowa ${postOffice.postOfficeName}</h1>
                    <p class="mt-4">Placówki pocztowe w województwie dolnośląskim z uwzględnieniem podziału wg powiatów. Łączna liczba placówek pocztowych w woj. dolnośląskim wynosi 353. Najwięcej bo, aż 132 urzędy pocztowe znajdują się w powiecie wrocławskim, zaś najmniej
                    placówek dostępnych jest w powiecie głogowskim: 12. </p>
                    <p>Kliknij na nazwę wybranego powiatu, aby wyświetlić listę placówek pocztowych dostępnych na jego terenie.</p>
                </div>
            </div>
        </div>

    </div>

    <div class="container">
        <div class="col-sm-12">
            <div class="row mb-4">
                <div class="card shadow-sm p-2 pl-4 w-100">
                    <p class="mb-0"><a href="/w-${postOffice.voivodeship.nameUrl}">${postOffice.voivodeship.name}</a> / <a href="/w-${postOffice.voivodeship.nameUrl}/p-${postOffice.county.nameUrl}">${postOffice.county.name}</a> / ${postOffice.city.name}</p>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="col-sm-12">
            <div class="row row-eq-height mb-4">
                <div class="col-md-6 mb-3 p-0 pr-md-2">
                    <div class="card shadow-sm h-100 p-3">
                        <div class="card-body p-3">
                            <h2 class="display-5 mb-4">Dane Adresowe</h2>
                            <div class="row row-eq-height mb-2 pb-2 border-bottom">
                                <div class="col-1">
                                    <p><i class="fas fa-address-card text-primary fa-2x"></i></p>
                                </div>
                                <div class="col-5">
                                    <p>Adres:</p>
                                </div>
                                <div class="col-6">
                                    <p>${postOffice.address},</p>
                                    <p>${postOffice.postcode.code} ${postOffice.city.name},</p>
                                    <p>Polska</p>
                                </div>
                            </div>
                            <div class="row row-eq-height mb-2 pb-2 border-bottom">
                                <div class="col-1">
                                    <p><i class="far fa-map text-primary fa-2x"></i></p>
                                </div>
                                <div class="col-5">
                                    <p>Gmina:</p>
                                    <p>Powiat:</p>
                                    <p>Województwo:</p>
                                </div>
                                <div class="col-6">
                                    <p>${postOffice.community.name}</p>
                                    <p>${postOffice.county.name}</p>
                                    <p>${postOffice.voivodeship.name}</p>
                                </div>
                            </div>
                            <div class="row row-eq-height mb-2 pb-2 border-bottom">
                                <div class="col-1">
                                    <p><i class="fas fa-map-marker-alt text-primary fa-2x"></i></p>
                                </div>
                                <div class="col-5">
                                    <p>Współrzędne:</p>
                                </div>
                                <div class="col-6">
                                    <p>${postOffice.x},</p>
                                    <p>${postOffice.y},</p>
                                </div>
                            </div>
                            <div class="row row-eq-height mb-2 pb-2">
                                <div class="col-1">
                                    <p><i class="fas fa-phone-square text-primary fa-2x"></i></p>
                                </div>
                                <div class="col-5">
                                    <p>Telefony:</p>
                                </div>
                                <div class="col-6">
                                    <c:forEach items="${postOffice.phoneList}" var="phone">
                                        <p>${phone.phoneNumber},</p>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mb-3 p-0 pl-md-2">
                    <div class="card shadow-sm h-100 p-3">
                        <div class="card-body p-3">
                            <h2 class="display-5 mb-4">Informacje o Poczcie ${postOffice.postOfficeName}</h2>
                            <div class="row row-eq-height mb-2 pb-2 border-bottom">
                                <div class="col-1">
                                    <p class="mb-0"><i class="fas fa-info-circle text-primary fa-2x"></i></p>
                                </div>
                                <div class="col-5">
                                    <p class="mb-0">Oferowane usługi:</p>
                                </div>
                                <div class="col-6">
                                    <c:forEach items="${postOffice.featuresList}" var="feature">
                                        <p>${feature.feature}</p>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row row-eq-height mb-4">
                <div class="col-md-6 mb-3 p-0 pr-md-2">
                    <div class="card shadow-sm h-100 p-3">
                        <div class="card-body p-3">
                            <h2 class="display-5 mb-4">${postOffice.type.shortcut} ${postOffice.postOfficeName} Godziny Otwarcia:</h2>
                            <div class="row row-eq-height mb-2 pb-2 border-bottom">
                                <div class="col-1">
                                    <p><i class="fas fa-address-card text-primary fa-2x"></i></p>
                                </div>
                                <div class="col-5">
                                    <p>Adres:</p>
                                </div>
                                <div class="col-6">
                                    <p>${postOffice.address},</p>
                                    <p>${postOffice.postcode.code} ${postOffice.city.name},</p>
                                    <p>Polska</p>
                                </div>
                            </div>
                            <div class="row row-eq-height mb-2 pb-2 border-bottom">
                                <div class="col-1">
                                    <p><i class="far fa-map text-primary fa-2x"></i></p>
                                </div>
                                <div class="col-5">
                                    <p>Gmina:</p>
                                    <p>Powiat:</p>
                                    <p>Województwo:</p>
                                </div>
                                <div class="col-6">
                                    <p>${postOffice.community.name}</p>
                                    <p>${postOffice.county.name}</p>
                                    <p>${postOffice.voivodeship.name}</p>
                                </div>
                            </div>
                            <div class="row row-eq-height mb-2 pb-2 border-bottom">
                                <div class="col-1">
                                    <p><i class="fas fa-map-marker-alt text-primary fa-2x"></i></p>
                                </div>
                                <div class="col-5">
                                    <p>Współrzędne:</p>
                                </div>
                                <div class="col-6">
                                    <p>${postOffice.x},</p>
                                    <p>${postOffice.y},</p>
                                </div>
                            </div>
                            <div class="row row-eq-height mb-2 pb-2">
                                <div class="col-1">
                                    <p><i class="fas fa-phone-square text-primary fa-2x"></i></p>
                                </div>
                                <div class="col-5">
                                    <p>Telefony:</p>
                                </div>
                                <div class="col-6">
                                    <c:forEach items="${postOffice.phoneList}" var="phone">
                                        <p>${phone.phoneNumber},</p>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mb-3 p-0 pl-md-2">
                    <div class="card shadow-sm h-100 p-3">
                        <div class="card-body p-3">
                            <h2 class="display-5 mb-4">Informacje o Poczcie ${postOffice.postOfficeName}</h2>
                            <div class="row row-eq-height mb-2 pb-2 border-bottom">
                                <div class="col-1">
                                    <p class="mb-0"><i class="fas fa-info-circle text-primary fa-2x"></i></p>
                                </div>
                                <div class="col-5">
                                    <p class="mb-0">Oferowane usługi:</p>
                                </div>
                                <div class="col-6">
                                    <c:forEach items="${postOffice.featuresList}" var="feature">
                                        <p>${feature.feature}</p>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
    </div>


    <div class="container">
        <h2 class="display-6 mb-4 text-secondary">Losowo Wybrane Placówki</h2>
        <div class="col-sm-12">
            <div class="row row-eq-height mb-4">

            </div>
        </div>
    </div>





</div>
<!-- End of Page Wrapper -->

<%@ include file="dynamic/footer.jspf" %>
<%@ include file="dynamic/js.jspf" %>
</body>
</html>