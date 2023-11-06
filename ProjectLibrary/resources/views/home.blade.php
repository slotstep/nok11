@extends('layouts.app')

@section('content')
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>ยินดีต้อนรับเข้าสู่ระบบ</title>
</head>
<body>
    <div class="container mt-2">
        <div class="row">
            <div class="col-lg-12 mt-2 text-center">
                <h2>Welcome to Library</h2>
            </div>
    @if ($message = Session::get('success'))
    <div class="alert alert-success">
        <p>{{ $message }}</p>
    </div>
    @endif
    <div class="mt-3 text-center">
        <form action="{{ route('search') }}" method="GET">
            <div class="input-group mb-3">
                <input type="text" class="form-control" name="query" placeholder="ค้นหาหนังสือ" aria-label="Recipient's username" aria-describedby="button-addon2">
                <button class="btn btn-outline-secondary" type="submit" id="button-addon2">ค้นหา</button>
            </div>
        </form>
    </div>
    <table class="table table-bordered mt-2">
        <tr>
            <th>No.</th>
            <th>Book Name</th>
            <th>Author</th>
            <th>Publisher</th>
            <th width="280px">Action</th>
        </tr>
        @foreach($books as $book)
        <tr onclick="getBookID(this)">
            <td>{{ $book->id }}</td>
            <td>{{ $book->name }}</td>
            <td>{{ $book->author }}</td>
            <td>{{ $book->publisher }}</td>
            <td>
                <div style="display: flex;">
                <!-- แบบฟอร์มสำหรับยืมหนังสือ -->
                <form action="{{ route('borrow') }}" method="POST">
                    @csrf
                    <input type="hidden" name="bookID" value="{{ $book->id }}">
                    <button type="submit" class="btn btn-success border border-2">ยืมหนังสือ</button>
                </form>

                <!-- แบบฟอร์มสำหรับคืนหนังสือ -->
                <form action="{{ route('returnbook') }}" method="POST">
                    @csrf
                    <input type="hidden" name="bookID" value="{{ $book->id }}">
                    <button type="submit" class="btn btn-primary border border-2">คืนหนังสือ</button>
                </form>
                </div>
            </td>
        </tr>
        @endforeach
    </table>
    {!! $books->links('pagination::bootstrap-5') !!}
</div>
</div>
</body>
</html>
@endsection
