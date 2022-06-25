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
            <table class="table m-0">
                <thead>
                <tr>
                    <th class="text-center">شناسه سفارش</th>
                    <th class="text-center">مقدار</th>
                    <th class="text-center">وضعیت</th>
                </tr>
                </thead>
                <tbody>
                @foreach($orders as $order)
                    <tr>
                        <td class="text-center"><a href="{{route('profile.orders.lists',$order->id)}}">{{$order->id}}</a></td>
                        <td class="text-center">{{$order->amount}}</td>
                        <td class="text-center">
                            @if($order->status ===0)
                                <span class="badge badge-danger">پرداخت نشده</span>
                            @else
                                <span class="badge badge-success">پرداخت شده</span>
                            @endif
                        </td>
                    </tr>

                @endforeach
                </tbody>
            </table>
            {{$orders->links()}}
        </div>
        <!--Middle Part End -->
        <!--Right Part Start -->
        <!--Right Part End -->
    </div>
@endsection
