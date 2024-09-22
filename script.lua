local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet('https://raw.githubusercontent.com/hoholwaredevz/Fatality/main/Linoriarework.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()
Library:Notify('Loading UI...');
task.wait(3)
local Window = Library:CreateWindow({
    Title = 'vincit.cb',
    Center = true, 
    AutoShow = true,
})

local Tabs = {
    RageBot = Window:AddTab('Aimbot'),
	Miscellaneous = Window:AddTab('Miscellaneous'),
	Visuals = Window:AddTab('Visuals'),
	['UI Settings'] = Window:AddTab('Settings'),
}

local rs = game:GetService("RunService")
local ts = game:GetService("TweenService")
local plrs = game:GetService("Players")
local cas = game:GetService("ContextActionService")



local GetIcon = require(game.ReplicatedStorage.GetIcon)
local AimbotSec1 = Tabs.RageBot:AddLeftGroupbox('Main')
local AimbotSec3 = Tabs.RageBot:AddLeftGroupbox('Desync')
local AimbotSec2 = Tabs.RageBot:AddRightGroupbox('Anti Aim')
local MiscellaneousSec1 = Tabs.Miscellaneous:AddLeftGroupbox('Bhop')
local MiscellaneousSec2 = Tabs.Miscellaneous:AddRightGroupbox('Exploits')
local VisualsSec1 = Tabs.Visuals:AddRightGroupbox('ViewModel Changer')
local VisualsSec2 = Tabs.Visuals:AddRightGroupbox('Another')
local VisualsSec3 = Tabs.Visuals:AddLeftGroupbox('ESP')

local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')

local Camera = workspace.CurrentCamera
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer
local Client = getsenv(LocalPlayer.PlayerGui.Client)
local RunService = game:GetService("RunService")
local Crosshairs = LocalPlayer.PlayerGui.GUI.Crosshairs

AimbotSec1:AddToggle("Rage", {Text = "Enabled", Default = false}):OnChanged(function()
    
end)

AimbotSec1:AddToggle("Prediction", {Text = "Prediction", Default = false}):OnChanged(function()
    
end)
AimbotSec1:AddToggle("InstallKill", {Text = "Instant Kill", Default = false}):OnChanged(function()
    
end)

AimbotSec1:AddToggle("RapidFire", {Text = "RapidFire", Default = false}):OnChanged(function()
    
end)
AimbotSec1:AddDropdown('TargetPart', {


    Values = { 'Head', 'Random'},
    Default = 1,
    Multi = false,

    Text = 'TargetPart',
    Tooltip = 'TargetPart',

    Callback = function(Value)
        print(Options.TargetPart.Value)
    end
})

AimbotSec1:AddDropdown('Originmod', {


    Values = { 'OLD', 'Camera'},
    Default = 1,
    Multi = false,

    Text = 'Origin',
    Tooltip = 'Origin',

    Callback = function(Value)
        print(Options.Originmod.Value)
    end
})


AimbotSec1:AddSlider('MinDamage', {Text = 'Min Damage', Default = 1, Min = -15, Max = 100, Rounding = 0, Compact = false,})
Options.MinDamage:OnChanged(function()

end)

AimbotSec1:AddSlider('Penetrate', {Text = 'Penetrate', Default = 1, Min = 1, Max = 5, Rounding = 0, Compact = false,})
Options.Penetrate:OnChanged(function()

end)

AimbotSec1:AddSlider('MaxPenWall', {Text = 'Max Penetrate Wall', Default = 5, Min = 1, Max = 15, Rounding = 0, Compact = false,})
Options.Penetrate:OnChanged(function()

end)

MiscellaneousSec1:AddToggle("Bhop", {Text = "Bhop", Default = false}):OnChanged(function()
    
end)

MiscellaneousSec1:AddSlider('BhopSpeed', {Text = 'Bhop Speed', Default = 16, Min = 1, Max = 150, Rounding = 0, Compact = false,})
Options.Penetrate:OnChanged(function()

end)

VisualsSec1:AddToggle("ViewModel", {Text = "ViewModel Changer", Default = false}):OnChanged(function()
    
end)

VisualsSec1:AddSlider('XYZ1', {Text = 'X', Default = 180, Min = 1, Max = 180, Rounding = 0, Compact = false,})
Options.Penetrate:OnChanged(function()

end)
VisualsSec1:AddSlider('XYZ2', {Text = 'Y',  Default = 180, Min = 1, Max = 180, Rounding = 0, Compact = false,})
Options.Penetrate:OnChanged(function()

end)
VisualsSec1:AddSlider('XYZ3', {Text = 'X',  Default = 180, Min = 1, Max = 180, Rounding = 0, Compact = false,})
Options.Penetrate:OnChanged(function()

end)

VisualsSec1:AddSlider('XYZ4', {Text = 'Angles',  Default = 180, Min = 1, Max = 180, Rounding = 0, Compact = false,})
Options.Penetrate:OnChanged(function()

end)
VisualsSec1:AddSlider('Fov', {Text = 'Fov', Default = 70, Min = 1, Max = 120, Rounding = 0, Compact = false,})
Options.Penetrate:OnChanged(function()

end)

VisualsSec3:AddToggle("esp", {Text = "ESP", Default = false}):OnChanged(function()
    
end)
VisualsSec3:AddToggle("weapons", {Text = "Weapon", Default = false}):OnChanged(function()
    
end)
VisualsSec3:AddToggle("boxes", {Text = "Boxes", Default = false}):OnChanged(function()
    
end)

VisualsSec3:AddToggle("name", {Text = "Name", Default = false}):OnChanged(function()
    
end)

VisualsSec3:AddToggle("Health", {Text = "Health", Default = false}):OnChanged(function()
    
end)
VisualsSec3:AddToggle("rain", {Text = "Радуга", Default = false}):OnChanged(function()
    
end)
VisualsSec3:AddLabel('Color'):AddColorPicker('Color', {
    Default = Color3.new(0, 0, 0), 
    Title = 'Color', 
    Transparency = 0, 

    Callback = function(Value)
        
    end
})

AimbotSec3:AddToggle("Desync", {Text = "Enabled", Default = false}):OnChanged(function()
    
end)
AimbotSec3:AddDropdown('DesyncMode', {


    Values = { 'Offset', 'Random','None'},
    Default = 1,
    Multi = false,

    Text = 'Desync Mode',
    Tooltip = 'Desync Mode',

    Callback = function(Value)
        print(Options.DesyncMode.Value)
    end
})

AimbotSec3:AddDropdown('RotateMode', {


    Values = { 'Random', 'Manual', 'None'},
    Default = 1,
    Multi = false,

    Text = 'Rotate Mode',
    Tooltip = 'Rotate Mode',

    Callback = function(Value)
        print(Options.RotateMode.Value)
    end
})
AimbotSec3:AddSlider('OffsetX', {Text = 'OffsetX', Default = 2, Min = 2, Max = 100, Rounding = 0, Compact = false,})
Options.OffsetX:OnChanged(function()

end)
AimbotSec3:AddSlider('OffsetY', {Text = 'OffsetY', Default = 2, Min = 2, Max = 100, Rounding = 0, Compact = false,})
Options.OffsetY:OnChanged(function()

end)
AimbotSec3:AddSlider('OffsetZ', {Text = 'OffsetZ', Default = 2, Min = 2, Max = 100, Rounding = 0, Compact = false,})
Options.OffsetZ:OnChanged(function()

end)

AimbotSec2:AddToggle("AntiAim", {Text = "Anti Aim", Default = false}):OnChanged(function()
    
end)
AimbotSec2:AddToggle("SpinBot", {Text = "Spin Bot", Default = false}):OnChanged(function()
    
end)
AimbotSec2:AddToggle("Jitter", {Text = "Jitter", Default = false}):OnChanged(function()
    
end)
AimbotSec2:AddToggle("BreakA", {Text = "Break Angles", Default = false}):OnChanged(function()
    
end)

AimbotSec2:AddSlider('SpinBotspeed', {Text = 'SpinBot Speed', Default = 1, Min = 1, Max = 100, Rounding = 0, Compact = false,})
Options.SpinBotspeed:OnChanged(function()

end)

AimbotSec2:AddSlider('Jitterroll', {Text = 'Jitter Roll', Default = 120, Min = 1, Max = 360, Rounding = 0, Compact = false,})
Options.Jitterroll:OnChanged(function()

end)
AimbotSec2:AddSlider('Anglejitter', {Text = 'Angle', Default = 120, Min = 1, Max = 360, Rounding = 0, Compact = false,})
Options.Anglejitter:OnChanged(function()

end)

AimbotSec2:AddDropdown('Pitch', {


    Values = { 'Zero', 'Down', 'None',"Random", "Up"},
    Default = 1,
    Multi = false,

    Text = 'Pitch',
    Tooltip = 'Pitch',

    Callback = function(Value)
        print(Options.Pitch.Value)
    end
})

VisualsSec2:AddToggle("thirdp", {Text = "Force ThirdPerson", Default = false}):OnChanged(function()
    
end)

VisualsSec2:AddSlider('thirdpd', {Text = 'ThirdPerson Distance', Default = 6, Min = 1, Max = 10, Rounding = 0, Compact = false,})
Options.OffsetZ:OnChanged(function()

end)

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

SaveManager:IgnoreThemeSettings() 

SaveManager:SetIgnoreIndexes({ 'MenuKeybind' }) 

ThemeManager:SetFolder('vincit.cb')
SaveManager:SetFolder('vincit.cb/main')
makefolder('VinctiHitsounds')
SaveManager:BuildConfigSection(Tabs['UI Settings']) 

ThemeManager:ApplyToTab(Tabs['UI Settings'])
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'Insert', NoUI = true, Text = 'Menu keybind' })
Library.ToggleKeybind = Options.MenuKeybind 

