# php-debug

This is an apache php docker image with xdebug installed to be ready for debugging in any IDE.

## Running

1. Run `docker-compose up`
2. Run and build `docker-compose up --build`

# Debug

1. Go to Visual Code or PhpStorm and configure it.
2. Go to http://localhost/test-debug.php to test it or http://localhost/test-debug.php?info=1 to see phpinfo()

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