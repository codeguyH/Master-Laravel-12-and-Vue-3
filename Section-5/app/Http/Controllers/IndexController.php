<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class IndexController extends Controller
{
    public function index()
    {
        return inertia ('Index/Index',
    
            [
                'message' => 'Hello, World!',
            ]
        );

    }
    public function show()
    {
        return inertia ('Index/Show',
            [
                'messages'=> 'HEllo this is show'
            ]
        );
    }
    public function adam()
    {
        return inertia ('Index/adamHariri',
            [
                'messaged'=> ' this is name'
            ]
        );
    }
}
