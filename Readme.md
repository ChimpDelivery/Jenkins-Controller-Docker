## About

Includes a pre-configured Jenkins Docker image and settings for local development.

```powershell
docker compose up -d
docker compose down
```

## Jenkins Defaults (in `docker-compose.yml`)

- url: 127.0.0.1:8080
- username: `chimp`
- password: `chimp`

## References
- [Jenkins - Docker][1]
- [Jenkins - CASC][2]
- [Jenkins - Matrix-Auth CASC Syntax][3]

[1]: https://github.com/jenkinsci/docker
[2]: https://github.com/jenkinsci/configuration-as-code-plugin
[3]: https://github.com/jenkinsci/matrix-auth-plugin/blob/master/src/test/resources/org/jenkinsci/plugins/matrixauth/integrations/casc/configuration-as-code-v3.yml
