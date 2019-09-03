@extends('app')


@section('main_content')


<div class="main-content">
		<div class="container" style="min-height: 500px;">
			<div class="row">

                @include('includes.advertising_inc')

				<div class="col-xs-10 s-pad">
					<div class="admin-content bg-white">
						<div class="head oh border-bot mb-10">
							<h4 class="pull-left c-bright-green normal">Register</h4>
							<div class="pull-right">
								<ul class="pull-left reg-prod-tab mr-15 inline-block mt-5">
									<li class="active mr-15" style="cursor:pointer">
										<div class="pull-left p-2 oh border-light mt-2 mr-5"><span style="float:left;width:7px;height:7px;" ></span></div>
										<span class="pull-left f-13 c-dark">Images</span>
									</li>
									<li class="mr-15" style="cursor:pointer">
										<div class="pull-left p-2 oh border-light mt-2 mr-5"><span style="float:left;width:7px;height:7px;" ></span></div>
										<span class="pull-left f-13 c-dark">Video</span>
									</li>
									<li class="mr-15" style="cursor:pointer">
										<div class="pull-left p-2 oh border-light mt-2 mr-5"><span style="float:left;width:7px;height:7px;" ></span></div>
										<span class="pull-left f-13 c-dark">All</span>
									</li>
								</ul>
								<input type="text" class="border-light pull-left" placeholder="Search">
							</div>
						</div>
						<div class="row">

                            @include('includes.advertising_sub_inc')

							<div class="col-xs-9 s-pad">
								<div class="company-main">
									<ul class="inline-block slogan-list">
										<li data-toggle="modal" data-target="#modModal">
											<div class="head p-10">
												<h5 class="c-white mt-0 f-16 mb-3">Enterprise Bank of the Philippines</h5>
												<h6 class="c-dwhite mt-0 f-10">JC Aquino Avenue, Butuan City Philippines</h6>
											</div>
											<img src="{{asset('img/ads/slogan/one.png')}}" alt="">
											<div class="footer" style="padding:5px 10px">
												<ul class="inline-block">
													<li class="mr-15"><a href="" class="f-12 c-bright-green">Activate</a></li>
													<li class="mr-15"><a href="" class="f-12 c-bright-green">Deactivate</a></li>
													<li class="mr-15"><a href="" class="f-12 c-bright-green">Modify</a></li>
													<li class="pull-right"><span class="f-12 c-bright-green">Status: <a href="" class="c-dark">Activate</a></span></li>
												</ul>
											</div>
										</li>
										<li>
											<div class="head p-10">
												<h5 class="c-white mt-0 f-16 mb-3">Enterprise Bank of the Philippines</h5>
												<h6 class="c-dwhite mt-0 f-10">JC Aquino Avenue, Butuan City Philippines</h6>
											</div>
											<img src="{{asset('img/ads/slogan/two.png')}}" alt="">
											<div class="footer" style="padding:5px 10px">
												<ul class="inline-block">
													<li class="mr-15"><a href="" class="f-12 c-bright-green">Activate</a></li>
													<li class="mr-15"><a href="" class="f-12 c-bright-green">Deactivate</a></li>
													<li class="mr-15"><a href="" class="f-12 c-bright-green">Modify</a></li>
													<li class="pull-right"><span class="f-12 c-bright-green">Status: <a href="" class="c-dark">Activate</a></span></li>
												</ul>
											</div>
										</li>
										<li>
											<div class="head p-10">
												<h5 class="c-white mt-0 f-16 mb-3">Enterprise Bank of the Philippines</h5>
												<h6 class="c-dwhite mt-0 f-10">JC Aquino Avenue, Butuan City Philippines</h6>
											</div>
											<img src="{{asset('img/ads/slogan/three.png')}}" alt="">
											<div class="footer" style="padding:5px 10px">
												<ul class="inline-block">
													<li class="mr-15"><a href="" class="f-12 c-bright-green">Activate</a></li>
													<li class="mr-15"><a href="" class="f-12 c-bright-green">Deactivate</a></li>
													<li class="mr-15"><a href="" class="f-12 c-bright-green">Modify</a></li>
													<li class="pull-right"><span class="f-12 c-bright-green">Status: <a href="" class="c-dark">Activate</a></span></li>
												</ul>
											</div>
										</li>
										<li>
											<div class="head p-10">
												<h5 class="c-white mt-0 f-16 mb-3">Enterprise Bank of the Philippines</h5>
												<h6 class="c-dwhite mt-0 f-10">JC Aquino Avenue, Butuan City Philippines</h6>
											</div>
											<img src="{{asset('img/ads/slogan/four.png')}}" alt="">
											<div class="footer" style="padding:5px 10px">
												<ul class="inline-block">
													<li class="mr-15"><a href="" class="f-12 c-bright-green">Activate</a></li>
													<li class="mr-15"><a href="" class="f-12 c-bright-green">Deactivate</a></li>
													<li class="mr-15"><a href="" class="f-12 c-bright-green">Modify</a></li>
													<li class="pull-right"><span class="f-12 c-bright-green">Status: <a href="" class="c-dark">Activate</a></span></li>
												</ul>
											</div>
										</li>
										<li>
											<div class="head p-10">
												<h5 class="c-white mt-0 f-16 mb-3">Enterprise Bank of the Philippines</h5>
												<h6 class="c-dwhite mt-0 f-10">JC Aquino Avenue, Butuan City Philippines</h6>
											</div>
											<img src="{{asset('img/ads/slogan/one.png')}}" alt="">
											<div class="footer" style="padding:5px 10px">
												<ul class="inline-block">
													<li class="mr-15"><a href="" class="f-12 c-bright-green">Activate</a></li>
													<li class="mr-15"><a href="" class="f-12 c-bright-green">Deactivate</a></li>
													<li class="mr-15"><a href="" class="f-12 c-bright-green">Modify</a></li>
													<li class="pull-right"><span class="f-12 c-bright-green">Status: <a href="" class="c-dark">Activate</a></span></li>
												</ul>
											</div>
										</li>
										<li>
											<div class="head p-10">
												<h5 class="c-white mt-0 f-16 mb-3">Enterprise Bank of the Philippines</h5>
												<h6 class="c-dwhite mt-0 f-10">JC Aquino Avenue, Butuan City Philippines</h6>
											</div>
											<img src="{{asset('img/ads/slogan/two.png')}}" alt="">
											<div class="footer" style="padding:5px 10px">
												<ul class="inline-block">
													<li class="mr-15"><a href="" class="f-12 c-bright-green">Activate</a></li>
													<li class="mr-15"><a href="" class="f-12 c-bright-green">Deactivate</a></li>
													<li class="mr-15"><a href="" class="f-12 c-bright-green">Modify</a></li>
													<li class="pull-right"><span class="f-12 c-bright-green">Status: <a href="" class="c-dark">Activate</a></span></li>
												</ul>
											</div>
										</li>
										<li>
											<div class="head p-10">
												<h5 class="c-white mt-0 f-16 mb-3">Enterprise Bank of the Philippines</h5>
												<h6 class="c-dwhite mt-0 f-10">JC Aquino Avenue, Butuan City Philippines</h6>
											</div>
											<img src="{{asset('img/ads/slogan/three.png')}}" alt="">
											<div class="footer" style="padding:5px 10px">
												<ul class="inline-block">
													<li class="mr-15"><a href="" class="f-12 c-bright-green">Activate</a></li>
													<li class="mr-15"><a href="" class="f-12 c-bright-green">Deactivate</a></li>
													<li class="mr-15"><a href="" class="f-12 c-bright-green">Modify</a></li>
													<li class="pull-right"><span class="f-12 c-bright-green">Status: <a href="" class="c-dark">Activate</a></span></li>
												</ul>
											</div>
										</li>
										<li>
											<div class="head p-10">
												<h5 class="c-white mt-0 f-16 mb-3">Enterprise Bank of the Philippines</h5>
												<h6 class="c-dwhite mt-0 f-10">JC Aquino Avenue, Butuan City Philippines</h6>
											</div>
											<img src="{{asset('img/ads/slogan/four.png')}}" alt="">
											<div class="footer" style="padding:5px 10px">
												<ul class="inline-block">
													<li class="mr-15"><a href="" class="f-12 c-bright-green">Activate</a></li>
													<li class="mr-15"><a href="" class="f-12 c-bright-green">Deactivate</a></li>
													<li class="mr-15"><a href="" class="f-12 c-bright-green">Modify</a></li>
													<li class="pull-right"><span class="f-12 c-bright-green">Status: <a href="" class="c-dark">Activate</a></span></li>
												</ul>
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
	</div>
    
@stop