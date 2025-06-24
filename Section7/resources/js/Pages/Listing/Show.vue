<template>
    <div class="grid grid-cols-1 md:grid-cols-12 gap-4">
        <Box
            class="order-2 md:order-1 col-span-1 md:col-span-7 flex items-center justify-center"
        >
            <div class="font-medium text-gray-600">No Images</div>
        </Box>

        <div
            class="order-1 md:order-2 col-span-1 md:col-span-5 flex flex-col gap-2"
        >
            <Box>
                <template #header> Basic info </template>
                <Price :price="listing.price" />
                <ListingSpace :listing="listing" />
                <ListingAddress :listing="listing" />
            </Box>

            <Box>
                <template #header> Offer </template>
                Make an offer ?
            </Box>
        </div>
    </div>
</template>

<script setup>
import ListingAddress from "@/Components/ListingAddress.vue";
import Price from "../../Components/Price.vue";
import ListingSpace from "../../Components/ListingSpace.vue";
import Box from "../../Components/UI/box.vue";
defineProps({
    listing: Object,
});
</script>
