const { environment } = require("@rails/webpacker");
const path = require("path");
const { VueLoaderPlugin } = require("vue-loader");
const { DefinePlugin } = require("webpack");

const vue = require("./loaders/vue");
const ts = require("./loaders/ts");

const customConfig = {
  resolve: {
    alias: {
      "@": path.resolve(__dirname, "..", "..", "app/javascript/src"),
    },
  },
};

environment.config.merge(customConfig);

environment.plugins.prepend("VueLoaderPlugin", new VueLoaderPlugin());

environment.plugins.prepend(
  "Define",
  new DefinePlugin({
    __VUE_OPTIONS_API__: true,
    __VUE_PROD_DEVTOOLS__: false,
  })
);

environment.loaders.prepend("ts", ts);
environment.loaders.prepend("vue", vue);

module.exports = environment;
