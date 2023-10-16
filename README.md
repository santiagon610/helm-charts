# Helm Charts

Repo of simple generic Helm charts, for things like deploying a web app

Add repo to helm

```bash
helm repo add ml-alpha https://ml-alpha.github.io/helm-charts
helm repo update ml-alpha 
```

To use
```bash
helm install example ml-alpha/webapp
```
See [readme](./webapp/README.md) for full details of values and configuration