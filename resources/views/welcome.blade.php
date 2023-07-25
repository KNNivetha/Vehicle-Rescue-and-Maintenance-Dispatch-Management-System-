<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>ORVRS</title>

        <!-- Fonts -->
        
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">

        
        <!-- Styles -->
        <link href="{{ asset('css/app.css') }}" rel="stylesheet">
        <script src="{{ asset('js/app.js') }}" defer></script>
      </head>
      <style>
        body{
          background-attachment: fixed;
          background-repeat:no-repeat;
        }
      </style>
    <body>
            <nav class="navbar navbar-expand-md navbar-dark bg-dark shadow-sm">
              <div class="container"  style="font-size:20px;">
                    <a class="navbar-brand"  style="font-size:30px;" href="{{ url('/') }}">ORVR</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                      <span class="navbar-toggler-icon"></span>
                    </button>
                  
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                      <ul class="navbar-nav mr-auto">
                        <li class="nav-item">
                          <a class="nav-link" href="{{ url('/') }}">{{ __('Home') }}</a>
                      </li>
                      <li class="nav-item">
                          <a class="nav-link" href="{{  url('/about')}}">{{ __('About Us') }}</a>
                      </li>
                    
          
    
                                   
                      </ul>
                      <ul class="navbar-nav ml-auto">
                        <li class="nav-item dropdown">
                          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Login
                          </a>
                          <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                            <a class="dropdown-item" href="{{ route('login') }}">Customer</a>
                            <a class="dropdown-item" href="{{ url('login/mechanic') }}">Mechanic</a>
                            <a class="dropdown-item" href="{{ url('login/admin') }}">Admin</a>
                          </div>
                        </li>                
                                 
                                <li class="nav-item dropdown">
                                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    Register
                                  </a>
                                  <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                    <a class="dropdown-item" href="{{ route('register') }}">Customer</a>
                                    <a class="dropdown-item" href="{{ url('register/mechanic') }}">Mechanic</a>
                                                  </div>
                                </li>                   
                        </ul>
                      </div>
                    </div>
                  </nav>

                <div class="row justify-content-center mb-3 mt-3" >
                  <div class="col-10"style="font-size:60px; text-align:center;">
                      ON ROAD VEHICLE REPAIR SERVICE
                  </div>                   
                  </div>
                                    
                   </div>  
                                 
               <div class="row justify-content-center ">
                  <div class="col-md-12 ">
                      <img src="3.jpg" alt="" width="100%" height="70%" >  
                    </div>                
               </div>  
                               
        </div>

       
               <div><script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/6461acbb74285f0ec46b713a/1h0eolg6g';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->                 
</div>

  </body>
</html>
