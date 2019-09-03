@extends('app')


@section('main_content')



    <div class="main-content">
		<div class="container" style="min-height: 500px;">
			<div class="row">
				<div class="col-xs-2 s-pad">

                    @include('includes.account_inc')
                    
				</div>

				<div class="col-xs-10 s-pad">
					<div class="admin-content bg-white">
						<div class="head oh border-bot mb-10">
							<h4 class="pull-left c-bright-green normal">Partners</h4>
							<input type="text" placeholder="Search" class="border-light pull-right">
						</div>
						<div>
							<ul class="inline-block">
								<li class="oh mb-24 mr-15" data-toggle="modal" data-target="#accountModal" style="max-width:300px;">
									<img src="{{asset('img/azurelogo.png')}}" alt="" class="pull-left mr-15" style="max-width:90px;">
									<div style="padding-top:0px;" class="mb-15 oh">
										<h4>AZURE Mindstream Company Incorporated</h4>
										<h6 class="mt-3 c-sdark mb-5">Los Angeles California, USA</h6>
										<h5 class="mt-3 c-bright-green">Contact Information</h5>
										<h6 class="mt-3 c-sdark">Tel#: 225-9568</h6>
										<h6 class="mt-3 c-sdark">Cell#: (+63)9096152598</h6>
										<h6 class="mt-3 c-sdark">Email: dalecious@gmail.com</h6>
									</div>
								</li>
								<li class="oh mb-24 mr-15" data-toggle="modal" data-target="#accountModal" style="max-width:300px;">
									<img src="{{asset('img/mitlogo.png')}}" alt="" class="pull-left mr-15" style="max-width:90px;">
									<div style="padding-top:0px;" class="mb-15 oh">
										<h4>Mittal Solutions Incorporated</h4>
										<h6 class="mt-3 c-sdark mb-5">Los Angeles California, USA</h6>
										<h5 class="mt-3 c-bright-green">Contact Information</h5>
										<h6 class="mt-3 c-sdark">Tel#: 225-9568</h6>
										<h6 class="mt-3 c-sdark">Cell#: (+63)9096152598</h6>
										<h6 class="mt-3 c-sdark">Email: dalecious@gmail.com</h6>
									</div>
								</li>
								<li class="oh mb-24 mr-15" data-toggle="modal" data-target="#accountModal" style="max-width:300px;">
									<img src="{{asset('img/ibmlogo.png')}}" alt="" class="pull-left mr-15" style="max-width:90px;">
									<div style="padding-top:0px;" class="mb-15 oh">
										<h4>International Business Machine</h4>
										<h6 class="mt-3 c-sdark mb-5">Los Angeles California, USA</h6>
										<h5 class="mt-3 c-bright-green">Contact Information</h5>
										<h6 class="mt-3 c-sdark">Tel#: 225-9568</h6>
										<h6 class="mt-3 c-sdark">Cell#: (+63)9096152598</h6>
										<h6 class="mt-3 c-sdark">Email: dalecious@gmail.com</h6>
									</div>
								</li>
								<li class="oh mb-24 mr-15" data-toggle="modal" data-target="#accountModal" style="max-width:300px;">
									<img src="{{asset('img/azurelogo.png')}}" alt="" class="pull-left mr-15" style="max-width:90px;">
									<div style="padding-top:0px;" class="mb-15 oh">
										<h4>AZURE Mindstream Company Incorporated</h4>
										<h6 class="mt-3 c-sdark mb-5">Los Angeles California, USA</h6>
										<h5 class="mt-3 c-bright-green">Contact Information</h5>
										<h6 class="mt-3 c-sdark">Tel#: 225-9568</h6>
										<h6 class="mt-3 c-sdark">Cell#: (+63)9096152598</h6>
										<h6 class="mt-3 c-sdark">Email: dalecious@gmail.com</h6>
									</div>
								</li>
								<li class="oh mb-24 mr-15" data-toggle="modal" data-target="#accountModal" style="max-width:300px;">
									<img src="{{asset('img/mitlogo.png')}}" alt="" class="pull-left mr-15" style="max-width:90px;">
									<div style="padding-top:0px;" class="mb-15 oh">
										<h4>Mittal Solutions Incorporated</h4>
										<h6 class="mt-3 c-sdark mb-5">Los Angeles California, USA</h6>
										<h5 class="mt-3 c-bright-green">Contact Information</h5>
										<h6 class="mt-3 c-sdark">Tel#: 225-9568</h6>
										<h6 class="mt-3 c-sdark">Cell#: (+63)9096152598</h6>
										<h6 class="mt-3 c-sdark">Email: dalecious@gmail.com</h6>
									</div>
								</li>
								<li class="oh mb-24 mr-15" data-toggle="modal" data-target="#accountModal" style="max-width:300px;">
									<img src="{{asset('img/ibmlogo.png')}}" alt="" class="pull-left mr-15" style="max-width:90px;">
									<div style="padding-top:0px;" class="mb-15 oh">
										<h4>International Business Machine</h4>
										<h6 class="mt-3 c-sdark mb-5">Los Angeles California, USA</h6>
										<h5 class="mt-3 c-bright-green">Contact Information</h5>
										<h6 class="mt-3 c-sdark">Tel#: 225-9568</h6>
										<h6 class="mt-3 c-sdark">Cell#: (+63)9096152598</h6>
										<h6 class="mt-3 c-sdark">Email: dalecious@gmail.com</h6>
									</div>
								</li>
								<li class="oh mb-24 mr-15" data-toggle="modal" data-target="#accountModal" style="max-width:300px;">
									<img src="{{asset('img/azurelogo.png')}}" alt="" class="pull-left mr-15" style="max-width:90px;">
									<div style="padding-top:0px;" class="mb-15 oh">
										<h4>AZURE Mindstream Company Incorporated</h4>
										<h6 class="mt-3 c-sdark mb-5">Los Angeles California, USA</h6>
										<h5 class="mt-3 c-bright-green">Contact Information</h5>
										<h6 class="mt-3 c-sdark">Tel#: 225-9568</h6>
										<h6 class="mt-3 c-sdark">Cell#: (+63)9096152598</h6>
										<h6 class="mt-3 c-sdark">Email: dalecious@gmail.com</h6>
									</div>
								</li>
								<li class="oh mb-24 mr-15" data-toggle="modal" data-target="#accountModal" style="max-width:300px;">
									<img src="{{asset('img/mitlogo.png')}}" alt="" class="pull-left mr-15" style="max-width:90px;">
									<div style="padding-top:0px;" class="mb-15 oh">
										<h4>Mittal Solutions Incorporated</h4>
										<h6 class="mt-3 c-sdark mb-5">Los Angeles California, USA</h6>
										<h5 class="mt-3 c-bright-green">Contact Information</h5>
										<h6 class="mt-3 c-sdark">Tel#: 225-9568</h6>
										<h6 class="mt-3 c-sdark">Cell#: (+63)9096152598</h6>
										<h6 class="mt-3 c-sdark">Email: dalecious@gmail.com</h6>
									</div>
								</li>
								<li class="oh mb-24 mr-15" data-toggle="modal" data-target="#accountModal" style="max-width:300px;">
									<img src="{{asset('img/ibmlogo.png')}}" alt="" class="pull-left mr-15" style="max-width:90px;">
									<div style="padding-top:0px;" class="mb-15 oh">
										<h4>International Business Machine</h4>
										<h6 class="mt-3 c-sdark mb-5">Los Angeles California, USA</h6>
										<h5 class="mt-3 c-bright-green">Contact Information</h5>
										<h6 class="mt-3 c-sdark">Tel#: 225-9568</h6>
										<h6 class="mt-3 c-sdark">Cell#: (+63)9096152598</h6>
										<h6 class="mt-3 c-sdark">Email: dalecious@gmail.com</h6>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	
	
	<!-- ::::::::::::::::::::::::::::::::::::::::::::::::::::::: MODALS AND ALERTS ::::::::::::::::::::::::::::::::::::::: -->


	<div id="modModal" class="modal fade" role="dialog">
		<div class="modal-dialog modal-md">
		    <!-- Modal content-->
		    <div class="modal-content box-edge">
				<div class="modal-body p-25">
					<div class="row">
						<div class="col-xs-6">
							<h6 class="mt-0 c-dark mb-5">Modification</h6>
							<div class="p-5 border-light mb-5"><img src="{{asset('img/ads/slogan/one.png')}}')}}')}}" class="img img-responsive" alt=""></div>
							<button class="btn btn-success btn-prime btn-block box-edge">Upload Media</button>
						</div>
						<div class="col-xs-6">
							<h6 class="mt-0 c-dark mb-5">Media Information</h6>
							<ul class="inline-block">
								<li class="mb-7 block">
									<h6 class="mt-0 f-11 c-sdark mb-3">Name</h6>
									<input type="text" class="border-light block">
								</li>
								<li class="mb-7 mr-5">
									<h6 class="mt-0 f-11 c-sdark mb-3">Type</h6>
									<input type="text" class="border-light" style="width:80px;">
								</li>
								<li class="mb-7 mr-5">
									<h6 class="mt-0 f-11 c-sdark mb-3">Format</h6>
									<input type="text" class="border-light" style="width:80px;">
								</li>
								<li class="mb-7">
									<h6 class="mt-0 f-11 c-sdark mb-3">Duration</h6>
									<input type="text" class="border-light" style="width:81px;">
								</li>
								<li class="mb-7 mr-5">
									<h6 class="mt-0 f-11 c-sdark mb-3">Size</h6>
									<input type="text" class="border-light" style="width:80px;">
								</li>
								<li class="mb-7 mr-5">
									<h6 class="mt-0 f-11 c-sdark mb-3">Dimension</h6>
									<input type="text" class="border-light" style="width:80px;">
								</li>
								<li class="mb-7 mr-5">
									<h6 class="mt-0 f-11 c-sdark mb-3">Activation Start</h6>
									<input type="text" class="border-light" style="width:125px;">
								</li>
								<li class="mb-7">
									<h6 class="mt-0 f-11 c-sdark mb-3">Activation Expire</h6>
									<input type="text" class="border-light" style="width:125px;">
								</li>
							</ul>
							<button class="btn btn-success btn-prime pull-right box-edge" style="padding:5px 24px;">Save</button>
						</div>
					</div>
				</div>
		  	</div>
		</div>
	</div>
    
@stop