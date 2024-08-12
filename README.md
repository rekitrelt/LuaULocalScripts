# LuaULocalScripts

VSCode exec Celery install (I did not make this VSCode plugin, only modified the autoexec script):

1. Install the Roblox WS Server extension for Visual Studio Code from the [Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=incognito-developer.roblox-ws-server&ssr=false#version-history)

2. Create a new text file in your executor's autoexec folder (the filename can be whatever)

   ```lua
   repeat task.wait() until game:IsLoaded()

   local Success, Data       = pcall(game.HttpGet, game, "https://raw.githubusercontent.com/")
   local Success, LFunction   = pcall(loadstring, Data)

   spawn(LFunction)
   ```
