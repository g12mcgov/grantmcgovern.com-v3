<template>
  <div id="app">
    <intro />
    <bio />
  </div>
</template>

<script>
import { ref } from "vue";
import Intro from "@/components/Intro.vue";
import Bio from "@/components/Bio.vue";

export default {
  name: "app",
  components: {
    Intro,
    Bio,
  },
};
</script>

<style>
html,
body {
  margin: 0 !important;
  padding: 0 !important;
}

p {
  font-size: 2em;
  text-align: center;
}
</style>
