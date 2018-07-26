<!DOCTYPE html>
<html lang="en">
  <head>
  <link href="resources/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<script src="resources/js/raphael-min.js"></script> 
<script src="resources/js/popper.min.js"></script>
<script src="resources/js/jquery.min.js"></script>
        <script src="resources/js/flowchart.js"></script>
         <script>
		 function changeTheme(theme)
		 {
		 if(theme=='gray'){
		 document.getElementById("navtitle").style.backgroundColor='dimgrey';
		 document.getElementById("navbar").style.backgroundColor='dimgrey';
		  document.getElementById("left-col").style.backgroundColor='dimgrey';
		 }
		else if(theme=='black')
{
 document.getElementById("navtitle").style.backgroundColor='black';
		 document.getElementById("navbar").style.backgroundColor='black';
		 document.getElementById("left-col").style.backgroundColor='black';


}
else
{
document.getElementById("navtitle").style.backgroundColor='#2A3F54';
		 document.getElementById("navbar").style.backgroundColor='#2A3F54';
		 document.getElementById("left-col").style.backgroundColor='#2A3F54';
}		
		 }
		 function generateFlowChart()
		 {
		 
		 var flowone=document.getElementById("flow").value;
		 var flowtwo=document.getElementById("flow1").value;
		 var flowthree=document.getElementById("flow2").value;
		 var flowfour=document.getElementById("flow3").value;
		 var flowfive=document.getElementById("flow4").value;
		 
		 var code=flowone+"=>operation: "+flowone+"\n"+flowtwo+"=>operation: "+flowtwo+"\n"+flowthree+"=>operation: "+flowthree+"\n"+flowfour+"=>operation: "+flowfour+"\n"+flowfive+"=>operation: "+flowfive;
var code1=flowone+"(right)->"+flowtwo+"(right)->"+flowthree+"(right)->"+flowfour+"(right)->"+flowfive;
var codefinal=code+"\n"+code1;
/* alert(codefinal); */



                 var   chart = flowchart.parse(codefinal);
				 var div=document.getElementById("canvas");
				 div.innerHTML="";
				/*  alert(chart); */
                    chart.drawSVG('canvas', {
                      // 'x': 30,
                      // 'y': 50,
                      'line-width': 3,
                      'maxWidth': 3,//ensures the flowcharts fits within a certian width
                      'line-length': 10,
                      'text-margin': 5,
                      'font-size': 8,
                      'font': 'normal',
                      'font-family': 'Helvetica',
                      'font-weight': 'normal',
                      'font-color': 'black',
                      'line-color': 'black',
                      'element-color': 'black',
                      'fill': 'white',
                      'yes-text': 'yes',
                      'no-text': 'no',
                      'arrow-end': 'block',
                      'scale': 1.5,
                      'symbols': {
                        'start': {
                          'font-color': 'red',
                          'element-color': 'green',
                          'fill': ''
                        },
                        'end':{
                          'class': 'end-element'
                        }
                      },
                      'flowstate' : {
                        'past' : { 'fill' : '#CCCCCC', 'font-size' : 12},
                        'current' : {'fill' : 'yellow', 'font-color' : 'red', 'font-weight' : 'bold'},
                        'future' : { 'fill' : 'green'},
                        'request' : { 'fill' : 'blue'},
                        'invalid': {'fill' : '#444444'},
                        'approved' : { 'fill' : '#58C4A3', 'font-size' : 12, 'yes-text' : 'APPROVED', 'no-text' : 'n/a' },
                        'rejected' : { 'fill' : '#C45879', 'font-size' : 12, 'yes-text' : 'n/a', 'no-text' : 'REJECTED' }
                      }
                    });
                    $('[id^=sub1]').click(function(){
                     /*  alert('info here'); */
                    });

		 
		 }
            window.onload = function () {
                var btn = document.getElementById("run"),
                    cd = document.getElementById("code"),
                    chart;
          
                    var code = cd.value;
                    if (chart) {
                      chart.clean();
                    }
                    chart = flowchart.parse(code);
                    chart.drawSVG('canvas', {
                      // 'x': 30,
                      // 'y': 50,
                      'line-width': 3,
                      'maxWidth': 3,//ensures the flowcharts fits within a certian width
                      'line-length': 10,
                      'text-margin': 5,
                      'font-size': 8,
                      'font': 'normal',
                      'font-family': 'Helvetica',
                      'font-weight': 'normal',
                      'font-color': 'black',
                      'line-color': 'black',
                      'element-color': 'black',
                      'fill': 'white',
                      'yes-text': 'yes',
                      'no-text': 'no',
                      'arrow-end': 'block',
                      'scale': 1.5,
                      'symbols': {
                        'start': {
                          'font-color': 'red',
                          'element-color': 'green',
                          'fill': 'black'
                        },
                        'end':{
                          'class': 'end-element'
                        }
                      },
                      'flowstate' : {
                        'orderCapture' : { 'fill' : 'green', 'font-size' : 12},
                        'current' : {'fill' : 'black', 'font-color' : 'red', 'font-weight' : 'bold'},
                        'future' : { 'fill' : '#FFFF99'},
                        'request' : { 'fill' : 'blue'},
                        'invalid': {'fill' : '#444444'},
                        'approved' : { 'fill' : '#58C4A3', 'font-size' : 12, 'yes-text' : 'APPROVED', 'no-text' : 'n/a' },
                        'rejected' : { 'fill' : '#C45879', 'font-size' : 12, 'yes-text' : 'n/a', 'no-text' : 'REJECTED' }
                      }
                    });
                    $('[id^=sub1]').click(function(){
                     /*  alert('info here'); */
                    });
                
            };
        </script>
  <script>
  
  function replaceexclamation()
  {
  document.getElementById("x_content1").innerHTML='<marquee class ="text-danger" behaviour=scroll direction=up style=height:320px; >1801040252 - OPOM - Unable to place porting orders - Stuck in Order Summary Page - Action Required </marquee>';

  }
  
  function replacesignal()
  {
  document.getElementById("x_content1").innerHTML='<canvas id="mybarChart" width="633" height="316" style="width: 633px; height: 316px;margin-top:10%;"></canvas>';
var f=document.getElementById("mybarChart");
new Chart(f,{type:"bar",data:{labels:["BCC","Helix","Helix Mobile","Helix Mobile","OPOM","POPI"],datasets:[{label:"# of Incidents",backgroundColor:"#26B99A",data:[51,30,40,28,92,50]}]},options:{scales:{yAxes:[{ticks:{beginAtZero:!0}}]}}})
  }
  
  function replaceBeat()
  {
  $('#x_content1').empty();
  document.getElementById("x_content1").innerHTML='	<div id="wrapper" style="width:100%;height:60px;overflow-y:scroll;"></div>';    
   var tagInput = $('<input />', {

});
tagInput.appendTo($('#wrapper'));
tagInput.tagsinput({
});
  
  
  
  }

  
  
  </script>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="images/favicon.ico" type="image/ico" />

    <title>AICOP </title>

    <!-- Bootstrap -->
    <link href="resources/css/bootstrap.min_gen.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- bootstrap-progressbar -->
    <link href="resources/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    

    <!-- Custom Theme Style -->
    <link href="resources/css/custom.min.css" rel="stylesheet">

  </head>

  <body class="nav-md">
  <div class="container text-center">


