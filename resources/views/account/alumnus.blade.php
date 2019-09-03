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
							<h4 class="pull-left c-bright-green normal">Alumnus Account</h4>
							<input type="text" placeholder="Search" class="border-light pull-right">
						</div>
						<div>
							<ul class="inline-block">
								<li class="oh mb-24" data-toggle="modal" data-target="#accountModal">
									<img src="{{asset('img/batchmates/dale.png')}}" alt="" class="pull-left mr-15" style="max-width:90px;">
									<div style="padding-top:0px;" class="mb-15" class="mb-15">
										<h4>Dale B. Blanco</h4>
										<h5 class="mt-3 c-bright-green">Graduate: <span class="c-sdark">Bachelor of Science in Computer Science</span></h5>
										<h6 class="mt-3 c-sdark">Batch 2014-2015</h6>
										<h6 class="mt-3 c-sdark">Date Graduated: March 30, 2015</h6>
									</div>
									<div class="oh" style="padding-top:5px;padding-right:15px">
										<a href="" class="f-11 c-bright-green pull-right">View Full Information</a>
									</div>												
								</li>
								<li class="oh mb-24" data-toggle="modal" data-target="#accountModal">
									<img src="{{asset('img/batchmates/don.png')}}" alt="" class="pull-left mr-15" style="max-width:90px;">
									<div style="padding-top:0px;" class="mb-15">
										<h4>Don J. Del Rosario</h4>
										<h5 class="mt-3 c-bright-green">Graduate: <span class="c-sdark">Bachelor of Science in Computer Science</span></h5>
										<h6 class="mt-3 c-sdark">Batch 2014-2015</h6>
										<h6 class="mt-3 c-sdark">Date Graduated: March 30, 2015</h6>
									</div>
									<div class="oh" style="padding-top:5px;padding-right:15px">
										<a href="" class="f-11 c-bright-green pull-right">View Full Information</a>
									</div>
								</li>
								<li class="oh mb-24" data-toggle="modal" data-target="#accountModal">
									<img src="{{asset('img/batchmates/gian.png')}}" alt="" class="pull-left mr-15" style="max-width:90px;">
									<div style="padding-top:0px;" class="mb-15">
										<h4>Gian G. Anduyan</h4>
										<h5 class="mt-3 c-bright-green">Graduate: <span class="c-sdark">Bachelor of Science in Computer Science</span></h5>
										<h6 class="mt-3 c-sdark">Batch 2014-2015</h6>
										<h6 class="mt-3 c-sdark">Date Graduated: March 30, 2015</h6>
									</div>
									<div class="oh" style="padding-top:5px;padding-right:15px">
										<a href="" class="f-11 c-bright-green pull-right">View Full Information</a>
									</div>
								</li>
								<li class="oh mb-24" data-toggle="modal" data-target="#accountModal">
									<img src="{{asset('img/batchmates/chris.png')}}" alt="" class="pull-left mr-15" style="max-width:90px;">
									<div style="padding-top:0px;" class="mb-15">
										<h4>Chris B. Olivo</h4>
										<h5 class="mt-3 c-bright-green">Graduate: <span class="c-sdark">Bachelor of Science in Computer Science</span></h5>
										<h6 class="mt-3 c-sdark">Batch 2014-2015</h6>
										<h6 class="mt-3 c-sdark">Date Graduated: March 30, 2015</h6>
									</div>
									<div class="oh" style="padding-top:5px;padding-right:15px">
										<a href="" class="f-11 c-bright-green pull-right">View Full Information</a>
									</div>
								</li>
								<li class="oh mb-24" data-toggle="modal" data-target="#accountModal">
									<img src="{{asset('img/batchmates/naks.png')}}" alt="" class="pull-left mr-15" style="max-width:90px;">
									<div style="padding-top:0px;" class="mb-15">
										<h4>Karl Irvin B. Monteadora</h4>
										<h5 class="mt-3 c-bright-green">Graduate: <span class="c-sdark">Bachelor of Science in Computer Science</span></h5>
										<h6 class="mt-3 c-sdark">Batch 2014-2015</h6>
										<h6 class="mt-3 c-sdark">Date Graduated: March 30, 2015</h6>
									</div>
									<div class="oh" style="padding-top:5px;padding-right:15px">
										<a href="" class="f-11 c-bright-green pull-right">View Full Information</a>
									</div>
								</li>
								<li class="oh mb-24" data-toggle="modal" data-target="#accountModal">
									<img src="{{asset('img/batchmates/yoyo.png')}}" alt="" class="pull-left mr-15" style="max-width:90px;">
									<div style="padding-top:0px;" class="mb-15">
										<h4>Bryan Jecie P. Bahala</h4>
										<h5 class="mt-3 c-bright-green">Graduate: <span class="c-sdark">Bachelor of Science in Computer Science</span></h5>
										<h6 class="mt-3 c-sdark">Batch 2014-2015</h6>
										<h6 class="mt-3 c-sdark">Date Graduated: March 30, 2015</h6>
									</div>
									<div class="oh" style="padding-top:5px;padding-right:15px">
										<a href="" class="f-11 c-bright-green pull-right">View Full Information</a>
									</div>
								</li>
								<li class="oh mb-24" data-toggle="modal" data-target="#accountModal">
									<img src="{{asset('img/batchmates/ryan.png')}}" alt="" class="pull-left mr-15" style="max-width:90px;">
									<div style="padding-top:0px;" class="mb-15">
										<h4>Ryan M. Pastoriza</h4>
										<h5 class="mt-3 c-bright-green">Graduate: <span class="c-sdark">Bachelor of Science in Computer Science</span></h5>
										<h6 class="mt-3 c-sdark">Batch 2014-2015</h6>
										<h6 class="mt-3 c-sdark">Date Graduated: March 30, 2015</h6>
									</div>
									<div class="oh" style="padding-top:5px;padding-right:15px">
										<a href="" class="f-11 c-bright-green pull-right">View Full Information</a>
									</div>
								</li>
								<li class="oh mb-24" data-toggle="modal" data-target="#accountModal">
									<img src="{{asset('img/batchmates/leo.png')}}" alt="" class="pull-left mr-15" style="max-width:90px;">
									<div style="padding-top:0px;" class="mb-15">
										<h4>Leonardo L. Empuesto</h4>
										<h5 class="mt-3 c-bright-green">Graduate: <span class="c-sdark">Bachelor of Science in Computer Science</span></h5>
										<h6 class="mt-3 c-sdark">Batch 2014-2015</h6>
										<h6 class="mt-3 c-sdark">Date Graduated: March 30, 2015</h6>
									</div>
									<div class="oh" style="padding-top:5px;padding-right:15px">
										<a href="" class="f-11 c-bright-green pull-right">View Full Information</a>
									</div>
								</li>
								<li class="oh mb-24" data-toggle="modal" data-target="#accountModal">
									<img src="{{asset('img/batchmates/rustom.png')}}" alt="" class="pull-left mr-15" style="max-width:90px;">
									<div style="padding-top:0px;" class="mb-15">
										<h4>Rustom C. Pedales</h4>
										<h5 class="mt-3 c-bright-green">Graduate: <span class="c-sdark">Bachelor of Science in Computer Science</span></h5>
										<h6 class="mt-3 c-sdark">Batch 2014-2015</h6>
										<h6 class="mt-3 c-sdark">Date Graduated: March 30, 2015</h6>
									</div>
									<div class="oh" style="padding-top:5px;padding-right:15px">
										<a href="" class="f-11 c-bright-green pull-right">View Full Information</a>
									</div>
								</li>
								<li class="oh mb-15">
									<img src="{{asset('img/batchmates/kate.png')}}" alt="" class="pull-left mr-15" style="max-width:90px;">
									<div style="padding-top:0px;" class="mb-15">
										<h4>Karen Kate B. Seronay</h4>
										<h5 class="mt-3 c-bright-green">Graduate: <span class="c-sdark">Bachelor of Science in Computer Science</span></h5>
										<h6 class="mt-3 c-sdark">Batch 2014-2015</h6>
										<h6 class="mt-3 c-sdark">Date Graduated: March 30, 2015</h6>
									</div>
									<div class="oh" style="padding-top:5px;padding-right:15px">
										<a href="" class="f-11 c-bright-green pull-right">View Full Information</a>
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
							<div class="p-5 border-light mb-5"><img src="{{asset('img/ads/slogan/one.png')}}')}}" class="img img-responsive" alt=""></div>
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