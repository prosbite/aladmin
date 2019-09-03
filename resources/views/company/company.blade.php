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
                            </div>
							
							<div class="col-xs-9 s-pad">
								<div class="company-main">
									<div class="head border-bot oh mb-15">
										<img src="{{asset('img/azurelogo.png')}}" alt="" class="pull-left mr-10 mb-15">
										<h4 class="mt-0">{{$company->company_name}}</h4>
										<h6 class="mt-3 mb-5">{{$company->address}}</h6>
										<label for="" class="mb-0 c-bright-green">Contact Information</label>
										<ul class="contact-info pl-10 oh c-sdark">
											<li>Tel#: 342-4542</li>
											<li>Mobile#: {{$company->contact}}</li>
											<li>Email: {{$company->email}}</li>
										</ul>
									</div>
									<div class="body c-sdark f-14" style="padding-right:15px;">
										<p class="lh-17">{{$company->company_information}}</p><br>
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
@stop