<template>
    <div>Index Page</div>
    <Link href="/hello">Show pages</Link>
    <div>{{ message }}</div>
</template>

<script setup>
import { Link } from "@inertiajs/vue3";

defineProps(["message"]);
</script>
<!--
<script>
import MainLayout from "../../Layouts/MainLayout.vue";
export default {
    layout: MainLayout,
};
</script>
-->
