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

								 <jobpost-list @set-job-post="jobPost($event)" company="{{$company->company_id}}" id="jobsposted"></jobpost-list>

							</div>
							<div class="col-xs-9 s-pad">
								<div class="company-main">
									<job-applicants :job_post="jobsPosted.current"></job-applicants>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
@stop