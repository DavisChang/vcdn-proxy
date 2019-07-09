# vcdn-proxy

For Dev Environment

## Build and Start

```
  $ docker-compose up --build
```

http://127.0.0.1/_env

http://127.0.0.1/_health

## Quick start

1.  Add new env NEW_DOMAIN into env/dev.env
2.  Use new env in nginx.conf.tmpl

	```
	...
	env NEW_DOMAIN;
	...
	...
	perl_set $NEW_DOMAIN 'sub { return $ENV{"NEW_DOMAIN"}; }';
	...
	
	```
	
3.  Add new rule

    ```
    location /new-project-name/ {
      proxy_pass $NEW_DOMAIN;
    }
    ```
4. RUN ``` $ docker-compose up --build ```
