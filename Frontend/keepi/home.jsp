<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<jsp:include page="kick.jsp"></jsp:include>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
    <link rel="icon" href="../resources/favicon-32x32.png">

    <title>Home</title>

    <!-- Bootstrap core CSS -->
    <link href="../resources/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../resources/navbar-fixed-top.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../resources/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <!-- Fixed navbar -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="${pageContext.request.contextPath}../index.jsp">KeePi</a>
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          
        </div>
        <div id="navbar-main" class="navbar-collapse collapse">

          <ul class="nav navbar-nav navbar-right">
            <li class="active"><a href="${pageContext.request.contextPath}/keepi/home.jsp">Home</a></li>
            <li><a href="${pageContext.request.contextPath}/keepi/gallery.jsp">Gallery</a></li>
              <li><a href="${pageContext.request.contextPath}/keepi/settings.jsp">Settings</a></li>
            <li><a href="/logout.action"><span class="glyphicon glyphicon-off"></span></a></li>
              
          </ul>

        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container">
      <div class="jumbotron">
        <h1>KeePi Live Stream</h1>
          
          <!-- 16:9 aspect ratio -->
          <div class="embed-responsive embed-responsive-16by9">
              <%
                  String userAgent = request.getHeader("user-agent");
                  if ((userAgent.indexOf("Chrome") > -1 || userAgent.indexOf("Firefox") > -1) && userAgent.indexOf("Android") <= -1) {
              %>
              <img class="embed-responsive-item" src="http://cctv-scm.noip.me:8080/?action=stream">
              <%
                  }
                  else{
              %>
              <video class="embed-responsive-item" controls="controls" autoplay="autoplay" >
                  <source src="http://cctv-scm.noip.me/live/segments/stream.m3u8" type="application/x-mpegURL" />
              </video>
              <%
                  }
              %>
          </div>

          <!-- 4:3 aspect ratio -->
<!--          <div class="embed-responsive embed-responsive-4by3" width="560" height="315">
            <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/TyKB84y-YvE"></iframe>
          </div>-->
        <p> 
          <p>
              <a href="/keepi/startstream.action" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-play"></span>START </a>
              <a href="/keepi/stopstream.action" class="btn btn-danger btn-lg"><span class="glyphicon glyphicon-stop"></span>STOP </a>
              <a href="/keepi/snapshot.action" class="btn btn-warning btn-lg pull-right"><span class="glyphicon glyphicon-camera"></span> SNAPSHOT</a>
            </p> 
                      
          </p>

        </p>
      </div>
    </div> <!-- /container -->

    <footer class="footer">
      <div class="container">
        <p class="text-muted">© University of Coimbra 2015</p>
      </div>
    </footer>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="../resources/jquery.min.js"></script>
    <script src="../resources/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../resources/ie10-viewport-bug-workaround.js"></script>
  

</body></html>