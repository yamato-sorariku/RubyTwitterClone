<template>
  <div class="max-w rounded overflow-hidden shadow-lg">
    <div class="px-6 py-4">
      <div class="font-bold text-xl mb-2">@{{ status.user.name }}</div>
      <p class="text-gray-700 text-base whitespace-pre-line break-words">
        {{ status.content }}
      </p>
      <p class="text-gray-500 text-sm">
        {{ status.created_at }}
      </p>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    status: {
      type: Object,
      default: null,
    },
  },
}
</script>