<!-- Large modal -->


<div class="modal fade bs-example-modal-md" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true"  id="test">
  <div class="modal-dialog modal-md">
    <div class="modal-content">
      <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

  

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
    <center> <img class="img-responsive" src="resources/images/banner1.jpg" alt="..."></center>
      <div class="carousel-caption">
        <a href="#">CLick Here for more details</a>
      </div>
    </div>
    <div class="item">
      <img class="img-responsive" src="resources/images/banner2.jpg" alt="...">
      <div class="carousel-caption">
        <a href="#">CLick Here for more details</a>
      </div>
    </div>
     <div class="item">
      <img class="img-responsive" src="resources/images/banner3.jpg" alt="...">
      <div class="carousel-caption">
        <a href="#">CLick Here for more details</a>
      </div>
    </div>
    <div class="item">
      <img class="img-responsive" src="resources/images/banner4.jpg" alt="...">
      <div class="carousel-caption">
        <a href="#">CLick Here for more details</a>
      </div>
    </div>
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
  </a>
</div>
    </div>
  </div>
</div>
</div>
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col" id="left-col">
          <div class="left_col scroll-view" id="navbar">
            <div class="navbar nav_title" style="border: 0;" id="navtitle">
              <img src="resources/images/aicop_logo.png" style="width:200px;"></img>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="resources/images/profile_pic.png" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2>Administrator</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="">Business View</a></li>
                      <li><a href="">Executive View</a></li>
                     
                    </ul>
                  </li>
                                  <li><a><i class="fa fa-sitemap"></i> Bussiness Process <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                        <li><a href="#level1_1">Mobile Services</a>
                        <li><a>Port In<span class="fa fa-chevron-down"></span></a>
                          <ul class="nav child_menu">
                            <li class="sub_menu"><a href="">Bussiness Process Flow</a>
                            </li>
                            <li><a href="#level2_1">Application Flow</a>
                            </li>
                       
                          </ul>
                        </li>
						  <li><a>Port Out<span class="fa fa-chevron-down"></span></a>
                          <ul class="nav child_menu">
                            <li class="sub_menu"><a href="">Bussiness Process Flow</a>
                            </li>
                            <li><a href="#level2_1">Application Flow</a>
                            </li>
                       
                          </ul>
                        </li>
						  <li><a>Fixed Services<span class="fa fa-chevron-down"></span></a>
                          <ul class="nav child_menu">
                            <li class="sub_menu"><a href="">Port In</a>
                            </li>
                            <li><a href="#level2_1">Port Out</a>
                            </li>
                       
                          </ul>
                        </li>
						  <li><a>Order Management<span class="fa fa-chevron-down"></span></a>
                          <ul class="nav child_menu">
                            <li class="sub_menu"><a href="">Mobile Services</a>
                            </li>
                            <li><a href="#level2_1">Fixed Services</a>
                            </li>
                       
                          </ul>
                        </li>
                       <li><a>Billing Management<span class="fa fa-chevron-down"></span></a>
                          <ul class="nav child_menu">
                            <li class="sub_menu"><a href="">Mobile Services</a>
                            </li>
                            <li><a href="#level2_1">Fixed Services</a>
                            </li>
                       
                          </ul>
                        </li>
                        </li>
                    </ul>
                  </li>                  
                 
                </ul>
              </div>

            </div>
            <!-- /sidebar menu -->

          
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="resources/images/profile_pic.png" alt="">John Doe
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="javascript:;"> Profile</a></li>
                    <li>
                      <a href="javascript:;">
                      
                      </a>
                    </li>
                    <li><a href="javascript:;">Help</a></li>
					<li><a href="javascript:; onclick=changeTheme('gray')">Theme 1</a></li>
					<li><a href="javascript:; onclick=changeTheme('black')">Theme 2</a></li>
					<li><a href="javascript:; onclick=changeTheme('blue')">Theme 3</a></li>
                    <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                  </ul>
                </li>
