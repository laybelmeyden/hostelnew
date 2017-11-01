<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Rev;
use App\Uslug;
use App\Nomer;
use App\Slider;

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
      return view('pages.photo');
    }
    public function domp()
    {
      return view('pages.domp');
    }
    public function solonomer(Nomer $solo)
    {
      return view('pages.solonomer', compact('solo'));
    }
    
}
