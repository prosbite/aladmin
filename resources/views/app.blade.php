<!DOCTYPE html>
<html>
<head>
	<title>Vita</title>
	<meta charset="utf-8"> 
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="csrf-token" content="{{ csrf_token() }}">
	<link rel="stylesheet" type="text/css" href="{{asset('css/bootstrap.min.css')}}">
	<link rel="stylesheet" type="text/css" href="{{asset('css/fontawesome/css/font-awesome.min.css')}}">
	<link rel="stylesheet" type="text/css" href="{{asset('plugins/owl_carousel/dist/assets/owl.carousel.min.css')}}">
	<link rel="stylesheet" type="text/css" href="{{asset('plugins/owl_carousel/dist/assets/owl.theme.default.css')}}">
	<link rel="stylesheet" type="text/css" href="{{asset('css/custom.css')}}">
	<link rel="stylesheet" href="{{asset('css/visit.css')}}">
	<link rel="stylesheet" href="{{asset('css/profile.css')}}">

	<style>
		.work-suggestions ul li > img {
			max-width: 100px;
			height: auto;
		}

		.info-tabs .nav-tabs>li.active>a, .info-tabs .nav-tabs>li.active>a:focus, .info-tabs .nav-tabs>li.active>a:hover {
		    margin-right: 1px!important;
		    border:none!important;
		    background-color: #f0f0e1!important;
		    color: #00b2b2!important;
		}
	</style>
</head>
<body>
	<header class="header" style="padding-top:10px;">
		<div class="container">
			<a href="alumnus.html" class="pull-left">
				<img src="{{asset('img/logo.png')}}" class="logo">
			</a>
			<div class="alumni-type pull-left">
				<span class="myriad f-11">Access Type: </span>
				<span class="myriad f-11">System Administrator</span>
			</div>
			<ul class="notifs pull-left">
				<li>
					<img src="{{asset('img/mailico.png')}}" class="mailico">
					<span>10</span>
				</li>
			</ul>
			<div class="head-welcome pull-right">
				<img src="{{asset('img/don.jpg')}}" alt="">
				<div class="pull-left mr-15">
					<h6 class="c-white f-10 mt-3 pull-left mr-5">Welcome:</h6><a href="" class="f-13 c-neon" style="line">Don Del Rosario</a>
					<p class="c-white f-10 mb-0" style="margin-left:50px;">Librarian</p>
				</div>
			</div>
		</div>
	</header>
	<div class="sub-nav mb-24">
		<div class="container">
			<ul class="pull-left">
				<li><a href="{{Route('alumnus.home')}}" class="{{ $crumbs[0] == 'alumnus' ? 'active':''}}">Alumnus</a></li>
				<li><a href="{{Route('company.home')}}" class="{{ $crumbs[0] == 'company' ? 'active':''}}">Company</a></li>
				<li><a href="{{Route('advertising.home')}}" class="{{ $crumbs[0] == 'advertising' ? 'active':''}}">Advertising</a></li>
				<li><a href="{{Route('account.home')}}" class="{{ $crumbs[0] == 'account' ? 'active':''}}">Account</a></li>
				<li><a href="{{Route('reports.home')}}" class="{{ $crumbs[0] == 'reports' ? 'active':''}}">Reports</a></li>
				<li><a href="">Announcements</a></li>
				<li><a href="">Invitation</a></li>
			</ul>
			
		</div>
	</div>

	
	<div id="app">
		@yield('main_content')
	</div>	
	

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-xs-3 s-pad">
					<a href="#"><span class="c-green">Virtual Information Tracer for Alumnus</span> <span class="c-dark">VITA&trade;</span></a>
					<p class="f-10 c-light" style="margin-top:2px;">Developed and Manufactured by Engtech Global Solutions Inc.</p>
				</div>
				<div class="col-xs-9 s-pad">
					<ul class="pull-left">
						<li><a href="#">User Agreement</a></li>
						<li><a href="#">Privacy Policy</a></li>
						<li><a href="#">Copyright Policy</a></li>
						<li><a href="#">Feedback</a></li>
						<li><a href="#">Account</a></li>
					</ul>
					<div class="f-socials pull-right">
						<a href="#"><i class="fa fa-facebook-square"></i></a>
						<a href="#"><i class="fa fa-twitter-square"></i></a>
					</div>
					<br><p class="all-rights">All rights reserve 2017</p>
				</div>
			</div>
		</div>
	</footer>





<!-- ::::::::::::::::::::::::::::::::::::::::::::::::::::::: MODALS AND ALERTS ::::::::::::::::::::::::::::::::::::::: -->







<script type="text/javascript" src="{{asset('js/jquery.min.js')}}"></script>
<script type="text/javascript" src="{{asset('js/bootstrap.min.js')}}"></script>
<script type="text/javascript" src="{{asset('plugins/owl_carousel/dist/owl.carousel.min.js')}}"></script>
<!-- <script type="text/javascript" src="{{asset('js/vue.js')}}"></script> -->
<script type="text/javascript" src="{{asset('js/app.js')}}"></script>

@yield('js')


</body>
</html>