local wallbang
local Multipliers = {
    ["Head"] = 4,
    ["FakeHead"] = 4,
    ["HeadHB"] = 4,
    ["UpperTorso"] = 1,
    ["LowerTorso"] = 1.25,
    ["LeftUpperArm"] = 1,
    ["LeftLowerArm"] = 1,
    ["LeftHand"] = 1,
    ["RightUpperArm"] = 1,
    ["RightLowerArm"] = 1,
    ["RightHand"] = 1,
    ["LeftUpperLeg"] = 0.75,
    ["LeftLowerLeg"] = 0.75,
    ["LeftFoot"] = 0.75,
    ["RightUpperLeg"] = 0.75,
    ["RightLowerLeg"] = 0.75,
    ["RightFoot"] = 0.75,
}


local Ping = game.Stats.PerformanceStats.Ping:GetValue()


local Collision = {Camera}


local RageTarget = nil

local Origin = nil

local function GetDeg(pos1, pos2)
	local start = pos1.LookVector
	local vector = CFrame.new(pos1.Position, pos2).LookVector
	local angle = math.acos(start:Dot(vector))
	local deg = math.deg(angle)
	return deg
end
local function Coll(obj)
	if obj:IsA("Accessory") then
		table.insert(Collision, obj)
	end

	if obj:IsA("Part") then
		if obj.Name == "HeadHB" or obj.Name == "FakeHead" or obj.Name == "Head" then
			table.insert(Collision, obj)
		end
	end
