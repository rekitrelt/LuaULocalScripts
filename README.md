# LuaULocalScripts

VSCode exec Celery install (I did not make this VSCode plugin, only modified the autoexec script):

1. Install the Roblox WS Server extension for Visual Studio Code from the [Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=incognito-developer.roblox-ws-server&ssr=false#version-history)

2. Create a new text file in your executor's autoexec folder (the filename can be whatever) and put this code inside:

   ```lua
   repeat task.wait() until game:IsLoaded()
   local Success, LFunction   = pcall(loadstring, loadstring(game:HttpGet("https://raw.githubusercontent.com/rekitrelt/LuaULocalScripts/main/vscode.lua", true))())
   spawn(LFunction)
   ```
