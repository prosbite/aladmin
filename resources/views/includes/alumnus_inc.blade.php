<div class="col-xs-2 s-pad">
    <div class="bg-white admin-left-pane" style="padding:0 15px;">
        <ul class="f-12">
            <li class="{{ $crumbs[1] == 'portal' ? 'active':''}}"><a href="{{Route('alumnus.home')}}" class="c-bright-green">Alumnus Administrator Portal</a></li>
            <li><a href="" class="c-bright-green">Resume Settings</a></li>
            <li class="{{ $crumbs[1] == 'updates' ? 'active':''}}"><a href="{{Route('alumnus.updates')}}" class="c-bright-green">Updates Monitor</a></li>
        </ul>
    </div>
</div>