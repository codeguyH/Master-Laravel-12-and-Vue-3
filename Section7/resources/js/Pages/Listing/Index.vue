<template>
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
        <Box v-for="listing in listings" :key="listing.id">
            <div>
                <Link :href="`/listings/${listing.id}`">
                    <Price :price="listing.price" />
                    <ListingSpace :listing="listing" />
                    <ListingAddress :listing="listing" />
                </Link>
            </div>
            <div class="">
                <Link
                    :href="`/listings/${listing.id}/edit`"
                    class="text-blue-400 dark:text-blue-500"
                >
                    Edit
                </Link>
                <Link
                    :href="`/listings/${listing.id}`"
                    class="text-red-400 dark:text-red-500"
                    method="DELETE"
                >
                    Delete
                </Link>
            </div>
        </Box>
    </div>
</template>

<script setup>
import { Link } from "@inertiajs/vue3";
import ListingAddress from "@/Components/ListingAddress.vue";
import Box from "../../Components/UI/box.vue";
import ListingSpace from "../../Components/ListingSpace.vue";
import Price from "../../Components/Price.vue";
defineProps({
    listings: Array,
});
</script>
