<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./style.css">
</head>
<body class="blue">
    <header>
        <div class="headbar"></div>
        <nav class="navbar">
            <div class="titlebox">
                <img class="logo" src="./logo.png" alt="">
            </div>
            <div class="titlebox"><a href="./home.html">Home</a></div>
            <div class="titlebox">
                <span><img src="https://cdn.builder.io/api/v1/image/assets/TEMP/50553b738128039c507a6801435406eb1469bc028992b71cf38e93f00f12b4a6?" alt="" class="btn-gra"></span>
                <a href="./introduction.html">Intro</a>
            </div>
            <div class="titlebox"><a href="./search.html">Search</a></div>
            <div class="titlebox"><a href="./statistics.html">Statistics</a></div>
            <div class="titlebox">
                <span><img src="https://cdn.builder.io/api/v1/image/assets/TEMP/50553b738128039c507a6801435406eb1469bc028992b71cf38e93f00f12b4a6?" alt="" class="btn-gra"></span>
                <a href="./tutorial.html">Tutorial</a>
            </div>
            <div class="titlebox"><a href="./download.html">Download</a></div>
            <div class="titlebox" style="border-right: 0;"><a href="./about.html">About</a></div>
        </nav>
    </header>
    <div class="boxbk2 white" style="border-bottom: none">
        <h1 class="darkblue" style="font-size: 2vw;">Search</h1>
        <br>
        <c:if test="${not empty gsmData}">
            <div class="gsm">
                <p>ID: ${gsmData.getId()}</p>
                <p>GSE: 
                    <c:forEach items="${gsmData.getGSE()}" var="gse" varStatus="status">
                        <a href="https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=${gse}">${gse}</a><c:if test="${not status.last}">  </c:if>
                    </c:forEach>
                </p>
                <p>GSM: <a href="https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=${gsmData.getGSM()}">${gsmData.getGSM()}</a></p>
            </div>
            <div class="other">
                <p>Biosample: ${gsmData.getBiosample()}</p>
                <p>Cell Type: ${gsmData.getCellType()}</p>
                <p>Cell Line: ${gsmData.getCellLine()}</p>
                <p>Normal/Disease: ${gsmData.getHealthStates()}</p>
            </div>
            <div class="more">
                <p>Reference: </p>
                <p>PMID: <a href="">${gsmData.getReference()}</a></p>
                <p>${gsmData.getPaper()}</p>
                <hr>
                <br>
                <p>Download: <a href="">peak.bed</a> <a href="">loop.bed</a> <a href="">annotation.txt</a></p>
            </div>
        </c:if>
    </div>

    <div class="endbox" style="top: 80vw;">
        <div class="endtext">
            <div class="endtextinner">
                <p><b>XiongLab</b></p>
                <br>
                <p><b>Location:</b> Zhejiang University Medical Center, Hangzhou, China</p>
                <br>
                <p><b>Email: </b>xiongxs@zju.edu.cn</p>
                <br>
                <p><b>Contact for TM-Map: </b>yangy.21@intl.zju.edu.cn</p>
            </div>
        </div>
        <div class="endimage">
            <img style="width: 27vw;" src="./底1.png" alt="">
        </div>
    </div>
</body>
</html>