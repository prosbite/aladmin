@extends('app')


@section('main_content')

<div class="main-content" id="app">
    <div class="container" style="min-height: 500px;">
        <div class="row">
           
            @include('includes.alumnus_inc')
            
            <alumnus-component></alumnus-component>

        </div>
    </div>
</div>

@stop


@section('js')


<script>
   
</script>


@stop