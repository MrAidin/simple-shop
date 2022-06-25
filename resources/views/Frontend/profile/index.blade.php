@extends('Frontend.layout.master')

@section('content')
    <div class="row">
        <!--Middle Part Start-->
        <aside id="column-right" class="col-sm-3 hidden-xs">
            <h3 class="subtitle">حساب کاربری</h3>
            <div class="list-group">
                <ul class="list-item">

                    <li><a href="{{route('profile.orders')}}">تاریخچه سفارشات</a></li>

                </ul>
            </div>
        </aside>


        @if(Session::has('warning'))
            <div class="alert alert-warning">
                <div>{{session('warning')}}</div>
            </div>
        @endif
        @if(Session::has('success'))
            <div class="alert alert-success">
                <div>{{session('success')}}</div>
            </div>
        @endif
        <div id="content" class="col-sm-9">
            <div class="alert alert-success">
                <p>{{$user->name.' '.$user->last_name}}به حساب کاربری خود خوش آمدید</p>
            </div>
        </div>
        <!--Middle Part End -->
        <!--Right Part Start -->
        <!--Right Part End -->
    </div>
@endsection
