# angular-memory-stats

This plugin is based on Paul Irish's [memory-stats](https://github.com/paulirish/memory-stats.js).

## Install

```
npm i angular-memory-stats --save
```

### Add the module to your Angular's dependencies

```
angular.module('youModule', [
    'angular-memory-stats'
])
```

### Insert the directive in the dom

```
<angular-memory-stats></angular-memory-stats>
```


## Contribute

```
sudo npm install webpack webpack-dev-server -g
npm install
webpack-dev-server
```

Open ```http://localhost:8080/test.html```
