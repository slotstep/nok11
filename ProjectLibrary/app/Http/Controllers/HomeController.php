<?php

namespace App\Http\Controllers;

use App\Models\Book;
use App\Models\User;
use Illuminate\Http\Request;
use App\Models\Borrowing;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $data['books'] = Book::orderby('id','asc')->paginate(10);
        return view('home',$data);
    }
        /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function adminHome()
    {
        $data['books'] = Book::orderby('id','asc')->paginate(10);
        return view('adminHome' ,$data);

    }
    // Create resource
    public function create(){
        return view('books.create');
    }
    // Store resource
    public function store(Request $request){
        $request->validate([
            'name' => 'required',
            'author' => 'required',
            'publisher' => 'required'

        ]);

        $book = new Book;
        $book->id = $request->id;
        $book->name = $request->name;
        $book->author = $request->author;
        $book->publisher = $request->publisher;
        $book->save();
        return redirect()->route('admin.home')->with('success','Book has been created successfully.');
    }
    public function edit(Book $book){
        return view('books.edit', compact('book'));
    }
    public function update(Request $request, $id){
        $request->validate([
            'name' => 'required',
            'author' => 'required',
            'publisher' => 'required'

        ]);
        
        $book = Book::find($id);
        $book->name = $request->name;
        $book->author = $request->author;
        $book->publisher = $request->publisher;
        $book->save();
        return redirect()->route('admin.home')->with('success','Book has been updated successfully.');
    }
    public function destroy(Book $book){
        $book->delete();
        return redirect()->route('admin.home')->with('success','Book has been deleted successfully.');
    }
    public function search(Request $request)
{
    $query = $request->input('query');
    
    $books = Book::where('id', 'like', '%'.$query.'%')
                  ->orWhere('name','like', '%'.$query.'%')
                  ->orWhere('author', 'like', '%'.$query.'%')
                  ->orWhere('publisher', 'like', '%'.$query.'%')
                  ->get();
    
    return view('books.search', compact('books', 'query'));
}
    public function borrow(Request $request,Book $book){
        $bookID = $request->input('bookID');
        $borrowing = new Borrowing();
        $borrowing->user_id = auth()->user()->id;
        $borrowing->book_id = $bookID;
        $borrowing->borrowed_date = now();
        $borrowing->returned_date = null;
        $borrowing->save();
    
        return redirect()->route('home')->with('success', 'การยืมสำเร็จ');
        
    }
    public function returnbook(Request $request, Book $book){
            $bookID = $request->input('bookID');

            $borrowing = Borrowing::where('user_id', auth()->user()->id)
            ->where('book_id', $bookID)
            ->whereNull('returned_date')
            ->first();
            echo $borrowing;
    
        if ($borrowing) {
            
            $borrowing->returned_date = now();
            $borrowing->save();
    
            return redirect()->route('home')->with('success', 'คืนหนังสือสำเร็จ');
        } else {
            return redirect()->route('home')->with('error', 'ไม่สามารถคืนหนังสือได้');
        }
        
        
       
    }
    public function history(Request $request, Book $book){
        $perPage = 10; // จำนวนรายการต่อหน้า

        if (auth()->user()->is_admin == 1) {
            // ถ้าผู้ใช้เป็นแอดมิน ดึงทั้งหมด
            $borrowings = Borrowing::paginate($perPage);
        } else {
            // ถ้าผู้ใช้ไม่ใช่แอดมิน, ดึงเฉพาะข้อมูลที่เป็นของตัวเอง
            $borrowings = Borrowing::where('user_id', auth()->user()->id)->paginate($perPage);
        }
        
        return view('books.history', compact('borrowings'));
    }
}