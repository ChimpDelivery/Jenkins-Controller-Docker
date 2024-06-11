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

- [Jenkins - casc][1]
- [Jenkins - matrix-auth casc syntax][2]

[1]: https://github.com/jenkinsci/configuration-as-code-plugin
[2]: https://github.com/jenkinsci/matrix-auth-plugin/blob/master/src/test/resources/org/jenkinsci/plugins/matrixauth/integrations/casc/configuration-as-code-v3.yml
