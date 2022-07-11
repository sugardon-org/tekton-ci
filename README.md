# tekton-cicd

## check

```bash
kustomize build argocd-apps/overlays/sugardon01 | kubectl apply -f - --dry-run=server
```
