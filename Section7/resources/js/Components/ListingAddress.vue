<template>
    <span class="">
        {{ listing.street }} {{ listing.street_nr }}, {{ listing.code }},
        {{ listing.city }}
    </span>
</template>

<script setup>
defineProps({
    listing: Object,
});
</script>
