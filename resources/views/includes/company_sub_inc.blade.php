
    <div class="bg-white company-left-inner-pane">
        <ul class="f-12">
            <li class="{{ $crumbs[2] == 'overview' ? 'active':''}}"><a href="{{Route('company.company.overview',['id'=>$c_id])}}" class="c-bright-green"><i class="fa fa-bank fa-fw mr-5"></i> Business Overview</a></li>
            <li class="{{ $crumbs[2] == 'address' ? 'active':''}}"><a href="{{Route('company.company.address',['id'=>$c_id])}}" class="c-bright-green"><i class="fa fa-map-marker fa-fw mr-5 f-14"></i> Address</a></li>
            <li class="{{ $crumbs[2] == 'mission' ? 'active':''}}"><a href="{{Route('company.company.mission',['id'=>$c_id])}}" class="c-bright-green"><i class="fa fa-cubes fa-fw mr-5"></i> Mission, Vision, Goals</a></li>
            <li class="{{ $crumbs[2] == 'jobpost' ? 'active':''}}"><a href="{{Route('company.company.jobpost',['id'=>$c_id])}}" class="c-bright-green"><i class="fa fa-briefcase fa-fw mr-5"></i> Job Posts</a></li>
            <li class="{{ $crumbs[2] == 'applicants' ? 'active':''}}"><a href="{{Route('company.company.applicants',['id'=>$c_id])}}" class="c-bright-green"><i class="fa fa-group fa-fw mr-5"></i> Applicants/Invites</a></li>
        </ul>
    </div>
