@extends('app')


@section('main_content')

    <div class="main-content">
		<div class="container" style="min-height: 500px;">
			<div class="row">
                 @include('includes.company_inc')

				<div class="col-xs-10 s-pad">
					<div class="admin-content bg-white">
						<div class="head oh border-bot mb-10">
							<h4 class="pull-left c-bright-green normal">Company</h4>
							
						</div>
						<div class="row">
							<div class="col-xs-3 s-pad" style="padding-left:15px!important;">
                                 @include('includes.company_sub_inc')

								<div class="company-left-inner-pane2">
									<h5 class="c-bright-green" style="border-bottom: 1px solid #e3e3d7;">Jobs</h5>
									<ul>
										<li class="active">
											<h5 class="mt-0"><a href="" class="c-bright-green">Database Administrator</a></h5>
											<p class="no-margin f-10 c-bright-green">Date Posted: <span class="c-sdark">12/01/2017</span></p>
										</li>
										<li>
											<h5 class="mt-0"><a href="" class="c-bright-green">Application Support Analyst</a></h5>
											<p class="no-margin f-10 c-bright-green">Date Posted: <span class="c-sdark">12/01/2017</span></p>
										</li>
										<li>
											<h5 class="mt-0"><a href="" class="c-bright-green">Applications Engineer</a></h5>
											<p class="no-margin f-10 c-bright-green">Date Posted: <span class="c-sdark">12/01/2017</span></p>
										</li>
										<li>
											<h5 class="mt-0"><a href="" class="c-bright-green">Technical Support</a></h5>
											<p class="no-margin f-10 c-bright-green">Date Posted: <span class="c-sdark">12/01/2017</span></p>
										</li>
										<li>
											<h5 class="mt-0"><a href="" class="c-bright-green">Associate Developer</a></h5>
											<p class="no-margin f-10 c-bright-green">Date Posted: <span class="c-sdark">12/01/2017</span></p>
										</li>
									</ul>
								</div>
							</div>
							<div class="col-xs-9 s-pad">
								<div class="company-main">
									<ul class="border-bot">
										<li class="oh mb-24">
											<img src="{{asset('img/batchmates/dale.png')}}" alt="" class="pull-left mr-15">
											<div>
												<h4>Dale B. Blanco</h4>
												<h5 class="mt-3 c-bright-green">Graduate: <span class="c-sdark">Bachelor of Science in Computer Science</span></h5>
												<h6 class="mt-3 c-sdark">Batch 2014-2015</h6>
												<h6 class="mt-3 c-sdark">Date Graduated: March 30, 2015</h6>
												<div style="width:500px;margin-top:24px;">
													<a href="" class="pull-left f-11 c-bright-green">View Full Information</a>
													<a href="" class="pull-right f-11 c-bright-green">Hired</a>
												</div>
											</div>
										</li>
										<li class="oh mb-24">
											<img src="{{asset('img/batchmates/don.png')}}" alt="" class="pull-left mr-15">
											<div>
												<h4>Don J. Del Rosario</h4>
												<h5 class="mt-3 c-bright-green">Graduate: <span class="c-sdark">Bachelor of Science in Computer Science</span></h5>
												<h6 class="mt-3 c-sdark">Batch 2014-2015</h6>
												<h6 class="mt-3 c-sdark">Date Graduated: March 30, 2015</h6>
												<div style="width:500px;margin-top:24px;">
													<a href="" class="pull-left f-11 c-bright-green">View Full Information</a>
													<a href="" class="pull-right f-11 c-orange">Not Hired</a>
												</div>
											</div>
										</li>
										<li class="oh mb-24">
											<img src="{{asset('img/batchmates/gian.png')}}" alt="" class="pull-left mr-15">
											<div>
												<h4>Gian G. Anduyan</h4>
												<h5 class="mt-3 c-bright-green">Graduate: <span class="c-sdark">Bachelor of Science in Computer Science</span></h5>
												<h6 class="mt-3 c-sdark">Batch 2014-2015</h6>
												<h6 class="mt-3 c-sdark">Date Graduated: March 30, 2015</h6>
												<div style="width:500px;margin-top:24px;">
													<a href="" class="pull-left f-11 c-bright-green">View Full Information</a>
													<a href="" class="pull-right f-11 c-orange">Not Hired</a>
												</div>
											</div>
										</li>
										<li class="oh mb-24">
											<img src="{{asset('img/batchmates/chris.png')}}" alt="" class="pull-left mr-15">
											<div>
												<h4>Chris B. Olivo</h4>
												<h5 class="mt-3 c-bright-green">Graduate: <span class="c-sdark">Bachelor of Science in Computer Science</span></h5>
												<h6 class="mt-3 c-sdark">Batch 2014-2015</h6>
												<h6 class="mt-3 c-sdark">Date Graduated: March 30, 2015</h6>
												<div style="width:500px;margin-top:24px;">
													<a href="" class="pull-left f-11 c-bright-green">View Full Information</a>
													<a href="" class="pull-right f-11 c-bright-green">Hired</a>
												</div>
											</div>
										</li>
										<li class="oh mb-24">
											<img src="{{asset('img/batchmates/naks.png')}}" alt="" class="pull-left mr-15">
											<div>
												<h4>Karl Irvin B. Monteadora</h4>
												<h5 class="mt-3 c-bright-green">Graduate: <span class="c-sdark">Bachelor of Science in Computer Science</span></h5>
												<h6 class="mt-3 c-sdark">Batch 2014-2015</h6>
												<h6 class="mt-3 c-sdark">Date Graduated: March 30, 2015</h6>
												<div style="width:500px;margin-top:24px;">
													<a href="" class="pull-left f-11 c-bright-green">View Full Information</a>
													<a href="" class="pull-right f-11 c-orange">Not Hired</a>
												</div>
											</div>
										</li>
										<li class="oh mb-24">
											<img src="{{asset('img/batchmates/yoyo.png')}}" alt="" class="pull-left mr-15">
											<div>
												<h4>Bryan Jecie P. Bahala</h4>
												<h5 class="mt-3 c-bright-green">Graduate: <span class="c-sdark">Bachelor of Science in Computer Science</span></h5>
												<h6 class="mt-3 c-sdark">Batch 2014-2015</h6>
												<h6 class="mt-3 c-sdark">Date Graduated: March 30, 2015</h6>
												<div style="width:500px;margin-top:24px;">
													<a href="" class="pull-left f-11 c-bright-green">View Full Information</a>
													<a href="" class="pull-right f-11 c-bright-green">Hired</a>
												</div>
											</div>
										</li>
										<li class="oh mb-24">
											<img src="{{asset('img/batchmates/ryan.png')}}" alt="" class="pull-left mr-15">
											<div>
												<h4>Ryan M. Pastoriza</h4>
												<h5 class="mt-3 c-bright-green">Graduate: <span class="c-sdark">Bachelor of Science in Computer Science</span></h5>
												<h6 class="mt-3 c-sdark">Batch 2014-2015</h6>
												<h6 class="mt-3 c-sdark">Date Graduated: March 30, 2015</h6>
												<div style="width:500px;margin-top:24px;">
													<a href="" class="pull-left f-11 c-bright-green">View Full Information</a>
													<a href="" class="pull-right f-11 c-orange">Not Hired</a>
												</div>
											</div>
										</li>
										<li class="oh mb-24">
											<img src="{{asset('img/batchmates/leo.png')}}" alt="" class="pull-left mr-15">
											<div>
												<h4>Leonardo L. Empuesto</h4>
												<h5 class="mt-3 c-bright-green">Graduate: <span class="c-sdark">Bachelor of Science in Computer Science</span></h5>
												<h6 class="mt-3 c-sdark">Batch 2014-2015</h6>
												<h6 class="mt-3 c-sdark">Date Graduated: March 30, 2015</h6>
												<div style="width:500px;margin-top:24px;">
													<a href="" class="pull-left f-11 c-bright-green">View Full Information</a>
													<a href="" class="pull-right f-11 c-bright-green">Hired</a>
												</div>
											</div>
										</li>
										<li class="oh mb-24">
											<img src="{{asset('img/batchmates/rustom.png')}}" alt="" class="pull-left mr-15">
											<div>
												<h4>Rustom C. Pedales</h4>
												<h5 class="mt-3 c-bright-green">Graduate: <span class="c-sdark">Bachelor of Science in Computer Science</span></h5>
												<h6 class="mt-3 c-sdark">Batch 2014-2015</h6>
												<h6 class="mt-3 c-sdark">Date Graduated: March 30, 2015</h6>
												<div style="width:500px;margin-top:24px;">
													<a href="" class="pull-left f-11 c-bright-green">View Full Information</a>
													<a href="" class="pull-right f-11 c-bright-green">Hired</a>
												</div>
											</div>
										</li>
										<li class="oh mb-15">
											<img src="{{asset('img/batchmates/kate.png')}}" alt="" class="pull-left mr-15">
											<div>
												<h4>Karen Kate B. Seronay</h4>
												<h5 class="mt-3 c-bright-green">Graduate: <span class="c-sdark">Bachelor of Science in Computer Science</span></h5>
												<h6 class="mt-3 c-sdark">Batch 2014-2015</h6>
												<h6 class="mt-3 c-sdark">Date Graduated: March 30, 2015</h6>
												<div style="width:500px;margin-top:24px;">
													<a href="" class="pull-left f-11 c-bright-green">View Full Information</a>
													<a href="" class="pull-right f-11 c-bright-green">Hired</a>
												</div>
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