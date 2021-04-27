<template>
  <div>
    <script
      id="mini-profiler"
      async
      type="text/javascript"
      src="http://localhost:3000/mini-profiler-resources/includes.js?v=12b4b45a3c42e6e15503d7a03810ff33"
      data-version="12b4b45a3c42e6e15503d7a03810ff33"
      data-path="http://localhost:3000/mini-profiler-resources/"
      data-current-id="redo66j4g1077kto8uh3"
      data-ids="redo66j4g1077kto8uh3"
      data-horizontal-position="left"
      data-vertical-position="top"
      data-trivial="false"
      data-children="false"
      data-max-traces="10"
      data-controls="false"
      data-authorized="true"
      data-toggle-shortcut="Alt+P"
      data-start-hidden="false"
      data-collapse-results="true"
      data-hidden-custom-fields=""
      data-html-container="body"
    ></script>
    <nav
      class="flex items-center justify-between flex-wrap bg-blue-500 p-6 mb-6"
    >
      <div class="flex items-center flex-shrink-0 text-white mr-6">
        <span class="font-semibold text-xl tracking-tight"
          >RubyTwitterClone</span
        >
      </div>
      <div class="w-full block flex-grow lg:flex lg:items-center lg:w-auto">
        <div class="text-sm lg:flex-grow">
          <a
            href="#responsive-header"
            class="block mt-4 lg:inline-block lg:mt-0 text-teal-200 hover:text-white mr-4"
          >
            Home
          </a>
          <a
            href="#responsive-header"
            class="block mt-4 lg:inline-block lg:mt-0 text-teal-200 hover:text-white mr-4"
          >
            Profile
          </a>
        </div>
      </div>
    </nav>
    <Nuxt />
  </div>
</template>

<style>
html {
  font-family: 'Source Sans Pro', -apple-system, BlinkMacSystemFont, 'Segoe UI',
    Roboto, 'Helvetica Neue', Arial, sans-serif;
  font-size: 16px;
  word-spacing: 1px;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
  -moz-osx-font-smoothing: grayscale;
  -webkit-font-smoothing: antialiased;
  box-sizing: border-box;
}

*,
*::before,
*::after {
  box-sizing: border-box;
  margin: 0;
}

.button--green {
  display: inline-block;
  border-radius: 4px;
  border: 1px solid #3b8070;
  color: #3b8070;
  text-decoration: none;
  padding: 10px 30px;
}

.button--green:hover {
  color: #fff;
  background-color: #3b8070;
}

.button--grey {
  display: inline-block;
  border-radius: 4px;
  border: 1px solid #35495e;
  color: #35495e;
  text-decoration: none;
  padding: 10px 30px;
  margin-left: 15px;
}

.button--grey:hover {
  color: #fff;
  background-color: #35495e;
}
</style>
