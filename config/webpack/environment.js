const { environment } = require('@rails/webpacker')
const jquery = require('./plugins/jquery')

const webpack = require('webpack')
environment.plugins.append('provide',
new webpack.ProvidePlugin({
  $: 'jquery',
  jQuery: 'jquery',
  Popper: ['Popper.js', 'default']
  })
)

environment.plugins.prepend('jquery', jquery)
module.exports = environment
