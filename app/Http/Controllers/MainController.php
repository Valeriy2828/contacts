<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Record;
use App\Models\Phone;

use Validator;

class MainController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $search = $request->input('search');

        if($search)
            $records = Record::where('name', 'LIKE', '%'.$search.'%')->orWhere('last_name', 'LIKE', '%'.$search.'%')->get();
        else
            $records = Record::all();

        return view('index', ['records' => $records]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function add()
    {
        return view('addContact');
    }


    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|max:100',
            'lastname' => 'required|max:100',
            'phone' => 'required|array'
        ]);

        $record = new Record([
            'name' => $request->input('name'),
            'last_name' => $request->input('lastname')
        ]);

        $phones = [];
        foreach($request->input('phone') as $phone){
            if($phone){
                $phones[] = new Phone(['phone' => $phone]) ;
            }

        }

        $record->save();
        $record->phones()->saveMany($phones);

        return back();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $contacts = Record::where('id', $id)->first();

        return view('contact', ['contacts' => $contacts]);

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $contact_edit = Record::where('id', $id)->first();
        return view('edit', ['contact_edit' => $contact_edit]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $validatedData = $request->validate([
            'name' => 'max:100',
            'lastname' => 'max:100',
            'phone' => 'numeric',
        ]);

        $input = Record::find($id);
        $input_phone1 = $input->phones;

        $input->name = $request->input('name');
        $input->last_name = $request->input('lastname');

        foreach ($input_phone1 as $key => $item){
            $item->phone = $request->input('phone'.$key);
            $item->save();
        }

        $input->save();

        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Record::find($id)->delete();
        Phone::where('record_id',$id)->delete();
        return back();
    }
}