<li role="presentation" class="dropdown">
                  <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa  fa-paint-brush"></i>
                  
                  </a>
                  <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                    <li>
                      <a>
                         <span>
                          <span onclick="changeTheme('gray')"><center > Theme 1</center></span>
                       
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                     
                        <span>
                          <span onclick="changeTheme('black')"><center>Theme 2</center></span>
                       
                        </span>
                       
                      </a>
                    </li>
                    <li>
                      <a>
                          <span>
                          <span onclick="changeTheme('blue')"><center>Theme 3</center></span>
                       
                        </span>
                      </a>
                    </li>
                   
                      <div class="text-center">
                        <a>
                          <strong></strong>
                          <i class="fa fa-close"></i>
                        </a>
                      </div>
                    </li>
                  </ul>
                </li>
               
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <!-- top tiles -->
		  <div class="row">


           <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="col-md-4 col-sm-4 col-xs-12">
              <div class="x_panel tile fixed_height_320">
                <div class="x_title">
                  <h2>Notifications</h2>
                  <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
					  <li><a class="collapse-link1" onclick="replaceexclamation()"><i class="fa fa-exclamation-circle"></i></a>
                    </li>
                    <li><a class="collapse-link11" onclick="replacesignal()"><i class="fa fa-signal"></i></a>
                     
                    </li>
                    <li><a class="close-link1" onclick="replaceBeat()"><i class="fa fa-heartbeat"></i></a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content" id="x_content1">

                      
						<div id="wrapper" style="width:100%;height:60px;overflow-y:scroll;">         
						
						 <input type="text" class="form-control" id="tokenfield" />
						
