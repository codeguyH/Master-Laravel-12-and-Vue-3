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
                <template #header> Monthly Payment </template>
                <div>
                    <label for="">Interest rate ({{ interest }})</label>
                    <input
                        v-model.number="interest"
                        type="range"
                        min="0.1"
                        max="30"
                        step="0.1"
                        class="w-full h-4 bg-gray-200 rounded-lg appearance-none cursor-pointer dark:bg-gray-700"
                    />
                    <label for="">Duration ({{ duration }} years)</label>
                    <input
                        v-model.number="duration"
                        type="range"
                        min="3"
                        max="35"
                        step="1"
                        class="w-full h-4 bg-gray-200 rounded-lg appearance-none cursor-pointer dark:bg-gray-700"
                    />
                    <div class="text-gray-600 dark:text-gray-300 mt-2">
                        <div class="text-gray-400">Your monthly payment</div>
                        <div class="flex flex-row gap-3">
                            <Price
                                :price="monthlyPayment"
                                class="text-3xl"
                                :class="highlow"
                            />
                            <div
                                v-if="monthlyPayment > 10000"
                                class="text-xs text-red-500 mt-1"
                            >
                                Too high
                            </div>
                        </div>
                        <div class="mt-2 text-gray-500">
                            <div class="flex justify-between">
                                <div>Principle paid</div>
                                <div>
                                    <Price :price="listing.price" class="" />
                                </div>
                            </div>
                            <div class="flex justify-between">
                                <div>Total paid</div>
                                <div>
                                    <Price :price="totalPaid" class="" />
                                </div>
                            </div>
                            <div class="flex justify-between">
                                <div>Interest paid</div>
                                <div>
                                    <Price :price="totalInterest" class="" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </Box>
        </div>
    </div>
</template>

<script setup>
import ListingAddress from "@/Components/ListingAddress.vue";
import Price from "../../Components/Price.vue";
import { useMonthlyPayment } from "@/Composables/useMonthlyPayment";
import { usehighlow } from "@/Composables/useMonthlyPayment";
import ListingSpace from "../../Components/ListingSpace.vue";
import Box from "../../Components/UI/box.vue";
import { ref, computed } from "vue";

const interest = ref(2.5);
const duration = ref(25);

const props = defineProps({
    listing: Object,
});

const { monthlyPayment, totalPaid, totalInterest } = useMonthlyPayment(
    props.listing.price,
    interest,
    duration
);

const { highlow } = usehighlow(monthlyPayment);
</script>
