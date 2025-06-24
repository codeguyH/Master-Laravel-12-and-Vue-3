<template>
    <div class="">
        <span class="font-bold"> {{ listing.beds }} </span> bds
        <span class="text-gray-400">| </span>

        <span class="font-bold"> {{ listing.bath }} </span> ba
        <span class="text-gray-400">| </span>

        <span class="font-bold"> {{ listing.area }} </span>
        <sup class="">2</sup>
    </div>
</template>

<script setup>
defineProps({
    listing: Object,
});
</script>
