> [!IMPORTANT]
>
> This project is a Dockerized distribution of the [No Flesh Within Chest](https://github.com/Yorunina/No-Flesh-Within-Chest) integration package server. The source of the integration package is specified in the `3 Reference` section below. Please note that this integration package is released under the [GPL-3.0](https://github.com/Yorunina/No-Flesh-Within-Chest/blob/main/LICENSE) license, and the author states: **"Distribution is allowed, but please do not repackage and upload or directly profit from this content."**
>
> By using this project, you acknowledge and agree that the [Minecraft EULA](https://account.mojang.com/documents/minecraft_eula) is automatically set to TRUE.
> 
> 此项目为 Docker 化分发的 [No Flesh Within Chest](https://github.com/Yorunina/No-Flesh-Within-Chest) 整合包服务器。整合包出处在下方的 `3 Reference` 中注明了，请注意此整合包基于 [GPL-3.0](https://github.com/Yorunina/No-Flesh-Within-Chest/blob/main/LICENSE) 协议发布，同时作者声明：**“允许分发，但请勿二次包装上传或凭此内容直接盈利”**。
> 
> 使用本项目即表示您承认并同意 [Minecraft EULA](https://account.mojang.com/documents/minecraft_eula) 已自动设置为 TRUE。

<div align="center">
	<img src="https://github.com/OPDMC/1.19.2-NoFleshWithinChest/raw/main/docs/%23README/icon.png" width="20%"/>
    <h1>1.19.2-NoFleshWithinChest <code>v1.b0.3.2</code></h1>
	<a href='https://github.com/OPDMC/1.19.2-NoFleshWithinChest'><img src="https://img.shields.io/badge/-GitHub-3A3A3A?style=flat&amp;logo=GitHub&amp;logoColor=white" referrerpolicy="no-referrer" alt="GitHub"></a>
	<a href='https://github.com/OPDMC/1.19.2-NoFleshWithinChest/pkgs/container/1.19.2-nofleshwithinchest'><img src="https://img.shields.io/badge/Ghcr.io-v1.b0.3.2-555555?labelColor=8957E5&style=flat&amp;logo=GitHub&amp;logoColor=white" referrerpolicy="no-referrer" alt="Ghcr.io"></a>
	<a href='https://hub.docker.com/r/opdmc/1.19.2-nofleshwithinchest'><img src="https://img.shields.io/badge/DockerHub-v1.b0.3.2-555555?labelColor=1c90ed&style=flat&amp;logo=Docker&amp;logoColor=white" referrerpolicy="no-referrer" alt="DockerHub"></a>

![Docker Image Size](https://img.shields.io/docker/image-size/opdmc/1.19.2-nofleshwithinchest?arch=amd64&label=AMD64&color=006688) ![Docker Image Size](https://img.shields.io/docker/image-size/opdmc/1.19.2-nofleshwithinchest?arch=arm64&label=ARM64&color=008866)
    </tr>
</div>


## 1 Description | 说明

这是OPDMC群友自用的Docker化分发的 `No Flesh Within Chest (NFWC)` 整合包服务器。其目的是为了便于部署。整合包作者在下方的 `3 Reference` 中注明了，请尊重原作者版权。

This is a Dockerized Minecraft server for personal use by OPDMC group members, based on the `No Flesh Within Chest (NFWC)` modpack. Its purpose is to facilitate deployment. The authors of the integrated modpack are credited in the `3 Reference` section below. Please respect the original authors' copyrights.

### 1.1 Version Number | 版本号

#### Composite Version Number | 组合版本号

由于此项目是基于 `No Flesh Within Chest (NFWC)` 整合包制作的，所以版本号是由 Docker 镜像的版本号与整合包的版本号组合而成的。例如 `v1.b0.3.2` 表示 Docker 镜像的版本号是 `v1`，整合包的版本号是 `bata 0.3.2`。

Since this project is based on the `No Flesh Within Chest (NFWC)` modpack, the version number is a combination of the Docker image version number and the modpack version number. For example, `v1.b0.3.2` means the Docker image version number is `v1`, and the modpack version number is `bata 0.3.2`.

#### Update Rule | 更新策略

版本号用 `vA.B` 表示 (eg: `v1.0`, `v1.1`, `v2.0`)，其中 `A` 的改变表示用 `-v /path/to/store/data:/minecraft` 挂载的持久性文件中需要手动做出一些改变。而 `B` 表示小版本更新，理论上 `v1.0` 可以直接升级到 `v1.1` 因为它们的大版本是相同的。

对于此整合包特殊的组合版本号，`B` 可以理解为 `NFWC` 的组合版本。例如在 `v1.b0.3.2` 中， `A` 是 `v1`，`B` 是 `b0.3.2`。

Version numbers are represented as `vA.B` (eg: `v1.0`, `v1.1`, `v2.0`), where changes to `A` indicate that some manual modifications are required in the persistent files mounted with `-v /path/to/store/data:/minecraft`. On the other hand, `B` represents minor version updates; theoretically, `v1.0` can be directly upgraded to `v1.1` because they share the same major version.

For this special composite version number of the modpack, `B` can be understood as the combined version of `NFWC`. For example, in `v1.b0.3.2`, `A` is `v1`, and `B` is `b0.3.2`.

## 2 Usage | 使用

```shell
# DockerHub
docker pull opdmc/1.19.2-nofleshwithinchest:latest
# Ghcr.io
docker pull ghcr.io/opdmc/1.19.2-nofleshwithinchest:latest
```

```shell
docker run -it \
  --name=1.19.2-nofleshwithinchest \
  -p 127.0.0.1:80:25565/tcp \
  -v /path/to/store/data:/minecraft \
  opdmc/1.19.2-nofleshwithinchest
```

| Parameter                           | Function                                                               |                                         |
|-------------------------------------|------------------------------------------------------------------------|-----------------------------------------|
| `-p 127.0.0.1:80:25565/tcp`         | Minecraft server port                                                  | MC服务器端口                                 |
| `-v /path/to/store/data:/minecraft` | To store data in local, auto initialize if `docker-start.sh` NOT exist | 服务器文件映射路径, `docker-start.sh` 不存在时将进行初始化 |

## 3 Reference | 参考索引

- ***No Flesh Within Chest***
    - **Author**
        - https://github.com/Yorunina
    - **Project Source**
        - https://github.com/Yorunina/No-Flesh-Within-Chest
        - https://www.mcmod.cn/modpack/722.html

## 4 License

Source author statement: **"Distribution is allowed, but please do not repackage and upload or directly profit from this content."** Please respect the source author's copyright.

By using this project, you agree to the Minecraft End User License Agreement (EULA). The EULA can be found at the following link: [Minecraft EULA](https://account.mojang.com/documents/minecraft_eula).  This project automatically sets the EULA to true in the Minecraft configuration. By continuing to use this project, you acknowledge that you have read, understood, and agreed to the terms of the Minecraft EULA.

源作者声明：**“允许分发，但请勿二次包装上传或凭此内容直接盈利。”** 请尊重源作者版权。

使用本项目即表示您同意《Minecraft 最终用户许可协议》（EULA）。EULA 可通过以下链接查看：[Minecraft EULA](https://account.mojang.com/documents/minecraft_eula)。 本项目会自动在 Minecraft 配置中将 EULA 设置为 true。继续使用本项目即表示您已阅读、理解并同意 Minecraft EULA 的条款。

GNU General Public License v3.0
