<template>
  <div class="container mx-auto">
    <h1 class="text-xl font-semibold">Sign up</h1>
    <div class="w-full max-w-lg">
      <div class="flex flex-wrap -mx-3 mb-6">
        <div class="w-full md:w-1/2 px-3 mb-6 md:mb-0">
          <label
            class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
          >
            Name
          </label>
          <input
            v-model="name"
            class="appearance-none block w-full bg-gray-200 text-gray-700 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white"
            type="text"
            placeholder="Jane"
          />
          <p
            v-for="message in error.name"
            :key="message"
            class="text-red-500 text-xs italic"
          >
            {{ message }}
          </p>
        </div>
      </div>
      <div class="flex flex-wrap -mx-3 mb-6">
        <div class="w-full px-3">
          <label
            class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
          >
            Email
          </label>
          <input
            v-model="email"
            name="email"
            class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-gray-500"
            type="email"
            placeholder="test@example.com"
          />
          <p
            v-for="message in error.email"
            :key="message"
            class="text-red-500 text-xs italic"
          >
            {{ message }}
          </p>
        </div>
      </div>
      <div class="flex flex-wrap -mx-3 mb-6">
        <div class="w-full px-3">
          <label
            class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2"
          >
            Password
          </label>
          <input
            v-model="password"
            name="password"
            class="appearance-none block w-full bg-gray-200 text-gray-700 border border-gray-200 rounded py-3 px-4 mb-3 leading-tight focus:outline-none focus:bg-white focus:border-gray-500"
            type="password"
            placeholder=""
          />
          <p
            v-for="message in error.password"
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
            @click="postUser"
          >
            SignUp
          </button>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      name: '',
      email: '',
      password: '',
      error: {},
    }
  },
  methods: {
    postUser({ redirect }) {
      const userData = {
        user: {
          name: this.name,
          email: this.email,
          password: this.password,
        },
      }

      this.$nuxt.$loading.start()
      this.$axios
        .post(`/signup`, userData)
        .then((res) => {
          this.$router.push('/home')
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
