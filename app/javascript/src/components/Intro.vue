<template>
  <div class="intro">
    <div id="particles-js"></div>
    <div id="overlay">
      <h1>Grant McGovern</h1>
      <terminal />
    </div>
  </div>
</template>

<script>
import Terminal from "@/components/Terminal.vue";
import "../assets/js/particles.js";

export default {
  components: {
    Terminal,
  },
  setup() {
    window.onload = () => {
      particlesJS("particles-js", {
        particles: {
          number: {
            value: 380,
            density: {
              enable: true,
              value_area: 800,
            },
          },
          color: {
            value: "#ffffff",
          },
          shape: {
            type: "circle",
            stroke: {
              width: 0,
              color: "#000000",
            },
            polygon: {
              nb_sides: 5,
            },
            image: {
              src: "img/github.svg",
              width: 100,
              height: 100,
            },
          },
          opacity: {
            value: 0.5,
            random: false,
            anim: {
              enable: false,
              speed: 1,
              opacity_min: 0.1,
              sync: false,
            },
          },
          size: {
            value: 3,
            random: true,
            anim: {
              enable: false,
              speed: 40,
              size_min: 0.1,
              sync: false,
            },
          },
          line_linked: {
            enable: true,
            distance: 150,
            color: "#ffffff",
            opacity: 0.4,
            width: 1,
          },
          move: {
            enable: true,
            speed: 6,
            direction: "none",
            random: false,
            straight: false,
            out_mode: "out",
            bounce: false,
            attract: {
              enable: false,
              rotateX: 600,
              rotateY: 1200,
            },
          },
        },
        interactivity: {
          detect_on: "canvas",
          events: {
            onhover: {
              enable: true,
              mode: "grab",
            },
            onclick: {
              enable: true,
              mode: "push",
            },
            resize: true,
          },
          modes: {
            grab: {
              distance: 140,
              line_linked: {
                opacity: 1,
              },
            },
            bubble: {
              distance: 400,
              size: 40,
              duration: 2,
              opacity: 8,
              speed: 3,
            },
            repulse: {
              distance: 200,
              duration: 0.4,
            },
            push: {
              particles_nb: 4,
            },
            remove: {
              particles_nb: 2,
            },
          },
        },
        retina_detect: true,
      });
    };
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Source+Code+Pro:wght@200&display=swap");

h1 {
  font-family: "Source Code Pro", monospace;
  font-size: 55px;
  text-align: center;
  color: white;
}

.intro {
  height: 700px;
}

#particles-js {
  position: absolute;
  width: 100%;
  height: 100%;
  background-color: black;
  background-repeat: no-repeat;
  background-size: cover;
  background-position: 50% 50%;
  max-height: 700px;
}

#overlay {
  position: absolute;
  margin-left: auto;
  margin-right: auto;
  left: 0;
  right: 0;
  padding-left: 5px;
  padding-right: 5px;
}
</style>
