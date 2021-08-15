# Generic Web App

![Version: 1.4.0](https://img.shields.io/badge/Version-1.4.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.0.0](https://img.shields.io/badge/AppVersion-1.0.0-informational?style=flat-square)

A generic reuseable Helm chart for deploying almost any web app and exposing HTTP traffic to it

**Homepage:** <https://github.com/benc-uk/helm-charts>

## Maintainers

| Name        | Email | Url              |
| ----------- | ----- | ---------------- |
| Ben Coleman |       | https://benc.dev |

## Source Code

- <https://github.com/benc-uk/helm-charts>

## Values

| Key                               | Type   | Default             | Description                                                                                                              |
| --------------------------------- | ------ | ------------------- | ------------------------------------------------------------------------------------------------------------------------ |
| image.repository                  | string | `"docker.io/nginx"` | Image registry and repo                                                                                                  |
| image.pullPolicy                  | string | `"IfNotPresent"`    | Pull policy                                                                                                              |
| image.tag                         | string | `"latest"`          | Tag of image to use                                                                                                      |
| replicaCount                      | int    | `1`                 | Number of pod replicas                                                                                                   |
| env                               | object | `{}`                | Environmental vars, key value pairs, e.g. `MY_VAR: 'value 123'`                                                          |
| secretEnv                         | object | `{}`                | Environmental held in secrets, the key is env variable name and `secretName` and `secretKey` reference the secret to use |
| service.type                      | string | `"ClusterIP"`       | Service type, change to LoadBalancer or NodePort to expose traffic outside the cluster                                   |
| service.port                      | int    | `80`                | Port the service accepts traffic on                                                                                      |
| service.targetPort                | int    | `8080`              | Port the container accepts traffic on                                                                                    |
| ingress.enabled                   | bool   | `false`             | Use an ingress or not                                                                                                    |
| ingress.host                      | string | `nil`               | Ingress host _must_ be set if enabled                                                                                    |
| ingress.tls.enabled               | bool   | `true`              | Use TLS on ingress                                                                                                       |
| ingress.tls.secretName            | string | `nil`               | Secret holding cert _must_ be set if TLS enabled                                                                         |
| ingress.annotations               | object | `{}`                | Extra annotations to set on the ingress                                                                                  |
| resources.limits.cpu              | string | `"1000m"`           | CPU hard limit                                                                                                           |
| resources.limits.memory           | string | `"256Mi"`           | Memory hard limit                                                                                                        |
| resources.requests.cpu            | string | `"200m"`            | CPU resource request                                                                                                     |
| resources.requests.memory         | string | `"128Mi"`           | Memory resource request                                                                                                  |
| imagePullSecrets                  | list   | `[]`                | Any secrets needed to pull image                                                                                         |
| nameOverride                      | string | `""`                | Override the chart name used for this release                                                                            |
| fullnameOverride                  | string | `""`                | Override full release name, normally autogenerated                                                                       |
| livenessProbe.path                | string | `"/"`               | URL path checked by liveness & readiness probes                                                                          |
| livenessProbe.failureThreshold    | int    | `3`                 | Number of liveness probe failures to tolerate                                                                            |
| livenessProbe.initialDelaySeconds | int    | `20`                | Delay before liveness probe starts                                                                                       |
| livenessProbe.periodSeconds       | int    | `20`                | Interval between liveness probe checks                                                                                   |
| serviceAccount.create             | bool   | `false`             | Specifies whether a service account should be created                                                                    |
| serviceAccount.name               | string | `nil`               | The name of the service account to use. If not set a name is generated                                                   |
| persistence.enabled               | bool   | `false`             | Use persistent volume                                                                                                    |
| persistence.size                  | string | `"1Gi"`             | Persistent volume size                                                                                                   |
| persistence.accessMode            | string | `"ReadWriteOnce"`   | Persistent volume access mode                                                                                            |
| persistence.mountPath             | string | `nil`               | Persistent volume mount path                                                                                             |
| podSecurityContext                | object | `{}`                | Pod security context spec                                                                                                |
| securityContext                   | object | `{}`                | Security context spec                                                                                                    |
| nodeSelector                      | object | `{}`                | Node selector spec                                                                                                       |
| tolerations                       | list   | `[]`                | Node tolerations spec                                                                                                    |
| affinity                          | object | `{}`                | Node affinity spec                                                                                                       |
