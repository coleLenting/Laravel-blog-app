<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel Blog') }} - Login</title>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=roboto:400,500,700&display=swap" rel="stylesheet" />

    <!-- Styles -->
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #e9ecef;
            color: #444;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        header {
            background-color: #6c757d;
            color: #f8f9fa;
            padding: 1rem 2rem;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        header a {
            color: #f8f9fa;
            text-decoration: none;
            padding: 0 15px;
            font-weight: 700;
        }
        header a:hover {
            text-decoration: underline;
        }
        .content {
            flex: 1;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 2rem;
        }
        .footer {
            background-color: #6c757d;
            color: #f8f9fa;
            text-align: center;
            padding: 1.5rem 0;
            margin-top: 3rem;
        }
        .button-group {
            margin-top: 2rem;
        }
        .button-group a {
            text-decoration: none;
            color: #fff;
            background-color: #17a2b8;
            padding: 0.5rem 1rem;
            border-radius: 5px;
            margin: 0 0.5rem;
            transition: background-color 0.3s;
        }
        .button-group a:hover {
            background-color: #138496;
        }
        .form-container {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 2rem;
            width: 100%;
            max-width: 400px;
            margin: 2rem;
        }
        .form-input {
            width: 100%;
            padding: 0.5rem;
            margin-top: 0.5rem;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        .form-input:focus {
            border-color: #17a2b8;
            outline: none;
        }
        .form-checkbox {
            margin-top: 10px;
        }
    </style>

    <!-- Scripts -->
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>
<body>
    <header>
        <div class="logo">
            <h1> Furusato Creatives </h1>
        </div>
        <nav>
            @if (Route::has('login'))
                <div class="top-right links">
                    @auth
                        <a href="{{ url('/home') }}">Home</a>
                    @else
                        <a href="{{ route('login') }}">Login</a>
                        @if (Route::has('register'))
                            <a href="{{ route('register') }}">Register</a>
                        @endif
                    @endauth
                </div>
            @endif
        </nav>
    </header>

    <div class="content">
        <div class="form-container">
            <div class="flex justify-center mb-4">
                <a href="/">
                    <x-application-logo class="w-20 h-20 fill-current text-gray-500" />
                </a>
            </div>
           
            {{ $slot }}
        </div>
    </div>

    <footer class="footer">
        <p>&copy; {{ date('Y') }} {{ config('app.name', 'Laravel Blog') }}. Cole Lenting</p>
    </footer>

    <!-- Custom Scripts -->
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            console.log('Login page custom JS loaded!');
        });
    </script>
</body>
</html>
