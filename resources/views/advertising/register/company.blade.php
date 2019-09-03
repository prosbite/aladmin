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
							
						</div>
						<div class="row">

                            @include('includes.advertising_sub_inc')

							<div class="col-xs-9 s-pad">
								<div class="company-main">
									<ul>
										<li class="oh border-bot ptb-10">
											<div class="pull-left ads-company-logo mr-10">
												<img src="../images/eblogo.png" alt="" style="max-height:60px;max-width:75px;">
											</div>
											<div class="pull-left" style="margin-top:10px;">
												<div class="pull-left mr-45 c-dark">
													<h4 class="f-16 mb-3 mt-0 c-bright-green" style="width:250px;">Enterprises Bank of the Philippines</h4>
													<div class="f-10">
														<span>JC Aquino Avenue, Butuan City</span>
													</div>
												</div>
												<button class="mr-24 btn-admin c-bright-green">Active</button>
												<button button class="mr-24 btn-admin c-bright-green">Deactivate</button>
												<button button class="mr-24 btn-admin c-bright-green">Modify</button>
											</div>
										</li>
										<li class="oh border-bot ptb-10">
											<div class="pull-left ads-company-logo mr-10">
												<img src="../images/delllogo.png" alt="" style="max-height:60px;max-width:75px;">
											</div>
											<div class="pull-left" style="margin-top:10px;">
												<div class="pull-left mr-45 c-dark">
													<h4 class="f-16 mb-3 mt-0 c-bright-green" style="width:250px;">DELL Philippines</h4>
													<div class="f-10">
														<span>JC Aquino Avenue, Butuan City</span>
													</div>
												</div>
												<button class="mr-24 btn-admin c-bright-green">Active</button>
												<button button class="mr-24 btn-admin c-bright-green">Deactivate</button>
												<button button class="mr-24 btn-admin c-bright-green">Modify</button>
											</div>
										</li>
										<li class="oh border-bot ptb-10">
											<div class="pull-left ads-company-logo mr-10">
												<img src="../images/ibmlogo.png" alt="" style="max-height:60px;max-width:75px;">
											</div>
											<div class="pull-left" style="margin-top:10px;">
												<div class="pull-left mr-45 c-dark">
													<h4 class="f-16 mb-3 mt-0 c-bright-green" style="width:250px;">IBM Philippines</h4>
													<div class="f-10">
														<span>JC Aquino Avenue, Butuan City</span>
													</div>
												</div>
												<button class="mr-24 btn-admin c-bright-green">Active</button>
												<button button class="mr-24 btn-admin c-bright-green">Deactivate</button>
												<button button class="mr-24 btn-admin c-bright-green">Modify</button>
											</div>
										</li>
										<li class="oh border-bot ptb-10">
											<div class="pull-left ads-company-logo mr-10">
												<img src="../images/mitlogo.png" alt="" style="max-height:60px;max-width:75px;">
											</div>
											<div class="pull-left" style="margin-top:10px;">
												<div class="pull-left mr-45 c-dark">
													<h4 class="f-16 mb-3 mt-0 c-bright-green" style="width:250px;">Mittal Solutions</h4>
													<div class="f-10">
														<span>JC Aquino Avenue, Butuan City</span>
													</div>
												</div>
												<button class="mr-24 btn-admin c-bright-green">Active</button>
												<button button class="mr-24 btn-admin c-bright-green">Deactivate</button>
												<button button class="mr-24 btn-admin c-bright-green">Modify</button>
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