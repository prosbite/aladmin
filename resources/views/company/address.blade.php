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
										<p class="lh-17">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem nostrum sapiente perspiciatis ea unde architecto. Tempora accusantium quis atque error autem repudiandae, illum, ipsam laudantium eaque sit possimus. Saepe, eligendi. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque modi voluptatibus officia ipsam quos laboriosam vitae assumenda fugiat quo voluptatum, in sunt, voluptas quaerat illo laborum! Similique, rem veritatis rerum. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero veritatis, quis nostrum. Magnam animi corrupti voluptates, asperiores commodi id explicabo! Ad quisquam molestiae doloribus nihil repellendus deleniti aliquid consequatur earum!</p><br>

										<p class="lh-17">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quidem nostrum sapiente perspiciatis ea unde architecto. Tempora accusantium quis atque error autem repudiandae, illum, ipsam laudantium eaque sit possimus. Saepe, eligendi. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque modi voluptatibus officia ipsam quos laboriosam vitae assumenda fugiat quo voluptatum, in sunt, voluptas quaerat illo laborum! Similique, rem veritatis rerum. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero veritatis, quis nostrum. Magnam animi corrupti voluptates, asperiores commodi id explicabo! Ad quisquam molestiae doloribus nihil repellendus deleniti aliquid consequatur earum!</p><br>

										<div id="googleMap" style="width:100%;height:400px;" class="mb-15"></div>

									</div>
									<div class="footer">
										<a href="" class="c-bright-green f-12 mr-15">Fernandez Village, Butuan City Agusan del Norte 8600</a>
										<a href="" class="c-bright-green f-12">Philippines</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
    </div>


	@section('js')

	<script>
		function myMap() {
		var mapProp= {
			center:new google.maps.LatLng(8.940366299999999, 125.51579170000002),
			zoom:15,
		};
		var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
		}
	</script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDxXg0aQhrnee_xVc80byQSbtJ2hElwoEA&callback=myMap"></script>

	@stop

	
    
@stop