end


for _, o in pairs(game.Workspace:GetChildren()) do
	Coll(o)
end

function Predict(Player, Hit, LastStep)
	
	local RageTarget = Player
	local Velocity = (RageTarget.HumanoidRootPart.Position - RageTarget.HumanoidRootPart.OldPosition.Value)/LastStep
	local Direction = Vector3.new(Velocity.X/Velocity.magnitude, 0, Velocity.Z/Velocity.magnitude)
	
	local Pos = Hit.Position + Direction * (Ping/1000*(Ping > 200 and 1.5 or 2))
	return Pos
end
function killplayer(Hit,Pos,Dmg)
	local a1 = Hit --ia zaebalca pechatat
	local a2 = Pos --pos kyda ebanet (tyt cripter)
	local a3 = workspace[game.Players.LocalPlayer.Name].EquippedTool.Value;					
	local a4 = 0 -- ne trogat
	local a5 =  workspace[game.Players.LocalPlayer.Name].Gun  -- ne trogat 
	local a6 = nil --free rak ban esli bez nego
	local a7 = Dmg -- myltplayer
	local a8 = false -- eche ne znay
	local a9 = false --wallbang
	local a10 = Vector3.new()-- ne trogat	
	local a11 = 0 --ne trogat
	local a12 = Vector3.new()--vector blat ne trog
	local a13 = false --eche odna ebychaa proverka
	game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("HitPart"):FireServer(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13,  nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil)
