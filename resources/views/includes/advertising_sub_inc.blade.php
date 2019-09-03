<div class="col-xs-3 s-pad" style="padding-left:15px!important;">
    <div class="bg-white company-left-inner-pane">
        <ul class="f-12">
            <li class="{{ $crumbs[2] == 'company' ? 'active':''}}"><a href="{{Route('advertising.register.company')}}" class="c-bright-green"><i class="fa fa-bank fa-fw mr-5"></i> Company</a></li>
            <li class="{{ $crumbs[2] == 'products' ? 'active':''}}"><a href="{{Route('advertising.register.products')}}" class="c-bright-green"><i class="fa fa-gift fa-fw mr-5"></i> Products / Services</a></li>
            <li class="{{ $crumbs[2] == 'others' ? 'active':''}}"><a href="{{Route('advertising.register.company')}}" class="c-bright-green"><i class="fa fa-ellipsis-v fa-fw mr-5"></i> Others</a></li>
        </ul>
    </div>
</div>