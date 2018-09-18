<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;

class welcomeController extends Controller
{
    public function index(){

    	$products = Product::inRandomOrder()->take(10)->get();

    	return view('welcome')->with('products', $products);
    }
}
