<template>
  <div class="bio">
    <Typewriter phrase="Hi, I'm Grant." />
    <div class="overview">
      <p>
        I am a New York City🗽 based Software Engineer working
        <a target="_blank" href="https://stripe.com">@Stripe.</a> I write
        software to help businesses have easier access to capital.
        <br />
        <br />
        Previously, I worked on Marquee
        <a target="_blank" href="https://marquee.gs.com">@Goldman Sachs</a>,
        helping to build out the future of finance for institutional investors.
        <br />
        <br />
        At my core, I am a builder and an endlessly curious engineer. I am
        relentless about understanding how 'things' work and I believe the devil
        is in the details.
        <br />
        <br />
        When I'm not building software, I can be found walking my Corgi, on my
        bike, or descending a mountain.
      </p>
    </div>
  </div>
</template>

<script>
import Typewriter from "@/components/Typewriter.vue";

export default {
  name: "bio",
  components: {
    Typewriter,
  },
};
</script>

<style scoped>
@import url("https://fonts.googleapis.com/css2?family=Source+Code+Pro:wght@200&display=swap");

.bio {
  top: 700px;
  font-family: "Source Code Pro", monospace;
}

h1 {
  text-align: center;
}

.overview {
  max-width: 700px;
  margin: 0 auto;
  padding-left: 5px;
  padding-right: 5px;
}

.overview p {
  text-align: left;
  font-size: 20px;
}

.overview a {
  text-decoration: none;
}

.overview a:visited {
  color: blue;
}
</style>
