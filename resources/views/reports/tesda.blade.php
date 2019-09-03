@extends('app')


@section('main_content')



    <div class="main-content">
		<div class="container" style="min-height: 500px;">
			<div class="row">
				<div class="col-xs-2 s-pad">
					@include('includes/reports_inc')
				</div>

				<div class="col-xs-10 s-pad">
					<div class="admin-content bg-white">
						<div class="head">
							<div class="head oh border-bot mb-10">
								<h4 class="pull-left c-bright-green normal">Tesda Report Portal </h4>
								<input type="text" placeholder="Search" class="border-light pull-right">
							</div>
							<div>
								<div class="tesda-report-h1 pull-left mr-7">
									<span class="c-white f-14 mr-10">Short Courses</span>
									<input type="text">
								</div>
								<div class="tesda-report-h2 pull-left">
									<input type="text" class="mr-5">
									<input type="text">
								</div>
							</div>
						</div>
						<div class="tesda-body">
							<table class="table c-sdark">
								<tbody>
									<tr>
										<td>1yr Basic Course Interior Design</td>
										<td>Marta Lynch</td>
										<td>200540221</td>
										<td>(+63)9095856254</td>
										<td>(+63)9095856254</td>
									</tr>
									<tr>
										<td>1yr Advance Course Interior Design</td>
										<td>Marta Lynch</td>
										<td>200540221</td>
										<td>(+63)9095856254</td>
										<td>(+63)9095856254</td>
									</tr>
									<tr>
										<td>1yr Associate Degree in Animation</td>
										<td>Marta Lynch</td>
										<td>200540221</td>
										<td>(+63)9095856254</td>
										<td>(+63)9095856254</td>
									</tr>
									<tr>
										<td>100 Hours Caretaker Course</td>
										<td>Marta Lynch</td>
										<td>200540221</td>
										<td>(+63)9095856254</td>
										<td>(+63)9095856254</td>
									</tr>
									<tr>
										<td>60 Hours Nihonggo Language Course</td>
										<td>Marta Lynch</td>
										<td>200540221</td>
										<td>(+63)9095856254</td>
										<td>(+63)9095856254</td>
									</tr>
									<tr>
										<td>2 Days Gallery and Provision Management Course</td>
										<td>Marta Lynch</td>
										<td>200540221</td>
										<td>(+63)9095856254</td>
										<td>(+63)9095856254</td>
									</tr>
									<tr>
										<td>2 Year Dip Computer Based Accountancy</td>
										<td>Marta Lynch</td>
										<td>200540221</td>
										<td>(+63)9095856254</td>
										<td>(+63)9095856254</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	
	
	<!-- ::::::::::::::::::::::::::::::::::::::::::::::::::::::: MODALS AND ALERTS ::::::::::::::::::::::::::::::::::::::: -->


	<div id="accountModal" class="modal fade" role="dialog">
		<div class="modal-dialog modal-sm smx">
		    <!-- Modal content-->
		    <div class="modal-content box-edge">
				<div class="modal-body p-25 oh">
					<h5 class="f-13 c-dark mt-0 mb-5">User Account</h5>
					<h2 class="c-bright-green mt-0 f-24 mb-3">AZURE Mindstream Company Incorporated</h2>
					<h5 class="f-13 c-dark mt-0 mb-24">Los Angeles California, USA</h5>
					

					<ul class="inline-block mb-15">
						<li class="mb-7 block">
							<h6 class="mt-0 f-12 c-sdark mb-3">Username</h6>
							<input type="text" class="border-light block">
						</li>
						<li class="mb-7 block">
							<h6 class="mt-0 f-12 c-sdark mb-3">Password</h6>
							<input type="text" class="border-light block">
						</li>
					</ul>
					<button class="btn btn-success btn-prime box-edge pull-right">Save</button>
				</div>
		  	</div>
		</div>
	</div>
    
@stop