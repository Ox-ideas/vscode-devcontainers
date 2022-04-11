# Notes

## Enable live reload for React

React application uses chokidar to watch for changes and is not enabled by default. To enable, we need to set a special environment variable for our development container.

Create a .env file inside the .devcontainer folder and add the following:

```js
CHOKIDAR_USEPOLLING=true
```

Another way to enable hot reload which is much simpler, is to edit the devcontainer.jsoon and add the ff:

```js
"containerEnv" : { "CHOKIDAR_USEPOLLING" : "true" },
```


## Get started

In **vs code**, press F1, type *reopen in container* and hit Enter.


## Create Next App

Check out *scripts/new-app.sh* for different ways to create a next.js app. 


## Next Config

We also need to mke some adjustment to the `next.config.js` to completely enable hot reload.


```js
/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  webpackDevMiddleware: config => {
    config.watchOptions = {
      poll: 1000,
      aggregateTimeout: 300,
    }
    return config
  },
}

module.exports = nextConfig

```

