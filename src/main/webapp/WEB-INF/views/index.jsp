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
                    <h1 class="display-5">Placówka poczty UP Bolesławiec Śląski 5</h1>
                    <p class="mt-4">Dokładny adres tego urzędu pocztowego to ul. Adama Asnyka 22, 59-703, Bolesławiec.
                        By skontaktować się z tym oddziałem telefonicznie, należy zadzwonić pod numer 75 732 31 45. W
                        ramach usług świadczonych na terenie tego urzędu pocztowego możemy wymienić: Skrytki, Envelo,
                        Pocztex oraz Ekspres Pieniężny. Poczta ta otwarta jest w godzinach: poniedziałek 08:00-18:00,
                        wtorek 08:00-18:00, środa 08:00-18:00, czwartek 08:00-20:00, piątek 08:00-20:00, sobota
                        08:00-14:00.</p>
                </div>
            </div>
        </div>

    </div>

    <div class="container">
        <h2 class="display-6 mb-4 text-secondary">Placówki Pocztowe wg Województw</h2>
        <div class="col-sm-12">

        <div class="row row-eq-height mb-4">
            <c:forEach items="${voivodeships}" var="voivodesip">
                <div class="col-md-6 mb-3">
                    <div class="card shadow-sm h-100">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-2 text-center border-right"><i class="far fa-map text-primary fa-2x"></i></div>
                                <div class="col-sm-6 text-center border-right">${voivodesip.name}</div>
                                <div class="col-sm-4 text-center">30 powiatów</div>
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
        <div class="row row-eq-height mb-4">
            <div class="col-6 mb-3">
                <div class="card shadow-sm p-4 h-100">
                    <div class="card-block">
                        <div class="row">
                            <div class="col-2 border-right"><i class="far fa-map text-primary fa-2x"></i></div>
                            <div class="col-7 border-right">Poczta ul. Władysława Łokietka 8
                                Bolesławiec - 59-701</div>
                            <div class="col-3">nieczynne
                                niedziela</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-6 mb-3">
                <div class="card shadow-sm p-4 h-100">
                    <div class="card-block">
                        <div class="row">
                            <div class="col-2 border-right"><i class="far fa-map text-primary fa-2x"></i></div>
                            <div class="col-7 border-right">Poczta ul. Władysława Łokietka 8
                                Bolesławiec - 59-701</div>
                            <div class="col-3">nieczynne
                                niedziela</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-6 mb-3">
                <div class="card shadow-sm p-4 h-100">
                    <div class="card-block">
                        <div class="row">
                            <div class="col-2 border-right"><i class="far fa-map text-primary fa-2x"></i></div>
                            <div class="col-7 border-right">Poczta ul. Władysława Łokietka 8
                                Bolesławiec - 59-701</div>
                            <div class="col-3">nieczynne
                                niedziela</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-6 mb-3">
                <div class="card shadow-sm p-4 h-100">
                    <div class="card-block">
                        <div class="row">
                            <div class="col-2 border-right"><i class="far fa-map text-primary fa-2x"></i></div>
                            <div class="col-7 border-right">Poczta ul. Władysława Łokietka 8
                                Bolesławiec - 59-701</div>
                            <div class="col-3">nieczynne
                                niedziela</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-6 mb-3">
                <div class="card shadow-sm p-4 h-100">
                    <div class="card-block">
                        <div class="row">
                            <div class="col-2 border-right"><i class="far fa-map text-primary fa-2x"></i></div>
                            <div class="col-7 border-right">Poczta ul. Władysława Łokietka 8
                                Bolesławiec - 59-701</div>
                            <div class="col-3">nieczynne
                                niedziela</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-6 mb-3">
                <div class="card shadow-sm p-4 h-100">
                    <div class="card-block">
                        <div class="row">
                            <div class="col-2 border-right"><i class="far fa-map text-primary fa-2x"></i></div>
                            <div class="col-7 border-right">Poczta ul. Władysława Łokietka 8
                                Bolesławiec - 59-701</div>
                            <div class="col-3">nieczynne
                                niedziela</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-6 mb-3">
                <div class="card shadow-sm p-4 h-100">
                    <div class="card-block">
                        <div class="row">
                            <div class="col-2 border-right"><i class="far fa-map text-primary fa-2x"></i></div>
                            <div class="col-7 border-right">Poczta ul. Władysława Łokietka 8
                                Bolesławiec - 59-701</div>
                            <div class="col-3">nieczynne
                                niedziela</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-6 mb-3">
                <div class="card shadow-sm p-4 h-100">
                    <div class="card-block">
                        <div class="row">
                            <div class="col-2 border-right"><i class="far fa-map text-primary fa-2x"></i></div>
                            <div class="col-7 border-right">Poczta ul. Władysława Łokietka 8
                                Bolesławiec - 59-701</div>
                            <div class="col-3">nieczynne
                                niedziela</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



</div>
<!-- End of Page Wrapper -->

<%@ include file="dynamic/footer.jspf" %>
<%@ include file="dynamic/js.jspf" %>
</body>
</html>