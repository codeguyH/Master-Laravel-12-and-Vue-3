<template>
    <div
        class="border border-black dark:border-gray-800 rounded-md p-4 shadow-md dark:text-gray-300"
    >
        <div class="text-gray-500 font-medium">
            <slot name="header"></slot>
        </div>
        <slot></slot>
    </div>
</template>
