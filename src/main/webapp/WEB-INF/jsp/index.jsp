<%@ page import ="tech.tablesaw.api.Table"%>
<%@ page import ="java.io.IOException"%>
<%@ page import="com.example.java_project.WazzufDao" %>


<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>



<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Java Project</title>

    <!-- Fontfaces CSS-->


    <link href="css/font-face.css" rel="stylesheet" media="all">

    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="

    css/theme.css" rel="stylesheet" media="all">

</head>

<body class="animsition">

<%    Table WuzzufData;
    WazzufDao wd = new WazzufDao();
    String path = "D:\\ITI Material\\java_prject\\Wuzzuf_Jobs.csv";
    WuzzufData = wd.loadDataFromCSV(path);
%>


<div class="page-wrapper">

    <!-- PAGE CONTENT-->
    <div class="page-content--bgf7">
        <!-- WELCOME-->
        <section class="welcome p-t-10">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="title-4">
                            Welcome To Our First Java Project
                        </h1>
                        <hr class="line-seprate">
                    </div>
                </div>
            </div>
        </section>
        <!-- END WELCOME-->

        <!-- STATISTIC-->






        <section class="statistic statistic2">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-lg-3">
                        <div class="statistic__item statistic__item--green">
                            <h5 class="number">
                                <pre><%=wd.getDataInfoStructure(WuzzufData)%></pre>
                            </h5>
                            <span class="desc">Structure of Data</span>
                            <div class="icon">
                                <i class="zmdi zmdi-account-o"></i>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-9">
                        <div class="statistic__item statistic__item--orange">
                            <h4 class="number">
                                <pre><%= wd.printData(WuzzufData)%></pre>
                            </h4>
                            <span class="desc">Data Summary</span>
                            <div class="icon">
                                <i class="zmdi zmdi-shopping-cart"></i>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </section>

        <section class="statistic statistic2">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-lg-12">
                        <div class="statistic__item statistic__item--blue">
                            <h5 class="number">
                                <pre><%=wd.printData(WuzzufData)%></pre>
                            </h5>
                            <span class="desc">All Data</span>
                            <div class="icon">
                                <i class="zmdi zmdi-calendar-note"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="statistic statistic2">
            <div class="container">
        <div class="row">
            <div class="col-sm-6 col-lg-4">
                <div class="overview-item overview-item--c1">
                    <div class="overview__inner">
                        <div class="overview-box clearfix">
                            <div class="text">
                                <h2><%=wd.dropDuplicate(WuzzufData)%></h2>
                                <span>members After Douplicate</span>
                            </div>
                        </div>
                        <div class="overview-chart"><div class="chartjs-size-monitor" style="position: absolute; inset: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;"><div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div></div><div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:200%;height:200%;left:0; top:0"></div></div></div>
                            <canvas id="widgetChart1" height="162" style="display: block; height: 130px; width: 200px;" width="250" class="chartjs-render-monitor"></canvas>
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-md-6 col-lg-8">
                <div class="statistic__item statistic__item--orange">
                    <h5 class="number">
                        <pre><%=wd.jobCountInEachCompany(WuzzufData)%></pre>
                    </h5>
                    <span class="desc">Cout Job In Each Company</span>
                    <div class="icon">
                        <i class="zmdi zmdi-calendar-note"></i>
                    </div>
                </div>
            </div>

        </div>
    </div>


    <!-- END STATISTIC-->

    <!-- STATISTIC CHART-->
    <section class="statistic-chart">
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h3 class="title-5 m-b-35">

                        <a href="Most popular area.html"><button type="button" class="btn btn-primary btn-lg">Most popular areas</button></a>
                    </h3>
                </div>

                <div class="col-md-4">
                    <h3 class="title-5 m-b-35">

                        <a href="Most IT popular job titles.html"><button type="button" class="btn btn-success btn-lg">Most IT popular job titles</button></a>
                    </h3>
                </div>

                <div class="col-md-4">
                    <h3 class="title-5 m-b-35">

                        <a href="jobs for each company.html"><button type="button" class="btn btn-warning btn-lg">jobs for each company</button></a>
                    </h3>
                </div>
            </div>

             </div>
    </section>
    <!-- END STATISTIC CHART-->


   

</div>

<!-- Jquery JS-->
<script src="vendor/jquery-3.2.1.min.js"></script>
<!-- Bootstrap JS-->
<script src="vendor/bootstrap-4.1/popper.min.js"></script>
<script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
<!-- Vendor JS       -->
<script src="vendor/slick/slick.min.js">
</script>
<script src="vendor/wow/wow.min.js"></script>
<script src="vendor/animsition/animsition.min.js"></script>
<script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
</script>
<script src="vendor/counter-up/jquery.waypoints.min.js"></script>
<script src="vendor/counter-up/jquery.counterup.min.js">
</script>
<script src="vendor/circle-progress/circle-progress.min.js"></script>
<script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
<script src="vendor/chartjs/Chart.bundle.min.js"></script>
<script src="vendor/select2/select2.min.js">
</script>

<!-- Main JS-->
<script src="js/main.js"></script>

</body>

</html>
<!-- end document-->