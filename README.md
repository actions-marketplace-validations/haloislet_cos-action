# cos action

基于 coscmd 的 gitHub action，用来操作腾讯云 cos

## 使用示例

```yaml
name: cos upload
on: [push]

jobs:
  cos-action:
    runs-on: ubuntu-latest
    steps:
    - name: upload
      uses: haloislet/cos-action@v1
      with:
        COMMAND: coscmd upload -r ./ /
        SECRET_ID: ${{ secrets.SECRET_ID }}
        SECRET_KEY: ${{ secrets.SECRET_KEY }}
        BUCKET: ${{ secrets.BUCKET }}
        REGION: ${{ secrets.REGION }}
```
