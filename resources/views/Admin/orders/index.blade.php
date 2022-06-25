@extends('Admin.layouts.master')
@section('content')

    @if(Session::has('success'))
        <div class="alert alert-success">
            <div>{{session('success')}}</div>
        </div>
    @endif
    @include('Admin.partials.form-errors')
    <div class="card">
        <div class="card-header border-transparent">
            <h3 class="card-title "> سفارشات</h3>

        </div>
        <!-- /.card-header -->
        <div class="card-body p-0" style="display: block;">
            <div class="table-responsive">
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
                            <td class="text-center"><a href="{{route('orders.lists',$order->id)}}">{{$order->id}}</a></td>
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
            </div>
            <!-- /.table-responsive -->
        </div>
        <!-- /.card-body -->
        <div class="card-footer clearfix">
            {{$orders->links()}}
        </div>
        <!-- /.card-footer -->
    </div>
@endsection
@section('scripts')
    <script src="{{asset('js/admin-app.js')}}"></script>
@endsection
