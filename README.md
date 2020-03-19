# docker-image-clamAV

## 概述

通过镜像更新杀毒软件

## 使用说明

```
docker run -i -v {需要扫描的目录}:/scan:ro registry.cn-hangzhou.aliyuncs.com/marmot/clamav
```