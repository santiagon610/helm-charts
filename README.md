# Helm Charts

Repo of simple generic Helm charts, for things like deploying a web app

Add repo to helm

```bash
helm repo add benc-uk https://benc-uk.github.io/helm-charts
helm repo update benc-uk 
```

To use
```bash
helm install example benc-uk/webapp
```
See [readme](./webapp/README.md) for full details of values and configuration