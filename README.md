# OverlyDev/steamcmd

An image for steamcmd, without the stupid of the original:

- `ghcr.io/overlydev/steamcmd`

The image will rebuild daily at midnight which should keep `steamcmd` fresh. There's only the main branch, which is published as the `latest` for the image.

The built image is also signed with `cosign`. This can be seen in the GitHub Action output and the signature can be manually verified via:
```shell
COSIGN_EXPERIMENTAL=1 cosign verify ghcr.io/overlydev/steamcmd \
    --certificate-identity https://github.com/OverlyDev/steamcmd/.github/workflows/docker-publish.yml@refs/heads/main \
    --certificate-oidc-issuer https://token.actions.githubusercontent.com
```
