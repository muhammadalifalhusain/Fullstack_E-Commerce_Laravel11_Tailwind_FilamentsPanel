<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Contact; 

class ContactController extends Controller
{
    // Menampilkan halaman kontak
    public function index()
    {
        return view('front.contact'); // pastikan path view sesuai
    }

    // Menyimpan data kontak
    public function store(Request $request)
    {
        // Validasi data form
        $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email',
            'message' => 'required|string',
        ]);
    
        // Simpan data ke dalam tabel contacts
        $contact = new Contact();
        $contact->name = $request->name;
        $contact->email = $request->email;
        $contact->message = $request->message;
        $contact->save();
    
        // Redirect atau tampilkan pesan sukses
        return redirect()->route('contact.index')->with('success', 'Your message has been sent!');
    }
}