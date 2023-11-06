<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Book;
use App\Models\Borrowing;
use App\Models\User;

class APIBookController extends Controller {

    public function index()
    {
        $books = Book::all();
        return response()->json($books);
    }

    public function store(Request $request)
    {
        $book = new Book;
        $book->name = $request->name;
        $book->author = $request->author;
        $book->publisher = $request->publisher;
        $book->save();
        return response()->json($book);
    }

     public function show($id)
     {
         $book = Book::find($id);
         return response()->json($book);
     }
    public function update(Request $request, $id)
    {
        $book = Book::find($id);

        if (!$book) {
        return response()->json(['message' => 'Book not found']);
    }
            $book->name = $request->name;
            $book->author = $request->author;
            $book->publisher = $request->publisher;
            $book->save();

            return response()->json($book);
    }

    public function destroy($id)
    {

        $book = Book::find($id);
        $book->delete();
        return response()->json(['message' => 'Book deleted']);
    }

    public function search($query)
    {

        $books = Book::where('id', 'like', '%'.$query.'%')
                        ->orWhere('name','like', '%'.$query.'%')
                        ->orWhere('author','like', '%'.$query.'%')
                        ->orWhere('publisher','like', '%'.$query.'%')
                        ->get();

        return response()->json($books);
    }
    public function getBorrowings()
{
    $borrowings = Borrowing::all(); 
    return response()->json($borrowings);

}
    public function user()
{
    $user = User::all(); 
    return response()->json($user);

}



}