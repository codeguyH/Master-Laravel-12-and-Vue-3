<template>
    <Link href="/listings">Listing</Link>&nbsp;
    <Link href="/listings/create">New Listing</Link>

    <div v-if="flashSuccess" class="success">
        {{ flashSuccess }}
    </div>
    <slot>Default</slot>
</template>

<script setup>
import { computed } from "vue";
import { Link, usePage } from "@inertiajs/vue3";
const page = usePage();

const flashSuccess = computed(() => page.props.flash?.success);

//import { ref } from "vue";
//const timer = ref(0);
//setInterval(() => {
//  timer.value++;
//}, 1000);
</script>

<style scoped>
.success {
    color: green;
}
</style>
