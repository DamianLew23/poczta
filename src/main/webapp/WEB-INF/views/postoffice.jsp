<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date" />
<%@ page contentType="text/html; charset=UTF-8" %>
<%@include file="dynamic/head.jspf" %>

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

                                <table class="table table-sm">
                                    <tbody>
                                    <tr>
                                        <td><i class="fas fa-address-card text-primary fa-2x"></i></td>
                                        <td>Adres:</td>
                                        <td>${postOffice.address},<br/>
                                            ${postOffice.postcode.code} ${postOffice.city.name},<br/>
                                            Polska
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><i class="fas fa-address-card text-primary fa-2x"></i></td>
                                        <td>Gmina:</td>
                                        <td>${postOffice.community.name}</td>
                                    </tr>
                                    </tbody>
                                </table>
                                <div class="col-5">
                                    <p></p>
                                </div>
                                <div class="col-6">

                                </div>
                            </div>
                            <div class="row row-eq-height mb-2 pb-2 border-bottom">
                                <div class="col-1">
                                    <p><i class="far fa-map text-primary fa-2x"></i></p>
                                </div>
                                <div class="col-5">
                                    <p></p>
                                    <p>Powiat:</p>
                                    <p>Województwo:</p>
                                </div>
                                <div class="col-6">
                                    <p></p>
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
                            <c:if test="${postOffice.suitableForDisablePepole == true}">
                                <div class="row row-eq-height mb-2 pb-2 border-bottom">
                                    <div class="col-1">
                                        <p class="mb-0"><i class="fab fa-accessible-icon text-primary fa-2x"></i></p>
                                    </div>
                                    <div class="col-11">
                                        <p class="mb-0">Placówka dostosowana do potrzeb osób niepełnosprawnych</p>
                                    </div>
                                </div>
                            </c:if>
                            <div class="row row-eq-height mb-2 pb-2 border-bottom">
                                <div class="col-1">
                                    <p class="mb-0"><i class="fas fa-home text-primary fa-2x"></i></p>
                                </div>
                                <div class="col-5">
                                    <p class="mb-0">Rodzaj Placówki:</p>
                                </div>
                                <div class="col-6">
                                    <p>${postOffice.type.fullName}</p>
                                </div>
                            </div>
                            <div class="row row-eq-height mb-2 pb-2">
                                <div class="col-1">
                                    <p class="mb-0"><i class="fas fa-home text-primary fa-2x"></i></p>
                                </div>
                                <div class="col-5">
                                    <p class="mb-0">Placówka nadrzędna:</p>
                                </div>
                                <div class="col-6">
                                    <p>${postOffice.parentUnitName}</p>
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
                            <h2 class="display-5 mb-4"><i
                                    class="far fa-clock text-primary mr-2"></i> ${postOffice.type.shortcut} ${postOffice.postOfficeName}
                                Godziny Otwarcia:</h2>
                            <div class="row row-eq-height mb-2 pb-2 border-bottom">
                                <div class="col-1">
                                </div>
                                <div class="col-5">
                                    <p>Poniedziałek:</p>
                                    <p>Wtorek:</p>
                                    <p>Środa:</p>
                                    <p>Czwartek:</p>
                                    <p>Piątek:</p>
                                    <p>Sobota:</p>
                                    <p>Niedziela:</p>
                                </div>
                                <div class="col-6">
                                    <c:forEach items="${postOffice.workHourByDays}" var="workHour">
                                        <c:forEach items="${workHour.openTimes}" var="openHour" varStatus="loop">
                                            <c:choose>
                                                <c:when test="${openHour.hour.equals('*')}">
                                                    <p class="text-danger">Nieczynne,</p>
                                                </c:when>
                                                <c:otherwise>
                                                    <p>${openHour.hour}
                                                        - ${workHour.closeTimes.get(loop.index).hour},</p>
                                                </c:otherwise>
                                            </c:choose>

                                        </c:forEach>
                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mb-3 p-0 pl-md-2">
                    <div class="card shadow-sm h-100 p-3">
                        <div class="card-body p-3">
                            <h2 class="display-5 mb-4">Reklama</h2>

                        </div>
                    </div>
                </div>
            </div>
    </div>
    </div>

    <div class="container">
        <h2 class="display-6 mb-4 text-secondary">Mapa</h2>
        <div class="row mb-4 ">
            <div class="col-12">
                <div class="card shadow-sm p-4">
                    <div id="mapid"></div>
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

<script>
    var mymap = L.map('mapid').setView([${postOffice.y}, ${postOffice.x}], 16);

    L.tileLayer(
        'https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw', {
            maxZoom: 19,
            attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, ' +
                '<a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, ' +
                'Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
            id: 'mapbox.streets'
        }).addTo(mymap);

    L.marker([${postOffice.y}, ${postOffice.x}]).addTo(mymap)
        .bindPopup("<b>${postOffice.type.shortcut} ${postOffice.postOfficeName}</b><br />${postOffice.address} <br /> ${postOffice.postcode.code} ${postOffice.city.name}").openPopup();


    var popup = L.popup();
</script>

<!-- End of Page Wrapper -->
<%@ include file="dynamic/js.jspf" %>
<%@ include file="dynamic/footer.jspf" %>


</body>
</html>