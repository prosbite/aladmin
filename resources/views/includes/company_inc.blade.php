<div class="col-xs-2 s-pad">
    <div class="bg-white admin-left-pane" style="padding:0 15px;">
        <ul class="f-12">
            <li class="{{ $crumbs[1] == 'visitor' ? 'active':''}}"><a href="{{Route('company.visitor')}}" class="c-bright-green">Visitor</a></li>
            <!-- <li class="{{ $crumbs[1] == 'company' ? 'active':''}}"><a href="{{Route('company.company')}}" class="c-bright-green">Company</a></li> -->
            <li class="{{ $crumbs[1] == 'updates' ? 'active':''}}"><a href="{{Route('company.updates')}}" class="c-bright-green">Updates Monitor</a></li>
        </ul>
    </div>
</div>