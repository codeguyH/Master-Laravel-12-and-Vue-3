<template>
    <header
        class="border-b border-gray-200 dark:border-gray-700 bg-white dark:bg-gray-800 w-full"
    >
        <div class="container mx-auto">
            <nav class="p-4 flex items-center justify-between">
                <div class="text-lg font-medium dark:text-gray-300">
                    <Link href="/listings">Listing</Link>
                </div>
                <div
                    class="font-bold text-xl text-indigo-600 dark:text-indigo-400"
                >
                    <Link href="/listings">Larazillow</Link>
                </div>
                <div class="newLisitng">
                    <Link href="/listings/create"> + New Listing</Link>
                </div>
            </nav>
        </div>
    </header>
    <main class="container mx-auto p-4">
        <div
            v-if="flashSuccess"
            class="success mb-4 border rounded-md shadow-sm border-green-200 dark:border-green-800 bg-green-50 dark:bg-green-900 p-4"
        >
            {{ flashSuccess }}
        </div>

        <slot>Default</slot>
    </main>
</template>

<script setup>
import { computed } from "vue";
import { Link, usePage } from "@inertiajs/vue3";
const page = usePage();

const flashSuccess = computed(() => page.props.flash?.success);
</script>
