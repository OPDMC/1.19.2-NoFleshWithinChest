![Docker Image Size (tag)](https://img.shields.io/docker/image-size/opdmc/1.19.2-nofleshwithinchest/v1.b0.3.2?arch=amd64&label=AMD64%20v1.b0.3.2&color=006688) ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/opdmc/1.19.2-nofleshwithinchest/v1.b0.3.2?arch=arm64&label=ARM64%20v1.b0.3.2&color=008866)

---

# [1.19.2-NoFleshWithinChest v1.b0.3.2](https://github.com/OPDMC/1.19.2-NoFleshWithinChest/releases/tag/v1.b0.3.2)

> [!IMPORTANT]
>
> This project is a Dockerized distribution of the [No Flesh Within Chest](https://github.com/Yorunina/No-Flesh-Within-Chest) integration package server. The source of the integration package is specified in the `3 Reference` section below. Please note that this integration package is released under the [GPL-3.0](https://github.com/Yorunina/No-Flesh-Within-Chest/blob/main/LICENSE) license, and the author states: **"Distribution is allowed, but please do not repackage and upload or directly profit from this content."**
>
> By using this project, you acknowledge and agree that the [Minecraft EULA](https://account.mojang.com/documents/minecraft_eula) is automatically set to TRUE.
>
> 此项目为 Docker 化分发的 [No Flesh Within Chest](https://github.com/Yorunina/No-Flesh-Within-Chest) 整合包服务器。整合包出处在下方的 `3 Reference` 中注明了，请注意此整合包基于 [GPL-3.0](https://github.com/Yorunina/No-Flesh-Within-Chest/blob/main/LICENSE) 协议发布，同时作者声明：**“允许分发，但请勿二次包装上传或凭此内容直接盈利”**。
>
> 使用本项目即表示您承认并同意 [Minecraft EULA](https://account.mojang.com/documents/minecraft_eula) 已自动设置为 TRUE。

<a href='https://hub.docker.com/r/opdmc/1.19.2-nofleshwithinchest'><img src="https://img.shields.io/badge/-DockerHub-1c90ed?style=flat&amp;logo=Docker&amp;logoColor=white" referrerpolicy="no-referrer" alt="DockerHub"></a> <a href='https://github.com/OPDMC/1.19.2-NoFleshWithinChest/pkgs/container/1.19.2-nofleshwithinchest'><img src="https://img.shields.io/badge/-Ghcr.io-8957E5?style=flat&amp;logo=GitHub&amp;logoColor=white" referrerpolicy="no-referrer" alt="Ghcr.io"></a>

![Docker Image Size (tag)](https://img.shields.io/docker/image-size/opdmc/1.19.2-nofleshwithinchest/v1.b0.3.2?arch=amd64&label=AMD64%20v1.b0.3.2&color=006688) ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/opdmc/1.19.2-nofleshwithinchest/v1.b0.3.2?arch=arm64&label=ARM64%20v1.b0.3.2&color=008866)

### Usage

```shell
# DockerHub
docker pull opdmc/1.19.2-nofleshwithinchest:v1.b0.3.2
# Ghcr.io
docker pull ghcr.io/opdmc/1.19.2-nofleshwithinchest:v1.b0.3.2
```

```shell
docker run -d \
  --name=1.19.2-nofleshwithinchest \
  -p 127.0.0.1:80:25565/tcp \
  -v /path/to/store/data:/minecraft \
  opdmc/1.19.2-nofleshwithinchest
```

### Changelog

**Full Changelog**: https://github.com/OPDMC/1.19.2-NoFleshWithinChest/commits/v1.0