<template>
  <div class="work-experience">
    <h1>Work Experience</h1>
    <div class="job">
      <div class="logo">
        <h2>Stripe</h2>
      </div>
      <div class="details">
        <p>May 2021 - Present</p>
        <p>Working on the Capital team!</p>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "work-experience",
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Source+Code+Pro:wght@200&display=swap");

.work-experience {
  text-align: center;
}

.work-experience h1 {
  font-family: "Source Code Pro", monospace;
}

.job {
  margin: 0 auto;
  max-width: 500px;
}

.job h2 {
  display: inline-block;
}

.job p {
  font-size: 16px;
  text-align: left;
}

.logo {
  float: left;
}
</style>
