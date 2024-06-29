# Hugo Deploy Cloudflare

Build &amp; Deploy/Publish Hugo to Cloudflare Pages

| Variable                         | Description                                                                   |
|----------------------------------|-------------------------------------------------------------------------------|
| `api_token`                      | ***Required*** [Cloudflare API token](https://developers.cloudflare.com/fundamentals/api/get-started/create-token/)
| `account_id`                     | ***Required*** [Cloudflare Account ID](https://developers.cloudflare.com/fundamentals/setup/find-account-and-zone-ids/)
| `project_name`                   | ***Required*** Project Name
| `public_directory`               | ***Optional*** Public directory containing the ready-to-deploy static files

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
      - uses: webgtx/hugo-deploy-cloudflare@master
```
