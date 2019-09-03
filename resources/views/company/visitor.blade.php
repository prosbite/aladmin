@extends('app')


@section('main_content')
<div class="main-content" id="app">
    <div class="container" style="min-height: 500px;">
        <div class="row">
           
           @include('includes.company_inc')

            <company-visitor></company-visitor>
        </div>
    </div>
</div> 
@stop