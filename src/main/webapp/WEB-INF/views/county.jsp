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
                    <h1 class="display-5">Powiat ${county.name} - Placówki Pocztowe</h1>
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