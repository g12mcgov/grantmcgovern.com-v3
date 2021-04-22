<template>
  <div id="app">
    <intro />
  </div>
</template>

<script>
import { ref } from "vue";
import Intro from "@/components/Intro.vue";

export default {
  name: "app",
  components: {
    Intro,
  },
};
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
