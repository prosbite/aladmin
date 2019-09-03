<div class="bg-white admin-left-pane" style="padding:0 15px;">
    <ul class="f-12">
        <li class="{{ $crumbs[1] == 'admin' ? 'active':''}}"><a href="{{Route('account.admin')}}" class="c-bright-green">System Administrator</a></li>
        <li class="{{ $crumbs[1] == 'alumnus' ? 'active':''}}"><a href="{{Route('account.alumnus')}}" class="c-bright-green">Alumnus</a></li>
        <li class="{{ $crumbs[1] == 'partners' ? 'active':''}}"><a href="{{Route('account.partners')}}" class="c-bright-green">Partners</a></li>
    </ul>
</div>