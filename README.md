> [!IMPORTANT]
> 
> By using this project, you acknowledge and agree that the [Minecraft EULA](https://account.mojang.com/documents/minecraft_eula) is automatically set to TRUE.
> 
> 使用本项目即表示您承认并同意 [Minecraft EULA](https://account.mojang.com/documents/minecraft_eula) 已自动设置为 TRUE。

<div align="center">
	<img §§template§§ src="https://github.com/OPDMC/Template-MCServer/raw/main/docs/%23README/icon.png" width="20%"/>
    <h1>§§template§§-MCServer <code>v2.2</code></h1>
	<a §§template§§ href='https://github.com/OPDMC/Template-MCServer'><img src="https://img.shields.io/badge/-GitHub-3A3A3A?style=flat&amp;logo=GitHub&amp;logoColor=white" referrerpolicy="no-referrer" alt="GitHub"></a>
	<a §§template§§ href='https://github.com/OPDMC/Template-MCServer/pkgs/container/template-mcserver'><img src="https://img.shields.io/badge/Ghcr.io-v2.2-555555?labelColor=8957E5&style=flat&amp;logo=GitHub&amp;logoColor=white" referrerpolicy="no-referrer" alt="Ghcr.io"></a>
	<a §§template§§ href='https://hub.docker.com/r/opdmc/template-mcserver'><img src="https://img.shields.io/badge/DockerHub-v2.2-555555?labelColor=1c90ed&style=flat&amp;logo=Docker&amp;logoColor=white" referrerpolicy="no-referrer" alt="DockerHub"></a>

![Docker Image Size §§template§§](https://img.shields.io/docker/image-size/opdmc/template-mcserver?arch=amd64&label=AMD64&color=006688) ![Docker Image Size §§template§§](https://img.shields.io/docker/image-size/opdmc/template-mcserver?arch=arm64&label=ARM64&color=008866)
    </tr>
</div>


## 1 Description

所有包含 `§§template§§` 的内容都是模板，需要在使用时替换。

Everything that includes `§§template§§` is a template and needs to be replaced when used.

这是OPDMC群友自用的Docker化MC服务器。其目的是为了便于部署。整合的插件/模组作者在下方的 `3 Reference` 中注明了，请尊重原作者版权。

This is a Dockerized Minecraft server for personal use by OPDMC group members, its purpose is to facilitate deployment. The authors of the integrated plugins/mods are credited in the `3 Reference` section below. Please respect the original authors' copyrights.

### 1.1 Update Rule

版本号用 `vA.B` 表示 (eg: `v1.0`, `v1.1`, `v2.0`)，其中 `A` 的改变表示用 `-v /path/to/store/data:/minecraft` 挂载的持久性文件中需要手动做出一些改变。而 `B` 表示小版本更新，理论上 `v1.0` 可以直接升级到 `v1.1` 因为它们的大版本是相同的。

Version numbers are represented as `vA.B` (eg: `v1.0`, `v1.1`, `v2.0`), where changes to `A` indicate that some manual modifications are required in the persistent files mounted with `-v /path/to/store/data:/minecraft`. On the other hand, `B` represents minor version updates; theoretically, `v1.0` can be directly upgraded to `v1.1` because they share the same major version.

## 2 Usage

```shell
# DockerHub §§template§§
docker pull opdmc/template-mcserver:latest
# Ghcr.io §§template§§
docker pull ghcr.io/opdmc/template-mcserver:latest
```

```shell
#§§template§§
docker run -d \
  --name=template-mcserver \
  -p 127.0.0.1:80:25565/tcp \
  -v /path/to/store/data:/minecraft \
  opdmc/template-mcserver
```

| Parameter                             | Function                                                        |                                  |
|---------------------------------------|-----------------------------------------------------------------|----------------------------------|
| `-p 127.0.0.1:80:25565/tcp`           | Minecraft server port                                           | MC服务器端口                          |
| `-v /path/to/store/data:/minecraft`   | To store data in local, auto initialize if `start.sh` NOT exist | 服务器文件映射路径, `start.sh` 存在时将不进行初始化 |

## 3 Reference §§template§§

- **Fabric**
  - https://fabricmc.net/

## 4 License

By using this project, you agree to the Minecraft End User License Agreement (EULA). The EULA can be found at the following link: [Minecraft EULA](https://account.mojang.com/documents/minecraft_eula).  This project automatically sets the EULA to true in the Minecraft configuration. By continuing to use this project, you acknowledge that you have read, understood, and agreed to the terms of the Minecraft EULA.

使用本项目即表示您同意《Minecraft 最终用户许可协议》（EULA）。EULA 可通过以下链接查看：[Minecraft EULA](https://account.mojang.com/documents/minecraft_eula)。 本项目会自动在 Minecraft 配置中将 EULA 设置为 true。继续使用本项目即表示您已阅读、理解并同意 Minecraft EULA 的条款。

Apache License 2.0
