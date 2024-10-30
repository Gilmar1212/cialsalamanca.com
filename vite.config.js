import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';

export default defineConfig({
    server:{
hmr:{
    host:"localhost"
},
host:"localhost"
    },
    plugins: [
        laravel({
            input: ['resources/css/app.css', 'resources/js/app.js','resources/js/tailwind.css'],
            refresh: true,
        }),
    ],
});
