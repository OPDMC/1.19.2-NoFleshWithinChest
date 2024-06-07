§§template§§§§template§§§§template§§

![Docker Image Size (tag)](https://img.shields.io/docker/image-size/opdmc/template-mcserver/v2.2?arch=amd64&label=AMD64%20v2.2&color=006688) ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/opdmc/template-mcserver/v2.2?arch=arm64&label=ARM64%20v2.2&color=008866)

![Docker Image Size (tag)](https://img.shields.io/docker/image-size/opdmc/template-mcserver/v2.1?arch=amd64&label=AMD64%20v2.1&color=006688) ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/opdmc/template-mcserver/v2.1?arch=arm64&label=ARM64%20v2.1&color=008866)

![Docker Image Size (tag)](https://img.shields.io/docker/image-size/opdmc/template-mcserver/v2.0?arch=amd64&label=AMD64%20v2.0&color=006688) ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/opdmc/template-mcserver/v2.0?arch=arm64&label=ARM64%20v2.0&color=008866)

---

# [Template-MCServer v2.2](https://github.com/OPDMC/Template-MCServer/releases/tag/v2.2)

> [!IMPORTANT]
> By using this project, you acknowledge and agree that the [Minecraft EULA](https://account.mojang.com/documents/minecraft_eula) is automatically set to TRUE.
>
> 使用本项目即表示您承认并同意 [Minecraft EULA](https://account.mojang.com/documents/minecraft_eula) 已自动设置为 TRUE。

<a href='https://hub.docker.com/r/opdmc/template-mcserver'><img src="https://img.shields.io/badge/-DockerHub-1c90ed?style=flat&amp;logo=Docker&amp;logoColor=white" referrerpolicy="no-referrer" alt="DockerHub"></a> <a href='https://github.com/OPDMC/Template-MCServer/pkgs/container/template-mcserver'><img src="https://img.shields.io/badge/-Ghcr.io-8957E5?style=flat&amp;logo=GitHub&amp;logoColor=white" referrerpolicy="no-referrer" alt="Ghcr.io"></a>

![Docker Image Size (tag)](https://img.shields.io/docker/image-size/opdmc/template-mcserver/v2.2?arch=amd64&label=AMD64%20v2.2&color=006688) ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/opdmc/template-mcserver/v2.2?arch=arm64&label=ARM64%20v2.2&color=008866)

### Release Notes

- Upgraded Workflows
- Provided Curseforge Modpack for Client

### Usage

```shell
# DockerHub
docker pull opdmc/template-mcserver:v2.2
# Ghcr.io
docker pull ghcr.io/opdmc/template-mcserver:v2.2
```

```shell
docker run -d \
  --name=1.19.4-opdmc \
  -p 127.0.0.1:80:25565/tcp \
  -v /path/to/store/data:/minecraft \
  opdmc/1.19.4-opdmodcarpet:latest
```

### Changelog

**Full Changelog**: https://github.com/OPDMC/Template-MCServer/compare/v2.1...v2.2

# [Template-MCServer v2.1](https://github.com/OPDMC/Template-MCServer/releases/tag/v2.1)

> [!IMPORTANT]
> By using this project, you acknowledge and agree that the [Minecraft EULA](https://account.mojang.com/documents/minecraft_eula) is automatically set to TRUE.
> 
> 使用本项目即表示您承认并同意 [Minecraft EULA](https://account.mojang.com/documents/minecraft_eula) 已自动设置为 TRUE。

<a href='https://hub.docker.com/r/opdmc/template-mcserver'><img src="https://img.shields.io/badge/-DockerHub-1c90ed?style=flat&amp;logo=Docker&amp;logoColor=white" referrerpolicy="no-referrer" alt="DockerHub"></a> <a href='https://github.com/OPDMC/Template-MCServer/pkgs/container/template-mcserver'><img src="https://img.shields.io/badge/-Ghcr.io-8957E5?style=flat&amp;logo=GitHub&amp;logoColor=white" referrerpolicy="no-referrer" alt="Ghcr.io"></a>

![Docker Image Size (tag)](https://img.shields.io/docker/image-size/opdmc/template-mcserver/v2.1?arch=amd64&label=AMD64%20v2.1&color=006688) ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/opdmc/template-mcserver/v2.1?arch=arm64&label=ARM64%20v2.1&color=008866)

### Usage

```shell
# DockerHub
docker pull opdmc/template-mcserver:v2.1
# Ghcr.io
docker pull ghcr.io/opdmc/template-mcserver:v2.1
```

```shell
docker run -d \
  --name=1.19.4-opdmc \
  -p 127.0.0.1:80:25565/tcp \
  -v /path/to/store/data:/minecraft \
  opdmc/1.19.4-opdmodcarpet:latest
```

### Changelog

**Full Changelog**: https://github.com/OPDMC/Template-MCServer/compare/v2.0...v2.1

# [Template-MCServer v2.0](https://github.com/OPDMC/Template-MCServer/releases/tag/v2.0)

> [!IMPORTANT]
> By using this project, you acknowledge and agree that the [Minecraft EULA](https://account.mojang.com/documents/minecraft_eula) is automatically set to TRUE.
> 
> 使用本项目即表示您承认并同意 [Minecraft EULA](https://account.mojang.com/documents/minecraft_eula) 已自动设置为 TRUE。

<a href='https://hub.docker.com/r/opdmc/template-mcserver'><img src="https://img.shields.io/badge/-DockerHub-1c90ed?style=flat&amp;logo=Docker&amp;logoColor=white" referrerpolicy="no-referrer" alt="DockerHub"></a> <a href='https://github.com/OPDMC/Template-MCServer/pkgs/container/template-mcserver'><img src="https://img.shields.io/badge/-Ghcr.io-8957E5?style=flat&amp;logo=GitHub&amp;logoColor=white" referrerpolicy="no-referrer" alt="Ghcr.io"></a>

![Docker Image Size (tag)](https://img.shields.io/docker/image-size/opdmc/template-mcserver/v2.0?arch=amd64&label=AMD64%20v2.0&color=006688) ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/opdmc/template-mcserver/v2.0?arch=arm64&label=ARM64%20v2.0&color=008866)

### Usage

```shell
# DockerHub
docker pull opdmc/template-mcserver:v2.0
# Ghcr.io
docker pull ghcr.io/opdmc/template-mcserver:v2.0
```

```shell
docker run -d \
  --name=1.19.4-opdmc \
  -p 127.0.0.1:80:25565/tcp \
  -v /path/to/store/data:/minecraft \
  opdmc/1.19.4-opdmodcarpet:latest
```

### Changelog

**Full Changelog**: https://github.com/OPDMC/Template-MCServer/compare/v1.0...v2.0

# [Template-MCServer v1.0](https://github.com/OPDMC/Template-MCServer/releases/tag/v1.0)

> [!IMPORTANT]
> By using this project, you acknowledge and agree that the [Minecraft EULA](https://account.mojang.com/documents/minecraft_eula) is automatically set to TRUE.
> 
> 使用本项目即表示您承认并同意 [Minecraft EULA](https://account.mojang.com/documents/minecraft_eula) 已自动设置为 TRUE。

### Changelog

**Full Changelog**: https://github.com/OPDMC/Template-MCServer/commits/v1.0