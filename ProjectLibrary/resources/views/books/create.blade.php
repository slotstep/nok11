<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Create Data</title>
</head>
<body>
    <div class="container mt-2">
        <div class="row">
            <div class="col-lg-12 mt-2 text-center" >
                <h2>Create Data</h2>
            </div>
            <div>
                <a href="{{ route('admin.home') }}" class="btn btn-success">Back</a>
            </div> 
            @if (session('status'))
            <div class="alert alert-success">
                {{ session('status') }}

            </div>
            @endif
            <form action="{{ route('books.store') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group mt-3">
                        <strong>Book Name</strong>
                        <input type="text" name="name" class="form-control" placeholder="Book Name">
                        @error('name')
                        <div class="alert alert-danger"> {{ $message }}</div>
                        @enderror
                    </div>
                    </div>
                <div class="col-md-12">
                    <div class="form-group mt-3">
                        <strong>Author</strong>
                        <input type="text" name="author" class="form-control" placeholder="Author Name">
                        @error('name')
                        <div class="alert alert-danger"> {{ $message }}</div>
                        @enderror
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group mt-3">
                        <strong>Publisher</strong>
                        <input type="text" name="publisher" class="form-control" placeholder="Publisher Name">
                        @error('name')
                        <div class="alert alert-danger"> {{ $message }}</div>
                        @enderror
                    </div>
                    </div>
                    <div class="col-md-12">
                <button type="submit" class="btn btn-primary mt-3">Submit</button>
                    </div>
            </div>
            </div>

            </form> 
        </div>
    </div>

    
</body>
</html>