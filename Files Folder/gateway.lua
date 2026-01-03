--[[

  ____      ____      __   __    __   __    ______   ____      ____          __  __    __  __    ____
 /\  _`\   /\  _`\   /\ \ /\ \  /\ \ /\ \  /\__  _\ /\  _`\   /\  _`\       /\ \/\ \  /\ \/\ \  /\  _`\
 \ \ \/\ \ \ \ \L\_\ \ `\`\/'/' \ `\`\/'/' \/_/\ \/ \ \ \L\_\ \ \ \L\ \     \ \ \_\ \ \ \ \ \ \ \ \ \L\ \
  \ \ \ \ \ \ \  _\L  `\/ > <    `\/ > <      \ \ \  \ \  _\L  \ \ ,  /      \ \  _  \ \ \ \ \ \ \ \  _ <'
   \ \ \_\ \ \ \ \L\ \   \/'/\`\    \/'/\`\    \ \ \  \ \ \L\ \ \ \ \\ \      \ \ \ \ \ \ \ \_\ \ \ \ \L\ \
    \ \____/  \ \____/   /\_\\ \_\  /\_\\ \_\   \ \_\  \ \____/  \ \_\ \_\     \ \_\ \_\ \ \_____\ \ \____/
     \/___/    \/___/    \/_/ \/_/  \/_/ \/_/    \/_/   \/___/    \/_/\/ /      \/_/\/_/  \/_____/  \/___/

DEXXTER HUB  -  @MAIN EDITION SCRIPT: GATEWAY

Made by Dexxter Services  -  https://discord.gg/WyXpAxGnTT | dexxterservices.com
Modification of the script, including attempting to bypass or crack the script for any reason is not allowed.

Copyright © 2026 Dexxter Services. All Rights Reserved.

--]]


-- START

local Game,Workspace
repeat task.wait()
    Game=game or Game;Workspace=workspace or Workspace
until
    Game and Game.GetService and Game.GetService(Game,'Players')and Game.GetService(Game,'Players').LocalPlayer and Game.PlaceId and Workspace


-- SETTING

local consoletag=':: dexxter ::'local scriptag='gateway'local scriptagautoexec='G6j1g0sF329K7'local scriptagscript='jT3952_4610sA8'

local getrenv=getrenv or syn_getrenv or(syn and syn.getrenv)or getfenv
local getgenv=getgenv or syn_getgenv or(getfenv and function()return getfenv(2)end)or getrenv or function()return shared end

local GetService=Game.GetService
local get_service=setmetatable({},{__index=function(self,ServiceName)local Service=cloneref(GetService(Game,ServiceName))rawset(self,ServiceName,Service)return Service end})


--- services
local coregui=get_service.CoreGui;local players=get_service.Players;local teleportservice=get_service.TeleportService;local runservice=get_service.RunService


--- global variables
getgenv().cloneref=cloneref or function(...)return...end
getgenv().queueonteleport=queue_on_teleport or(syn and syn.queue_on_teleport)or(fluxus and fluxus.queue_on_teleport)or queueonteleport
getgenv().gethui = gethui or gethiddenui or get_hidden_ui or get_hidden_gui or(hiddenui and function()return hiddenui()end)or function()return coregui end


--- local variable
local getrenv=getrenv or syn_getrenv or(syn and syn.getrenv)or getfenv
local getgenv=getgenv or syn_getgenv or(getfenv and function()return getfenv(2)end)or getrenv or function()return shared end


--- variable
_HIGH_DEBUG=highdebug or false;_SCRIPT_KEY=script_key or nil

_LANGUAGE=language or nil;_SKIP_LOADING=skip_loading or false;_DISABLE_AUTO_EXEC=disable_auto_exec or false;_DELAY_EXECUTE=delay_execute or 0

_WHITESCREEN=whitescreen or false;_BLACKSCREEN=blackscreen or false
_AUTO_REJOIN=auto_rejoin or false;_STREAMER_MODE=streamer_mode or false
_AIMBOT=aimbot or false;_PREMIUM=premium or false;_ONE_CLICK=one_click or false


-- OTHER

task.wait(_DELAY_EXECUTE or 0)


-- LOCAL FUNCTION

local make_output_internal=function(text,flagtype,outputtype,includescripttag,considerdebug)
    local text=('string'==typeof(text)and text)or nil
    local flagtype=('string'==typeof(flagtype)and flagtype)or nil
    local outputtype=(1==outputtype and warn)or(2==outputtype and print)or nil

    if not(text or outputtype)then return end

    if'boolean'==typeof(considerdebug)then else considerdebug=false end
    if'boolean'==typeof(includescripttag)then else includescripttag=false end

    local Output=(
        flagtype and includescripttag and('%s %s %s: %s'):format(consoletag,flagtype,scriptag,text)
    )
        or ('%s %s'):format(consoletag,text)

    if considerdebug and _HIGH_DEBUG then outputtype(Output)end
end

--- local make_output_external=function()end

local set_auto_exec=function()

      local c=''    ..'loa'..'dst' ..'rin'..'g(G' ..'ame:HttpGe'
      ..'t("' ..'h'   ..'t'..'t'     ..'p'..'s'       ..':/'
      ..'/cd' ..'n'   ..'.'..'j'     ..'s'..'d'       ..'el'
      ..'ivr' ..'.'     ..'ne'         ..'t/'         ..'gh'
      ..'/De' ..'x'   ..'x'..'t'     ..'e'..'r'       ..'Se'
      ..'rvi' ..'c'   ..'e'..'s'     ..'-'..'O'       ..'ff'
      ..'icial/D'   ..'exx'..'ter' ..'Hub'..'-lu'     ..'au'

               ..'@loader/FilesFolder/gateway.lua"))()'

    if queueonteleport and not(
        getgenv()[scriptagautoexec] or _DISABLE_AUTO_EXEC --- or _AIMBOT
    )then
        xpcall(function()
            make_output_internal('set auto execute','!~',1,true,true)

            --- if _SCRIPT_KEY or _PREMIUM then
            if _SCRIPT_KEY then
                local queuecode=(
                    '_COME_TELEPORT=true;highdebug=%s;language=%s;skip_loading=%s;script_key=%s;whitescreen=%s;blackscreen=%s;auto_rejoin=%s;streamer_mode=%s;aimbot=%s;premium=%s;one_click=%s;'..c
                ):format(
                    tostring(_HIGH_DEBUG),tostring(_LANGUAGE),tostring(_SKIP_LOADING),tostring(_SCRIPT_KEY),tostring(_WHITESCREEN),tostring(_BLACKSCREEN),tostring(_AUTO_REJOIN),tostring(_STREAMER_MODE),tostring(_AIMBOT),tostring(_PREMIUM),tostring(_ONE_CLICK)
                )
                queueonteleport(queuecode)

            else
                local queuecode=(
                    '_COME_TELEPORT=true;highdebug=%s;language=%s;skip_loading=%s;whitescreen=%s;blackscreen=%s;auto_rejoin=%s;streamer_mode=%s;aimbot=%s;premium=%s;one_click=%s;'..c
                ):format(
                    tostring(_HIGH_DEBUG),tostring(_LANGUAGE),tostring(_SKIP_LOADING),tostring(_WHITESCREEN),tostring(_BLACKSCREEN),tostring(_AUTO_REJOIN),tostring(_STREAMER_MODE),tostring(_AIMBOT),tostring(_PREMIUM),tostring(_ONE_CLICK)
                )
                queueonteleport(queuecode)
            end
            getgenv()[scriptagautoexec]=true

        end,function(Err)make_output_internal(('auto execute function: error: %s'):format(Err),'?~',1,true,true)end)
    end
end
set_auto_exec()


--- CHECK

--[=[
local supportedgameslist={
    {{126509999114328;1};{4639625707;1};{17625359962;1};{70876832253163;1};{14708751132;2};{221718525;1};{6490016198;1}};
    {};
    {{116495829188952;1};{79546208627805;1};{117398147513099;1};{71874690745115;1}};
}

do if _COME_TELEPORT then

    make_output_internal('auto execute active','!~',1,true,true)
    for _,v in pairs(supportedgameslist) do
        if not table.find(v,Game.PlaceId)then return end
    end

end end
]=]


--- LOAD

local __c={
    ['__game1']=function()
        local g=Game.PlaceId
        if g==126509999114328 then return'v4/loaders/3c8e6f7487d098d1a5f67eb6f56b0978.lua' --- 99 nights
        elseif g==4639625707 then return'v4/loaders/955b4f6de376f0fbc2fe3387d09d62a7.lua' --- war tycoon
        elseif g==17625359962 then return'v4/loaders/a605d0b5e913bf65e6a2bc10668607c2.lua' --- rivals
        elseif g==70876832253163 then return'v4/loaders/abb2a360fc6aeb2fa200a9414bbb92a4.lua' --- dead rails
        elseif g==14708751132 then return'v4/loaders/02c26ee865a64ce37405976d2fffac90.lua' --- untitled gym game
        elseif g==221718525 then return'v4/loaders/79ec6ad1d153118879b35d7cfa96b7ab.lua' --- ninja tycoon
        elseif g==6490016198 then return'v4/loaders/03236ddb3629163d6a5f24de82386e7c.lua' --- slayer tycoon
        --- else return'v4/loaders/???.lua' -- universal
        end
        return nil
    end;

    --[=[
    ['__game2']=function()
        local g=Game.PlaceId
        if g==14708751132 then returns'v4/loaders/02c26ee865a64ce37405976d2fffac90.lua' --- untitled gym game
        --- else return'v4/loaders/???.lua' -- universal
        end
        return nil
    end;
    ]=]
    --[=[
    ['__premium']=function()
        local g=Game.PlaceId
        if g==126509999114328 then return'v4/loaders/dff70f964e86a2a045d0a239471d0f79.lua' --- 99 nights
        --- else return'v4/loaders/???.lua' -- universal
        end
        return nil
    end;
    ]=]

    --[=[
    ['__oneclick']=function()
        local g=Game.PlaceId
        if g=='???'then return'v4/loaders/???.lua' --- ???
        else returns'\n'end
    end;
    ]=]
    --[=[
    ['__rollback']=function()
        local g=Game.PlaceId
        if g=='???'then return'v4/loaders/?.lua' --- ???
        else return'\n'end
    end;
    ]=]

    ['__nokey']=function()
        --[=[
        local g=Game.PlaceId
        if g==(17625359962 or 117398147513099 or 71874690745115)then return'v4/loaders/a605d0b5e913bf65e6a2bc10668607c2.lua' --- rivals
        end
        ]=]
        return nil
    end;
    ['__load']=function(s)loadstring(Game:HttpGet(s))()end
}


-- SETTING

if not getgenv()[scriptagscript]then
    make_output_internal('setting up add-on functions','!~',1,true,true)

    local client,teleport=players.LocalPlayer,teleportservice.Teleport
    local currentcamera=Workspace.CurrentCamera

    --- anti gameplay paused
    do
        make_output_internal('setting up anti-gpp','!~',2,true,true)

        client.Changed:Connect(function(Parameter)
            xpcall(function()
                if Parameter=='GameplayPaused'then client.GameplayPaused=false end

            end, function(Err)make_output_internal(('anti-gpp: error: %s'):format(Err),'?~',1,true,true)end)
        end)

    end

    --- auto rejoin
    do if _AUTO_REJOIN or _ONE_CLICK then
        make_output_internal('setting up auto-rejoin','!~',2,true,true)

        task.spawn(function()
            while getgenv()[scriptagscript]do task.wait()
                xpcall(function()
                    get_service.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(Instance)
                        if Instance.Name=='ErrorPrompt'and Game.FindFirstChild(Instance,'MessageArea')and Game.FindFirstChild(Instance.MessageArea,'ErrorFrame')then teleport(teleportservice,Game.PlaceId,client)end
                    end)

                end, function(Err)make_output_internal(('auto rejoin: error: %s'):format(Err),'?~',1,true,true)end)
            end
        end)

    end end

    --- streamer mode
    do if _STREAMER_MODE then
        make_output_internal('setting up streamer mode','!~',2,true,true)

        xpcall(function()
            local protect_message=function(messagetarget,messagechange)
                local allspace=Game.GetDescendants(Game)

                local modifyinstancefunction = function(instance)
                    task.defer(function()
                        if instance.ClassName=='TextLabel'then
                            if string.find(instance.Text,messagetarget)then
                                instance.Text=string.gsub(instance.Text,messagetarget,messagechange)
                                instance.Changed:Connect(function()instance.Text=string.gsub(instance.Text,messagetarget,messagechange)end)
                            end

                        elseif instance.ClassName=='TextButton'then
                            if string.find(instance.Text,messagetarget)then
                                instance.Text=string.gsub(instance.Text,messagetarget,messagechange)
                                instance.Changed:Connect(function()instance.Text=string.gsub(instance.Text,messagetarget,messagechange)end)
                            end

                        elseif instance.ClassName=='TextBox'then
                            if string.find(instance.Text,messagetarget)then
                                instance.Text=string.gsub(instance.Text,messagetarget,messagechange)
                                instance.Changed:Connect(function()instance.Text=string.gsub(instance.Text,messagetarget,messagechange)end)
                            end
                        end
                    end)
                end
                for i=1,#allspace do modifyinstancefunction(allspace[i])end;Game.DescendantAdded:Connect(modifyinstancefunction)
            end

            protect_message(client.Name,'[Protected by Dexxter Hub]')
            protect_message(client.DisplayName,'[Protected by Dexxter Hub]')

        end,function(Err)make_output_internal(('streamer mode: error: %s'):format(Err),'?~',1,true,true)end)

    end end

    --- whit escreen & black screen
    do
        make_output_internal('setting up w/b screen','!~',2,true,true)

        local set3drenderingenabled=runservice.Set3dRenderingEnabled

        xpcall(function()
            if _WHITESCREEN or _BLACKSCREEN then
                local setblackscreen=function()end;local Blackscreen,Blackscreen2

                if _BLACKSCREEN then
                    Blackscreen,Blackscreen2=Instance.new('ScreenGui'),Instance.new('Frame')

                    Blackscreen2.Size=UDim2.new(500,0,500,0)Blackscreen2.AnchorPoint=Vector2.new(0.5,0.5)Blackscreen2.Position=UDim2.new(0.5,0,0.5,0)Blackscreen2.BackgroundTransparency=0;Blackscreen2.BackgroundColor3=Color3.new(0,0,0)Blackscreen2.Visible=false
                    Blackscreen.Name='k9a_R7U5C86'Blackscreen.Parent=get_service.CoreGui;Blackscreen2.Name='k9a_R7U5C86'Blackscreen2.Parent=Blackscreen

                    setblackscreen=function(boolean)Blackscreen2.Visible=boolean end
                end

                local Connection;Connection=get_service.UserInputService.WindowFocusReleased:Connect(function()if getgenv()[scriptagscript]then set3drenderingenabled(runservice,false)setblackscreen(true)else Connection:Disconnect()end end)
                local Connection;Connection=get_service.UserInputService.WindowFocused:Connect(function()if getgenv()[scriptagscript]then set3drenderingenabled(runservice,true)setblackscreen(false)else Connection:Disconnect()end end)
            end

        end,function(Err)make_output_internal(('w/b screen: error: %s'):format(Err),'?~',1,true,true)end)

    end

    --- anti afk
    do
        make_output_internal('setting up anti-afk','!~',2,true,true)

        local virtualuser=get_service.VirtualUser
        local button2down,button2up=virtualuser.Button2Down,virtualuser.Button2Up

        task.spawn(function()
            xpcall(function()
                client.Idled:Connect(function()button2down(virtualuser,Vector2.new(0,0),currentcamera.CFrame)task.wait(1)button2up(virtualuser,Vector2.new(0,0),currentcamera.CFrame)end)

            end,function(Err)make_output_internal(('anti-afk: error: %s'):format(Err),'?~',1,true,true)end)
        end)

    end
    getgenv()[scriptagscript]=true

else make_output_internal('add-on functions already set, skipping.','!~',1,true,true)end

--- starting
do
    make_output_internal('starting','!~',1,true,true)

    local tar,wdc=nil,__c['__nokey']()
    loader=__c['__game1']()---loader=__c['__game1']()or __c['__game2']()

    --- if _AIMBOT then __c['__load'](' ??? ')
    --- elseif _PREMIUM then tar=__c['__premium']()__c['__load'](('https://api.luarmor.net/files/%s'):format(tar))
    --- elseif _ONE_CLICK then tar=__c['__oneclick']()__c['__load'](('https://api.luarmor.net/files/%s'):format(tar))
    if wdc and typeof(wdc)=='string'then __c['__load'](('https://api.luarmor.net/files/%s'):format(wdc))

    else if _SCRIPT_KEY then
        __c['__load'](('https://api.luarmor.net/files/%s'):format(loader))

    else
        __c['__load']('https://cdn.jsdelivr.net/gh/DexxterGWM/DexxterScripts-lua_u@loader/Files%20Folder/ScriptBuild.lua')
    end end

end
