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
							<h4 class="pull-left c-bright-green normal">System Administrator</h4>
							<input type="text" placeholder="Search" class="border-light pull-right">
						</div>
						<div class="row">
							<div class="col-xs-7">
								<div class="row">
									<div class="col-xs-4">
										<img src="{{asset('img/profile/kk.png')}}" alt="" class="img img-responsive mb-5">
										<button class="btn btn-success btn-prime block">Upload</button>
									</div>
									<div class="col-xs-8">
										<ul class="inline-block">
											<li class="mb-7 block">
												<h6 class="mt-0 f-11 c-sdark mb-3">Firstname</h6>
												<input type="text" class="border-light block">
											</li>
											<li class="mb-7 block">
												<h6 class="mt-0 f-11 c-sdark mb-3">Middlename</h6>
												<input type="text" class="border-light block">
											</li>
											<li class="mb-7 block">
												<h6 class="mt-0 f-11 c-sdark mb-3">Lastname</h6>
												<input type="text" class="border-light block">
											</li>
											<li class="mb-7 mr-5">
												<h6 class="mt-0 f-11 c-sdark mb-3">Department</h6>
												<input type="text" class="border-light" style="width:181px;">
											</li>
											<li class="mb-7">
												<h6 class="mt-0 f-11 c-sdark mb-3">Position</h6>
												<input type="text" class="border-light" style="width:181px;">
											</li>
											<li class="mb-7 mr-5">
												<h6 class="mt-0 f-11 c-sdark mb-3">Username</h6>
												<input type="text" class="border-light" style="width:181px;">
											</li>
											<li class="mb-7">
												<h6 class="mt-0 f-11 c-sdark mb-3">Password</h6>
												<input type="text" class="border-light" style="width:181px;">
											</li>
										</ul>
										<button class="btn btn-success btn-prime pull-right">Save</button>
									</div>
								</div>
							</div>
							<div class="col-xs-5">
								<ul class="ptb-15 border-bot">
									<li class="oh mb-24">
										<img src="{{asset('img/batchmates/don.png')}}" alt="" class="pull-left mr-15" style="max-width:90px;">
										<div style="padding-top:0px;" class="mb-15">
											<h4>Don J. Del Rosario</h4>
											<h6 class="mt-2 f-11 c-sdark">Department Head</h6>
											<h5 class="mt-3 c-bright-green f-12">Office of the Student Affairs and Services</h5>
										</div>
										<div class="oh" style="padding-top:5px;padding-right:15px">
											<a href="" class="f-10 c-bright-green pull-left">Registered Date: <span class="c-sdark">07/25/2017</span></a>
											<a href="" class="f-10 c-bright-green pull-right btn btn-default box-edge" style="padding:0px 7px">Deactivate</a>
											<a href="" class="f-10 pull-right btn btn-success btn-prime box-edge mr-5" style="padding:0px 7px;">Activate</a>
										</div>
									</li>
									<li class="oh mb-24">
										<img src="{{asset('img/batchmates/don.png')}}" alt="" class="pull-left mr-15" style="max-width:90px;">
										<div style="padding-top:0px;" class="mb-15">
											<h4>Don J. Del Rosario</h4>
											<h6 class="mt-2 f-11 c-sdark">Department Head</h6>
											<h5 class="mt-3 c-bright-green f-12">Office of the Student Affairs and Services</h5>
										</div>
										<div class="oh" style="padding-top:5px;padding-right:15px">
											<a href="" class="f-10 c-bright-green pull-left">Registered Date: <span class="c-sdark">07/25/2017</span></a>
											<a href="" class="f-10 c-bright-green pull-right btn btn-default box-edge" style="padding:0px 7px">Deactivate</a>
											<a href="" class="f-10 pull-right btn btn-success btn-prime box-edge mr-5" style="padding:0px 7px;">Activate</a>
										</div>
									</li>
									<li class="oh mb-24">
										<img src="{{asset('img/batchmates/don.png')}}" alt="" class="pull-left mr-15" style="max-width:90px;">
										<div style="padding-top:0px;" class="mb-15">
											<h4>Don J. Del Rosario</h4>
											<h6 class="mt-2 f-11 c-sdark">Department Head</h6>
											<h5 class="mt-3 c-bright-green f-12">Office of the Student Affairs and Services</h5>
										</div>
										<div class="oh" style="padding-top:5px;padding-right:15px">
											<a href="" class="f-10 c-bright-green pull-left">Registered Date: <span class="c-sdark">07/25/2017</span></a>
											<a href="" class="f-10 c-bright-green pull-right btn btn-default box-edge" style="padding:0px 7px">Deactivate</a>
											<a href="" class="f-10 pull-right btn btn-success btn-prime box-edge mr-5" style="padding:0px 7px;">Activate</a>
										</div>
									</li>			
									<li class="oh mb-24">
										<img src="{{asset('img/batchmates/don.png')}}" alt="" class="pull-left mr-15" style="max-width:90px;">
										<div style="padding-top:0px;" class="mb-15">
											<h4>Don J. Del Rosario</h4>
											<h6 class="mt-2 f-11 c-sdark">Department Head</h6>
											<h5 class="mt-3 c-bright-green f-12">Office of the Student Affairs and Services</h5>
										</div>
										<div class="oh" style="padding-top:5px;padding-right:15px">
											<a href="" class="f-10 c-bright-green pull-left">Registered Date: <span class="c-sdark">07/25/2017</span></a>
											<a href="" class="f-10 c-bright-green pull-right btn btn-default box-edge" style="padding:0px 7px">Deactivate</a>
											<a href="" class="f-10 pull-right btn btn-success btn-prime box-edge mr-5" style="padding:0px 7px;">Activate</a>
										</div>
									</li>			
									<li class="oh mb-24">
										<img src="{{asset('img/batchmates/don.png')}}" alt="" class="pull-left mr-15" style="max-width:90px;">
										<div style="padding-top:0px;" class="mb-15">
											<h4>Don J. Del Rosario</h4>
											<h6 class="mt-2 f-11 c-sdark">Department Head</h6>
											<h5 class="mt-3 c-bright-green f-12">Office of the Student Affairs and Services</h5>
										</div>
										<div class="oh" style="padding-top:5px;padding-right:15px">
											<a href="" class="f-10 c-bright-green pull-left">Registered Date: <span class="c-sdark">07/25/2017</span></a>
											<a href="" class="f-10 c-bright-green pull-right btn btn-default box-edge" style="padding:0px 7px">Deactivate</a>
											<a href="" class="f-10 pull-right btn btn-success btn-prime box-edge mr-5" style="padding:0px 7px;">Activate</a>
										</div>
									</li>			
									<li class="oh mb-24">
										<img src="{{asset('img/batchmates/don.png')}}" alt="" class="pull-left mr-15" style="max-width:90px;">
										<div style="padding-top:0px;" class="mb-15">
											<h4>Don J. Del Rosario</h4>
											<h6 class="mt-2 f-11 c-sdark">Department Head</h6>
											<h5 class="mt-3 c-bright-green f-12">Office of the Student Affairs and Services</h5>
										</div>
										<div class="oh" style="padding-top:5px;padding-right:15px">
											<a href="" class="f-10 c-bright-green pull-left">Registered Date: <span class="c-sdark">07/25/2017</span></a>
											<a href="" class="f-10 c-bright-green pull-right btn btn-default box-edge" style="padding:0px 7px">Deactivate</a>
											<a href="" class="f-10 pull-right btn btn-success btn-prime box-edge mr-5" style="padding:0px 7px;">Activate</a>
										</div>
									</li>			
									<li class="oh mb-24">
										<img src="{{asset('img/batchmates/don.png')}}" alt="" class="pull-left mr-15" style="max-width:90px;">
										<div style="padding-top:0px;" class="mb-15">
											<h4>Don J. Del Rosario</h4>
											<h6 class="mt-2 f-11 c-sdark">Department Head</h6>
											<h5 class="mt-3 c-bright-green f-12">Office of the Student Affairs and Services</h5>
										</div>
										<div class="oh" style="padding-top:5px;padding-right:15px">
											<a href="" class="f-10 c-bright-green pull-left">Registered Date: <span class="c-sdark">07/25/2017</span></a>
											<a href="" class="f-10 c-bright-green pull-right btn btn-default box-edge" style="padding:0px 7px">Deactivate</a>
											<a href="" class="f-10 pull-right btn btn-success btn-prime box-edge mr-5" style="padding:0px 7px;">Activate</a>
										</div>
									</li>																
								</ul>
							</div>
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
							<div class="p-5 border-light mb-5"><img src="{{asset('img/ads/slogan/one.png')}}" class="img img-responsive" alt=""></div>
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