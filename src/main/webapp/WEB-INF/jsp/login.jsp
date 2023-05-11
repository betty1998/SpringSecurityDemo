<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <!-- <link rel="stylesheet" href="css/login.css"> -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        label{
            margin-bottom: 10px;
            margin-left: 10px;
        }
        .card{
            width: 500px;
        }
    </style>

</head>
<body>

<!------------------------------- Navbar ---------------------------->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Online Banking</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- ms-auto = right align, me-auto = left align-->
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.html">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#aboutus">About Us</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#services" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Services
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#apply">Apply</a></li>
                        <li><a class="dropdown-item" href="#track">Track Application</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <!-- <li><a class="dropdown-item" href="#">Something else here</a></li> -->
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#converter">Currency Converter</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="contactus.html">Contact Us</a>
                </li>
                <!-- <li class="nav-item">
                  <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Contact Us</a>
                </li> -->
            </ul>
            <!-- <form class="d-flex">
              <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success" type="submit">Search</button>
            </form> -->
        </div>
    </div>
</nav>
<!--------------------- Main Container --------------------->

<div id = "mainContainer" class = "container d-flex justify-content-center align-items-center min-vh-100 ">

    <!--------------------- Login Container --------------------->

    <div class="card rounded-3 shadow">
        <div class="card-body">
            <h1 class="card-title text-center mt-3" >Login</h1>
            <div class="row align-items-center">
                <form action="/login" method="post">
                    <div class="form-group mb-3">
                        <label for="username">Email address</label>
                        <input name="username" type="text" id = "username" class="form-control form-control-lg bg-light fs-6" placeholder="Enter Username">
                    </div>
                    <div class="form-group mb-2">
                        <label for="password">Password</label>
                        <input name="password" type="password" id = "password" class="form-control form-control-lg bg-light fs-6" placeholder="Enter Password">
                    </div>

                    <div class="input-group mt-2 mb-3 d-flex justify-content-between">
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input" id="formCheck">
                            <label for="formCheck" class="form-check-label text-secondary"><small>Remember Me</small></label>
                        </div>
                        <div class="forgot">
                            <small><a href="#">Forgot Password?</a></small>
                        </div>
                    </div>
                    <div class="input-group mb-3">
                        <button class="btn btn-lg btn-primary w-100 fs-6">Login</button>
                    </div>
                    <p class="text-center mt-3 ">Don't have account? <a href="register.html" class ="text-decoration-none">Register</a></p>
                </form>
            </div>

        </div>

    </div>
</div>
<!-- Footer -->
<footer class="bg-light text-center py-3">
    <p>© 2023 Your Company Name. All rights reserved.</p>
</footer>

<!-- Include Bootstrap JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>