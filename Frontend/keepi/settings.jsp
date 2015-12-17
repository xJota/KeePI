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
    <link href="../resources/dashboard.css" rel="stylesheet">
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
            <li><a href="${pageContext.request.contextPath}/keepi/home.jsp">Home</a></li>
            <li><a href="${pageContext.request.contextPath}/keepi/gallery.jsp">Gallery</a></li>
              <li class="active"><a href="${pageContext.request.contextPath}/keepi/settings.jsp">Settings</a></li>
            <li><a href="/logout.action"><span class="glyphicon glyphicon-off"></span></a></li>
              
          </ul>

        </div><!--/.nav-collapse -->
      </div>
    </nav>

   <div class="container-fluid">
        <div class="col-sm-3 col-sm-offset-3 col-md-6 col-md-offset-3 main">
          <h1 class="page-header">Settings</h1>
            <s:form namespace="/keepi" action="addowner" class="form-horizontal">
                <fieldset>
                    <p><br>
                    <h1 class="page-header"><small>Add authorized token</small></h1>
                    </p>
                    <div class="form-group">
                        <label for="inputfName" class="col-lg-2 control-label">Token</label>
                        <div class="col-lg-10">
                            <s:fielderror fieldName="ptoken"/>
                            <s:textfield theme="simple" name="ptoken" class="form-control" id="inputfName" placeholder="Pushbullet Token"/>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-lg-10 col-lg-offset-2">
                            <button type="reset" class="btn btn-danger">Cancel</button>
                            <s:submit theme="simple" class="btn btn-primary btn-sm" value="Add Token"></s:submit>
                        </div>
                    </div>
                </fieldset>
            </s:form>
            <!--
            <p><a class="btn btn-primary btn-sm" href="signup.html" role="button"><span class="glyphicon glyphicon-plus"></span><span class="glyphicon glyphicon-user"></span> Add User</a></p>
          <h3 class="sub-header">All Users</h3>
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th>Role</th>
                  <th>Name</th>
                  <th>Email</th>
                  <th>Options</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>Admin</td>
                  <td>André Silva</td>
                  <td>joao99silva@mail.com</td>
                  <td></td>
                </tr>
                <tr>
                  <td>User</td>
                  <td>Joana Pereira</td>
                  <td>jopa@mail.com</td>
                  <td>
                    <button onclick="myFunction()">
                        <span  class="glyphicon glyphicon-envelope" href="#"> </span>
                    </button>
                    <button onclick="myFunction()">
                        <span class="glyphicon glyphicon-trash" href="#"> </span>
                    </button>
                </td>
                </tr>
                <tr>
                  <td>User</td>
                  <td>Miguel Braga</td>
                  <td>bragaMel@anothermail.com</td>
                  <td>
                    <button onclick="myFunction()">
                        <span  class="glyphicon glyphicon-envelope" href="#"> </span>
                    </button>
                    <button onclick="myFunction()">
                        <span class="glyphicon glyphicon-trash" href="#"> </span>
                        </button>
                      </td>
                </tr>
                
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
-->
<hr>
    <footer class="footer"><!--footer -->
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