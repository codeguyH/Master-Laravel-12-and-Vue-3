<template>
    <div
        class="flex items-center justify-center min-h-screen bg-gradient-to-br from-blue-100 to-purple-200"
    >
        <div class="bg-white shadow-lg rounded-xl p-8 text-center space-y-4">
            <h1 class="text-2xl font-bold text-gray-800">Live Counter</h1>
            <p class="text-5xl font-mono text-purple-600">{{ counter }}</p>
            <p class="text-sm text-gray-500">Counting up every second...</p>
        </div>
    </div>
</template>

<script setup>
import { ref } from "vue";

const counter = ref(0);

setInterval(() => {
    counter.value++;
}, 1000);
</script>
