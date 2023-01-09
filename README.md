# Sample web application

This web application prints a default message (Hello world), but can be
configured with an an environment variable. It's purpose is to show how an
application responds to its configuration when working with containers.

## Sample usage

In this case, application will use its defaults:

```
docker run --rm -it -p4567:4567 gcr.io/mikroways/demo-app
```

Now, you can check exposed services with:

```
curl 'http://localhost:4567/'
curl 'http://localhost:4567/env'
curl 'http://localhost:4567/request'
```
> In any case, the use of `jq` can be useful to format output, for example:
> `curl 'http://localhost:4567/env | jq .'`

In this case, message is overriden with environment variable:

```
docker run --rm -it -e message="Hola mundo" -p4567:4567 gcr.io/mikroways/demo-app
```

## Development

This image is created using [sinatra](https://sinatrarb.com/) and its code is
only in `app.rb`. Requirements are managed with bundler using `Gemfile`.
