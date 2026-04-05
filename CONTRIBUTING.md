# Contributing

Contributions are welcome! This project follows a fork-based workflow.

## How to contribute

1. Fork the repository
2. Create a feature branch from `main`
3. Make your changes
4. Bump the chart version in `Chart.yaml`
5. Run pre-commit hooks: `pre-commit run --all-files`
6. Run `helm-docs` to update the README
7. Open a pull request against `main`

## Development setup

Install the required tools:

```console
# Pre-commit
pip install pre-commit
pre-commit install

# Helm
# https://helm.sh/docs/intro/install/

# helm-docs
# https://github.com/norwoodj/helm-docs#installation
```

## Pull request checklist

- [ ] Chart version bumped in `Chart.yaml`
- [ ] `helm lint` passes
- [ ] `helm template` renders without errors
- [ ] `README.md` updated via `helm-docs` (not manually edited)
- [ ] Pre-commit hooks pass
- [ ] Changes are documented in the PR description

## Code of conduct

Be respectful and constructive. We're all here to build useful things.
