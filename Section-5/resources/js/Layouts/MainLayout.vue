<template>
    <Link href="/">Main Page</Link>&nbsp;
    <Link href="/hello">Show Page</Link>
    <div>This is timer {{ timer }}</div>
    <slot>Default</slot>
</template>

<script setup>
import { Link } from "@inertiajs/vue3";
import { ref } from "vue";
const timer = ref(0);
setInterval(() => {
    timer.value++;
}, 1000);
</script>
