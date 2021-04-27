<template>
  <div id="app">
    <Intro />
    <Bio />
    <WorkExperience />
  </div>
</template>

<script>
import { ref } from "vue";
import Intro from "@/components/Intro.vue";
import Bio from "@/components/Bio.vue";
import WorkExperience from "@/components/WorkExperience.vue";

export default {
  name: "app",
  components: {
    Intro,
    Bio,
    WorkExperience,
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
