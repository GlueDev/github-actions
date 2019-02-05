## Configure action

Takes the first argument as the extension for the .env file, lik so:

```
$ ./entrypoint
cp .env.production .env

$ ./entrypoint .production
cp .env.production .env.production
```
