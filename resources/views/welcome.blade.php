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

        p {
            line-height: 1.6;
            margin-bottom: 1.5rem;
            font-size: 1.1rem;
            color: #333;
            text-align: justify;
        }
    </style>
</head>
<body>
    <header>
        <div class="logo">
            <h1>Furusato Creatives</h1>
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
        <h1>Welcome to My Blog</h1>
        <p>Welcome to Furusato Creatives, where creativity meets innovation. I'm Cole Lenting, the founder and sole proprietor of this burgeoning creative agency based in Cape Town. At Furusato Creatives, I specialize in providing cutting-edge website development, captivating web design, and bespoke digital solutions tailored to your unique needs.
As a solo entrepreneur, I understand the importance of crafting designs that not only catch the eye but also serve their intended purpose flawlessly. Whether you're an individual in need of a stunning website or a company seeking a skilled front-end developer to enhance your online presence, Furusato Creatives is here to help.
My passion for creating minimalist yet impactful designs drives everything I do. From crafting captivating websites to designing eye-catching logos and comprehensive brand guides, I'm dedicated to bringing your vision to life and helping your business stand out in the digital world.
With a focus on both front-end and back-end development, I ensure that your online presence not only looks good but also functions seamlessly across all devices and platforms. Whether you're just starting out or looking to revamp your digital identity, Furusato Creatives is your partner in success.
Explore my services to discover how Furusato Creatives can elevate your brand and online presence. Let's collaborate to turn your ideas into reality and take your business to new heights. Get in touch with me today to discuss your project and embark on a journey towards digital success! 
</p>
        <div class="button-group">
            <a href="{{ route('login') }}" class="rounded-md px-3 py-2 text-white ring-1 ring-transparent transition hover:text-white/70 focus:outline-none focus-visible:ring-[#FF2D20] dark:text-white dark:hover:text-white/80 dark:focus-visible:ring-white">Log in</a>
            @if (Route::has('register'))
                <a href="{{ route('register') }}" class="rounded-md px-3 py-2 text-white ring-1 ring-transparent transition hover:text-white/70 focus:outline-none focus-visible:ring-[#FF2D20] dark:text-white dark:hover:text-white/80 dark:focus-visible:ring-white">Register</a>
            @endif
        </div>
    </div>

    <footer class="footer">
        <p>&copy; {{ date('Y') }} {{ config('app.name', 'Laravel Blog') }}. Cole Lenting</p>
    </footer>
</body>
</html>
