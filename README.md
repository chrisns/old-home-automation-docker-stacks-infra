# infra
Sets up the basic infra needed
uses dockerflow for proxy ingress http://proxy.dockerflow.com/

```bash
docker network create --driver overlay proxy
GD_KEY=XXX GD_SECRET=XXX CERTBOT_EMAIL=xx@xx.com TLD=example.com docker deploy --compose-file docker-compose.yml proxy
```