end
local ticking, tickingft, tickingbt = tick(), tick(), tick()
game:GetService("RunService").Heartbeat:Connect(function(step)
	
    local firerate = Client.gun.FireRate.Value
    if Toggles.Rage.Value == true then
	local CamCFrame = Camera.CFrame
	local LastStep = step 
	if Options.Originmod.Value == "OLD" then
	Origin = LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, 1.4, 0)
	else
		Origin = Camera.CFrame.Position  + Vector3.new(0, 1.4, 0)
	end
   
	for _,Player in pairs(game.Workspace:GetChildren()) do
		if Player and Player:FindFirstChild("Humanoid") and Player:FindFirstChild("Humanoid").Health > 0 and GetDeg(CamCFrame, Player.Head.Position) <= 180 and not Player:FindFirstChildOfClass("ForceField") and Player.Name ~= LocalPlayer.Name and game.Players:FindFirstChild(Player.Name) and game.Players:FindFirstChild(Player.Name).Team ~=LocalPlayer.Team and not workspace.Status.Preparation.Value then
			if tick()-ticking >= firerate or Toggles.RapidFire.Value == true and tick()-ticking >= 0.1 then
			local Ignore = {unpack(Collision)}
		    
			table.insert(Ignore, workspace.Map.Clips)
			table.insert(Ignore, workspace.Map.SpawnPoints)
			table.insert(Ignore, LocalPlayer.Character)
			table.insert(Ignore, Player.HumanoidRootPart)
			table.insert(Ignore, workspace.Debris)
			if Player:FindFirstChild("BackC4") then
				table.insert(Ignore, Player.BackC4)
			end
			if Player:FindFirstChild("Gun") then
				table.insert(Ignore, Player.Gun)
			end
			local ValidTargetParts = {"Head", "HumanoidRootPart","LowerTorso","UpperTorso"}
            local Closest = ((Options.TargetPart.Value == "Random" and Player[ValidTargetParts[math.random(1, #ValidTargetParts)]]) or Player[Options.TargetPart.Value])
			coroutine.wrap(function()
				local Position = Player.HumanoidRootPart.Position
				if Player and Player ~= LocalPlayer and Player:FindFirstChild("HumanoidRootPart") then
					if Player.HumanoidRootPart:FindFirstChild("OldPosition") then
						Player.HumanoidRootPart.OldPosition.Value = Position
					else
						local Value = Instance.new("Vector3Value")
						Value.Name = "OldPosition"
						Value.Value = Position
						Value.Parent = Player.HumanoidRootPart
					end
				end
			end)()
	
		                            	local Hits = {}
										local EndHit, Hit, Pos
										local Penetration = Client.gun.Penetration.Value * 0.01 * Options.Penetrate.Value 
										local Rays =  Ray.new(Origin, (Closest.Position - Origin).unit * 100000000)
										repeat
											Hit, Pos = workspace:FindPartOnRayWithIgnoreList(Rays, Ignore, false, true)
											if Hit ~= nil and Hit.Parent ~= nil then
												if Hit and Multipliers[Hit.Name] ~= nil then
													EndHit = Hit
												else
													table.insert(Ignore, Hit)
													table.insert(Hits, {["Position"] = Pos,["Hit"] = Hit})
												end
											end
										until EndHit ~= nil or #Hits >= Options.MaxPenWall.Value or Hit == nil
										if EndHit ~= nil and Multipliers[EndHit.Name] ~= nil and #Hits <= Options.MaxPenWall.Value then
											if #Hits == 0 then
			if Hit and Hit.Parent == Player then
                local Damage = Client.gun.DMG.Value * Multipliers[EndHit.Name]
												if Player:FindFirstChild("Kevlar") then
													if string.find(EndHit.Name, "Head") then
														if Player:FindFirstChild("Helmet") then
															Damage = (Damage / 100) * Client.gun.ArmorPenetration.Value
														end
													else
														Damage = (Damage / 100) * Client.gun.ArmorPenetration.Value
													end
												end
												Damage = Damage * (Client.gun.RangeModifier.Value/100 ^ ((Origin - EndHit.Position).Magnitude/500))/100
                if Damage >= Options.MinDamage.Value then

					local Pos = Vector3.new(0,0,0)
					if Toggles.Prediction.Value == true then
						local predictpos = Predict(Player, Hit, LastStep)
						local X = (((predictpos.X - 74312) * 4) + 1325) * 13
	                    local Y = ((predictpos.Y + 3183421) * 4) - 4201428
	                    local Z = ((predictpos.Z * 41) - 581357) * 2
						Pos = Vector3.new(X,Y,Z)
					else 
						local X = (((Hit.Position.X - 74312) * 4) + 1325) * 13
	                    local Y = ((Hit.Position.Y + 3183421) * 4) - 4201428
	                    local Z = ((Hit.Position.Z * 41) - 581357) * 2
						Pos = Vector3.new(X,Y,Z)
					end

			if Hit and Hit.Parent == Player   then
                Client.firebullet()
				print(Pos)
				if Toggles.InstallKill.Value == false then
					Dmg = Damage/100
					else
						Dmg = math.huge
					end
				killplayer(Hit,Pos,Dmg)
			end 
				ticking = tick()
			end
			end
		else
			local penetration = Client.gun.Penetration.Value * 0.01
												local limit = 0
												local dmgmodifier = 1
												for i = 1, #Hits do
													local data = Hits[i]
													local part = data["Hit"]
													local pos = data["Position"]
													local modifier = 1
													if part.Material == Enum.Material.DiamondPlate then
														modifier = 3
													end
													if part.Material == Enum.Material.CorrodedMetal or part.Material == Enum.Material.Metal or part.Material == Enum.Material.Concrete or part.Material == Enum.Material.Brick then
														modifier = 2
													end
													if part.Name == "Grate" or part.Material == Enum.Material.Wood or part.Material == Enum.Material.WoodPlanks then
														modifier = 0.1
													end
													if part.Name == "nowallbang" then
														modifier = 100
													end
													if part:FindFirstChild("PartModifier") then
														modifier = part.PartModifier.Value
													end
													if part.Transparency == 1 or part.CanCollide == false or part.Name == "Glass" or part.Name == "Cardboard" then
														modifier = 0
													end
													local plp = Closest.Position
													local direction = (plp - pos).unit * math.clamp(Client.gun.Range.Value, 1, 100)
													local raycasted = Ray.new(pos + direction * 1, direction * -2)
													local _,endpos = workspace:FindPartOnRayWithWhitelist(raycasted, {part}, true)
													local thickness = (endpos - pos).Magnitude
													thickness = thickness * modifier
													limit = math.min(penetration, limit + thickness)
													dmgmodifier = 1 - limit / penetration
													
												end
												local Damage = Client.gun.DMG.Value * Multipliers[EndHit.Name] * dmgmodifier
												if Player:FindFirstChild("Kevlar") then
													if string.find(EndHit.Name, "Head") then
														if Player:FindFirstChild("Helmet") then
															Damage = (Damage / 100) * Client.gun.ArmorPenetration.Value
														end
													else
														Damage = (Damage / 100) * Client.gun.ArmorPenetration.Value
													end
												end
												Damage = Damage * (Client.gun.RangeModifier.Value/100 ^ ((Origin - EndHit.Position).Magnitude/500))/100
                                                if Damage >= Options.MinDamage.Value then

													local Pos = Vector3.new(0,0,0)
					if Toggles.Prediction.Value == true then
						Pos = Predict(Player, Hit, LastStep)
					else 
						local X = (((Hit.Position.X - 74312) * 4) + 1325) * 13
	                    local Y = ((Hit.Position.Y + 3183421) * 4) - 4201428
	                    local Z = ((Hit.Position.Z * 41) - 581357) * 2
						Pos = Vector3.new(X,Y,Z)
					end
				
				if Hit and Hit.Parent == Player then
					Client.firebullet()
					if Toggles.InstallKill.Value == false then
					Dmg = Damage/100
					else
						Dmg = math.huge
					end
					killplayer(Hit,Pos,Dmg)
                    ticking = tick()
                end
			end
											end
		
	end
		end
	end
	
end
end
if Crosshairs.Scope.Visible ~= true  then
	Camera.FieldOfView = Options.Fov.Value
end

end)








local LocalPlayerIsAlive = false

local utility = {}
local connections = {}

function utility:Connect(connection, func)
	local con = connection:Connect(func)
	table.insert(connections, con)
	return con
end

function utility:BindToRenderStep(name, priority, func)
	local fake_connection = {}

	function fake_connection:Disconnect()
		rs:UnbindFromRenderStep(name)
	end

	rs:BindToRenderStep(name, priority, func)

	return fake_connection
end

local function RandomNumberRange(a)
	return math.random(-a, a)
end

function RandomVectorRange(a, b, c)
	return Vector3.new(RandomNumberRange(a), RandomNumberRange(b), RandomNumberRange(c))
end

function CheckPlayer(Player, CamCFrame)
	if Player and Player:FindFirstChild("Humanoid") and Player:FindFirstChild("Humanoid").Health > 0 --[[and Player.Name ~= LocalPlayer.Name and game.Players:FindFirstChild(Player.Name).Team ~= "TTT" and game.Players:FindFirstChild(Player.Name).Team ~= LocalPlayer.Team]] then
		return true
	else
		return false
	end
end



local desync_stuff = {frames = {}, mode = "default"}

function desync_stuff:GetOrigin()
	return desync_stuff["origin"] or CFrame.new()
end

function desync_stuff:SetOrigin(new)
	desync_stuff["origin"] = new
end
function desync_stuff.step(a, origin)
	local frames = desync_stuff.frames

	if LocalPlayerIsAlive == true then
		frames[#frames + 1] = origin

		if desync_stuff["mode"] == "default" then
			if frames[#frames - a] ~= nil then
				desync_stuff:SetOrigin(frames[#frames - a])
			else
				desync_stuff:SetOrigin(frames[#frames])
			end
		end
	end
end

local frames_stuff = {}

utility:Connect(rs.Heartbeat, function() 

    local config = {
        Main = {
            desync_enabled = Toggles.Desync.Value;
            desync_mode = Options.DesyncMode.Value;
            desync_rotation = Options.RotateMode.Value;
            Thirdperson = false;
            NoFootStepSounds = false;
            OffsetX = Options.OffsetX.Value;
            Offsety = Options.OffsetY.Value;
            OffsetZ = Options.OffsetZ.Value;
        }
    }
	if LocalPlayer.Character and LocalPlayer.Character:FindFirstChild("Humanoid") and LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0 and LocalPlayer.Character:FindFirstChild("UpperTorso") then
		LocalPlayerIsAlive = true
	else
		LocalPlayerIsAlive = false
	end

	if LocalPlayerIsAlive == true then

		if workspace.Status.Preparation.Value == false and config.Main.desync_enabled == true and not desync_stuff["set_1"] then

			desync_stuff.step(360, LocalPlayer.Character.HumanoidRootPart.CFrame)

			desync_stuff[1] = LocalPlayer.Character.HumanoidRootPart.CFrame

			local fakeCFrame = desync_stuff:GetOrigin()

			if config.Main.desync_mode == "Offset" then
				fakeCFrame = fakeCFrame * CFrame.new(Vector3.new(config.Main.OffsetX, config.Main.OffsetY, config.Main.OffsetZ))
			elseif config.Main.desync_mode == "Random" then
				fakeCFrame = fakeCFrame * CFrame.new(RandomVectorRange(1000, 1000, 1000))
            elseif config.Main.desync_mode == "None" then
				fakeCFrame = fakeCFrame
			end

			if config.Main.desync_rotation == "Manual" then
				fakeCFrame = fakeCFrame * CFrame.Angles(math.rad(130), math.rad(130), math.rad(130))
			elseif config.Main.desync_rotation == "Random" then
				fakeCFrame = fakeCFrame * CFrame.Angles(math.rad(RandomNumberRange(180)), math.rad(RandomNumberRange(180)), math.rad(RandomNumberRange(180)))
            elseif config.Main.desync_rotation == "None" then
                fakeCFrame = fakeCFrame
			end

			LocalPlayer.Character.HumanoidRootPart.CFrame = fakeCFrame
			desync_stuff["set_1"] = true

			if config.Main.Thirdperson == true then
		
				LocalPlayer.Character.LowerTorso.Anchored = true
				LocalPlayer.Character.LowerTorso.Root.Part0 = LocalPlayer.Character.LowerTorso
				LocalPlayer.Character.LowerTorso.CFrame = fakeCFrame * CFrame.new(0, -0.8, 0)
			else
				LocalPlayer.Character.LowerTorso.Anchored = false
				LocalPlayer.Character.LowerTorso.Root.Part0 = LocalPlayer.Character.HumanoidRootPart
			end
		else
			desync_stuff[1] = nil
			
			LocalPlayer.Character.LowerTorso.Anchored = false
			LocalPlayer.Character.LowerTorso.Root.Part0 = LocalPlayer.Character.HumanoidRootPart
		end
	else
		desync_stuff[1] = nil
	
		if LocalPlayerIsAlive == true then
			LocalPlayer.Character.LowerTorso.Anchored = false
			LocalPlayer.Character.LowerTorso.Root.Part0 = LocalPlayer.Character.HumanoidRootPart
		end
	end
end)

utility:Connect(rs.Heartbeat, function()
    local config = {
        Main = {
            desync_enabled = Toggles.Desync.Value;
            desync_mode = Options.DesyncMode.Value;
            desync_rotation = Options.RotateMode.Value;
            Thirdperson = false;
            NoFootStepSounds = true;
            OffsetX = Options.OffsetX.Value;
            Offsety = Options.OffsetY.Value;
            OffsetZ = Options.OffsetZ.Value;
        }
    }
	if LocalPlayerIsAlive == true then
		if config.Main.NoFootStepSounds == true then
			desync_stuff[2] = LocalPlayer.Character.HumanoidRootPart.Velocity

			LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.zero

			rs.RenderStepped:Wait()

			LocalPlayer.Character.HumanoidRootPart.Velocity = desync_stuff[2]
		end
	end
end)

utility:BindToRenderStep("desync_1", 1, function()
	if desync_stuff[1] and desync_stuff["set_1"] and LocalPlayerIsAlive == true then
		LocalPlayer.Character.HumanoidRootPart.CFrame = desync_stuff[1]
		desync_stuff["set_1"] = false
	end
end)


RunService.RenderStepped:Connect(function()

        if LocalPlayer.Character ~= nil and UserInputService:IsKeyDown(Enum.KeyCode.Space) and LocalPlayer.PlayerGui.GUI.Main.GlobalChat.Visible == false and Toggles.Bhop.Value == true then
            LocalPlayer.Character.Humanoid.Jump = true
            local Speed =  Options.BhopSpeed.Value
            local Dir = Camera.CFrame.LookVector * Vector3.new(1,0,1)
            local Move = Vector3.new()

            Move = UserInputService:IsKeyDown(Enum.KeyCode.W) and Move + Dir or Move
            Move = UserInputService:IsKeyDown(Enum.KeyCode.S) and Move - Dir or Move
            Move = UserInputService:IsKeyDown(Enum.KeyCode.D) and Move + Vector3.new(-Dir.Z,0,Dir.X) or Move
            Move = UserInputService:IsKeyDown(Enum.KeyCode.A) and Move + Vector3.new(Dir.Z,0,-Dir.X) or Move
            if Move.Unit.X == Move.Unit.X then
                Move = Move.Unit
                LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(Move.X * Speed, LocalPlayer.Character.HumanoidRootPart.Velocity.Y, Move.Z * Speed)
            end
        end

    task.wait()
end)



local objects = {}
local utility = {}

do
    utility.default = {
        Line = {
            Thickness = 1.5,
            Color = Color3.fromRGB(255, 255, 255),
            Visible = false
        },
        Text = {
            Size = 13,
            Center = true,
            Outline = true,
            Font = Drawing.Fonts.Plex,
            Color = Color3.fromRGB(255, 255, 255),
            Visible = false
        },
        Square = {
            Thickness = 1.5,
            Filled = false,
            Color = Color3.fromRGB(255, 255, 255),
            Visible = false
        },
    }
    function utility.create(type, isOutline)
        local drawing = Drawing.new(type)
        for i, v in pairs(utility.default[type]) do
            drawing[i] = v
        end
		if isOutline then
			drawing.Color = Color3.new(0,0,0)
			drawing.Thickness = 3
		end
        return drawing
    end
    function utility.add(plr)
        if not objects[plr] then
            objects[plr] = {
                Name = utility.create("Text"),
                Weapon = utility.create("Text"),
				Armor = utility.create("Text"),
                BoxOutline = utility.create("Square", true),
                Box = utility.create("Square"),
                HealthOutline = utility.create("Line", true),
                Health = utility.create("Line"),
            }
        end
    end
    for _,plr in pairs(Players:GetPlayers()) do
        if Player ~= LocalPlayer then
            utility.add(plr)
        end
    end
    Players.PlayerAdded:Connect(utility.add)
    Players.PlayerRemoving:Connect(function(plr)
        wait()
        if objects[plr] then
            for i,v in pairs(objects[plr]) do
                for i2,v2 in pairs(v) do
                    if v then
                        v:Remove()
                    end
                end
            end

            objects[plr] = nil
        end
   
	end)
end
local color
local ticking, tickingft, tickingbt = tick(), tick(), tick()
local lastChangeTime = 0

RunService.Heartbeat:Connect(function(deltaTime)
    if tick()-ticking >= 0.1 then
		if Toggles.rain.Value == true then
			color = Color3.fromRGB(math.random(0, 255), math.random(0, 255), math.random(0, 255))
			ticking = tick()
		  else
			  color = Options.Color.Value
			  ticking = tick()
		  end
	end
end)
game:GetService("RunService").Heartbeat:Connect(function()
for _,Player in pairs(Players:GetPlayers()) do
        local tbl = objects[Player]
	if tbl == nil then return end
        if Player.Character and Player.Character:FindFirstChild("HumanoidRootPart") and Player.Team ~= "TTT" and (Player.Team ~= LocalPlayer.Team ) and Player.Character:FindFirstChild("Gun") and Player.Character:FindFirstChild("Humanoid") and Player ~= LocalPlayer and Toggles.esp.Value == true then
		    local Camera = workspace.CurrentCamera
			local HumanoidRootPart = Player.Character.HumanoidRootPart
			local RootPosition = HumanoidRootPart.Position
			local Pos, OnScreen = Camera:WorldToViewportPoint(RootPosition)
			
			local Size = (Camera:WorldToViewportPoint(RootPosition - Vector3.new(0, 3, 0)).Y - Camera:WorldToViewportPoint(RootPosition + Vector3.new(0, 2.6, 0)).Y) / 2
            
		
            if Toggles.esp.Value == true then
			tbl.Box.Color = color
			tbl.Box.Size = Vector2.new(Size * 1.5, Size * 1.9)
			tbl.Box.Position = Vector2.new(Pos.X - Size*1.5 / 2, (Pos.Y - Size*1.6 / 2))
				tbl.Box.Visible = OnScreen
					tbl.BoxOutline.Size = tbl.Box.Size
					tbl.BoxOutline.Position = tbl.Box.Position
					tbl.BoxOutline.Visible = OnScreen
			else
				tbl.Box.Visible = false
			end
			if Toggles.Health.Value == true then
				tbl.Health.Color = color
				tbl.Health.From = Vector2.new((tbl.Box.Position.X - 5), tbl.Box.Position.Y + tbl.Box.Size.Y)
				tbl.Health.To = Vector2.new(tbl.Health.From.X, tbl.Health.From.Y - (Player.Character.Humanoid.Health / Player.Character.Humanoid.MaxHealth) * tbl.Box.Size.Y)
				tbl.Health.Visible = OnScreen
	
					tbl.HealthOutline.From = Vector2.new(tbl.Health.From.X, tbl.Box.Position.Y + tbl.Box.Size.Y + 1)
					tbl.HealthOutline.To = Vector2.new(tbl.Health.From.X, (tbl.Health.From.Y - 1 * tbl.Box.Size.Y) -1)
					tbl.HealthOutline.Visible = OnScreen
			else
				tbl.Health.Visible = false
				tbl.HealthOutline.Visible = false
			end
			
	

			
		    if Toggles.name.Value == true then
                tbl.Name.Color = color
                tbl.Name.Text = Player.Name
                tbl.Name.Position = Vector2.new(tbl.Box.Size.X/2 + tbl.Box.Position.X,  tbl.Box.Position.Y - 16)
                tbl.Name.Font = Drawing.Fonts.UI
                tbl.Name.Outline = Text
                tbl.Name.Size = 10
				tbl.Name.Visible = OnScreen
			else
				tbl.Name.Visible = false
			end
			if Toggles.weapons.Value == true then
                tbl.Weapon.Color = color
                tbl.Weapon.Text = Player.Character.EquippedTool.Value
                tbl.Weapon.Position = Vector2.new(tbl.Box.Size.X/2 + tbl.Box.Position.X, tbl.Box.Size.Y + tbl.Box.Position.Y + 1)
                tbl.Weapon.Font = Drawing.Fonts.UI
                tbl.Weapon.Outline = Text
                tbl.Weapon.Size = 10
				tbl.Weapon.Visible = OnScreen
			else
				tbl.Weapon.Visible = false
            end
            

			local LastInfoPos = tbl.Box.Position.Y - 1
            

        else
            if Player.Name ~= LocalPlayer.Name then
				for i,v in pairs(tbl) do
					v.Visible = false
				end
			end

		end
	end
end)


		RunService.RenderStepped:Connect(function()
			if LocalPlayer.Character ~= nil and LocalPlayer.Character.Humanoid.Health > 0  and Toggles.SpinBot.Value == true and Toggles.AntiAim.Value == true then
					LocalPlayer.Character.Humanoid.AutoRotate = false
					LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(Options.SpinBotspeed.Value), 0)
		end
		end)
		RunService.RenderStepped:Connect(function()
			if LocalPlayer.Character ~= nil and LocalPlayer.Character.Humanoid.Health > 0  and Toggles.Jitter.Value == true and Toggles.AntiAim.Value == true then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position) *
            CFrame.Angles(0, math.rad(Options.Anglejitter.Value) + math.rad((math.random(1, 2) == 1 and Options.Jitterroll.Value or -Options.Jitterroll.Value)), 0)
            end
		end)
        RunService.RenderStepped:Connect(function()
			if LocalPlayer.Character ~= nil and LocalPlayer.Character.Humanoid.Health > 0  and Toggles.BreakA.Value == true and Toggles.AntiAim.Value == true then
				LocalPlayer.Character.Humanoid.AutoRotate = false
				LocalPlayer.Character.HumanoidRootPart.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.Angles(0, math.rad(breakAA), 0)
            end
		end)
        RunService.RenderStepped:Connect(function()
		    if Toggles.thirdp.Value == true then
            LocalPlayer.CameraMinZoomDistance = Options.thirdpd.Value
            LocalPlayer.CameraMaxZoomDistance = Options.thirdpd.Value
            workspace.ThirdPerson.Value = true
			else
				workspace.ThirdPerson.Value = false
				LocalPlayer.CameraMinZoomDistance = 0
				LocalPlayer.CameraMaxZoomDistance = 0
			end
		end)
local meta = getrawmetatable(game)
local OldNameCall = nil
local oldNewindex = meta.__newindex
local oldIndex = meta.__index
local old = meta.__namecall
hookfunc(getrenv().xpcall, function() end)
setreadonly(meta, false)


meta.__namecall = newcclosure(function(self, ...)
	local args = {...}
    if getnamecallmethod() == "SetPrimaryPartCFrame"  then
        if self.Name == "Arms" and Toggles.ViewModel.Value == true and Toggles.thirdp.Value == false then
            local arms = args[1]
            arms = arms * CFrame.new(Vector3.new(math.rad(Options.XYZ1.Value-180),math.rad(Options.XYZ2.Value-180),math.rad(Options.XYZ3.Value-180))) * CFrame.Angles(0, 0, math.rad(Options.XYZ4.Value-180))
		    return old(self, arms, select(2, ...))
		elseif Toggles.thirdp.Value == true and  not workspace.Status.Preparation.Value and LocalPlayer.Character ~= nil and LocalPlayer.Character.Humanoid.Health > 0   then
				arms = CFrame.new(100,100,100)
			return old(self, arms, select(2, ...))
        end
    end
	if  not checkcaller()  then
		if getnamecallmethod() == "FireServer" then
			if self.Name == "ControlTurn" and Toggles.AntiAim.Value == true then
				if Options.Pitch.Value == "Zero" then
				Pitch = 0
				elseif Options.Pitch.Value == "Up" then
				Pitch = math.pi/2
				elseif Options.Pitch.Value == "Random" then
				Pitch = math.random(-15, 15)
				elseif Options.Pitch.Value == "Down" then
				Pitch = -math.pi/2
			    elseif Options.Pitch.Value == "None" then
				Pitch = args[1]
				end
				return old(self, Pitch, select(2, ...))
			end
		end
		end
	return old(self, ...)
end)
