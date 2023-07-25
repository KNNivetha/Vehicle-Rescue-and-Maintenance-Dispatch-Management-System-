@extends('layouts.master')


@section('title')
   Registered Customers
@endsection
        


@section('content')

<div class="row bg-dark">
        <div class="col-md-12">
          <div class="card bg-dark text-white">
            <div class="card-header">
              <h4 class="card-title">Registered Customers</h4>
              @if (session('status'))
              <div class="alert alert-success" role="alert">
                  {{ session('status') }}
              </div>
          @endif
            </div>
            <div class="card-body ">
              <div class="table-responsive">
                <table class="table text-center">
                  <thead class="text-primary">
                      <th >
                        Id
                        </th>
                    <th>
                      Name
                    </th>
                    <th>
                      Location
                    </th>
                    <th>
                      Email
                    </th>
                   
                    <th>
                     Gender 
                    </th>
                    <th class="text-right">
                        DELETE
                    </th>
                  </thead>
                  <tbody class="text-white">
                      @foreach ($user as $row)
                          
                     
                    <tr>
                      <td>
                         {{ $row->id}}
                     </td>
                      <td>
                     {{ $row->name}}
                      </td>
                      <td>
                        {{ $row->location}}
                         </td>
                      <td>
                          {{ $row->email}}
                       </td>
                           
                      
                     
                       <td>
                        {{ $row->gender}}
                       </td>
                       <td class="text-right">
                        <form action="/delete/{{$row->id}}" method="post" >
                         {{ csrf_field()}}
                         {{method_field('DELETE')}}
                          <button type="submit" class="btn btn-danger">DELETE</button>
                            
                        </form>
                        
                      </td>
                    </tr>
                    @endforeach
                </tbody>                      
                                        
                       
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>  

@endsection


@section('scripts')

@endsection

    