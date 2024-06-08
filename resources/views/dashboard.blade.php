<x-app-layout>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-lg sm:rounded-lg mb-4">
                <div class="p-6 text-gray-900 dark:text-gray-100">
                    <h3 class="font-semibold text-lg mb-4">{{ __("You're logged in!") }}</h3>
                    <a href="{{ route('posts.create') }}" class="rounded-md px-3 py-2 text-white bg-blue-500 hover:bg-blue-600 transition mb-4 inline-block">Create New Post</a>
                    @if (!empty($posts) && $posts->count() > 0)
                        <ul class="list-disc pl-6 space-y-4">
                            @foreach ($posts as $post)
                                <li class="bg-gray-100 dark:bg-gray-700 p-4 rounded-lg shadow-sm">
                                    <h4 class="font-semibold text-md mb-2">{{ $post->title }} by {{ $post->user->name }}</h4>
                                    <p class="mb-4">{{ $post->body }}</p>
                                    <div class="space-x-2">
                                        <a href="{{ route('posts.edit', $post) }}" class="rounded-md px-3 py-2 text-white bg-yellow-500 hover:bg-yellow-600 transition inline-block">Edit</a>
                                        <form action="{{ route('posts.destroy', $post) }}" method="POST" style="display:inline;">
                                            @csrf
                                            @method('DELETE')
                                            <button type="submit" class="rounded-md px-3 py-2 text-white bg-red-500 hover:bg-red-600 transition inline-block">Delete</button>
                                        </form>
                                    </div>
                                </li>
                            @endforeach
                        </ul>
                    @else
                        <p>No posts available.</p>
                    @endif
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
