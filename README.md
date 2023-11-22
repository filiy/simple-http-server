# Local build & push  [![Docker Repository on Quay](https://registry-quay-quay.apps.dqyh08ed.eastus.aroapp.io/repository/app2/http/status "Docker Repository on Quay")](https://registry-quay-quay.apps.dqyh08ed.eastus.aroapp.io/repository/app2/http)

```
podman build --tag http:v1 -f ./Dockerfile
skopeo inspect containers-storage:localhost/http:v1

```
