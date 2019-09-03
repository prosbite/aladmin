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

								<jobpost-list company="{{$company->company_id}}"></jobpost-list>
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
									<div class="body c-sdark f-14 mb-15" style="padding-right:15px;">
										<div class="oh mb-5">
											<h5 class="c-bright-green f-18 mt-0 pull-left">Database Administrator</h5>
											<span class="c-bright-green f-11 pull-right">May 28, 2017 &nbsp;&nbsp; <span>9:06 AM</span></span>
										</div>

										<p class="f-13 lh-17 mb-24">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore voluptatibus, in perferendis, iusto debitis rerum dolorum quia voluptatem saepe atque commodi neque. Eius odio quas praesentium iste voluptatem, sapiente quaerat. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam dicta sapiente, deleniti rem magni illum commodi voluptas unde velit laudantium. Saepe quia et unde dolorum hic aut iste ea recusandae. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa adipisci repellendus autem ullam, eaque, reiciendis temporibus suscipit laboriosam consequatur nam magnam inventore natus distinctio. Repellat eos, atque possimus officia quisquam.</p>
										

										<h5 class="c-bright-green mb-5 bold">Skill Requirements</h5>
										<p class="f-13 lh-17 mb-24">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore voluptatibus, in perferendis, iusto debitis rerum dolorum quia voluptatem saepe atque commodi neque. Eius odio quas praesentium iste voluptatem, sapiente quaerat. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quibusdam dicta sapiente, deleniti rem magni illum commodi voluptas unde velit laudantium. Saepe quia et unde dolorum hic aut iste ea recusandae.</p>

										<h5 class="c-bright-green mb-5 bold">Educational Requirements</h5>
										<p class="f-13 lh-17 mb-24">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore voluptatibus, in perferendis, iusto debitis rerum dolorum quia voluptatem saepe atque commodi neque. Eius odio quas praesentium iste voluptatem, sapiente quaerat. </p>

										<h5 class="c-bright-green mb-5 bold">Years of Experience</h5>
										<p class="f-13 lh-17 mb-24">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore voluptatibus, in perferendis, iusto debitis rerum dolorum quia voluptatem saepe atque commodi neque. Eius odio quas praesentium iste voluptatem, sapiente quaerat. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia commodi sint doloremque. Placeat quos consequuntur perferendis possimus modi, omnis dolor sequi facere recusandae! Enim cupiditate, ullam explicabo odio, quibusdam veritatis.</p>


										<div style="background-color:#008C8C;padding:0px 15px;" class="oh">
											<span style="color:#FFF;font-size:45px;" class="pull-left mr-5">P</span>
											<div class="mt-10">
												<span class="c-white f-12">Salary</span>
												<p class="c-white no-border f-18">30,000.00 - 50,000.00/Month</p>
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
	</div>
    
@stop