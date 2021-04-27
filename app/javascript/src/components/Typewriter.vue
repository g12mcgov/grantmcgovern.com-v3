<template>
    <p>{{ text }}<span id="cursor">|</span></p>
</template>

<script>
let i = 0;
let cursorVisible = true;

export default {
  name: "typewriter",
  props: {
    phrase: {
      type: String,
      required: true,
    },
  },
  data() {
    return {
      text: "",
    };
  },
  mounted() {
    this.typewriter();
  },
  methods: {
    typewriter() {
      let speed = 100;

      if (i < this.phrase.length) {
        this.text += this.phrase.charAt(i++);
        setTimeout(this.typewriter, speed);
      } else {
        setInterval(() => {
          const cursor = document.getElementById("cursor");
          cursor.setAttribute(
            "style",
            `visibility: ${cursorVisible ? "visible" : "hidden"}`
          );
          cursorVisible = !cursorVisible;
        }, 500);
      }
    },
  },
};
</script>

<style scoped></style>
