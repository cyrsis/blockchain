# Block Chain with React Redux

## with Docker it


## React, Redux, Truffle, and Material-UI Dapp


## Installation

1. Install node.js (version 8.9.x)

1. Install webpack globally
    ```
    npm install -g webpack
    npm install -g webpack-cli
    ```

1. Install truffle and Ganache, both available from [Truffle](https://truffleframework.com/).

1. Compile and migrate the contracts.
    ```javascript
    truffle compile
    truffle migrate --reset
    ```

1. Run the webpack server for front-end hot reloading. For now, smart contract changes must be manually recompiled and migrated.
    ```javascript
    npm start
    ```

## Docker

1. Build the docker container.
    ```
    docker build -t etherslist .
    ```

2. Launch the docker container.
    ```
    docker run -p 3000:3000 etherslist:latest
    ```
3 Remove all container
   `docker rm $(docker ps -a -q)`
1. Browse to http://localhost:3000
    `docker rmi $(docker images -q)`
## FAQ

* __Why is there both a truffle.js file and a truffle-config.js file?__

    Truffle requires the truffle.js file be named truffle-config on Windows machines. Feel free to delete the file that doesn't correspond to your platform.
