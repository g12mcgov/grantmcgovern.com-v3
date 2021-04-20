<template>
  <div id="app">
    <terminal />
  </div>
</template>

<script>
import { ref } from "vue";
import Terminal from "@/components/Terminal.vue";

export default {
  name: "app",
  components: {
    Terminal,
  },
};
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
