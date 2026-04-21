# VaultConfig

![Version: 0.1.0](https://img.shields.io/badge/Version-0.1.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 0.8.42](https://img.shields.io/badge/AppVersion-0.8.42-informational?style=flat-square)

**Homepage:** <https://github.com/Gilk260/helm-vault-config>

## Installation

```console
helm repo add helm-vault-config https://gilk260.github.io/helm-vault-config
helm repo update
helm install my-release helm-vault-config/vault-config
```

## Prerequisites

- Kubernetes 1.25+
- Helm 3.x
- [vault-config-operator](https://github.com/redhat-cop/vault-config-operator) installed in the cluster
- OpenBao or HashiCorp Vault instance with Kubernetes auth enabled

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| Gilk | <Gilk260@gmail.com> |  |

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| fullnameOverride | string | `""` |  |
| nameOverride | string | `""` |  |
| passwordPolicies | object | `{}` |  |
| policies | object | `{}` |  |
| randomSecrets | object | `{}` |  |
| vaultSecrets | object | `{}` |  |

## License

# VaultConfig
 is licensed under the Apache License 2.0. See [LICENSE](LICENSE) for details.
