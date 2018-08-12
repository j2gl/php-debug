# php-debug

This is an image with docker and php for debugging purpouses.

## Running

1. *Important* set your host ip (local machine) in `docker-compose.yml` file, something like this `dockerhost:192.168.70.116`
2. Run `docker-compose up`
3. Go to Visual Code or PhpStorm and configure it.
4. Go to http://localhost/test-debug.php


### Visual Studio Code

Hit F5 to edit launch.json, and add the following configuration:

```json
{
    "name": "Listen for XDebug",
    "type": "php",
    "request": "launch",
    "port": 9000,
    "stopOnEntry": false,
    "log": true,
    "pathMappings": {
        "/var/www/html": "${workspaceRoot}/src"
    }
}
```


**Get into Docker Machine**
```
docker exec -it apache-php bash
```

## References

* https://blog.philipphauer.de/debug-php-docker-container-idea-phpstorm/