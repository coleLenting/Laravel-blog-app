<x-guest-layout>
<div class="bg-white rounded-lg shadow-md px-6 py-8 dark:bg-gray-800">

<h2 class="text-2xl font-bold mb-6 text-center text-gray-700 dark:text-gray-200">{{ __('Register') }}</h2>
    <form method="POST" action="{{ route('register') }}">
        @csrf

        <!-- Name -->
        <div class = "mb-4">
            <x-input-label for="name" :value="__('Name')" class="block text-gray-700 text-sm font-bold mb-2 dark:text-gray-300"/>
            <x-text-input id="name"  type="text" name="name" :value="old('name')" required autofocus autocomplete="name" class="form-input w-full dark:bg-gray-700 dark:text-gray-300"/>
            <x-input-error :messages="$errors->get('name')" class="mt-2" />
        </div>

        <!-- Email Address -->
        <div class="mt-4">
            <x-input-label for="email" :value="__('Email')" class="block text-gray-700 text-sm font-bold mb-2 dark:text-gray-300" />
            <x-text-input id="email" class="form-input w-full dark:bg-gray-700 dark:text-gray-300" type="email" name="email" :value="old('email')" required autocomplete="username" />
            <x-input-error :messages="$errors->get('email')" class="mt-2" />
        </div>

        <!-- Password -->
        <div class="mb-4">
            <x-input-label for="password" :value="__('Password')" 
            class="block text-gray-700 text-sm font-bold mb-2 dark:text-gray-300"/>

            <x-text-input id="password" class="block mt-1 w-full"
                            type="password"
                            name="password"
                            required autocomplete="new-password"
                            class="form-input w-full dark:bg-gray-700 dark:text-gray-300" />

            <x-input-error :messages="$errors->get('password')" class="mt-2" />
        </div>

        <!-- Confirm Password -->
        <div class="mb-4">
            <x-input-label for="password_confirmation" :value="__('Confirm Password')" 
            class="block text-gray-700 text-sm font-bold mb-2 dark:text-gray-300"/>

            <x-text-input id="password_confirmation" class="block mt-1 w-full"
                            type="password"
                            name="password_confirmation" required autocomplete="new-password" 
                            class="form-input w-full dark:bg-gray-700 dark:text-gray-300" />

            <x-input-error :messages="$errors->get('password_confirmation')" class="mt-2" />
        </div>

    
        <x-primary-button class="flex items-center justify-between"
                button type="submit" class="bg-indigo-500 hover:bg-indigo-600 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline dark:bg-indigo-600">
                {{ __('Register') }}
            </x-primary-button>

            <a class="underline text-sm text-gray-600 dark:text-gray-400 hover:text-gray-900 dark:hover:text-gray-100 rounded-md focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500 dark:focus:ring-offset-gray-800" href="{{ route('login') }}">
                {{ __('Already registered?') }}
            </a>

  
        </div>
    </form>
</div>
</x-guest-layout>
