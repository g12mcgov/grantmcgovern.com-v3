import { createApp } from "vue";
import Home from "@/components/Home.vue";

export default () => {
  document.addEventListener("DOMContentLoaded", () => {
    const app = createApp(Home);
    app.mount("#vue-app");
  });
};
