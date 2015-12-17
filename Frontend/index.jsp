
<!-- saved from url=(0043)http://getbootstrap.com/examples/jumbotron/ -->
<%--
Created by IntelliJ IDEA.
User: jota
Date: 11/6/15
Time: 2:23 AM
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<jsp:include page="verify.jsp"></jsp:include>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="icon" href="${pageContext.request.contextPath}/resources/favicon-32x32.png">

    <title>KeePi</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resources/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/jumbotron.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="${pageContext.request.contextPath}/resources/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="home.html">KeePi</a>
          
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <s:form namespace="/" action="login" class="navbar-form navbar-right">
                <div class="form-group">
                    <s:fielderror fieldName="email"/>
                    <s:textfield theme="simple" name="email" placeholder="Email" class="form-control"/>
                </div>
                &nbsp;
                <div class="form-group">
                    <s:fielderror fieldName="password"/>
                    <s:password theme="simple" name="password" placeholder="Password" class="form-control"/>
                </div>
                &nbsp;
                <s:submit theme="simple" class="btn btn-success" value="Sign in"/>
            </s:form>
        </div><!--/.navbar-collapse -->
      </div>
    </nav>


    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <h1><strong>KeePi</strong></h1>
        <p>Have you ever felt that someone had been in your room while you were out?</p>
        <p>KeePi is a distributed surveillance system designed to help you to monitor your personal space.</p>
        <p><a class="btn btn-primary btn-lg" href="signup.html" role="button">START NOW »</a></p>

        <div class="row">
             <div class="col-lg-12 text-center">
             <p>Supported in multiple browsers and devices</p>
              <ul class="list-inline">
                        <li>
                            <i class="fa fa-chrome fa-fw fa-3x"></i>
                        </li>
                        <li>
                          <i class="fa fa-safari fa-fw fa-3x"></i>
                        </li>
                        <li>
                           <i class="fa fa-desktop fa-fw fa-3x"></i>
                        </li>
                         <li>
                            <i class="fa fa-mobile fa-fw fa-3x"></i>                        </li>
                    </ul>
              </div>
            </div>
      </div>
    </div>

  
        <!-- Services -->
    <!-- The circle icons use Font Awesome's stacked icon classes. For more information, visit http://fontawesome.io/examples/ -->
    <section id="services" class="services bg-primary">
        <div class="container">
            <div class="row text-center">
                <div class="col-lg-10 col-lg-offset-1">
                    <h2><strong>Features</strong></h2>
                    <hr class="small">
                    <div class="row">
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-play fa-stack-1x text-primary"></i>
                            </span>
                                <h4>
                                    <strong>Live video feed</strong>
                                </h4>
                                <p>You can watch a live video stream everywhere and anytime.</p>
                               
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                                 <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-camera-retro fa-stack-1x text-primary"></i>
                            </span>

                                <h4>
                                    <strong>Snapshots</strong>
                                </h4>
                                <p>KeePi takes automatic snapshots of intruders and sends it via a mobile push!</p>
                              
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                               <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-picture-o fa-stack-1x text-primary"></i>
                            </span>

                              
                                <h4>
                                    <strong>Image Gallery</strong>
                                </h4>
                                <p>Store and keep track of events</p>
                                
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6">
                            <div class="service-item">
                           <span class="fa-stack fa-4x">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-users fa-stack-1x text-primary"></i>
                            </span>
                              
                                <h4>
                                    <strong>Multiple house owners</strong>
                                </h4>
                                <p>Add new owners to your KeePi so they also receive mobile notifications!</p>
                                
                            </div>
                        </div>
                    </div>
                    <!-- /.row (nested) -->
                </div>
                <!-- /.col-lg-10 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </section>
     <div class="jumbotron">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2><strong>Learn more about our project</strong></h2>

                    <p>If you are interested in our project you can see more details on GitHub</p>
                    <div class="col-lg-8 col-lg-offset-2 text-center">
                    <a href="#" class="btn btn-lg btn-outline">
                        <i class="fa a fa-github"></i> See on GitHub
                    </a>
                </div>
                   
                </div>
            </div>
            </div>
      </div>
  


      <hr>
    <footer class="footer">
      <div class="container">
        <p class="text-muted">© University of Coimbra 2015</p>
      </div>
    </footer>

    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${pageContext.request.contextPath}/resources/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="${pageContext.request.contextPath}/resources/ie10-viewport-bug-workaround.js"></script>
  

</body></html>