</select>
						</div>
						
						
						  
					
                  </div>
                       
                </div>
              </div>

            <div class="test">
              <div class="x_panel tile fixed_height_320 overflow_hidden">
                <div class="x_title">
                  <h2>Flowchart</h2>
                  
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">
				
    
		 <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.2/raphael-min.js"></script>-->
             <div><textarea id="code" style="width: 100%;display:none;" rows="11">
st=>start: Start|past:>http://www.google.com
			 orderCapture=>operation: Order Capture:>http://www.google.com
sub1=>subroutine: My Subroutine
orderValidation=>operation: Order Validation
orderSubmission=>operation: Order Submission
op3=>operation: provisioning
PortingOrders=>operation: Porting Orders
NonPortingOrders=>operation: Non Porting Orders 
provisioning=>operation: Provisioning 
billing=>operation: Billing 
orderComp=>operation: Order Completion 
provcond=>condition: Porting?
e=>end: Into admin panel

orderCapture(right)->orderValidation(right)->orderSubmission(right)->provcond(up)
provcond(yes)->PortingOrders->provisioning->billing->orderComp
provcond(no)->NonPortingOrders->provisioning->billing->orderComp

orderCapture@>orderValidation({"stroke":"green"})@>orderSubmission({"stroke":"green"})@>provcond({"stroke":"green"})@>PortingOrders({"stroke":"green"})

</textarea></div>
        <div><button id="run" type="button" style="width: 100%;display:none;">Run</button></div>
        <div id="canvas" style="width: 100%;height:200px;overflow-x:scroll;overflow-y:scroll;"></div>
	 <div class="container">
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#myModal">Create Flow Chart</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Flow chart input</h4>
        </div>
        <div class="modal-body">
		<div class="controls" id="profs"> 
		<form class="input-append">
	<div><input type="text" class="form-control" id="flow" placeholder="Enter second flow" style="width:50%;"><button id="b1" class="btn add-more" type="button">+</button></div>
	</form>
	</div>
		  <br>
		  <input type="text" class="form-control" id="flow1" placeholder="Enter second flow">  
		  <br>
		  <input type="text" class="form-control" id="flow2" placeholder="Enter third flow"> 
		  <br>
		  <input type="text" class="form-control" id="flow3" placeholder="Enter fourth flow">  
		  <br>
		  <input type="text" class="form-control" id="flow4" placeholder="Enter fifth flow"> 
		  <br>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal" onclick="generateFlowChart()">Generate Flow Chart</button>
        </div>
      </div>
      
    </div>
  </div>
  
</div>
        
                </div>
              </div>
            </div>


          

          </div>
			
			
            </div>
			<div class="row">
 <div class="col-md-12 col-sm-12 col-xs-12">

            <div class="col-md-4 col-sm-4 col-xs-12">
              <div class="x_panel tile fixed_height_320">
                <div class="x_title">
                  <h2>App Versions</h2>
                 
                  <div class="clearfix"></div>
                </div>
                <div class="x_content"><iframe class="chartjs-hidden-iframe" style="width: 100%; display: block; border: 0px; height: 0px; margin: 0px; position: absolute; left: 0px; right: 0px; top: 0px; bottom: 0px;"></iframe>
                    <canvas id="mybarChart" width="384" height="192" style="width: 384px; height: 192px;"></canvas>
                  </div>
              </div>
            </div>

            <div class="col-md-4 col-sm-4 col-xs-12">
              <div class="x_panel tile fixed_height_320 overflow_hidden">
                <div class="x_title">
                  <h2>Device Usage</h2>
                  <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                      <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Settings 1</a>
                        </li>
                        <li><a href="#">Settings 2</a>
                        </li>
                      </ul>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">
                  <table class="" style="width:100%">
                    <tbody><tr>
                      <th style="width:37%;">
                        <p>Top 5</p>
                      </th>
                      <th>
                        <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                          <p class="">Device</p>
                        </div>
                        <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                          <p class="">Progress</p>
                        </div>
                      </th>
                    </tr>
                    <tr>
                      <td><iframe class="chartjs-hidden-iframe" style="width: 100%; display: block; border: 0px; height: 0px; margin: 0px; position: absolute; left: 0px; right: 0px; top: 0px; bottom: 0px;"></iframe>
                        <canvas class="canvasDoughnut" height="140" width="140" style="margin: 15px 10px 10px 0px; width: 140px; height: 140px;"></canvas>
                      </td>
                      <td>
                        <table class="tile_info">
                          <tbody><tr>
                            <td>
                              <p><i class="fa fa-square blue"></i>POPI </p>
                            </td>
                            <td>30%</td>
                          </tr>
                          <tr>
                            <td>
                              <p><i class="fa fa-square green"></i>OPOM </p>
                            </td>
                            <td>10%</td>
                          </tr>
                          <tr>
                            <td>
                              <p><i class="fa fa-square purple"></i>Helix </p>
                            </td>
                            <td>20%</td>
                          </tr>
                          <tr>
                            <td>
                              <p><i class="fa fa-square aero"></i>BCC </p>
                            </td>
                            <td>15%</td>
                          </tr>
                          <tr>
                            <td>
                              <p><i class="fa fa-square red"></i>Helix Mobile </p>
                            </td>
                            <td>30%</td>
                          </tr>
                        </tbody></table>
                      </td>
                    </tr>
                  </tbody></table>
                </div>
              </div>
            </div>

