<nav x-data="{ open: false }" class="dark:bg-gray-800 flex items-center justify-between py-4 px-6 shadow-lg">
    <div class="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            Furusato Creatives
        </h2>
    </div>
    <div class="max-w-7xl mx-auto flex items-center justify-between w-full">

        <!-- Styles -->
        <style>
            nav {
                background-color: #6c757d;
                color: #f8f9fa;
                padding: 1rem 2rem;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                display: flex;
                justify-content: space-between;
                align-items: center;
            }

            .nav {
                background-color: #f8f9fa;
                color: #6c757d;
                padding: 1rem 2rem;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                display: flex;
                justify-content: space-between;
                align-items: center;
                border-radius: 1rem;
                flex-grow: 1;
                margin-left: 1rem;
            }

            .nav button {
                background-color: #17a2b8;
                color: #ffffff;
                border: none;
                padding: 0.5rem 1rem;
                border-radius: 0.375rem;
                transition: background-color 0.3s;
                margin-bottom: 0.5rem;
            }

            .nav button:hover {
                background-color: #138496;
            }

            .nav button:focus {
                outline: none;
                box-shadow: 0 0 0 3px rgba(23, 162, 184, 0.5);
            }

            .nav div {
                margin-right: 1rem;
            }

            .nav .hidden {
                display: flex;
                gap: 0.5rem;
            }

            .nav form button {
                background-color: #dc3545;
            }

            .nav form button:hover {
                background-color: #c82333;
            }

            .nav form button:focus {
                box-shadow: 0 0 0 3px rgba(220, 53, 69, 0.5);
            }

            .user-info {
                text-align: center;
                margin-bottom: 0.5rem;
            }
        </style>

        <!-- Logo and Navigation Links -->
        <div class="nav">
            <div class="flex items-center">
                <div class="flex-shrink-0">
                    <a href="{{ route('dashboard') }}">
                        <x-application-logo class="block h-9 w-auto fill-current text-gray-800 dark:text-gray-200" />
                    </a>
                </div>
            </div>

            <!-- User Name and Menu -->
            <div class="flex flex-col items-center w-full">
                <div class="user-info text-gray-800 dark:text-gray-200">{{ Auth::user()->name }}</div>
                <div class="flex space-x-4">
                    <button onclick="window.location.href='{{ route('dashboard') }}'">
                        {{ __('Dashboard') }}
                    </button>
                    <button onclick="window.location.href='{{ route('profile.edit') }}'">
                        {{ __('Profile') }}
                    </button>
                    <form method="POST" action="{{ route('logout') }}">
                        @csrf
                        <button type="submit">
                            {{ __('Log Out') }}
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</nav>
