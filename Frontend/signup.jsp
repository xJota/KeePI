<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="http://getbootstrap.com/favicon.ico">
    
    <title>Creating New Account</title>

    <!-- Bootstrap core CSS -->
    <link href="resources/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="./resources/ie-emulation-modes-warning.js"></script>

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
            <a class="navbar-brand" href="index.jsp">KeePi</a>
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        
        </div>
      </div>
    </nav>


<div class="container">
<s:form namespace="/" action="signup" class="form-horizontal">
  <fieldset>
      <p><br>
        <h1 class="page-header"><small>Creating New Account</small></h1>
      </p>
    <div class="form-group">  
        <label for="inputfName" class="col-lg-2 control-label">First Name</label>
      <div class="col-lg-10">
          <s:fielderror fieldName="rname"/>
        <s:textfield theme="simple" name="rname" class="form-control" id="inputfName" placeholder="First Name"/>
      </div>
        </div>
    <div class="form-group"> 
      <label for="inputEmail" class="col-lg-2 control-label">Email</label>
      <div class="col-lg-10">
          <s:fielderror fieldName="email"/>
        <s:textfield theme="simple" name="email" class="form-control" id="inputEmail" placeholder="Email"/>
      </div>
    </div>
    <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">Password</label>
      <div class="col-lg-10">
          <s:fielderror fieldName="password"/>
        <s:password theme="simple" name="password" class="form-control" id="inputPassword" placeholder="Password"/>
      </div>
    </div>
      <div class="form-group">
          <label for="inputToken" class="col-lg-2 control-label">Access Token</label>
          <div class="col-lg-10">
              <s:fielderror fieldName="token"/>
              <s:password theme="simple" name="token" class="form-control" id="inputToken" placeholder="Access Token"/>
          </div>
      </div>
    
    <div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
        <button type="reset" class="btn btn-danger">Cancel</button>
        <s:submit theme="simple" class="btn btn-success"/>
      </div>
    </div>
  </fieldset>
</s:form>
    </div> <!-- /container -->
<hr>
    <footer class="footer"><!--footer -->
      <div class="container">
        <p class="text-muted">© University of Coimbra 2015</p>
      </div>
    </footer>
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="./resources/jquery.min.js"></script>
    <script src="./resources/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="./resources/ie10-viewport-bug-workaround.js"></script>

  

</body></html>