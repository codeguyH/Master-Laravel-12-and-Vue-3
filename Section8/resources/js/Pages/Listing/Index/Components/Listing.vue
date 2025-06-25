<template>
    <Box>
        <div>
            <Link :href="`/listings/${listing.id}`">
                <div class="flex items-center gap-3">
                    <Price :price="listing.price" class="text-xl font-bold" />
                    <div class="text-xs text-gray-500">
                        <Price
                            :price="monthlyPayment"
                            class="text-xs"
                            :class="highlow"
                        />
                        pm
                        <div
                            v-if="monthlyPayment > 10000"
                            class="text-xs text-red-500 mt-1"
                        >
                            Too high
                        </div>
                    </div>
                </div>
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
</template>

<script setup>
import { Link } from "@inertiajs/vue3";
import ListingAddress from "@/Components/ListingAddress.vue";
import Box from "@/Components/UI/box.vue";
import ListingSpace from "@/Components/ListingSpace.vue";
import Price from "@/Components/Price.vue";
import { useMonthlyPayment } from "@/Composables/useMonthlyPayment";
import { usehighlow } from "@/Composables/useMonthlyPayment";
import { ref } from "vue";

const props = defineProps({
    listing: Object,
});

const interest = ref(2.5);
const duration = ref(25);

const { monthlyPayment } = useMonthlyPayment(
    props.listing.price,
    interest,
    duration
);
const { highlow } = usehighlow(monthlyPayment);
</script>
