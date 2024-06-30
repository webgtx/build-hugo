# Build Hugo

Build a static website with Hugo using GitHub Actions

## How it works
This custom action pulls the Docker image containing the extended Hugo v0.127.0, maintained by [hugomods](https://github.com/hugomods) (a non-official Hugo container-image publisher). It then builds your website within the mounted container to the `$GITHUB_WORKSPACE`. Remember to use the actions/checkout action to fetch your repository and import all your themes before you call `webgtx/build-hugo`.

## Usage
```yaml
name: Deploy website to Cloudflare

on: push

jobs:
  deploy-to-cloudflare:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
        with:
          repository: webgtx/alx.zolotarov.me

      - name: Build a website
        uses: webgtx/build-hugo@master

      - name: Publish to Cloudflare Pages
        uses: cloudflare/pages-action@v1
        with:
          apiToken: ${{ secrets.CLOUDFLARE_API_TOKEN }}
          accountId: ef82135ab21746f84e008a42132ca5d
          projectName: beepboop
          directory: public
```
