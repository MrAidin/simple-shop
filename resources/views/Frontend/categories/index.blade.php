@extends('Frontend.layout.master')
@section('content')
    <div class="container" id="app">
        <div class="row">
            <product-component :category="{{$category}}"></product-component>
        </div>
    </div>

    <!--Middle Part End -->

    </div>
@endsection

@section('app-js')
    <script src="{{asset('js/front-app.js')}}"></script>
@endsection
