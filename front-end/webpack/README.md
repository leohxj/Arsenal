webpack 使用指南



## middleware

- [chimurai/http-proxy-middleware](https://github.com/chimurai/http-proxy-middleware):  Configure proxy middleware with ease for [connect](https://github.com/senchalabs/connect), [express](https://github.com/strongloop/express), [browser-sync](https://github.com/BrowserSync/browser-sync) and [many more](https://github.com/chimurai/http-proxy-middleware#compatible-servers).
- [webpack/webpack-dev-middleware](https://github.com/webpack/webpack-dev-middleware): It's a simple wrapper middleware for webpack. It serves the files emitted from webpack over a connect server.**THIS MIDDLEWARE SHOULD ONLY BE USED FOR DEVELOPMENT!**
- [glenjamin/webpack-hot-middleware](https://github.com/glenjamin/webpack-hot-middleware): Webpack hot reloading using only [webpack-dev-middleware](http://webpack.github.io/docs/webpack-dev-middleware.html). This allows you to add hot reloading into an existing server without [webpack-dev-server](http://webpack.github.io/docs/webpack-dev-server.html).
- [webpack/webpack-dev-server](https://github.com/webpack/webpack-dev-server): Use [webpack](http://webpack.github.io/) with a development server that provides live reloading. This should be used for **development only**. It uses [webpack-dev-middleware](https://github.com/webpack/webpack-dev-middleware) under the hood, which provides fast in-memory access to the webpack assets.