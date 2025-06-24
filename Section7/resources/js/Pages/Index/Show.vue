<template>
    <div>Show Page</div>
    <Link href="/">index pages</Link>
    <div>
        {{ messages }}
    </div>
</template>

<script setup>
import { Link } from "@inertiajs/vue3";
import MainLayout from "../../Layouts/MainLayout.vue";
defineProps(["messages"]);
</script>

<!--
<script>
import MainLayout from "../../Layouts/MainLayout.vue";
export default {
    layout: MainLayout,
};
</script>
--->
