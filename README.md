# GitHub Action for test WebDAV with Litmus WebDAV Test Server Suite

## Inputs

### `url`

  URI of WebDAV Server you want to test.

### `webdav-user`

  username of user allowed to access at WebDAV Server

### `webdav-password`

  password of user allowed to access at WebDAV Server

## Outputs

## Example usage

```yaml
uses: workgroupengineering/litmus@master
with:
  url: 'http://192.168.64.7/'
  webdav-user: 'user'
  webdav-password: ${{ sercet.webdav-password }}
```
