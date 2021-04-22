import { createApp } from "vue";
import HelloWorld from "@/components/HelloWorld.vue";
import Particles from "particles.vue3";

declare module "particles.vue3";

export default () => {
  document.addEventListener("DOMContentLoaded", () => {
    const app = createApp(HelloWorld);
		console.log(Particles);
		app.use(Particles);
    app.mount("#vue-app");
  });
};
