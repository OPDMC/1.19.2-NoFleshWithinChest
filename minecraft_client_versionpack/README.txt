# 玩家指南 For Players

当你下载并解压此文件夹，将其放入 `.minecraft/versions` 文件夹中，然后在启动器中选择这个版本，即可开始游戏。

When you download and extract this folder, put it into `.minecraft/versions` folder, then select this version in the launcher, you can start the game.

请确保你的启动器支持版本选择功能和自动下载补全依赖。并且确保放入`.minecraft/versions`中的文件夹名字与此目录中 jar 文件的文件名一致。例如如果此处的 jar 文件名为 `1.19.4-Fabric.jar`，那么你的文件夹名也应该是 `1.19.4-Fabric`，最终效果是 `.minecraft/versions/1.19.4-Fabric/1.19.4-Fabric.jar`。

Please make sure your launcher supports version selection and automatic download of dependencies. And make sure the folder name in `.minecraft/versions` is the same as the jar file name in this directory. For example, if the jar file name here is `1.19.4-Fabric.jar`, then your folder name should also be `1.19.4-Fabric`, the final effect is `.minecraft/versions/1.19.4-Fabric/1.19.4-Fabric.jar`.

# For GitHub Users

这是 Minecraft 客户端的版本目录。最低要求只有 `<repo_name>.jar` 和 `<repo_name>.json`。其他文件，如 `mods` 文件夹，也可以包含在内。

This is the version dir for Minecraft Client. Minimal requirements are only `<repo_name>.jar` and `<repo_name>.json`. Other files like `mods` folder may be included. 

如果客户端没有特殊需要，可以关闭客户端打包的 Action Workflow 并删除此文件夹。

If the client has no special needs, you can disable the client packaging Action Workflow and delete this folder.
