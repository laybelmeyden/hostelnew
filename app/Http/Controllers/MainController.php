<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Rev;
use App\Uslug;
use App\Nomer;
use App\Slider;
use App\Galler;

class MainController extends Controller
{
    public function index()
    {
      
      $slider = Slider::latest()
      ->get();
      $rev = Rev::latest()
      ->get();
      $nomer = Nomer::inRandomOrder()
      ->limit(1)
      ->get();
    
      return view('pages.main', compact('rev', 'slider', 'nomer'));
    }
    
    public function otzivi()
    {
      $rev = Rev::latest()
      ->get();
      return view('pages.otzivi', compact('rev'));
    }
    
    public function pravila()
    {
      return view('pages.pravila');
    }
    public function bronirovanie()
    {
      return view('pages.bronirovanie');
    }
    public function tour()
    {
      return view('pages.tour');
    }
    public function dosto()
    {
      return view('pages.dosto');
    }
    public function cont()
    {
      return view('pages.cont');
    }
    public function nomera()
    {
      
      $nomer = Nomer::latest()->get();
      
      return view('pages.nomera', compact('nomer'));
    }
    public function serv()
    {
      $uslug = Uslug::latest()->get();
      
      return view('pages.serv', compact('uslug'));
    }
    public function photo()
    {
      $galler = Galler::latest()
      ->get();
      return view('pages.photo', compact('galler'));
    }
    public function domp()
    {
      return view('pages.domp');
    }
    public function solonomer(Nomer $solo)
    {
      return view('pages.solonomer', compact('solo'));
    }
    public function contacts(Request $request)
      {
      $data= array(
      'name' => request('name'),
      'email' => request('email'),
      'tel' => request('tel'),
      'message2' => request('message'),
      );
    // return $data;
    \Mail::send('email.mail1', $data, function($message1) use ($data)
    {
        $mail_admin = env('MAIL_ADMIN');
        $message1->from($data['email'], $data['name'], $data['message2']);
        $message1->to($mail_admin, 'For Admin')->subject('Message from site');
    });
    return redirect('');
    }
    
}
