@extends('app')

@section('content')

   <!-- Contacts -->
   <div class="contacts-content">
      <div class="container">
         <div class="row">
            <div class="col-md-12 text-center">
               <h1 style="margin-bottom: 25px;">Contacts</h1>
            </div>
             <form class="form-inline " method="GET" action="{{ route('home') }}">
                 <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="search">
                 <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
             </form>
             <div class="col-md-12  text-center">
                 {{ $records->count() }} contact(s)
             </div>
             <div class="col-md-12  text-center" style="margin-top: 10px; font-size: 20px;">
                 <a href="{{ route('add') }}">Add contact</a>
             </div>

            <div class="col-md-12  text-center">
               <table class="table">
                   <thead>
                       <tr>
                           <th scope="col">#</th>
                           <th scope="col">Lastname\name</th>
                           <th scope="col">Delete</th>
                           <th scope="col">Edit</th>
                       </tr>
                   </thead>
                   <tbody>
                 @foreach($records as $record)
                     <tr>
                         <th scope="row">{{ $loop->iteration }}</th>
                         <td style="text-align: left;">
                            <a href="{{ url('/contact/'.$record->id) }}">{{ $record->last_name }}  {{ $record->name }}</a>
                         </td>
                         <td style="text-align: left;">
                            <a href="/delete/{{ $record->id }}" class="btn btn-warning">Delete</a>
                         </td>
                         <td style="text-align: left;">
                             <a href="/edit/{{ $record->id }}" class="btn btn-success">Edit</a>
                         </td>
                  @endforeach
                     </tr>
                   </tbody>
               </table>
            </div>
         </div>
      </div>
   </div>
   <!-- End section contacts -->

@endsection
