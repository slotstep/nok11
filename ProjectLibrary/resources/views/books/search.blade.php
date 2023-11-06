@extends('layouts.app')

@section('content')
<div class="container">
    <h2>ผลลัพธ์ค้นหาสำหรับ "{{ $query }}"</h2>

    <table class="table">
        <thead>
            <tr>
                <th>No.</th>
                <th>Book Name</th>
                <th>Author</th>
                <th>Publisher</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($books as $book)
                <tr>
                    <td>{{ $book->id }}</td>
                    <td>{{ $book->name }}</td>
                    <td>{{ $book->author }}</td>
                    <td>{{ $book->publisher }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
@endsection