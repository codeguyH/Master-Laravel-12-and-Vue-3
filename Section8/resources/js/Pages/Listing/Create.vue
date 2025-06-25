<template>
    <form @submit.prevent="create">
        <div class="grid">
            <div class="col-span-2">
                <label class="label">Beds</label>
                <input v-model.number="form.beds" class="input" type="text" />
                <div v-if="form.errors.beds" class="error-Message">
                    {{ form.errors.beds }}
                </div>
            </div>

            <div class="col-span-2">
                <label class="label">Baths</label>
                <input v-model.number="form.bath" class="input" type="text" />
                <div v-if="form.errors.bath" class="error-Message">
                    {{ form.errors.bath }}
                </div>
            </div>

            <div class="col-span-2">
                <label class="label">Area</label>
                <input v-model.number="form.area" class="input" type="text" />
                <div v-if="form.errors.area" class="error-Message">
                    {{ form.errors.area }}
                </div>
            </div>

            <div class="col-span-4">
                <label class="label">City</label>
                <input v-model="form.city" class="input" type="text" />
                <div v-if="form.errors.city" class="error-Message">
                    {{ form.errors.city }}
                </div>
            </div>

            <div class="col-span-2">
                <label class="label">Post Code</label>
                <input v-model="form.code" class="input" type="text" />
                <div v-if="form.errors.code" class="error-Message">
                    {{ form.errors.code }}
                </div>
            </div>

            <div class="col-span-4">
                <label class="label">Street</label>
                <input v-model="form.street" class="input" type="text" />
                <div v-if="form.errors.street" class="error-Message">
                    {{ form.errors.street }}
                </div>
            </div>
            <div class="col-span-2">
                <label class="label">Street Nr</label>
                <input
                    v-model.number="form.street_nr"
                    class="input"
                    type="text"
                />
                <div v-if="form.errors.street_nr" class="error-Message">
                    {{ form.errors.street_nr }}
                </div>
            </div>
            <div class="col-span-6">
                <label class="label">Price</label>
                <input v-model.number="form.price" class="input" type="text" />
                <div v-if="form.errors.price" class="error-Message">
                    {{ form.errors.price }}
                </div>
            </div>

            <div class="">
                <button type="submit" class="newLisitng">Create</button>
            </div>
        </div>
    </form>
</template>

<script setup>
import { useForm } from "@inertiajs/vue3";

const form = useForm({
    beds: 0,
    bath: 0,
    area: 0,
    city: null,
    street: null,
    code: null,
    street_nr: null,
    price: 0,
});
const create = () => form.post("/listings");
</script>

<style scoped>
label {
    margin-right: 2em;
}

div {
    padding: 2px;
}
</style>
