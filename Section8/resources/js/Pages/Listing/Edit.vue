<template>
    <form @submit.prevent="update">
        <div class="grid">
            <div class="col-span-2">
                <label class="label">Beds</label>
                <input v-model.number="form.beds" type="text" class="input" />
                <div v-if="form.errors.beds">
                    {{ form.errors.beds }}
                </div>
            </div>

            <div class="col-span-2">
                <label class="label">Baths</label>
                <input v-model.number="form.bath" type="text" class="input" />
                <div v-if="form.errors.bath">
                    {{ form.errors.bath }}
                </div>
            </div>

            <div class="col-span-2">
                <label class="label">Area</label>
                <input v-model.number="form.area" type="text" class="input" />
                <div v-if="form.errors.area">
                    {{ form.errors.area }}
                </div>
            </div>

            <div class="col-span-4">
                <label class="label">City</label>
                <input v-model="form.city" type="text" class="input" />
                <div v-if="form.errors.city">
                    {{ form.errors.city }}
                </div>
            </div>

            <div class="col-span-2">
                <label class="label">Post Code</label>
                <input v-model="form.code" type="text" class="input" />
                <div v-if="form.errors.code">
                    {{ form.errors.code }}
                </div>
            </div>

            <div class="col-span-4">
                <label class="label">Street</label>
                <input v-model="form.street" type="text" class="input" />
                <div v-if="form.errors.street">
                    {{ form.errors.street }}
                </div>
            </div>

            <div class="col-span-2">
                <label class="label">Street Nr</label>
                <input
                    v-model.number="form.street_nr"
                    type="text"
                    class="input"
                />
                <div v-if="form.errors.street_nr">
                    {{ form.errors.street_nr }}
                </div>
            </div>

            <div class="col-span-6">
                <label class="label">Price</label>
                <input v-model.number="form.price" type="text" class="input" />
                <div v-if="form.errors.price">
                    {{ form.errors.price }}
                </div>
            </div>

            <div>
                <button type="submit" class="newLisitng">Edit</button>
            </div>
        </div>
    </form>
</template>

<script setup>
import { useForm } from "@inertiajs/vue3";

const props = defineProps({
    listing: Object,
});

const form = useForm({
    beds: props.listing?.beds || 0,
    bath: props.listing?.bath || 0,
    area: props.listing?.area || 0,
    city: props.listing?.city || "",
    street: props.listing?.street || "",
    code: props.listing?.code || "",
    street_nr: props.listing?.street_nr || "",
    price: props.listing?.price || 0,
});
const update = () => form.put(`/listings/${props.listing.id}`);
</script>

<style scoped>
label {
    margin-right: 2em;
}

div {
    padding: 2px;
}
</style>