<div class="col-md-4 col-sm-4 col-xs-12">
              <div class="x_panel tile fixed_height_320 overflow_hidden">
                <div class="x_title">
                  <h2>Device Usage</h2>
                  <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                      <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Settings 1</a>
                        </li>
                        <li><a href="#">Settings 2</a>
                        </li>
                      </ul>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">
                  <table class="" style="width:100%">
                    <tbody><tr>
                      <th style="width:37%;">
                        <p>Top 5</p>
                      </th>
                      <th>
                        <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7">
                          <p class="">Device</p>
                        </div>
                        <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5">
                          <p class="">Progress</p>
                        </div>
                      </th>
                    </tr>
                    <tr>
                      <td><iframe class="chartjs-hidden-iframe" style="width: 100%; display: block; border: 0px; height: 0px; margin: 0px; position: absolute; left: 0px; right: 0px; top: 0px; bottom: 0px;"></iframe>
                        <canvas class="canvasDoughnut" height="140" width="140" style="margin: 15px 10px 10px 0px; width: 140px; height: 140px;"></canvas>
                      </td>
                      <td>
                        <table class="tile_info">
                          <tbody><tr>
                            <td>
                              <p><i class="fa fa-square blue"></i>POPI </p>
                            </td>
                            <td>30%</td>
                          </tr>
                          <tr>
                            <td>
                              <p><i class="fa fa-square green"></i>OPOM </p>
                            </td>
                            <td>10%</td>
                          </tr>
                          <tr>
                            <td>
                              <p><i class="fa fa-square purple"></i>Helix </p>
                            </td>
                            <td>20%</td>
                          </tr>
                          <tr>
                            <td>
                              <p><i class="fa fa-square aero"></i>BCC </p>
                            </td>
                            <td>15%</td>
                          </tr>
                          <tr>
                            <td>
                              <p><i class="fa fa-square red"></i>Helix Mobile </p>
                            </td>
                            <td>30%</td>
                          </tr>
                        </tbody></table>
                      </td>
                    </tr>
                  </tbody></table>
                </div>
              </div>
            </div>
           </div>
              </div>
        </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            ACCENTURE Solutions
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>
   <!-- jQuery -->
    <script src="resources/js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="resources/js/bootstrap.min.js"></script>
  
    <!-- Chart.js -->
    <script src="resources/js/Chart.min.js"></script>
   
  
    <!-- bootstrap-progressbar -->
    <script src="resources/js/bootstrap-progressbar.min.js"></script>
    
    <!-- DateJS -->
    <script src="resources/js/date.js"></script>

    <!-- bootstrap-daterangepicker -->
    <script src="resources/js/moment.min.js"></script>
  

    <!-- Custom Theme Scripts -->
    <script src="resources/js/custom.min.js"></script>

<script type="text/javascript">
  /*$('#tokenfield').tokenfield({
  autocomplete: {
    source: ['red','blue','green','yellow','violet','brown','purple','black','white'],
    delay: 100
  },
  showAutocompleteOnFocus: true
})*/


$("#test").modal('show');
</script>
 
  </body>
</html>
