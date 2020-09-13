<template>
  <div class="container mx-auto">
    <div class="w-full max-w">
      <div class="flex flex-wrap">
        <div class="w-full">
          <label
            class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
          >
            Tweet
          </label>
          <textarea
            v-model="status.content"
            name="content"
            rows="3"
            maxlength="140"
            class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-gray-500"
            placeholder=""
            @keydown.ctrl.enter="postStatus"
            @keydown.meta.enter="postStatus"
          />
          <p
            v-for="message in error.status"
            :key="message"
            class="text-red-500 text-xs italic"
          >
            {{ message }}
          </p>
        </div>
      </div>
      <div class="flex flex-wrap -mx-3 mb-6">
        <div class="w-full px-3">
          <button
            class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline"
            type="button"
            @click="postStatus"
          >
            Post
          </button>
        </div>
      </div>
    </div>

    <h1 class="text-xl font-semibold">Tweets</h1>
    <template v-for="status in statuses">
      <Status :key="status.id" :status="status" />
    </template>
  </div>
</template>

<script>
export default {
  middleware: 'auth',
  asyncData({ $axios }) {
    return $axios.get('/statuses').then((res) => {
      return { statuses: res.data }
    })
  },
  data() {
    return {
      status: {
        content: '',
      },
      statuses: [],
      error: {},
    }
  },
  methods: {
    postStatus({ redirect }) {
      this.$nuxt.$loading.start()
      this.$axios
        .post(`/statuses`, this.status)
        .then((res) => {
          this.status.content = ''
          this.$axios.get('/statuses').then((res) => {
            this.statuses = res.data
          })
        })
        .catch((error) => {
          this.error = error.response.data
        })
        .finally(() => {
          this.$nuxt.$loading.finish()
        })
    },
  },
}
</script>
