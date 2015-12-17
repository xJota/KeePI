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
    <link rel="stylesheet" href="../resources/blueimp-gallery.min.css">
    <link rel="stylesheet" href="../resources/bootstrap-image-gallery.css">
    <link rel="icon" href="../resources/favicon-32x32.png">

    <!-- Bootstrap core CSS -->

    <link href="../resources/bootstrap.min.css" rel="stylesheet">
    
    <!-- Custom styles for this template -->
    <link href="../resources/thumbnail-gallery.css" rel="stylesheet">
    <link href="../resources/navbar-fixed-top.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../..

/assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../resources/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <title>Gallery</title>
  </head>

  <div>



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
                      <li><a href="${pageContext.request.contextPath}/keepi/home.jsp">Home</a></li>
                      <li class="active"><a href="${pageContext.request.contextPath}/keepi/gallery.jsp">Gallery</a></li>
                      <li><a href="${pageContext.request.contextPath}/keepi/settings.jsp">Settings</a></li>
                      <li><a href="/logout.action"><span class="glyphicon glyphicon-off"></span></a></li>

                  </ul>

              </div><!--/.nav-collapse -->
          </div>
          </nav>
          <!-- Page Content -->
    <div class="container">

        <div class="row">

            <div class="col-lg-12">
                <h1 class="page-header">Gallery <small>Snapshots</small></h1>
            </div>
        </div>
       <!-- The Bootstrap Image Gallery lightbox, should be a child element of the document body -->

<div id="blueimp-gallery" class="blueimp-gallery blueimp-gallery-controls" data-use-bootstrap-modal="false" >
    <!-- The container for the modal slides -->
    <div class="slides"></div>
    <!-- Controls for the borderless lightbox -->
    <h3 class="title"></h3>
    <a class="prev">‹</a>
    <a class="next">›</a>
    <a class="close">×</a>
    <a class="play-pause"></a>
    <ol class="indicator"></ol>
    <!-- The modal dialog, which will be used to wrap the lightbox content -->
    <div class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" aria-hidden="true">&times;</button>
                    <h4 class="modal-title"></h4>
                </div>
                <div class="modal-body next"></div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left prev">
                        <i class="glyphicon glyphicon-chevron-left"></i>
                        Previous
                    </button>
                    <button type="button" class="btn btn-primary next">
                        Next
                        <i class="glyphicon glyphicon-chevron-right"></i>
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>

        <hr>
    <div>
    <footer class="footer">      <!-- footer -->
      <div class="container">
        <p class="text-muted">© University of Coimbra 2015</p>
      </div>
    </footer>
    </div>
</div>
            <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="../resources/jquery.min.js"></script>
        <script src="../resources/gallery.js"></script>
        <script src="../resources/bootstrap.min.js"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="../resources/ie10-viewport-bug-workaround.js"></script>

        <script src="../resources/jquery.blueimp-gallery.min.js"></script>
        <script src="../resources/bootstrap-image-gallery.js"></script>
        
        </body>
    </html>