<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel Blog') }}</title>

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=roboto:400,500,700&display=swap" rel="stylesheet" />

    <!-- Scripts -->
    @vite(['resources/css/app.css', 'resources/js/app.js'])

    <!-- Custom Styles for Blog -->
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #e9ecef;
            color: #444;
            margin: 0;
            padding: 0;
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
        .main-content {
            display: grid;
            grid-template-columns: 2fr 1fr; /* 2/3 for content, 1/3 for sidebar */
            max-width: 1200px;
            margin: 2rem auto;
            padding: 0 1rem;
            gap: 3rem; /* larger gap between content and sidebar */
        }
        .content {
            background-color: #fff;
            padding: 2rem;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .sidebar {
            background-color: #fff;
            padding: 1.5rem;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .footer {
            background-color: #6c757d;
            color: #f8f9fa;
            text-align: center;
            padding: 1.5rem 0;
            margin-top: 3rem;
        }
        .sidebar h2 {
            border-bottom: 3px solid #dee2e6;
            padding-bottom: 0.75rem;
            margin-bottom: 1.5rem;
            font-weight: 500;
        }
        .sidebar ul {
            list-style: none;
            padding: 0;
        }
        .sidebar ul li {
            margin-bottom: 1rem;
        }
        .sidebar ul li a {
            text-decoration: none;
            color: #17a2b8;
        }
        .sidebar ul li a:hover {
            text-decoration: underline;
        }

        P{
            text-align: justify;
        }
    </style>
</head>
<body>
    <div class="min-h-screen">
        @include('layouts.navigation')

        <!-- Page Heading -->
        @isset($header)
            <header>
                <div class="max-w-7xl mx-auto py-6 px-4 sm:px-6 lg:px-8">
                    {{ $header }}
                </div>
            </header>
        @endisset

        <!-- Page Content -->
        <div class="main-content">
            <!-- Main Blog Content -->
            <div class="content">
                {{ $slot }}
            </div>
            
            <!-- Sidebar -->
            <aside class="sidebar">
                <h2>Blog Life</h2>
                <p>Blogs serve as dynamic platforms that foster communication, share knowledge, and build communities. They provide individuals and businesses with a voice to express their ideas, insights, and stories in a personal and engaging manner. At Furusato Creatives, we understand the significance of blogging in the digital landscape. A well-crafted blog can enhance your online presence, drive traffic, and establish your authority in your field. Whether you aim to share industry expertise, showcase your work, or connect with your audience, our blog services are designed to help you create compelling content that resonates and drives engagement. Let us help you harness the power of blogging to elevate your brand and connect with your audience in meaningful ways.</p>
                
                <h2>Posts</h2>
                <ul>
                    <li><a href="#">Post 1</a></li>
                    <li><a href="#">Post 2</a></li>
                    <li><a href="#">Post 3</a></li>
                </ul>
            </aside>
        </div>

        <!-- Footer -->
        <footer class="footer">
            <p>&copy; {{ date('Y') }} {{ config('app.name', 'Laravel Blog') }}. Cole Lenting</p>
        </footer>
    </div>
</body>
</html>