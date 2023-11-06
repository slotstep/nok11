<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

</head>
<body>
    <div class="container mt-4">
    <div class="col-lg-12 mt-2 text-center">
        <h1>ประวัติการยืม</h1>  
    </div>
    <table class="table table-bordered mt-2 text-center" >
        <thead>
            <tr>
                <th>User ID</th>
                <th>Book ID</th>
                <th>Borrowed Date</th>
                <th>Returned Date</th>
            </tr>
        </thead>
        <tbody>
            @foreach($borrowings as $borrowing)
            <tr>
                <td>{{ $borrowing->user_id }}</td>
                <td>{{ $borrowing->book_id }}</td>
                <td>{{ $borrowing->borrowed_date }}</td>
                <td>{{ $borrowing->returned_date }}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
    {!! $borrowings->links('pagination::bootstrap-5') !!}
    </div>
</body>
</html>