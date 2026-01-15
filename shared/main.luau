cloneref=cloneref or(function(...)return...end)

local a=setmetatable({},{
__index=function(a,b)
rawset(a,b,cloneref(game:GetService(b)))

return rawget(a,b)
end
})

local b,c={
{
1,
"ModuleScript",
{"MainModule"},
{
{18,"ModuleScript",{"Creator"}},
{28,"ModuleScript",{"Icons"}},
{
47,
"ModuleScript",
{"Themes"},
{
{50,"ModuleScript",{"Dark"}},
{52,"ModuleScript",{"Light"}},
{51,"ModuleScript",{"Darker"}},
{53,"ModuleScript",{"Rose"}},
{49,"ModuleScript",{"Aqua"}},
{48,"ModuleScript",{"Amethyst"}}
}
},
{
19,
"ModuleScript",
{"Elements"},
{
{21,"ModuleScript",{"Colorpicker"}},
{27,"ModuleScript",{"Toggle"}},
{23,"ModuleScript",{"Input"}},
{20,"ModuleScript",{"Button"}},
{25,"ModuleScript",{"Paragraph"}},
{22,"ModuleScript",{"Dropdown"}},
{26,"ModuleScript",{"Slider"}},
{24,"ModuleScript",{"Keybind"}}
}
},
{
29,
"Folder",
{"Packages"},
{
{
30,
"ModuleScript",
{"Flipper"},
{
{33,"ModuleScript",{"GroupMotor"}},
{46,"ModuleScript",{"isMotor.spec"}},
{39,"ModuleScript",{"Signal"}},
{40,"ModuleScript",{"Signal.spec"}},
{45,"ModuleScript",{"isMotor"}},
{36,"ModuleScript",{"Instant.spec"}},
{44,"ModuleScript",{"Spring.spec"}},
{42,"ModuleScript",{"SingleMotor.spec"}},
{38,"ModuleScript",{"Linear.spec"}},
{31,"ModuleScript",{"BaseMotor"}},
{43,"ModuleScript",{"Spring"}},
{35,"ModuleScript",{"Instant"}},
{37,"ModuleScript",{"Linear"}},
{41,"ModuleScript",{"SingleMotor"}},
{34,"ModuleScript",{"GroupMotor.spec"}},
{32,"ModuleScript",{"BaseMotor.spec"}}
}
}
}
},
{
2,
"ModuleScript",
{"Acrylic"},
{
{3,"ModuleScript",{"AcrylicBlur"}},
{5,"ModuleScript",{"CreateAcrylic"}},
{6,"ModuleScript",{"Utils"}},
{4,"ModuleScript",{"AcrylicPaint"}}
}
},
{
7,
"Folder",
{"Components"},
{
{9,"ModuleScript",{"Button"}},
{12,"ModuleScript",{"Notification"}},
{13,"ModuleScript",{"Section"}},
{17,"ModuleScript",{"Window"}},
{14,"ModuleScript",{"Tab"}},
{10,"ModuleScript",{"Dialog"}},
{8,"ModuleScript",{"Assets"}},
{16,"ModuleScript",{"TitleBar"}},
{15,"ModuleScript",{"Textbox"}},
{11,"ModuleScript",{"Element"}}
}
}
}
}
}
local aa={
function()local
d, e, f=c(1)local
g, h, i, j, k, l=
a.Lighting, 
a.RunService, 
a.Players.LocalPlayer, 
a.UserInputService, 
a.TweenService, 
workspace.CurrentCamera local
m, n=i:GetMouse(), e
local o,p,q,r=f(n.Creator),f(n.Elements),f(n.Acrylic),n.Components
local s,t,u=f(r.Notification),o.New,protectgui or(syn and syn.protect_gui)or function()
end
local v=t("ScreenGui",{Name="Angelwings",Parent=h:IsStudio()and i.PlayerGui or a.CoreGui})
u(v)
s:Init(v)
local w={
Version="1.1.0",
OpenFrames={},
Options={},
Themes=f(n.Themes).Names,
Window=nil,
WindowFrame=nil,
Unloaded=false,
Theme="Dark",
DialogOpen=false,
UseAcrylic=false,
Acrylic=false,
Transparency=true,
MinimizeKeybind=nil,
MinimizeKey=Enum.KeyCode.LeftControl,
GUI=v
}
function w.SafeCallback(x,y,...)
if not y then
return
end
local z,A=pcall(y,...)
if not z then local
B, C=A:find":%d+: "
if not C then
return w:Notify{Title="Interface",Content="Callback error",SubContent=A,Duration=5}
end
return w:Notify{
Title="Interface",
Content="Callback error",
SubContent=A:sub(C+1),
Duration=5
}
end
end
function w.Round(x,y,z)
if z==0 then
return math.floor(y)
end
y=tostring(y)
return y:find"%."and tonumber(y:sub(1,y:find"%."+z))or y
end
local x=f(n.Icons).assets
function w.GetIcon(y,z)
if z~=nil and x["lucide-"..z]then
return x["lucide-"..z]
end
return nil
end
local y={}
y.__index=y
y.__namecall=function(z,A,...)
return y[A](...)
end
for z,A in ipairs(p)do
y["Add"..A.__type]=function(B,C,E)
A.Container=B.Container
A.Type=B.Type
A.ScrollFrame=B.ScrollFrame
A.Library=w
return A:New(C,E)
end
end
w.Elements=y
function w.CreateWindow(z,A)
assert(A.Title,"Window - Missing Title")
if w.Window then
print"You cannot create more than one window."
return
end
w.MinimizeKey=A.MinimizeKey
w.UseAcrylic=A.Acrylic
if A.Acrylic then
q.init()
end
local B=
f(r.Window){Parent=v,Size=A.Size,Title=A.Title,SubTitle=A.SubTitle,TabWidth=A.TabWidth}
w.Window=B
w:SetTheme(A.Theme)
return B
end
function w.SetTheme(z,A)
if w.Window and table.find(w.Themes,A)then
w.Theme=A
o.UpdateTheme()
end
end
function w.Destroy(z)
if w.Window then
w.Unloaded=true
if w.UseAcrylic then
w.Window.AcrylicPaint.Model:Destroy()
end
o.Disconnect()
w.GUI:Destroy()
end
end
function w.ToggleAcrylic(z,A)
if w.Window then
if w.UseAcrylic then
w.Acrylic=A
w.Window.AcrylicPaint.Model.Transparency=A and 0.98 or 1
if A then
q.Enable()
else
q.Disable()
end
end
end
end
function w.ToggleTransparency(z,A)
if w.Window then
w.Window.AcrylicPaint.Frame.Background.BackgroundTransparency=A and 0.35 or 0
end
end
function w.Notify(z,A)
return s:New(A)
end
if getgenv then
getgenv().Fluent=w
end
return w
end,
function()local
d, e, f=c(2)
local g={AcrylicBlur=f(e.AcrylicBlur),CreateAcrylic=f(e.CreateAcrylic),AcrylicPaint=f(e.AcrylicPaint)}
function g.init()
local h=Instance.new"DepthOfFieldEffect"
h.FarIntensity=0
h.InFocusRadius=0.1
h.NearIntensity=1
local i={}
function g.Enable()
for j,k in pairs(i)do
k.Enabled=false
end
h.Parent=a.Lighting
end
function g.Disable()
for j,k in pairs(i)do
k.Enabled=k.enabled
end
h.Parent=nil
end
local j=function()
local j=function(j)
if j:IsA"DepthOfFieldEffect"then
i[j]={enabled=j.Enabled}
end
end
for k,l in pairs(a.Lighting:GetChildren())do
j(l)
end
if workspace.CurrentCamera then
for k,l in pairs(workspace.CurrentCamera:GetChildren())do
j(l)
end
end
end
j()
g.Enable()
end
return g
end,
function()local
d, e, f=c(3)
local g,h,i,j=f(e.Parent.Parent.Creator),f(e.Parent.CreateAcrylic),unpack(f(e.Parent.Utils))
local k=function(k)
local l={}
k=k or 0.001
local m,n={topLeft=Vector2.new(),topRight=Vector2.new(),bottomRight=Vector2.new()},h()
n.Parent=workspace
local o,p=function(o,p)
m.topLeft=p
m.topRight=p+Vector2.new(o.X,0)
m.bottomRight=p+o
end,function()
local o=workspace.CurrentCamera
if o then
o=o.CFrame
end
local p=o
if not p then
p=CFrame.new()
end
local q,r,s,t=p,m.topLeft,m.topRight,m.bottomRight
local u,v,w=i(r,k),i(s,k),i(t,k)
local x,y=(v-u).Magnitude,(v-w).Magnitude
n.CFrame=CFrame.fromMatrix((u+w)/2,q.XVector,q.YVector,q.ZVector)
n.Mesh.Scale=Vector3.new(x,y,0)
end
local q,r=function(q)
local r=j()
local s,t=q.AbsoluteSize-Vector2.new(r,r),q.AbsolutePosition+Vector2.new(r/2,r/2)
o(s,t)
task.spawn(p)
end,function()
local q=workspace.CurrentCamera
if not q then
return
end
table.insert(l,q:GetPropertyChangedSignal"CFrame":Connect(p))
table.insert(l,q:GetPropertyChangedSignal"ViewportSize":Connect(p))
table.insert(l,q:GetPropertyChangedSignal"FieldOfView":Connect(p))
task.spawn(p)
end
n.Destroying:Connect(
function()
for s,t in l do
pcall(
function()
t:Disconnect()
end
)
end
end
)
r()
return q,n
end
return function(l)
local m,n,o={},k(l)
local p=g.New("Frame",{BackgroundTransparency=1,Size=UDim2.fromScale(1,1)})
g.AddSignal(
p:GetPropertyChangedSignal"AbsolutePosition",
function()
n(p)
end
)
g.AddSignal(
p:GetPropertyChangedSignal"AbsoluteSize",
function()
n(p)
end
)
m.AddParent=function(q)
g.AddSignal(
q:GetPropertyChangedSignal"Visible",
function()
m.SetVisibility(q.Visible)
end
)
end
m.SetVisibility=function(q)
o.Transparency=q and 0.98 or 1
end
m.Frame=p
m.Model=o
return m
end
end,
function()local
d, e, f=c(4)
local g,h=f(e.Parent.Parent.Creator),f(e.Parent.AcrylicBlur)
local i=g.New
return function(j)
local k={}
k.Frame=
i(
"Frame",
{
Size=UDim2.fromScale(1,1),
BackgroundTransparency=0.9,
BackgroundColor3=Color3.fromRGB(255,255,255),
BorderSizePixel=0
},
{
i(
"ImageLabel",
{
Image="rbxassetid://8992230677",
ScaleType="Slice",
SliceCenter=Rect.new(Vector2.new(99,99),Vector2.new(99,99)),
AnchorPoint=Vector2.new(0.5,0.5),
Size=UDim2.new(1,120,1,116),
Position=UDim2.new(0.5,0,0.5,0),
BackgroundTransparency=1,
ImageColor3=Color3.fromRGB(0,0,0),
ImageTransparency=0.7
}
),
i("UICorner",{CornerRadius=UDim.new(0,8)}),
i(
"Frame",
{
BackgroundTransparency=0.45,
Size=UDim2.fromScale(1,1),
Name="Background",
ThemeTag={BackgroundColor3="AcrylicMain"}
},
{i("UICorner",{CornerRadius=UDim.new(0,8)})}
),
i(
"Frame",
{
BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=0.4,
Size=UDim2.fromScale(1,1)
},
{
i("UICorner",{CornerRadius=UDim.new(0,8)}),
i("UIGradient",{Rotation=90,ThemeTag={Color="AcrylicGradient"}})
}
),
i(
"ImageLabel",
{
Image="rbxassetid://9968344105",
ImageTransparency=0.98,
ScaleType=Enum.ScaleType.Tile,
TileSize=UDim2.new(0,128,0,128),
Size=UDim2.fromScale(1,1),
BackgroundTransparency=1
},
{i("UICorner",{CornerRadius=UDim.new(0,8)})}
),
i(
"ImageLabel",
{
Image="rbxassetid://9968344227",
ImageTransparency=0.9,
ScaleType=Enum.ScaleType.Tile,
TileSize=UDim2.new(0,128,0,128),
Size=UDim2.fromScale(1,1),
BackgroundTransparency=1,
ThemeTag={ImageTransparency="AcrylicNoise"}
},
{i("UICorner",{CornerRadius=UDim.new(0,8)})}
),
i(
"Frame",
{BackgroundTransparency=1,Size=UDim2.fromScale(1,1),ZIndex=2},
{
i("UICorner",{CornerRadius=UDim.new(0,8)}),
i("UIStroke",{Transparency=0.5,Thickness=1,ThemeTag={Color="AcrylicBorder"}})
}
)
}
)
local l
if f(e.Parent.Parent).UseAcrylic then
l=h()
l.Frame.Parent=k.Frame
k.Model=l.Model
k.AddParent=l.AddParent
k.SetVisibility=l.SetVisibility
end
return k
end
end,
function()local
d, e, f=c(5)
local g=e.Parent.Parent
local h=f(g.Creator)
local i=function()
local i=
h.New(
"Part",
{
Name="Body",
Color=Color3.new(0,0,0),
Material=Enum.Material.Glass,
Size=Vector3.new(1,1,0),
Anchored=true,
CanCollide=false,
Locked=true,
CastShadow=false,
Transparency=0.98
},
{h.New("SpecialMesh",{MeshType=Enum.MeshType.Brick,Offset=Vector3.new(0,0,-1E-6)})}
)
return i
end
return i
end,
function()
c(6)
local d,e=function(d,e,f,g,h)
return(d-e)*(h-g)/(f-e)+g
end,function(d,e)
local f=workspace.CurrentCamera:ScreenPointToRay(d.X,d.Y)
return f.Origin+f.Direction*e
end
local f=function()
local f=workspace.CurrentCamera.ViewportSize.Y
return d(f,0,2560,8,56)
end
return{e,f}
end,
[8]=function()
c(8)
return{
Close="rbxassetid://9886659671",
Min="rbxassetid://9886659276",
Max="rbxassetid://9886659406",
Restore="rbxassetid://9886659001"
}
end,
[9]=function()local
d, e, f=c(9)
local g=e.Parent.Parent
local h,i=f(g.Packages.Flipper),f(g.Creator)local
j, k=i.New, h.Spring.new
return function(l,m,n)
n=n or false
local o={}
o.Title=
j(
"TextLabel",
{
FontFace=Font.new"rbxasset://fonts/families/GothamSSm.json",
TextColor3=Color3.fromRGB(200,200,200),
TextSize=14,
TextWrapped=true,
TextXAlignment=Enum.TextXAlignment.Center,
TextYAlignment=Enum.TextYAlignment.Center,
BackgroundColor3=Color3.fromRGB(255,255,255),
AutomaticSize=Enum.AutomaticSize.Y,
BackgroundTransparency=1,
Size=UDim2.fromScale(1,1),
ThemeTag={TextColor3="Text"}
}
)
o.HoverFrame=
j(
"Frame",
{Size=UDim2.fromScale(1,1),BackgroundTransparency=1,ThemeTag={BackgroundColor3="Hover"}},
{j("UICorner",{CornerRadius=UDim.new(0,4)})}
)
o.Frame=
j(
"TextButton",
{Size=UDim2.new(0,0,0,32),Parent=m,ThemeTag={BackgroundColor3="DialogButton"}},
{
j("UICorner",{CornerRadius=UDim.new(0,4)}),
j(
"UIStroke",
{
ApplyStrokeMode=Enum.ApplyStrokeMode.Border,
Transparency=0.65,
ThemeTag={Color="DialogButtonBorder"}
}
),
o.HoverFrame,
o.Title
}
)local
p, q=i.SpringMotor(1,o.HoverFrame,"BackgroundTransparency",n)
i.AddSignal(
o.Frame.MouseEnter,
function()
q(0.97)
end
)
i.AddSignal(
o.Frame.MouseLeave,
function()
q(1)
end
)
i.AddSignal(
o.Frame.MouseButton1Down,
function()
q(1)
end
)
i.AddSignal(
o.Frame.MouseButton1Up,
function()
q(0.97)
end
)
return o
end
end,
[10]=function()local
d, e, f=c(10)local
g, h, i, j=
a.UserInputService, 
a.Players.LocalPlayer:GetMouse(), 
workspace.CurrentCamera, 
e.Parent.Parent
local k,l=f(j.Packages.Flipper),f(j.Creator)local
m, n, o, p=k.Spring.new, k.Instant.new, l.New, {Window=nil}
function p.Init(q,r)
p.Window=r
return p
end
function p.Create(q)
local r={Buttons=0}
r.TintFrame=
o(
"TextButton",
{
Text="",
Size=UDim2.fromScale(1,1),
BackgroundColor3=Color3.fromRGB(0,0,0),
BackgroundTransparency=1,
Parent=p.Window.Root
},
{o("UICorner",{CornerRadius=UDim.new(0,8)})}
)local
s, t=l.SpringMotor(1,r.TintFrame,"BackgroundTransparency",true)
r.ButtonHolder=
o(
"Frame",
{
Size=UDim2.new(1,-40,1,-40),
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.fromScale(0.5,0.5),
BackgroundTransparency=1
},
{
o(
"UIListLayout",
{
Padding=UDim.new(0,10),
FillDirection=Enum.FillDirection.Horizontal,
HorizontalAlignment=Enum.HorizontalAlignment.Center,
SortOrder=Enum.SortOrder.LayoutOrder
}
)
}
)
r.ButtonHolderFrame=
o(
"Frame",
{
Size=UDim2.new(1,0,0,70),
Position=UDim2.new(0,0,1,-70),
ThemeTag={BackgroundColor3="DialogHolder"}
},
{
o("Frame",{Size=UDim2.new(1,0,0,1),ThemeTag={BackgroundColor3="DialogHolderLine"}}),
r.ButtonHolder
}
)
r.Title=
o(
"TextLabel",
{
FontFace=Font.new(
"rbxasset://fonts/families/GothamSSm.json",
Enum.FontWeight.SemiBold,
Enum.FontStyle.Normal
),
Text="Dialog",
TextColor3=Color3.fromRGB(240,240,240),
TextSize=22,
TextXAlignment=Enum.TextXAlignment.Left,
Size=UDim2.new(1,0,0,22),
Position=UDim2.fromOffset(20,25),
BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,
ThemeTag={TextColor3="Text"}
}
)
r.Scale=o("UIScale",{Scale=1})local
u, v=l.SpringMotor(1.1,r.Scale,"Scale")
r.Root=
o(
"CanvasGroup",
{
Size=UDim2.fromOffset(300,165),
AnchorPoint=Vector2.new(0.5,0.5),
Position=UDim2.fromScale(0.5,0.5),
GroupTransparency=1,
Parent=r.TintFrame,
ThemeTag={BackgroundColor3="Dialog"}
},
{
o("UICorner",{CornerRadius=UDim.new(0,8)}),
o("UIStroke",{Transparency=0.5,ThemeTag={Color="DialogBorder"}}),
r.Scale,
r.Title,
r.ButtonHolderFrame
}
)local
w, x=l.SpringMotor(1,r.Root,"GroupTransparency")
function r.Open(y)
f(j).DialogOpen=true
r.Scale.Scale=1.1
t(0.75)
x(0)
v(1)
end
function r.Close(y)
f(j).DialogOpen=false
t(1)
x(1)
v(1.1)
r.Root.UIStroke:Destroy()
task.wait(0.15)
r.TintFrame:Destroy()
end
function r.Button(y,z,A)
r.Buttons=r.Buttons+1
z=z or"Button"
A=A or function()
end
local B=f(j.Components.Button)("",r.ButtonHolder,true)
B.Title.Text=z
for C,E in next,r.ButtonHolder:GetChildren()do
if E:IsA"TextButton"then
E.Size=UDim2.new(1/r.Buttons,-(((r.Buttons-1)*10)/r.Buttons),0,32)
end
end
l.AddSignal(
B.Frame.MouseButton1Click,
function()
f(j):SafeCallback(A)
pcall(
function()
r:Close()
end
)
end
)
return B
end
return r
end
return p
end,
[11]=function()local
d, e, f=c(11)
local g=e.Parent.Parent
local h,i=f(g.Packages.Flipper),f(g.Creator)local
j, k=i.New, h.Spring.new
return function(l,m,n,o)
local p={}
p.TitleLabel=
j(
"TextLabel",
{
FontFace=Font.new(
"rbxasset://fonts/families/GothamSSm.json",
Enum.FontWeight.Medium,
Enum.FontStyle.Normal
),
Text=l,
TextColor3=Color3.fromRGB(240,240,240),
TextSize=13,
TextXAlignment=Enum.TextXAlignment.Left,
Size=UDim2.new(1,0,0,14),
BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,
ThemeTag={TextColor3="Text"}
}
)
p.DescLabel=
j(
"TextLabel",
{
FontFace=Font.new"rbxasset://fonts/families/GothamSSm.json",
Text=m,
TextColor3=Color3.fromRGB(200,200,200),
TextSize=12,
TextWrapped=true,
TextXAlignment=Enum.TextXAlignment.Left,
BackgroundColor3=Color3.fromRGB(255,255,255),
AutomaticSize=Enum.AutomaticSize.Y,
BackgroundTransparency=1,
Size=UDim2.new(1,0,0,14),
ThemeTag={TextColor3="SubText"}
}
)
p.LabelHolder=
j(
"Frame",
{
AutomaticSize=Enum.AutomaticSize.Y,
BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,
Position=UDim2.fromOffset(10,0),
Size=UDim2.new(1,-28,0,0)
},
{
j(
"UIListLayout",
{SortOrder=Enum.SortOrder.LayoutOrder,VerticalAlignment=Enum.VerticalAlignment.Center}
),
j("UIPadding",{PaddingBottom=UDim.new(0,13),PaddingTop=UDim.new(0,13)}),
p.TitleLabel,
p.DescLabel
}
)
p.Border=
j(
"UIStroke",
{
Transparency=0.5,
ApplyStrokeMode=Enum.ApplyStrokeMode.Border,
Color=Color3.fromRGB(0,0,0),
ThemeTag={Color="ElementBorder"}
}
)
p.Frame=
j(
"TextButton",
{
Size=UDim2.new(1,0,0,0),
BackgroundTransparency=0.89,
BackgroundColor3=Color3.fromRGB(130,130,130),
Parent=n,
AutomaticSize=Enum.AutomaticSize.Y,
Text="",
LayoutOrder=7,
ThemeTag={BackgroundColor3="Element",BackgroundTransparency="ElementTransparency"}
},
{j("UICorner",{CornerRadius=UDim.new(0,4)}),p.Border,p.LabelHolder}
)
function p.SetTitle(q,r)
p.TitleLabel.Text=r
end
function p.SetDesc(q,r)
if r==nil then
r=""
end
if r==""then
p.DescLabel.Visible=false
else
p.DescLabel.Visible=true
end
p.DescLabel.Text=r
end
function p.Destroy(q)
p.Frame:Destroy()
end
p:SetTitle(l)
p:SetDesc(m)
if o then local
q, r, s=
g.Themes, 
i.SpringMotor(
i.GetThemeProperty"ElementTransparency",
p.Frame,
"BackgroundTransparency",
false,
true
)
i.AddSignal(
p.Frame.MouseEnter,
function()
s(i.GetThemeProperty"ElementTransparency"-i.GetThemeProperty"HoverChange")
end
)
i.AddSignal(
p.Frame.MouseLeave,
function()
s(i.GetThemeProperty"ElementTransparency")
end
)
i.AddSignal(
p.Frame.MouseButton1Down,
function()
s(i.GetThemeProperty"ElementTransparency"+i.GetThemeProperty"HoverChange")
end
)
i.AddSignal(
p.Frame.MouseButton1Up,
function()
s(i.GetThemeProperty"ElementTransparency"-i.GetThemeProperty"HoverChange")
end
)
end
return p
end
end,
[12]=function()local
d, e, f=c(12)
local g=e.Parent.Parent
local h,i,j=f(g.Packages.Flipper),f(g.Creator),f(g.Acrylic)local
k, l, m, n=h.Spring.new, h.Instant.new, i.New, {}
function n.Init(o,p)
n.Holder=
m(
"Frame",
{
Position=UDim2.new(1,-30,1,-30),
Size=UDim2.new(0,310,1,-30),
AnchorPoint=Vector2.new(1,1),
BackgroundTransparency=1,
Parent=p
},
{
m(
"UIListLayout",
{
HorizontalAlignment=Enum.HorizontalAlignment.Center,
SortOrder=Enum.SortOrder.LayoutOrder,
VerticalAlignment=Enum.VerticalAlignment.Bottom,
Padding=UDim.new(0,20)
}
)
}
)
end
function n.New(o,p)
p.Title=p.Title or"Title"
p.Content=p.Content or"Content"
p.SubContent=p.SubContent or""
p.Duration=p.Duration or nil
p.Buttons=p.Buttons or{}
local q={Closed=false}
q.AcrylicPaint=j.AcrylicPaint()
q.Title=
m(
"TextLabel",
{
Position=UDim2.new(0,14,0,17),
Text=p.Title,
RichText=true,
TextColor3=Color3.fromRGB(255,255,255),
TextTransparency=0,
FontFace=Font.new"rbxasset://fonts/families/GothamSSm.json",
TextSize=13,
TextXAlignment="Left",
TextYAlignment="Center",
Size=UDim2.new(1,-12,0,12),
TextWrapped=true,
BackgroundTransparency=1,
ThemeTag={TextColor3="Text"}
}
)
q.ContentLabel=
m(
"TextLabel",
{
FontFace=Font.new"rbxasset://fonts/families/GothamSSm.json",
Text=p.Content,
TextColor3=Color3.fromRGB(240,240,240),
TextSize=14,
TextXAlignment=Enum.TextXAlignment.Left,
AutomaticSize=Enum.AutomaticSize.Y,
Size=UDim2.new(1,0,0,14),
BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,
TextWrapped=true,
ThemeTag={TextColor3="Text"}
}
)
q.SubContentLabel=
m(
"TextLabel",
{
FontFace=Font.new"rbxasset://fonts/families/GothamSSm.json",
Text=p.SubContent,
TextColor3=Color3.fromRGB(240,240,240),
TextSize=14,
TextXAlignment=Enum.TextXAlignment.Left,
AutomaticSize=Enum.AutomaticSize.Y,
Size=UDim2.new(1,0,0,14),
BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,
TextWrapped=true,
ThemeTag={TextColor3="SubText"}
}
)
q.LabelHolder=
m(
"Frame",
{
AutomaticSize=Enum.AutomaticSize.Y,
BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,
Position=UDim2.fromOffset(14,40),
Size=UDim2.new(1,-28,0,0)
},
{
m(
"UIListLayout",
{
SortOrder=Enum.SortOrder.LayoutOrder,
VerticalAlignment=Enum.VerticalAlignment.Center,
Padding=UDim.new(0,3)
}
),
q.ContentLabel,
q.SubContentLabel
}
)
q.CloseButton=
m(
"TextButton",
{
Text="",
Position=UDim2.new(1,-14,0,13),
Size=UDim2.fromOffset(20,20),
AnchorPoint=Vector2.new(1,0),
BackgroundTransparency=1
},
{
m(
"ImageLabel",
{
Image=f(e.Parent.Assets).Close,
Size=UDim2.fromOffset(16,16),
Position=UDim2.fromScale(0.5,0.5),
AnchorPoint=Vector2.new(0.5,0.5),
BackgroundTransparency=1,
ThemeTag={ImageColor3="Text"}
}
)
}
)
q.Root=
m(
"Frame",
{BackgroundTransparency=1,Size=UDim2.new(1,0,1,0),Position=UDim2.fromScale(1,0)},
{q.AcrylicPaint.Frame,q.Title,q.CloseButton,q.LabelHolder}
)
if p.Content==""then
q.ContentLabel.Visible=false
end
if p.SubContent==""then
q.SubContentLabel.Visible=false
end
q.Holder=
m("Frame",{BackgroundTransparency=1,Size=UDim2.new(1,0,0,200),Parent=n.Holder},{q.Root})
local r=h.GroupMotor.new{Scale=1,Offset=60}
r:onStep(
function(s)
q.Root.Position=UDim2.new(s.Scale,s.Offset,0,0)
end
)
i.AddSignal(
q.CloseButton.MouseButton1Click,
function()
q:Close()
end
)
function q.Open(s)
local t=q.LabelHolder.AbsoluteSize.Y
q.Holder.Size=UDim2.new(1,0,0,58+t)
r:setGoal{Scale=k(0,{frequency=5}),Offset=k(0,{frequency=5})}
end
function q.Close(s)
if not q.Closed then
q.Closed=true
task.spawn(
function()
r:setGoal{Scale=k(1,{frequency=5}),Offset=k(60,{frequency=5})}
task.wait(0.4)
if f(g).UseAcrylic then
q.AcrylicPaint.Model:Destroy()
end
q.Holder:Destroy()
end
)
end
end
q:Open()
if p.Duration then
task.delay(
p.Duration,
function()
q:Close()
end
)
end
return q
end
return n
end,
[13]=function()local
d, e, f=c(13)
local g=e.Parent.Parent
local h=f(g.Creator)
local i=h.New
return function(j,k)
local l={}
l.Layout=i("UIListLayout",{Padding=UDim.new(0,5)})
l.Container=
i(
"Frame",
{Size=UDim2.new(1,0,0,26),Position=UDim2.fromOffset(0,24),BackgroundTransparency=1},
{l.Layout}
)
l.Root=
i(
"Frame",
{BackgroundTransparency=1,Size=UDim2.new(1,0,0,26),LayoutOrder=7,Parent=k},
{
i(
"TextLabel",
{
RichText=true,
Text=j,
TextTransparency=0,
FontFace=Font.new(
"rbxassetid://12187365364",
Enum.FontWeight.SemiBold,
Enum.FontStyle.Normal
),
TextSize=18,
TextXAlignment="Left",
TextYAlignment="Center",
Size=UDim2.new(1,-16,0,18),
Position=UDim2.fromOffset(0,2),
ThemeTag={TextColor3="Text"}
}
),
l.Container
}
)
h.AddSignal(
l.Layout:GetPropertyChangedSignal"AbsoluteContentSize",
function()
l.Container.Size=UDim2.new(1,0,0,l.Layout.AbsoluteContentSize.Y)
l.Root.Size=UDim2.new(1,0,0,l.Layout.AbsoluteContentSize.Y+25)
end
)
return l
end
end,
[14]=function()local
d, e, f=c(14)
local g=e.Parent.Parent
local h,i=f(g.Packages.Flipper),f(g.Creator)local
j, k, l, m, n=
i.New, 
h.Spring.new, 
h.Instant.new, 
g.Components, 
{Window=nil,Tabs={},Containers={},SelectedTab=0,TabCount=0}
function n.Init(o,p)
n.Window=p
return n
end
function n.GetCurrentTabPos(o)
local p,q=n.Window.TabHolder.AbsolutePosition.Y,n.Tabs[n.SelectedTab].Frame.AbsolutePosition.Y
return q-p
end
function n.New(o,p,q,r)
local s,t=f(g),n.Window
local u=s.Elements
n.TabCount=n.TabCount+1
local v,w=n.TabCount,{Selected=false,Name=p,Type="Tab"}
if s:GetIcon(q)then
q=s:GetIcon(q)
end
if q==""or nil then
q=nil
end
w.Frame=
j(
"TextButton",
{
Size=UDim2.new(1,0,0,34),
BackgroundTransparency=1,
Parent=r,
ThemeTag={BackgroundColor3="Tab"}
},
{
j("UICorner",{CornerRadius=UDim.new(0,6)}),
j(
"TextLabel",
{
AnchorPoint=Vector2.new(0,0.5),
Position=q and UDim2.new(0,30,0.5,0)or UDim2.new(0,12,0.5,0),
Text=p,
RichText=true,
TextColor3=Color3.fromRGB(255,255,255),
TextTransparency=0,
FontFace=Font.new(
"rbxasset://fonts/families/GothamSSm.json",
Enum.FontWeight.Regular,
Enum.FontStyle.Normal
),
TextSize=12,
TextXAlignment="Left",
TextYAlignment="Center",
Size=UDim2.new(1,-12,1,0),
BackgroundTransparency=1,
ThemeTag={TextColor3="Text"}
}
),
j(
"ImageLabel",
{
AnchorPoint=Vector2.new(0,0.5),
Size=UDim2.fromOffset(16,16),
Position=UDim2.new(0,8,0.5,0),
BackgroundTransparency=1,
Image=q and q or nil,
ThemeTag={ImageColor3="Text"}
}
)
}
)
local x=j("UIListLayout",{Padding=UDim.new(0,5),SortOrder=Enum.SortOrder.LayoutOrder})
w.ContainerFrame=
j(
"ScrollingFrame",
{
Size=UDim2.fromScale(1,1),
BackgroundTransparency=1,
Parent=t.ContainerHolder,
Visible=false,
BottomImage="rbxassetid://6889812791",
MidImage="rbxassetid://6889812721",
TopImage="rbxassetid://6276641225",
ScrollBarImageColor3=Color3.fromRGB(255,255,255),
ScrollBarImageTransparency=0.95,
ScrollBarThickness=3,
BorderSizePixel=0,
CanvasSize=UDim2.fromScale(0,0),
ScrollingDirection=Enum.ScrollingDirection.Y
},
{
x,
j(
"UIPadding",
{
PaddingRight=UDim.new(0,10),
PaddingLeft=UDim.new(0,1),
PaddingTop=UDim.new(0,1),
PaddingBottom=UDim.new(0,1)
}
)
}
)
i.AddSignal(
x:GetPropertyChangedSignal"AbsoluteContentSize",
function()
w.ContainerFrame.CanvasSize=UDim2.new(0,0,0,x.AbsoluteContentSize.Y+2)
end
)
w.Motor,w.SetTransparency=i.SpringMotor(1,w.Frame,"BackgroundTransparency")
i.AddSignal(
w.Frame.MouseEnter,
function()
w.SetTransparency(w.Selected and 0.85 or 0.89)
end
)
i.AddSignal(
w.Frame.MouseLeave,
function()
w.SetTransparency(w.Selected and 0.89 or 1)
end
)
i.AddSignal(
w.Frame.MouseButton1Down,
function()
w.SetTransparency(0.92)
end
)
i.AddSignal(
w.Frame.MouseButton1Up,
function()
w.SetTransparency(w.Selected and 0.85 or 0.89)
end
)
i.AddSignal(
w.Frame.MouseButton1Click,
function()
n:SelectTab(v)
end
)
n.Containers[v]=w.ContainerFrame
n.Tabs[v]=w
w.Container=w.ContainerFrame
w.ScrollFrame=w.Container
function w.AddSection(y,z)
local A,B={Type="Section"},f(m.Section)(z,w.Container)
A.Container=B.Container
A.ScrollFrame=w.Container
setmetatable(A,u)
return A
end
setmetatable(w,u)
return w
end
function n.SelectTab(o,p)
local q=n.Window
n.SelectedTab=p
for r,s in next,n.Tabs do
s.SetTransparency(1)
s.Selected=false
end
n.Tabs[p].SetTransparency(0.89)
n.Tabs[p].Selected=true
q.TabDisplay.Text=n.Tabs[p].Name
q.SelectorPosMotor:setGoal(k(n:GetCurrentTabPos(),{frequency=6}))
task.spawn(
function()
q.ContainerPosMotor:setGoal(k(110,{frequency=10}))
q.ContainerBackMotor:setGoal(k(1,{frequency=10}))
task.wait(0.15)
for r,s in next,n.Containers do
s.Visible=false
end
n.Containers[p].Visible=true
q.ContainerPosMotor:setGoal(k(94,{frequency=5}))
q.ContainerBackMotor:setGoal(k(0,{frequency=8}))
end
)
end
return n
end,
[15]=function()local
d, e, f=c(15)
local g,h=a.TextService,e.Parent.Parent local
i, j=f(h.Packages.Flipper), f(h.Creator)
local k=j.New
return function(l,m)
m=m or false
local n={}
n.Input=
k(
"TextBox",
{
FontFace=Font.new"rbxasset://fonts/families/GothamSSm.json",
TextColor3=Color3.fromRGB(200,200,200),
TextSize=14,
TextXAlignment=Enum.TextXAlignment.Left,
TextYAlignment=Enum.TextYAlignment.Center,
BackgroundColor3=Color3.fromRGB(255,255,255),
AutomaticSize=Enum.AutomaticSize.Y,
BackgroundTransparency=1,
Size=UDim2.fromScale(1,1),
Position=UDim2.fromOffset(10,0),
ThemeTag={TextColor3="Text",PlaceholderColor3="SubText"}
}
)
n.Container=
k(
"Frame",
{
BackgroundTransparency=1,
ClipsDescendants=true,
Position=UDim2.new(0,6,0,0),
Size=UDim2.new(1,-12,1,0)
},
{n.Input}
)
n.Indicator=
k(
"Frame",
{
Size=UDim2.new(1,-4,0,1),
Position=UDim2.new(0,2,1,0),
AnchorPoint=Vector2.new(0,1),
BackgroundTransparency=m and 0.5 or 0,
ThemeTag={BackgroundColor3=m and"InputIndicator"or"DialogInputLine"}
}
)
n.Frame=
k(
"Frame",
{
Size=UDim2.new(0,0,0,30),
BackgroundTransparency=m and 0.9 or 0,
Parent=l,
ThemeTag={BackgroundColor3=m and"Input"or"DialogInput"}
},
{
k("UICorner",{CornerRadius=UDim.new(0,4)}),
k(
"UIStroke",
{
ApplyStrokeMode=Enum.ApplyStrokeMode.Border,
Transparency=m and 0.5 or 0.65,
ThemeTag={Color=m and"InElementBorder"or"DialogButtonBorder"}
}
),
n.Indicator,
n.Container
}
)
local o=function()
local o,p=2,n.Container.AbsoluteSize.X
if not n.Input:IsFocused()or n.Input.TextBounds.X<=p-2*o then
n.Input.Position=UDim2.new(0,o,0,0)
else
local q=n.Input.CursorPosition
if q~=-1 then
local r=string.sub(n.Input.Text,1,q-1)
local s=g:GetTextSize(r,n.Input.TextSize,n.Input.Font,Vector2.new(math.huge,math.huge)).X
local t=n.Input.Position.X.Offset+s
if t<o then
n.Input.Position=UDim2.fromOffset(o-s,0)
elseif t>p-o-1 then
n.Input.Position=UDim2.fromOffset(p-s-o-1,0)
end
end
end
end
task.spawn(o)
j.AddSignal(n.Input:GetPropertyChangedSignal"Text",o)
j.AddSignal(n.Input:GetPropertyChangedSignal"CursorPosition",o)
j.AddSignal(
n.Input.Focused,
function()
o()
n.Indicator.Size=UDim2.new(1,-2,0,2)
n.Indicator.Position=UDim2.new(0,1,1,0)
n.Indicator.BackgroundTransparency=0
j.OverrideTag(n.Frame,{BackgroundColor3=m and"InputFocused"or"DialogHolder"})
j.OverrideTag(n.Indicator,{BackgroundColor3="Accent"})
end
)
j.AddSignal(
n.Input.FocusLost,
function()
o()
n.Indicator.Size=UDim2.new(1,-4,0,1)
n.Indicator.Position=UDim2.new(0,2,1,0)
n.Indicator.BackgroundTransparency=0.5
j.OverrideTag(n.Frame,{BackgroundColor3=m and"Input"or"DialogInput"})
j.OverrideTag(n.Indicator,{BackgroundColor3=m and"InputIndicator"or"DialogInputLine"})
end
)
return n
end
end,
[16]=function()local
d, e, f=c(16)
local g,h=e.Parent.Parent,f(e.Parent.Assets)local
i, j=f(g.Creator), f(g.Packages.Flipper)
local k,l=i.New,i.AddSignal
return function(m)
local n,o,p=
{},
f(g),
function(n,o,p,q)
local r={Callback=q or function()
end}
r.Frame=
k(
"TextButton",
{
Size=UDim2.new(0,34,1,-8),
AnchorPoint=Vector2.new(1,0),
BackgroundTransparency=1,
Parent=p,
Position=o,
Text="",
ThemeTag={BackgroundColor3="Text"}
},
{
k("UICorner",{CornerRadius=UDim.new(0,7)}),
k(
"ImageLabel",
{
Image=n,
Size=UDim2.fromOffset(16,16),
Position=UDim2.fromScale(0.5,0.5),
AnchorPoint=Vector2.new(0.5,0.5),
BackgroundTransparency=1,
Name="Icon",
ThemeTag={ImageColor3="Text"}
}
)
}
)local
s, t=i.SpringMotor(1,r.Frame,"BackgroundTransparency")
l(
r.Frame.MouseEnter,
function()
t(0.94)
end
)
l(
r.Frame.MouseLeave,
function()
t(1,true)
end
)
l(
r.Frame.MouseButton1Down,
function()
t(0.96)
end
)
l(
r.Frame.MouseButton1Up,
function()
t(0.94)
end
)
l(r.Frame.MouseButton1Click,r.Callback)
r.SetCallback=function(u)
r.Callback=u
end
return r
end
n.Frame=
k(
"Frame",
{Size=UDim2.new(1,0,0,42),BackgroundTransparency=1,Parent=m.Parent},
{
k(
"Frame",
{Size=UDim2.new(1,-16,1,0),Position=UDim2.new(0,16,0,0),BackgroundTransparency=1},
{
k(
"UIListLayout",
{
Padding=UDim.new(0,5),
FillDirection=Enum.FillDirection.Horizontal,
SortOrder=Enum.SortOrder.LayoutOrder
}
),
k(
"TextLabel",
{
RichText=true,
Text=m.Title,
FontFace=Font.new(
"rbxasset://fonts/families/GothamSSm.json",
Enum.FontWeight.Regular,
Enum.FontStyle.Normal
),
TextSize=12,
TextXAlignment="Left",
TextYAlignment="Center",
Size=UDim2.fromScale(0,1),
AutomaticSize=Enum.AutomaticSize.X,
BackgroundTransparency=1,
ThemeTag={TextColor3="Text"}
}
),
k(
"TextLabel",
{
RichText=true,
Text=m.SubTitle,
TextTransparency=0.4,
FontFace=Font.new(
"rbxasset://fonts/families/GothamSSm.json",
Enum.FontWeight.Regular,
Enum.FontStyle.Normal
),
TextSize=12,
TextXAlignment="Left",
TextYAlignment="Center",
Size=UDim2.fromScale(0,1),
AutomaticSize=Enum.AutomaticSize.X,
BackgroundTransparency=1,
ThemeTag={TextColor3="Text"}
}
)
}
),
k(
"Frame",
{
BackgroundTransparency=0.5,
Size=UDim2.new(1,0,0,1),
Position=UDim2.new(0,0,1,0),
ThemeTag={BackgroundColor3="TitleBarLine"}
}
)
}
)
n.CloseButton=
p(
h.Close,
UDim2.new(1,-4,0,4),
n.Frame,
function()
o.Window:Dialog{
Title="Close",
Content="Are you sure you want to unload the interface?",
Buttons={{Title="Yes",Callback=function()
o:Destroy()
end},{Title="No"}}
}
end
)
n.MaxButton=
p(
h.Max,
UDim2.new(1,-40,0,4),
n.Frame,
function()
m.Window.Maximize(not m.Window.Maximized)
end
)
n.MinButton=
p(
h.Min,
UDim2.new(1,-80,0,4),
n.Frame,
function()
o.Window:Minimize()
end
)
return n
end
end,
[17]=function()local
d, e, f=c(17)
local g,h,i,j=
a.UserInputService,
a.Players.LocalPlayer:GetMouse(),
workspace.CurrentCamera,
e.Parent.Parent
local k,l,m,n,o=f(j.Packages.Flipper),f(j.Creator),f(j.Acrylic),f(e.Parent.Assets),e.Parent
local p,q,r=k.Spring.new,k.Instant.new,l.New
return function(s)
local t,u,v,w,x,y=
f(j),
{
Minimized=false,
Maximized=false,
Size=s.Size,
CurrentPos=0,
Position=UDim2.fromOffset(
i.ViewportSize.X/2-s.Size.X.Offset/2,
i.ViewportSize.Y/2-s.Size.Y.Offset/2
)
},
false
local z,A=false
local B=false
u.AcrylicPaint=m.AcrylicPaint()
local C,E=
r(
"Frame",
{
Size=UDim2.fromOffset(4,0),
BackgroundColor3=Color3.fromRGB(76,194,255),
Position=UDim2.fromOffset(0,17),
AnchorPoint=Vector2.new(0,0.5),
ThemeTag={BackgroundColor3="Accent"}
},
{r("UICorner",{CornerRadius=UDim.new(0,2)})}
),
r(
"Frame",
{Size=UDim2.fromOffset(20,20),BackgroundTransparency=1,Position=UDim2.new(1,-20,1,-20)}
)
u.TabHolder=
r(
"ScrollingFrame",
{
Size=UDim2.fromScale(1,1),
BackgroundTransparency=1,
ScrollBarImageTransparency=1,
ScrollBarThickness=0,
BorderSizePixel=0,
CanvasSize=UDim2.fromScale(0,0),
ScrollingDirection=Enum.ScrollingDirection.Y
},
{r("UIListLayout",{Padding=UDim.new(0,4)})}
)
local F=
r(
"Frame",
{
Size=UDim2.new(0,s.TabWidth,1,-66),
Position=UDim2.new(0,12,0,54),
BackgroundTransparency=1,
ClipsDescendants=true
},
{u.TabHolder,C}
)
u.TabDisplay=
r(
"TextLabel",
{
RichText=true,
Text="Tab",
TextTransparency=0,
FontFace=Font.new("rbxassetid://12187365364",Enum.FontWeight.SemiBold,Enum.FontStyle.Normal),
TextSize=28,
TextXAlignment="Left",
TextYAlignment="Center",
Size=UDim2.new(1,-16,0,28),
Position=UDim2.fromOffset(s.TabWidth+26,56),
BackgroundTransparency=1,
ThemeTag={TextColor3="Text"}
}
)
u.ContainerHolder=
r(
"CanvasGroup",
{
Size=UDim2.new(1,-s.TabWidth-32,1,-102),
Position=UDim2.fromOffset(s.TabWidth+26,90),
BackgroundTransparency=1
}
)
u.Root=
r(
"Frame",
{BackgroundTransparency=1,Size=u.Size,Position=u.Position,Parent=s.Parent},
{u.AcrylicPaint.Frame,u.TabDisplay,u.ContainerHolder,F,E}
)
u.TitleBar=f(e.Parent.TitleBar){Title=s.Title,SubTitle=s.SubTitle,Parent=u.Root,Window=u}
if f(j).UseAcrylic then
u.AcrylicPaint.AddParent(u.Root)
end
local G,H=
k.GroupMotor.new{X=u.Size.X.Offset,Y=u.Size.Y.Offset},
k.GroupMotor.new{X=u.Position.X.Offset,Y=u.Position.Y.Offset}
u.SelectorPosMotor=k.SingleMotor.new(17)
u.SelectorSizeMotor=k.SingleMotor.new(0)
u.ContainerBackMotor=k.SingleMotor.new(0)
u.ContainerPosMotor=k.SingleMotor.new(94)
G:onStep(
function(I)
u.Root.Size=UDim2.new(0,I.X,0,I.Y)
end
)
H:onStep(
function(I)
u.Root.Position=UDim2.new(0,I.X,0,I.Y)
end
)
local I,J=0,0
u.SelectorPosMotor:onStep(
function(K)
C.Position=UDim2.new(0,0,0,K+17)
local L=tick()
local M=L-J
if I~=nil then
u.SelectorSizeMotor:setGoal(p((math.abs(K-I)/(M*60))+16))
I=K
end
J=L
end
)
u.SelectorSizeMotor:onStep(
function(K)
C.Size=UDim2.new(0,4,0,K)
end
)
u.ContainerBackMotor:onStep(
function(K)
u.ContainerHolder.GroupTransparency=K
end
)
u.ContainerPosMotor:onStep(
function(K)
u.ContainerHolder.Position=UDim2.fromOffset(s.TabWidth+26,K)
end
)
local K,L
u.Maximize=function(M,N,O)
u.Maximized=M
u.TitleBar.MaxButton.Frame.Icon.Image=M and n.Restore or n.Max
if M then
K=u.Size.X.Offset
L=u.Size.Y.Offset
end
local P,Q=M and i.ViewportSize.X or K,M and i.ViewportSize.Y or L
G:setGoal{
X=k[O and"Instant"or"Spring"].new(P,{frequency=6}),
Y=k[O and"Instant"or"Spring"].new(Q,{frequency=6})
}
u.Size=UDim2.fromOffset(P,Q)
if not N then
H:setGoal{
X=p(M and 0 or u.Position.X.Offset,{frequency=6}),
Y=p(M and 0 or u.Position.Y.Offset,{frequency=6})
}
end
end
l.AddSignal(
u.TitleBar.Frame.InputBegan,
function(M)
if M.UserInputType==Enum.UserInputType.MouseButton1 or M.UserInputType==Enum.UserInputType.Touch then
v=true
x=M.Position
y=u.Root.Position
if u.Maximized then
y=
UDim2.fromOffset(
h.X-(h.X*((K-100)/u.Root.AbsoluteSize.X)),
h.Y-(h.Y*(L/u.Root.AbsoluteSize.Y))
)
end
M.Changed:Connect(
function()
if M.UserInputState==Enum.UserInputState.End then
v=false
end
end
)
end
end
)
l.AddSignal(
u.TitleBar.Frame.InputChanged,
function(M)
if
M.UserInputType==Enum.UserInputType.MouseMovement or
M.UserInputType==Enum.UserInputType.Touch
then
w=M
end
end
)
l.AddSignal(
E.InputBegan,
function(M)
if M.UserInputType==Enum.UserInputType.MouseButton1 or M.UserInputType==Enum.UserInputType.Touch then
z=true
A=M.Position
end
end
)
l.AddSignal(
g.InputChanged,
function(M)
if M==w and v then
local N=M.Position-x
u.Position=UDim2.fromOffset(y.X.Offset+N.X,y.Y.Offset+N.Y)
H:setGoal{X=q(u.Position.X.Offset),Y=q(u.Position.Y.Offset)}
if u.Maximized then
u.Maximize(false,true,true)
end
end
if
(M.UserInputType==Enum.UserInputType.MouseMovement or
M.UserInputType==Enum.UserInputType.Touch)and
z
then
local N,O=M.Position-A,u.Size
local P=Vector3.new(O.X.Offset,O.Y.Offset,0)+Vector3.new(1,1,0)*N
local Q=Vector2.new(math.clamp(P.X,470,2048),math.clamp(P.Y,380,2048))
G:setGoal{X=k.Instant.new(Q.X),Y=k.Instant.new(Q.Y)}
end
end
)
l.AddSignal(
g.InputEnded,
function(M)
if z==true or M.UserInputType==Enum.UserInputType.Touch then
z=false
u.Size=UDim2.fromOffset(G:getValue().X,G:getValue().Y)
end
end
)
l.AddSignal(
u.TabHolder.UIListLayout:GetPropertyChangedSignal"AbsoluteContentSize",
function()
u.TabHolder.CanvasSize=UDim2.new(0,0,0,u.TabHolder.UIListLayout.AbsoluteContentSize.Y)
end
)
l.AddSignal(
g.InputBegan,
function(M)
if
type(t.MinimizeKeybind)=="table"and t.MinimizeKeybind.Type=="Keybind"and
not g:GetFocusedTextBox()
then
if M.KeyCode.Name==t.MinimizeKeybind.Value then
u:Minimize()
end
elseif M.KeyCode==t.MinimizeKey and not g:GetFocusedTextBox()then
u:Minimize()
end
end
)
function u.Minimize(M)
u.Minimized=not u.Minimized
u.Root.Visible=not u.Minimized
if not B then
B=true
local N=t.MinimizeKeybind and t.MinimizeKeybind.Value or t.MinimizeKey.Name
t:Notify{Title="Interface",Content="Press "..N.." to toggle the inteface.",Duration=6}
end
end
function u.Destroy(M)
if f(j).UseAcrylic then
u.AcrylicPaint.Model:Destroy()
end
u.Root:Destroy()
end
local M=f(o.Dialog):Init(u)
function u.Dialog(N,O)
local P=M:Create()
P.Title.Text=O.Title
local Q=
r(
"TextLabel",
{
FontFace=Font.new"rbxasset://fonts/families/GothamSSm.json",
Text=O.Content,
TextColor3=Color3.fromRGB(240,240,240),
TextSize=14,
TextXAlignment=Enum.TextXAlignment.Left,
TextYAlignment=Enum.TextYAlignment.Top,
Size=UDim2.new(1,-40,1,0),
Position=UDim2.fromOffset(20,60),
BackgroundTransparency=1,
Parent=P.Root,
ClipsDescendants=false,
ThemeTag={TextColor3="Text"}
}
)
r(
"UISizeConstraint",
{MinSize=Vector2.new(300,165),MaxSize=Vector2.new(620,math.huge),Parent=P.Root}
)
P.Root.Size=UDim2.fromOffset(Q.TextBounds.X+40,165)
if Q.TextBounds.X+40>u.Size.X.Offset-120 then
P.Root.Size=UDim2.fromOffset(u.Size.X.Offset-120,165)
Q.TextWrapped=true
P.Root.Size=UDim2.fromOffset(u.Size.X.Offset-120,Q.TextBounds.Y+150)
end
for R,S in next,O.Buttons do
P:Button(S.Title,S.Callback)
end
P:Open()
end
local N=f(o.Tab):Init(u)
function u.AddTab(O,P)
return N:New(P.Title,P.Icon,u.TabHolder)
end
function u.SelectTab(O,P)
N:SelectTab(1)
end
l.AddSignal(
u.TabHolder:GetPropertyChangedSignal"CanvasPosition",
function()
I=N:GetCurrentTabPos()+16
J=0
u.SelectorPosMotor:setGoal(q(N:GetCurrentTabPos()))
end
)
return u
end
end,
[18]=function()local
d, e, f=c(18)
local g=e.Parent
local h,i,j=
f(g.Themes),
f(g.Packages.Flipper),
{
Registry={},
Signals={},
TransparencyMotors={},
DefaultProperties={
ScreenGui={ResetOnSpawn=false,ZIndexBehavior=Enum.ZIndexBehavior.Sibling},
Frame={
BackgroundColor3=Color3.new(1,1,1),
BorderColor3=Color3.new(0,0,0),
BorderSizePixel=0
},
ScrollingFrame={
BackgroundColor3=Color3.new(1,1,1),
BorderColor3=Color3.new(0,0,0),
ScrollBarImageColor3=Color3.new(0,0,0)
},
TextLabel={
BackgroundColor3=Color3.new(1,1,1),
BorderColor3=Color3.new(0,0,0),
Font=Enum.Font.SourceSans,
Text="",
TextColor3=Color3.new(0,0,0),
BackgroundTransparency=1,
TextSize=14
},
TextButton={
BackgroundColor3=Color3.new(1,1,1),
BorderColor3=Color3.new(0,0,0),
AutoButtonColor=false,
Font=Enum.Font.SourceSans,
Text="",
TextColor3=Color3.new(0,0,0),
TextSize=14
},
TextBox={
BackgroundColor3=Color3.new(1,1,1),
BorderColor3=Color3.new(0,0,0),
ClearTextOnFocus=false,
Font=Enum.Font.SourceSans,
Text="",
TextColor3=Color3.new(0,0,0),
TextSize=14
},
ImageLabel={
BackgroundTransparency=1,
BackgroundColor3=Color3.new(1,1,1),
BorderColor3=Color3.new(0,0,0),
BorderSizePixel=0
},
ImageButton={
BackgroundColor3=Color3.new(1,1,1),
BorderColor3=Color3.new(0,0,0),
AutoButtonColor=false
},
CanvasGroup={
BackgroundColor3=Color3.new(1,1,1),
BorderColor3=Color3.new(0,0,0),
BorderSizePixel=0
}
}
}
local k=function(k,l)
if l.ThemeTag then
j.AddThemeObject(k,l.ThemeTag)
end
end
function j.AddSignal(l,m)
table.insert(j.Signals,l:Connect(m))
end
function j.Disconnect()
for l=#j.Signals,1,-1 do
local m=table.remove(j.Signals,l)
m:Disconnect()
end
end
function j.GetThemeProperty(l)
if h[f(g).Theme][l]then
return h[f(g).Theme][l]
end
return h.Dark[l]
end
function j.UpdateTheme()
for l,m in next,j.Registry do
for n,o in next,m.Properties do
l[n]=j.GetThemeProperty(o)
end
end
for l,m in next,j.TransparencyMotors do
m:setGoal(i.Instant.new(j.GetThemeProperty"ElementTransparency"))
end
end
function j.AddThemeObject(l,m)
local n=#j.Registry+1
local o={Object=l,Properties=m,Idx=n}
j.Registry[l]=o
j.UpdateTheme()
return l
end
function j.OverrideTag(l,m)
j.Registry[l].Properties=m
j.UpdateTheme()
end
function j.New(l,m,n)
local o=Instance.new(l)
for p,q in next,j.DefaultProperties[l]or{}do
o[p]=q
end
for p,q in next,m or{}do
if p~="ThemeTag"then
o[p]=q
end
end
for p,q in next,n or{}do
q.Parent=o
end
k(o,m)
return o
end
function j.SpringMotor(l,m,n,o,p)
o=o or false
p=p or false
local q=i.SingleMotor.new(l)
q:onStep(
function(r)
m[n]=r
end
)
if p then
table.insert(j.TransparencyMotors,q)
end
local r=function(r,s)
s=s or false
if not o then
if not s then
if n=="BackgroundTransparency"and f(g).DialogOpen then
return
end
end
end
q:setGoal(i.Spring.new(r,{frequency=8}))
end
return q,r
end
return j
end,
[19]=function()local
d, e, f=c(19)
local g={}
for h,i in next,e:GetChildren()do
table.insert(g,f(i))
end
return g
end,
[20]=function()local
d, e, f=c(20)
local g=e.Parent.Parent
local h=f(g.Creator)
local i,j,k=h.New,g.Components,{}
k.__index=k
k.__type="Button"
function k.New(l,m)
assert(m.Title,"Button - Missing Title")
m.Callback=m.Callback or function()
end
local n=f(j.Element)(m.Title,m.Description,l.Container,true)

i(
"ImageLabel",
{
Image="rbxassetid://10709791437",
Size=UDim2.fromOffset(16,16),
AnchorPoint=Vector2.new(1,0.5),
Position=UDim2.new(1,-10,0.5,0),
BackgroundTransparency=1,
Parent=n.Frame,
ThemeTag={ImageColor3="Text"}
}
)
h.AddSignal(
n.Frame.MouseButton1Click,
function()
l.Library:SafeCallback(m.Callback)
end
)
return n
end
return k
end,
[21]=function()local
d, e, f=c(21)local
g, h, i, j=
a.UserInputService, 
a.TouchInputService,
a.RunService,
a.Players
local k,l=a.RunService.RenderStepped,j.LocalPlayer
local m,n=l:GetMouse(),e.Parent.Parent
local o=f(n.Creator)
local p,q,r=o.New,n.Components,{}
r.__index=r
r.__type="Colorpicker"
function r.New(s,t,u)
local v=s.Library
assert(u.Title,"Colorpicker - Missing Title")
assert(u.Default,"AddColorPicker: Missing default value.")
local w={
Value=u.Default,
Transparency=u.Transparency or 0,
Type="Colorpicker",
Title=type(u.Title)=="string"and u.Title or"Colorpicker",
Callback=u.Callback or function(w)
end
}
function w.SetHSVFromRGB(x,y)
local z,A,B=Color3.toHSV(y)
w.Hue=z
w.Sat=A
w.Vib=B
end
w:SetHSVFromRGB(w.Value)
local x=f(q.Element)(u.Title,u.Description,s.Container,true)
w.SetTitle=x.SetTitle
w.SetDesc=x.SetDesc
local y=
p(
"Frame",
{Size=UDim2.fromScale(1,1),BackgroundColor3=w.Value,Parent=x.Frame},
{p("UICorner",{CornerRadius=UDim.new(0,4)})}
)local
aa, ab=
p(
"ImageLabel",
{
Size=UDim2.fromOffset(26,26),
Position=UDim2.new(1,-10,0.5,0),
AnchorPoint=Vector2.new(1,0.5),
Parent=x.Frame,
Image="http://www.roblox.com/asset/?id=14204231522",
ImageTransparency=0.45,
ScaleType=Enum.ScaleType.Tile,
TileSize=UDim2.fromOffset(40,40)
},
{p("UICorner",{CornerRadius=UDim.new(0,4)}),y}
), 
function()
local z=f(q.Dialog):Create()
z.Title.Text=w.Title
z.Root.Size=UDim2.fromOffset(430,330)
local A,B,C,E,F,G=
w.Hue,
w.Sat,
w.Vib,
w.Transparency,
function()
local A=f(q.Textbox)()
A.Frame.Parent=z.Root
A.Frame.Size=UDim2.new(0,90,0,32)
return A
end,
function(A,B)
return p(
"TextLabel",
{
FontFace=Font.new(
"rbxasset://fonts/families/GothamSSm.json",
Enum.FontWeight.Medium,
Enum.FontStyle.Normal
),
Text=A,
TextColor3=Color3.fromRGB(240,240,240),
TextSize=13,
TextXAlignment=Enum.TextXAlignment.Left,
Size=UDim2.new(1,0,0,32),
Position=B,
BackgroundTransparency=1,
Parent=z.Root,
ThemeTag={TextColor3="Text"}
}
)
end
local H,I=
function()
local H=Color3.fromHSV(A,B,C)
return{R=math.floor(H.r*255),G=math.floor(H.g*255),B=math.floor(H.b*255)}
end,
p(
"ImageLabel",
{
Size=UDim2.new(0,18,0,18),
ScaleType=Enum.ScaleType.Fit,
AnchorPoint=Vector2.new(0.5,0.5),
BackgroundTransparency=1,
Image="http://www.roblox.com/asset/?id=4805639000"
}
)
local J,K=
p(
"ImageLabel",
{
Size=UDim2.fromOffset(180,160),
Position=UDim2.fromOffset(20,55),
Image="rbxassetid://4155801252",
BackgroundColor3=w.Value,
BackgroundTransparency=0,
Parent=z.Root
},
{p("UICorner",{CornerRadius=UDim.new(0,4)}),I}
),
p(
"Frame",
{
BackgroundColor3=w.Value,
Size=UDim2.fromScale(1,1),
BackgroundTransparency=w.Transparency
},
{p("UICorner",{CornerRadius=UDim.new(0,4)})}
)local
L, M=
p(
"ImageLabel",
{
Image="http://www.roblox.com/asset/?id=14204231522",
ImageTransparency=0.45,
ScaleType=Enum.ScaleType.Tile,
TileSize=UDim2.fromOffset(40,40),
BackgroundTransparency=1,
Position=UDim2.fromOffset(112,220),
Size=UDim2.fromOffset(88,24),
Parent=z.Root
},
{
p("UICorner",{CornerRadius=UDim.new(0,4)}),
p("UIStroke",{Thickness=2,Transparency=0.75}),
K
}
), 
p(
"Frame",
{BackgroundColor3=w.Value,Size=UDim2.fromScale(1,1),BackgroundTransparency=0},
{p("UICorner",{CornerRadius=UDim.new(0,4)})}
)local
N, O=
p(
"ImageLabel",
{
Image="http://www.roblox.com/asset/?id=14204231522",
ImageTransparency=0.45,
ScaleType=Enum.ScaleType.Tile,
TileSize=UDim2.fromOffset(40,40),
BackgroundTransparency=1,
Position=UDim2.fromOffset(20,220),
Size=UDim2.fromOffset(88,24),
Parent=z.Root
},
{
p("UICorner",{CornerRadius=UDim.new(0,4)}),
p("UIStroke",{Thickness=2,Transparency=0.75}),
M
}
), 
{}
for P=0,1,0.1 do
table.insert(O,ColorSequenceKeypoint.new(P,Color3.fromHSV(P,1,1)))
end
local P,Q=
p("UIGradient",{Color=ColorSequence.new(O),Rotation=90}),
p(
"Frame",
{
Size=UDim2.new(1,0,1,-10),
Position=UDim2.fromOffset(0,5),
BackgroundTransparency=1
}
)
local R,S,T=
p(
"ImageLabel",
{
Size=UDim2.fromOffset(14,14),
Image="http://www.roblox.com/asset/?id=12266946128",
Parent=Q,
ThemeTag={ImageColor3="DialogInput"}
}
),
p(
"Frame",
{Size=UDim2.fromOffset(12,190),Position=UDim2.fromOffset(210,55),Parent=z.Root},
{p("UICorner",{CornerRadius=UDim.new(1,0)}),P,Q}
),
F()
T.Frame.Position=UDim2.fromOffset(u.Transparency and 260 or 240,55)
G("Hex",UDim2.fromOffset(u.Transparency and 360 or 340,55))
local U=F()
U.Frame.Position=UDim2.fromOffset(u.Transparency and 260 or 240,95)
G("Red",UDim2.fromOffset(u.Transparency and 360 or 340,95))
local V=F()
V.Frame.Position=UDim2.fromOffset(u.Transparency and 260 or 240,135)
G("Green",UDim2.fromOffset(u.Transparency and 360 or 340,135))
local W=F()
W.Frame.Position=UDim2.fromOffset(u.Transparency and 260 or 240,175)
G("Blue",UDim2.fromOffset(u.Transparency and 360 or 340,175))
local X
if u.Transparency then
X=F()
X.Frame.Position=UDim2.fromOffset(260,215)
G("Alpha",UDim2.fromOffset(360,215))
end
local Y,Z,_
if u.Transparency then
local aa=
p(
"Frame",
{
Size=UDim2.new(1,0,1,-10),
Position=UDim2.fromOffset(0,5),
BackgroundTransparency=1
}
)
Z=
p(
"ImageLabel",
{
Size=UDim2.fromOffset(14,14),
Image="http://www.roblox.com/asset/?id=12266946128",
Parent=aa,
ThemeTag={ImageColor3="DialogInput"}
}
)
_=
p(
"Frame",
{Size=UDim2.fromScale(1,1)},
{
p(
"UIGradient",
{
Transparency=NumberSequence.new{
NumberSequenceKeypoint.new(0,0),
NumberSequenceKeypoint.new(1,1)
},
Rotation=270
}
),
p("UICorner",{CornerRadius=UDim.new(1,0)})
}
)
Y=
p(
"Frame",
{
Size=UDim2.fromOffset(12,190),
Position=UDim2.fromOffset(230,55),
Parent=z.Root,
BackgroundTransparency=1
},
{
p("UICorner",{CornerRadius=UDim.new(1,0)}),
p(
"ImageLabel",
{
Image="http://www.roblox.com/asset/?id=14204231522",
ImageTransparency=0.45,
ScaleType=Enum.ScaleType.Tile,
TileSize=UDim2.fromOffset(40,40),
BackgroundTransparency=1,
Size=UDim2.fromScale(1,1),
Parent=z.Root
},
{p("UICorner",{CornerRadius=UDim.new(1,0)})}
),
_,
aa
}
)
end
local aa=function()
J.BackgroundColor3=Color3.fromHSV(A,1,1)
R.Position=UDim2.new(0,-1,A,-6)
I.Position=UDim2.new(B,0,1-C,0)
M.BackgroundColor3=Color3.fromHSV(A,B,C)
T.Input.Text="#"..Color3.fromHSV(A,B,C):ToHex()
U.Input.Text=H().R
V.Input.Text=H().G
W.Input.Text=H().B
if u.Transparency then
_.BackgroundColor3=Color3.fromHSV(A,B,C)
M.BackgroundTransparency=E
Z.Position=UDim2.new(0,-1,1-E,-6)
X.Input.Text=f(n):Round((1-E)*100,0).."%"
end
end
o.AddSignal(
T.Input.FocusLost,
function(ab)
if ab then
local ac,ad=pcall(Color3.fromHex,T.Input.Text)
if ac and typeof(ad)=="Color3"then
A,B,C=Color3.toHSV(ad)
end
end
aa()
end
)
o.AddSignal(
U.Input.FocusLost,
function(ab)
if ab then
local ac=H()
local ad,ae=pcall(Color3.fromRGB,U.Input.Text,ac.G,ac.B)
if ad and typeof(ae)=="Color3"then
if tonumber(U.Input.Text)<=255 then
A,B,C=Color3.toHSV(ae)
end
end
end
aa()
end
)
o.AddSignal(
V.Input.FocusLost,
function(ab)
if ab then
local ac=H()
local ad,ae=pcall(Color3.fromRGB,ac.R,V.Input.Text,ac.B)
if ad and typeof(ae)=="Color3"then
if tonumber(V.Input.Text)<=255 then
A,B,C=Color3.toHSV(ae)
end
end
end
aa()
end
)
o.AddSignal(
W.Input.FocusLost,
function(ab)
if ab then
local ac=H()
local ad,ae=pcall(Color3.fromRGB,ac.R,ac.G,W.Input.Text)
if ad and typeof(ae)=="Color3"then
if tonumber(W.Input.Text)<=255 then
A,B,C=Color3.toHSV(ae)
end
end
end
aa()
end
)
if u.Transparency then
o.AddSignal(
X.Input.FocusLost,
function(ab)
if ab then
pcall(
function()
local ac=tonumber(X.Input.Text)
if ac>=0 and ac<=100 then
E=1-ac*0.01
end
end
)
end
aa()
end
)
end
o.AddSignal(
J.InputBegan,
function(ab)
if
ab.UserInputType==Enum.UserInputType.MouseButton1 or
ab.UserInputType==Enum.UserInputType.Touch
then
while g:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)do
local ac=J.AbsolutePosition.X
local ad=ac+J.AbsoluteSize.X
local ae,af=math.clamp(m.X,ac,ad),J.AbsolutePosition.Y
local ag=af+J.AbsoluteSize.Y
local ah=math.clamp(m.Y,af,ag)
B=(ae-ac)/(ad-ac)
C=1-((ah-af)/(ag-af))
aa()
k:Wait()
end
end
end
)
o.AddSignal(
S.InputBegan,
function(ab)
if
ab.UserInputType==Enum.UserInputType.MouseButton1 or
ab.UserInputType==Enum.UserInputType.Touch
then
while g:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)do
local ac=S.AbsolutePosition.Y
local ad=ac+S.AbsoluteSize.Y
local ae=math.clamp(m.Y,ac,ad)
A=((ae-ac)/(ad-ac))
aa()
k:Wait()
end
end
end
)
if u.Transparency then
o.AddSignal(
Y.InputBegan,
function(ab)
if ab.UserInputType==Enum.UserInputType.MouseButton1 then
while g:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)do
local ac=Y.AbsolutePosition.Y
local ad=ac+Y.AbsoluteSize.Y
local ae=math.clamp(m.Y,ac,ad)
E=1-((ae-ac)/(ad-ac))
aa()
k:Wait()
end
end
end
)
end
aa()
z:Button(
"Done",
function()
w:SetValue({A,B,C},E)
end
)
z:Button"Cancel"
z:Open()
end
function w.Display(ac)
w.Value=Color3.fromHSV(w.Hue,w.Sat,w.Vib)
y.BackgroundColor3=w.Value
y.BackgroundTransparency=w.Transparency
r.Library:SafeCallback(w.Callback,w.Value)
r.Library:SafeCallback(w.Changed,w.Value)
end
function w.SetValue(ac,ad,ae)
local af=Color3.fromHSV(ad[1],ad[2],ad[3])
w.Transparency=ae or 0
w:SetHSVFromRGB(af)
w:Display()
end
function w.SetValueRGB(ac,ad,ae)
w.Transparency=ae or 0
w:SetHSVFromRGB(ad)
w:Display()
end
function w.OnChanged(ac,ad)
w.Changed=ad
ad(w.Value)
end
function w.Destroy(ac)
x:Destroy()
v.Options[t]=nil
end
o.AddSignal(
x.Frame.MouseButton1Click,
function()
ab()
end
)
w:Display()
v.Options[t]=w
return w
end
return r
end,
[22]=function()local
aa, ab, ac=c(22)
local ad,ae,af,ag,ah=
a.TweenService,
a.UserInputService,
a.Players.LocalPlayer:GetMouse(),
workspace.CurrentCamera,
ab.Parent.Parent
local d,e=ac(ah.Creator),ac(ah.Packages.Flipper)
local f,g,h=d.New,ah.Components,{}
h.__index=h
h.__type="Dropdown"
function h.New(i,j,k)
local l,m,n=
i.Library,
{
Values=k.Values,
Value=k.Default,
Multi=k.Multi,
Buttons={},
Opened=false,
Type="Dropdown",
Callback=k.Callback or function()
end
},
ac(g.Element)(k.Title,k.Description,i.Container,false)
n.DescLabel.Size=UDim2.new(1,-170,0,14)
m.SetTitle=n.SetTitle
m.SetDesc=n.SetDesc
local o,p=
f(
"TextLabel",
{
FontFace=Font.new(
"rbxasset://fonts/families/GothamSSm.json",
Enum.FontWeight.Regular,
Enum.FontStyle.Normal
),
Text="Value",
TextColor3=Color3.fromRGB(240,240,240),
TextSize=13,
TextXAlignment=Enum.TextXAlignment.Left,
Size=UDim2.new(1,-30,0,14),
Position=UDim2.new(0,8,0.5,0),
AnchorPoint=Vector2.new(0,0.5),
BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,
TextTruncate=Enum.TextTruncate.AtEnd,
ThemeTag={TextColor3="Text"}
}
),
f(
"ImageLabel",
{
Image="rbxassetid://10709790948",
Size=UDim2.fromOffset(16,16),
AnchorPoint=Vector2.new(1,0.5),
Position=UDim2.new(1,-8,0.5,0),
BackgroundTransparency=1,
ThemeTag={ImageColor3="SubText"}
}
)
local q,r=
f(
"TextButton",
{
Size=UDim2.fromOffset(160,30),
Position=UDim2.new(1,-10,0.5,0),
AnchorPoint=Vector2.new(1,0.5),
BackgroundTransparency=0.9,
Parent=n.Frame,
ThemeTag={BackgroundColor3="DropdownFrame"}
},
{
f("UICorner",{CornerRadius=UDim.new(0,5)}),
f(
"UIStroke",
{
Transparency=0.5,
ApplyStrokeMode=Enum.ApplyStrokeMode.Border,
ThemeTag={Color="InElementBorder"}
}
),
p,
o
}
),
f("UIListLayout",{Padding=UDim.new(0,3)})
local s=
f(
"ScrollingFrame",
{
Size=UDim2.new(1,-5,1,-10),
Position=UDim2.fromOffset(5,5),
BackgroundTransparency=1,
BottomImage="rbxassetid://6889812791",
MidImage="rbxassetid://6889812721",
TopImage="rbxassetid://6276641225",
ScrollBarImageColor3=Color3.fromRGB(255,255,255),
ScrollBarImageTransparency=0.95,
ScrollBarThickness=4,
BorderSizePixel=0,
CanvasSize=UDim2.fromScale(0,0)
},
{r}
)
local t=
f(
"Frame",
{Size=UDim2.fromScale(1,0.6),ThemeTag={BackgroundColor3="DropdownHolder"}},
{
s,
f("UICorner",{CornerRadius=UDim.new(0,7)}),
f(
"UIStroke",
{ApplyStrokeMode=Enum.ApplyStrokeMode.Border,ThemeTag={Color="DropdownBorder"}}
),
f(
"ImageLabel",
{
BackgroundTransparency=1,
Image="http://www.roblox.com/asset/?id=5554236805",
ScaleType=Enum.ScaleType.Slice,
SliceCenter=Rect.new(23,23,277,277),
Size=UDim2.fromScale(1,1)+UDim2.fromOffset(30,30),
Position=UDim2.fromOffset(-15,-15),
ImageColor3=Color3.fromRGB(0,0,0),
ImageTransparency=0.1
}
)
}
)
local u=
f(
"Frame",
{BackgroundTransparency=1,Size=UDim2.fromOffset(170,300),Parent=i.Library.GUI,Visible=false},
{t,f("UISizeConstraint",{MinSize=Vector2.new(170,0)})}
)
table.insert(l.OpenFrames,u)
local v,w=function()
local v=0
if ag.ViewportSize.Y-q.AbsolutePosition.Y<u.AbsoluteSize.Y-5 then
v=u.AbsoluteSize.Y-5-(ag.ViewportSize.Y-q.AbsolutePosition.Y)+40
end
u.Position=UDim2.fromOffset(q.AbsolutePosition.X-1,q.AbsolutePosition.Y-5-v)
end,0
local x,y=function()
if#m.Values>10 then
u.Size=UDim2.fromOffset(w,392)
else
u.Size=UDim2.fromOffset(w,r.AbsoluteContentSize.Y+10)
end
end,function()
s.CanvasSize=UDim2.fromOffset(0,r.AbsoluteContentSize.Y)
end
v()
x()
d.AddSignal(q:GetPropertyChangedSignal"AbsolutePosition",v)
d.AddSignal(
q.MouseButton1Click,
function()
m:Open()
end
)
d.AddSignal(
ae.InputBegan,
function(z)
if z.UserInputType==Enum.UserInputType.MouseButton1 or z.UserInputType==Enum.UserInputType.Touch then
local A,B=t.AbsolutePosition,t.AbsoluteSize
if af.X<A.X or af.X>A.X+B.X or af.Y<(A.Y-20-1)or af.Y>A.Y+B.Y then
m:Close()
end
end
end
)
local z=i.ScrollFrame
function m.Open(A)
m.Opened=true
z.ScrollingEnabled=false
u.Visible=true
ad:Create(
t,
TweenInfo.new(0.2,Enum.EasingStyle.Quart,Enum.EasingDirection.Out),
{Size=UDim2.fromScale(1,1)}
):Play()
end
function m.Close(A)
m.Opened=false
z.ScrollingEnabled=true
t.Size=UDim2.fromScale(1,0.6)
u.Visible=false
end
function m.Display(A)
local B,C=m.Values,""
if k.Multi then
for E,F in next,B do
if m.Value[F]then
C=C..F..", "
end
end
C=C:sub(1,#C-2)
else
C=m.Value or""
end
o.Text=(C==""and"--"or C)
end
function m.GetActiveValues(A)
if k.Multi then
local B={}
for C,E in next,m.Value do
table.insert(B,C)
end
return B
else
return m.Value and 1 or 0
end
end
function m.BuildDropdownList(A)
local B,C=m.Values,{}
for E,F in next,s:GetChildren()do
if not F:IsA"UIListLayout"then
F:Destroy()
end
end
local E=0
for F,G in next,B do
local H={}
E=E+1
local I,J=
f(
"Frame",
{
Size=UDim2.fromOffset(4,14),
BackgroundColor3=Color3.fromRGB(76,194,255),
Position=UDim2.fromOffset(-1,16),
AnchorPoint=Vector2.new(0,0.5),
ThemeTag={BackgroundColor3="Accent"}
},
{f("UICorner",{CornerRadius=UDim.new(0,2)})}
),
f(
"TextLabel",
{
FontFace=Font.new"rbxasset://fonts/families/GothamSSm.json",
Text=G,
TextColor3=Color3.fromRGB(200,200,200),
TextSize=13,
TextXAlignment=Enum.TextXAlignment.Left,
BackgroundColor3=Color3.fromRGB(255,255,255),
AutomaticSize=Enum.AutomaticSize.Y,
BackgroundTransparency=1,
Size=UDim2.fromScale(1,1),
Position=UDim2.fromOffset(10,0),
Name="ButtonLabel",
ThemeTag={TextColor3="Text"}
}
)
local K,L=
(f(
"TextButton",
{
Size=UDim2.new(1,-5,0,32),
BackgroundTransparency=1,
ZIndex=23,
Text="",
Parent=s,
ThemeTag={BackgroundColor3="DropdownOption"}
},
{I,J,f("UICorner",{CornerRadius=UDim.new(0,6)})}
))
if k.Multi then
L=m.Value[G]
else
L=m.Value==G
end local
M, N=d.SpringMotor(1,K,"BackgroundTransparency")local
O, P=d.SpringMotor(1,I,"BackgroundTransparency")
local Q=e.SingleMotor.new(6)
Q:onStep(
function(R)
I.Size=UDim2.new(0,4,0,R)
end
)
d.AddSignal(
K.MouseEnter,
function()
N(L and 0.85 or 0.89)
end
)
d.AddSignal(
K.MouseLeave,
function()
N(L and 0.89 or 1)
end
)
d.AddSignal(
K.MouseButton1Down,
function()
N(0.92)
end
)
d.AddSignal(
K.MouseButton1Up,
function()
N(L and 0.85 or 0.89)
end
)
function H.UpdateButton(R)
if k.Multi then
L=m.Value[G]
if L then
N(0.89)
end
else
L=m.Value==G
N(L and 0.89 or 1)
end
Q:setGoal(e.Spring.new(L and 14 or 6,{frequency=6}))
P(L and 0 or 1)
end
J.InputBegan:Connect(
function(R)
if
R.UserInputType==Enum.UserInputType.MouseButton1 or
R.UserInputType==Enum.UserInputType.Touch
then
local S=not L
if m:GetActiveValues()==1 and not S and not k.AllowNull then
else
if k.Multi then
L=S
m.Value[G]=L and true or nil
else
L=S
m.Value=L and G or nil
for T,U in next,C do
U:UpdateButton()
end
end
H:UpdateButton()
m:Display()
l:SafeCallback(m.Callback,m.Value)
l:SafeCallback(m.Changed,m.Value)
end
end
end
)
H:UpdateButton()
m:Display()
C[K]=H
end
w=0
for F,G in next,C do
if F.ButtonLabel then
if F.ButtonLabel.TextBounds.X>w then
w=F.ButtonLabel.TextBounds.X
end
end
end
w=w+30
y()
x()
end
function m.SetValues(A,B)
if B then
m.Values=B
end
m:BuildDropdownList()
end
function m.OnChanged(A,B)
m.Changed=B
B(m.Value)
end
function m.SetValue(A,B)
if m.Multi then
local C={}
for E,F in next,B do
if table.find(m.Values,E)then
C[E]=true
end
end
m.Value=C
else
if not B then
m.Value=nil
elseif table.find(m.Values,B)then
m.Value=B
end
end
m:BuildDropdownList()
l:SafeCallback(m.Callback,m.Value)
l:SafeCallback(m.Changed,m.Value)
end
function m.Destroy(A)
n:Destroy()
l.Options[j]=nil
end
m:BuildDropdownList()
m:Display()
local A={}
if type(k.Default)=="string"then
local B=table.find(m.Values,k.Default)
if B then
table.insert(A,B)
end
elseif type(k.Default)=="table"then
for B,C in next,k.Default do
local E=table.find(m.Values,C)
if E then
table.insert(A,E)
end
end
elseif type(k.Default)=="number"and m.Values[k.Default]~=nil then
table.insert(A,k.Default)
end
if next(A)then
for B=1,#A do
local C=A[B]
if k.Multi then
m.Value[m.Values[C] ]=true
else
m.Value=m.Values[C]
end
if not k.Multi then
break
end
end
m:BuildDropdownList()
m:Display()
end
l.Options[j]=m
return m
end
return h
end,
[23]=function()local
aa, ab, ac=c(23)
local ad=ab.Parent.Parent
local ae=ac(ad.Creator)local
af, ag, ah, d=ae.New, ae.AddSignal, ad.Components, {}
d.__index=d
d.__type="Input"
function d.New(e,f,g)
local h=e.Library
assert(g.Title,"Input - Missing Title")
g.Callback=g.Callback or function()
end
local i,j=
{
Value=g.Default or"",
Numeric=g.Numeric or false,
Finished=g.Finished or false,
Callback=g.Callback or function(i)
end,
Type="Input"
},
ac(ah.Element)(g.Title,g.Description,e.Container,false)
i.SetTitle=j.SetTitle
i.SetDesc=j.SetDesc
local k=ac(ah.Textbox)(j.Frame,true)
k.Frame.Position=UDim2.new(1,-10,0.5,0)
k.Frame.AnchorPoint=Vector2.new(1,0.5)
k.Frame.Size=UDim2.fromOffset(160,30)
k.Input.Text=g.Default or""
k.Input.PlaceholderText=g.Placeholder or""
local l=k.Input
function i.SetValue(m,n)
if g.MaxLength and#n>g.MaxLength then
n=n:sub(1,g.MaxLength)
end
if i.Numeric then
if(not tonumber(n))and n:len()>0 then
n=i.Value
end
end
i.Value=n
l.Text=n
h:SafeCallback(i.Callback,i.Value)
h:SafeCallback(i.Changed,i.Value)
end
if i.Finished then
ag(
l.FocusLost,
function(m)
if not m then
return
end
i:SetValue(l.Text)
end
)
else
ag(
l:GetPropertyChangedSignal"Text",
function()
i:SetValue(l.Text)
end
)
end
function i.OnChanged(m,n)
i.Changed=n
n(i.Value)
end
function i.Destroy(m)
j:Destroy()
h.Options[f]=nil
end
h.Options[f]=i
return i
end
return d
end,
[24]=function()local
aa, ab, ac=c(24)
local ad,ae=a.UserInputService,ab.Parent.Parent
local af=ac(ae.Creator)
local ag,ah,d=af.New,ae.Components,{}
d.__index=d
d.__type="Keybind"
function d.New(e,f,g)
local h=e.Library
assert(g.Title,"KeyBind - Missing Title")
assert(g.Default,"KeyBind - Missing default value.")
local i,j,k=
{
Value=g.Default,
Toggled=false,
Mode=g.Mode or"Toggle",
Type="Keybind",
Callback=g.Callback or function(i)
end,
ChangedCallback=g.ChangedCallback or function(i)
end
},
false,
ac(ah.Element)(g.Title,g.Description,e.Container,true)
i.SetTitle=k.SetTitle
i.SetDesc=k.SetDesc
local l=
ag(
"TextLabel",
{
FontFace=Font.new(
"rbxasset://fonts/families/GothamSSm.json",
Enum.FontWeight.Regular,
Enum.FontStyle.Normal
),
Text=g.Default,
TextColor3=Color3.fromRGB(240,240,240),
TextSize=13,
TextXAlignment=Enum.TextXAlignment.Center,
Size=UDim2.new(0,0,0,14),
Position=UDim2.new(0,0,0.5,0),
AnchorPoint=Vector2.new(0,0.5),
BackgroundColor3=Color3.fromRGB(255,255,255),
AutomaticSize=Enum.AutomaticSize.X,
BackgroundTransparency=1,
ThemeTag={TextColor3="Text"}
}
)
local m=
ag(
"TextButton",
{
Size=UDim2.fromOffset(0,30),
Position=UDim2.new(1,-10,0.5,0),
AnchorPoint=Vector2.new(1,0.5),
BackgroundTransparency=0.9,
Parent=k.Frame,
AutomaticSize=Enum.AutomaticSize.X,
ThemeTag={BackgroundColor3="Keybind"}
},
{
ag("UICorner",{CornerRadius=UDim.new(0,5)}),
ag("UIPadding",{PaddingLeft=UDim.new(0,8),PaddingRight=UDim.new(0,8)}),
ag(
"UIStroke",
{
Transparency=0.5,
ApplyStrokeMode=Enum.ApplyStrokeMode.Border,
ThemeTag={Color="InElementBorder"}
}
),
l
}
)
function i.GetState(n)
if ad:GetFocusedTextBox()and i.Mode~="Always"then
return false
end
if i.Mode=="Always"then
return true
elseif i.Mode=="Hold"then
if i.Value=="None"then
return false
end
local o=i.Value
if o=="MouseLeft"or o=="MouseRight"then
return o=="MouseLeft"and ad:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)or
o=="MouseRight"and ad:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
else
return ad:IsKeyDown(Enum.KeyCode[i.Value])
end
else
return i.Toggled
end
end
function i.SetValue(n,o,p)
o=o or i.Key
p=p or i.Mode
l.Text=o
i.Value=o
i.Mode=p
end
function i.OnClick(n,o)
i.Clicked=o
end
function i.OnChanged(n,o)
i.Changed=o
o(i.Value)
end
function i.DoClick(n)
h:SafeCallback(i.Callback,i.Toggled)
h:SafeCallback(i.Clicked,i.Toggled)
end
function i.Destroy(n)
k:Destroy()
h.Options[f]=nil
end
af.AddSignal(
m.InputBegan,
function(n)
if n.UserInputType==Enum.UserInputType.MouseButton1 or n.UserInputType==Enum.UserInputType.Touch then
j=true
l.Text="..."
wait(0.2)
local o
o=
ad.InputBegan:Connect(
function(p)
local q
if p.UserInputType==Enum.UserInputType.Keyboard then
q=p.KeyCode.Name
elseif p.UserInputType==Enum.UserInputType.MouseButton1 then
q="MouseLeft"
elseif p.UserInputType==Enum.UserInputType.MouseButton2 then
q="MouseRight"
end
local r
r=
ad.InputEnded:Connect(
function(s)
if
s.KeyCode.Name==q or
q=="MouseLeft"and s.UserInputType==Enum.UserInputType.MouseButton1 or
q=="MouseRight"and s.UserInputType==Enum.UserInputType.MouseButton2
then
j=false
l.Text=q
i.Value=q
h:SafeCallback(i.ChangedCallback,s.KeyCode or s.UserInputType)
h:SafeCallback(i.Changed,s.KeyCode or s.UserInputType)
o:Disconnect()
r:Disconnect()
end
end
)
end
)
end
end
)
af.AddSignal(
ad.InputBegan,
function(n)
if not j and not ad:GetFocusedTextBox()then
if i.Mode=="Toggle"then
local o=i.Value
if o=="MouseLeft"or o=="MouseRight"then
if
o=="MouseLeft"and n.UserInputType==Enum.UserInputType.MouseButton1 or
o=="MouseRight"and n.UserInputType==Enum.UserInputType.MouseButton2
then
i.Toggled=not i.Toggled
i:DoClick()
end
elseif n.UserInputType==Enum.UserInputType.Keyboard then
if n.KeyCode.Name==o then
i.Toggled=not i.Toggled
i:DoClick()
end
end
end
end
end
)
h.Options[f]=i
return i
end
return d
end,
[25]=function()local
aa, ab, ac=c(25)
local ad=ab.Parent.Parent local
ae, af, ag, ah=ad.Components, ac(ad.Packages.Flipper), ac(ad.Creator), {}
ah.__index=ah
ah.__type="Paragraph"
function ah.New(d,e)
assert(e.Title,"Paragraph - Missing Title")
e.Content=e.Content or""
local f=ac(ae.Element)(e.Title,e.Content,ah.Container,false)
f.Frame.BackgroundTransparency=0.92
f.Border.Transparency=0.6
return f
end
return ah
end,
[26]=function()local
aa, ab, ac=c(26)
local ad,ae=a.UserInputService,ab.Parent.Parent
local af=ac(ae.Creator)
local ag,ah,d=af.New,ae.Components,{}
d.__index=d
d.__type="Slider"
function d.New(e,f,g)
local h=e.Library
assert(g.Title,"Slider - Missing Title.")
assert(g.Default,"Slider - Missing default value.")
assert(g.Min,"Slider - Missing minimum value.")
assert(g.Max,"Slider - Missing maximum value.")
assert(g.Rounding,"Slider - Missing rounding value.")
local i,j,k=
{Value=nil,Min=g.Min,Max=g.Max,Rounding=g.Rounding,Callback=g.Callback or function(i)
end,Type="Slider"},
false,
ac(ah.Element)(g.Title,g.Description,e.Container,false)
k.DescLabel.Size=UDim2.new(1,-170,0,14)
i.SetTitle=k.SetTitle
i.SetDesc=k.SetDesc
local l=
ag(
"ImageLabel",
{
AnchorPoint=Vector2.new(0,0.5),
Position=UDim2.new(0,-7,0.5,0),
Size=UDim2.fromOffset(14,14),
Image="http://www.roblox.com/asset/?id=12266946128",
ThemeTag={ImageColor3="Accent"}
}
)
local m,n,o=
ag(
"Frame",
{BackgroundTransparency=1,Position=UDim2.fromOffset(7,0),Size=UDim2.new(1,-14,1,0)},
{l}
),
ag(
"Frame",
{Size=UDim2.new(0,0,1,0),ThemeTag={BackgroundColor3="Accent"}},
{ag("UICorner",{CornerRadius=UDim.new(1,0)})}
),
ag(
"TextLabel",
{
FontFace=Font.new"rbxasset://fonts/families/GothamSSm.json",
Text="Value",
TextSize=12,
TextWrapped=true,
TextXAlignment=Enum.TextXAlignment.Right,
BackgroundColor3=Color3.fromRGB(255,255,255),
BackgroundTransparency=1,
Size=UDim2.new(0,100,0,14),
Position=UDim2.new(0,-4,0.5,0),
AnchorPoint=Vector2.new(1,0.5),
ThemeTag={TextColor3="SubText"}
}
)

ag(
"Frame",
{
Size=UDim2.new(1,0,0,4),
AnchorPoint=Vector2.new(1,0.5),
Position=UDim2.new(1,-10,0.5,0),
BackgroundTransparency=0.4,
Parent=k.Frame,
ThemeTag={BackgroundColor3="SliderRail"}
},
{
ag("UICorner",{CornerRadius=UDim.new(1,0)}),
ag("UISizeConstraint",{MaxSize=Vector2.new(150,math.huge)}),
o,
n,
m
}
)
af.AddSignal(
l.InputBegan,
function(p)
if p.UserInputType==Enum.UserInputType.MouseButton1 or p.UserInputType==Enum.UserInputType.Touch then
j=true
end
end
)
af.AddSignal(
l.InputEnded,
function(p)
if p.UserInputType==Enum.UserInputType.MouseButton1 or p.UserInputType==Enum.UserInputType.Touch then
j=false
end
end
)
af.AddSignal(
ad.InputChanged,
function(p)
if
j and
(p.UserInputType==Enum.UserInputType.MouseMovement or
p.UserInputType==Enum.UserInputType.Touch)
then
local q=math.clamp((p.Position.X-m.AbsolutePosition.X)/m.AbsoluteSize.X,0,1)
i:SetValue(i.Min+((i.Max-i.Min)*q))
end
end
)
function i.OnChanged(p,q)
i.Changed=q
q(i.Value)
end
function i.SetValue(p,q)
p.Value=h:Round(math.clamp(q,i.Min,i.Max),i.Rounding)
l.Position=UDim2.new((p.Value-i.Min)/(i.Max-i.Min),-7,0.5,0)
n.Size=UDim2.fromScale((p.Value-i.Min)/(i.Max-i.Min),1)
o.Text=tostring(p.Value)
h:SafeCallback(i.Callback,p.Value)
h:SafeCallback(i.Changed,p.Value)
end
function i.Destroy(p)
k:Destroy()
h.Options[f]=nil
end
i:SetValue(g.Default)
h.Options[f]=i
return i
end
return d
end,
[27]=function()local
aa, ab, ac=c(27)
local ad,ae=a.TweenService,ab.Parent.Parent
local af=ac(ae.Creator)
local ag,ah,d=af.New,ae.Components,{}
d.__index=d
d.__type="Toggle"
function d.New(e,f,g)
local h=e.Library
assert(g.Title,"Toggle - Missing Title")
local i,j={Value=g.Default or false,Callback=g.Callback or function(i)
end,Type="Toggle"},ac(ah.Element)(g.Title,g.Description,e.Container,true)
j.DescLabel.Size=UDim2.new(1,-54,0,14)
i.SetTitle=j.SetTitle
i.SetDesc=j.SetDesc
local k,l=
ag(
"ImageLabel",
{
AnchorPoint=Vector2.new(0,0.5),
Size=UDim2.fromOffset(14,14),
Position=UDim2.new(0,2,0.5,0),
Image="http://www.roblox.com/asset/?id=12266946128",
ImageTransparency=0.5,
ThemeTag={ImageColor3="ToggleSlider"}
}
),
ag("UIStroke",{Transparency=0.5,ThemeTag={Color="ToggleSlider"}})
local m=
ag(
"Frame",
{
Size=UDim2.fromOffset(36,18),
AnchorPoint=Vector2.new(1,0.5),
Position=UDim2.new(1,-10,0.5,0),
Parent=j.Frame,
BackgroundTransparency=1,
ThemeTag={BackgroundColor3="Accent"}
},
{ag("UICorner",{CornerRadius=UDim.new(0,9)}),l,k}
)
function i.OnChanged(n,o)
i.Changed=o
o(i.Value)
end
function i.SetValue(n,o)
o=not(not o)
i.Value=o
af.OverrideTag(l,{Color=i.Value and"Accent"or"ToggleSlider"})
af.OverrideTag(k,{ImageColor3=i.Value and"ToggleToggled"or"ToggleSlider"})
ad:Create(
k,
TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),
{Position=UDim2.new(0,i.Value and 19 or 2,0.5,0)}
):Play()
ad:Create(
m,
TweenInfo.new(0.25,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),
{BackgroundTransparency=i.Value and 0 or 1}
):Play()
k.ImageTransparency=i.Value and 0 or 0.5
h:SafeCallback(i.Callback,i.Value)
h:SafeCallback(i.Changed,i.Value)
end
function i.Destroy(n)
j:Destroy()
h.Options[f]=nil
end
af.AddSignal(
j.Frame.MouseButton1Click,
function()
i:SetValue(not i.Value)
end
)
i:SetValue(i.Value)
h.Options[f]=i
return i
end
return d
end,
[28]=function()
c(28)
return{
assets={
["lucide-accessibility"]="rbxassetid://10709751939",
["lucide-activity"]="rbxassetid://10709752035",
["lucide-air-vent"]="rbxassetid://10709752131",
["lucide-airplay"]="rbxassetid://10709752254",
["lucide-alarm-check"]="rbxassetid://10709752405",
["lucide-alarm-clock"]="rbxassetid://10709752630",
["lucide-alarm-clock-off"]="rbxassetid://10709752508",
["lucide-alarm-minus"]="rbxassetid://10709752732",
["lucide-alarm-plus"]="rbxassetid://10709752825",
["lucide-album"]="rbxassetid://10709752906",
["lucide-alert-circle"]="rbxassetid://10709752996",
["lucide-alert-octagon"]="rbxassetid://10709753064",
["lucide-alert-triangle"]="rbxassetid://10709753149",
["lucide-align-center"]="rbxassetid://10709753570",
["lucide-align-center-horizontal"]="rbxassetid://10709753272",
["lucide-align-center-vertical"]="rbxassetid://10709753421",
["lucide-align-end-horizontal"]="rbxassetid://10709753692",
["lucide-align-end-vertical"]="rbxassetid://10709753808",
["lucide-align-horizontal-distribute-center"]="rbxassetid://10747779791",
["lucide-align-horizontal-distribute-end"]="rbxassetid://10747784534",
["lucide-align-horizontal-distribute-start"]="rbxassetid://10709754118",
["lucide-align-horizontal-justify-center"]="rbxassetid://10709754204",
["lucide-align-horizontal-justify-end"]="rbxassetid://10709754317",
["lucide-align-horizontal-justify-start"]="rbxassetid://10709754436",
["lucide-align-horizontal-space-around"]="rbxassetid://10709754590",
["lucide-align-horizontal-space-between"]="rbxassetid://10709754749",
["lucide-align-justify"]="rbxassetid://10709759610",
["lucide-align-left"]="rbxassetid://10709759764",
["lucide-align-right"]="rbxassetid://10709759895",
["lucide-align-start-horizontal"]="rbxassetid://10709760051",
["lucide-align-start-vertical"]="rbxassetid://10709760244",
["lucide-align-vertical-distribute-center"]="rbxassetid://10709760351",
["lucide-align-vertical-distribute-end"]="rbxassetid://10709760434",
["lucide-align-vertical-distribute-start"]="rbxassetid://10709760612",
["lucide-align-vertical-justify-center"]="rbxassetid://10709760814",
["lucide-align-vertical-justify-end"]="rbxassetid://10709761003",
["lucide-align-vertical-justify-start"]="rbxassetid://10709761176",
["lucide-align-vertical-space-around"]="rbxassetid://10709761324",
["lucide-align-vertical-space-between"]="rbxassetid://10709761434",
["lucide-anchor"]="rbxassetid://10709761530",
["lucide-angry"]="rbxassetid://10709761629",
["lucide-annoyed"]="rbxassetid://10709761722",
["lucide-aperture"]="rbxassetid://10709761813",
["lucide-apple"]="rbxassetid://10709761889",
["lucide-archive"]="rbxassetid://10709762233",
["lucide-archive-restore"]="rbxassetid://10709762058",
["lucide-armchair"]="rbxassetid://10709762327",
["lucide-arrow-big-down"]="rbxassetid://10747796644",
["lucide-arrow-big-left"]="rbxassetid://10709762574",
["lucide-arrow-big-right"]="rbxassetid://10709762727",
["lucide-arrow-big-up"]="rbxassetid://10709762879",
["lucide-arrow-down"]="rbxassetid://10709767827",
["lucide-arrow-down-circle"]="rbxassetid://10709763034",
["lucide-arrow-down-left"]="rbxassetid://10709767656",
["lucide-arrow-down-right"]="rbxassetid://10709767750",
["lucide-arrow-left"]="rbxassetid://10709768114",
["lucide-arrow-left-circle"]="rbxassetid://10709767936",
["lucide-arrow-left-right"]="rbxassetid://10709768019",
["lucide-arrow-right"]="rbxassetid://10709768347",
["lucide-arrow-right-circle"]="rbxassetid://10709768226",
["lucide-arrow-up"]="rbxassetid://10709768939",
["lucide-arrow-up-circle"]="rbxassetid://10709768432",
["lucide-arrow-up-down"]="rbxassetid://10709768538",
["lucide-arrow-up-left"]="rbxassetid://10709768661",
["lucide-arrow-up-right"]="rbxassetid://10709768787",
["lucide-asterisk"]="rbxassetid://10709769095",
["lucide-at-sign"]="rbxassetid://10709769286",
["lucide-award"]="rbxassetid://10709769406",
["lucide-axe"]="rbxassetid://10709769508",
["lucide-axis-3d"]="rbxassetid://10709769598",
["lucide-baby"]="rbxassetid://10709769732",
["lucide-backpack"]="rbxassetid://10709769841",
["lucide-baggage-claim"]="rbxassetid://10709769935",
["lucide-banana"]="rbxassetid://10709770005",
["lucide-banknote"]="rbxassetid://10709770178",
["lucide-bar-chart"]="rbxassetid://10709773755",
["lucide-bar-chart-2"]="rbxassetid://10709770317",
["lucide-bar-chart-3"]="rbxassetid://10709770431",
["lucide-bar-chart-4"]="rbxassetid://10709770560",
["lucide-bar-chart-horizontal"]="rbxassetid://10709773669",
["lucide-barcode"]="rbxassetid://10747360675",
["lucide-baseline"]="rbxassetid://10709773863",
["lucide-bath"]="rbxassetid://10709773963",
["lucide-battery"]="rbxassetid://10709774640",
["lucide-battery-charging"]="rbxassetid://10709774068",
["lucide-battery-full"]="rbxassetid://10709774206",
["lucide-battery-low"]="rbxassetid://10709774370",
["lucide-battery-medium"]="rbxassetid://10709774513",
["lucide-beaker"]="rbxassetid://10709774756",
["lucide-bed"]="rbxassetid://10709775036",
["lucide-bed-double"]="rbxassetid://10709774864",
["lucide-bed-single"]="rbxassetid://10709774968",
["lucide-beer"]="rbxassetid://10709775167",
["lucide-bell"]="rbxassetid://10709775704",
["lucide-bell-minus"]="rbxassetid://10709775241",
["lucide-bell-off"]="rbxassetid://10709775320",
["lucide-bell-plus"]="rbxassetid://10709775448",
["lucide-bell-ring"]="rbxassetid://10709775560",
["lucide-bike"]="rbxassetid://10709775894",
["lucide-binary"]="rbxassetid://10709776050",
["lucide-bitcoin"]="rbxassetid://10709776126",
["lucide-bluetooth"]="rbxassetid://10709776655",
["lucide-bluetooth-connected"]="rbxassetid://10709776240",
["lucide-bluetooth-off"]="rbxassetid://10709776344",
["lucide-bluetooth-searching"]="rbxassetid://10709776501",
["lucide-bold"]="rbxassetid://10747813908",
["lucide-bomb"]="rbxassetid://10709781460",
["lucide-bone"]="rbxassetid://10709781605",
["lucide-book"]="rbxassetid://10709781824",
["lucide-book-open"]="rbxassetid://10709781717",
["lucide-bookmark"]="rbxassetid://10709782154",
["lucide-bookmark-minus"]="rbxassetid://10709781919",
["lucide-bookmark-plus"]="rbxassetid://10709782044",
["lucide-bot"]="rbxassetid://10709782230",
["lucide-box"]="rbxassetid://10709782497",
["lucide-box-select"]="rbxassetid://10709782342",
["lucide-boxes"]="rbxassetid://10709782582",
["lucide-briefcase"]="rbxassetid://10709782662",
["lucide-brush"]="rbxassetid://10709782758",
["lucide-bug"]="rbxassetid://10709782845",
["lucide-building"]="rbxassetid://10709783051",
["lucide-building-2"]="rbxassetid://10709782939",
["lucide-bus"]="rbxassetid://10709783137",
["lucide-cake"]="rbxassetid://10709783217",
["lucide-calculator"]="rbxassetid://10709783311",
["lucide-calendar"]="rbxassetid://10709789505",
["lucide-calendar-check"]="rbxassetid://10709783474",
["lucide-calendar-check-2"]="rbxassetid://10709783392",
["lucide-calendar-clock"]="rbxassetid://10709783577",
["lucide-calendar-days"]="rbxassetid://10709783673",
["lucide-calendar-heart"]="rbxassetid://10709783835",
["lucide-calendar-minus"]="rbxassetid://10709783959",
["lucide-calendar-off"]="rbxassetid://10709788784",
["lucide-calendar-plus"]="rbxassetid://10709788937",
["lucide-calendar-range"]="rbxassetid://10709789053",
["lucide-calendar-search"]="rbxassetid://10709789200",
["lucide-calendar-x"]="rbxassetid://10709789407",
["lucide-calendar-x-2"]="rbxassetid://10709789329",
["lucide-camera"]="rbxassetid://10709789686",
["lucide-camera-off"]="rbxassetid://10747822677",
["lucide-car"]="rbxassetid://10709789810",
["lucide-carrot"]="rbxassetid://10709789960",
["lucide-cast"]="rbxassetid://10709790097",
["lucide-charge"]="rbxassetid://10709790202",
["lucide-check"]="rbxassetid://10709790644",
["lucide-check-circle"]="rbxassetid://10709790387",
["lucide-check-circle-2"]="rbxassetid://10709790298",
["lucide-check-square"]="rbxassetid://10709790537",
["lucide-chef-hat"]="rbxassetid://10709790757",
["lucide-cherry"]="rbxassetid://10709790875",
["lucide-chevron-down"]="rbxassetid://10709790948",
["lucide-chevron-first"]="rbxassetid://10709791015",
["lucide-chevron-last"]="rbxassetid://10709791130",
["lucide-chevron-left"]="rbxassetid://10709791281",
["lucide-chevron-right"]="rbxassetid://10709791437",
["lucide-chevron-up"]="rbxassetid://10709791523",
["lucide-chevrons-down"]="rbxassetid://10709796864",
["lucide-chevrons-down-up"]="rbxassetid://10709791632",
["lucide-chevrons-left"]="rbxassetid://10709797151",
["lucide-chevrons-left-right"]="rbxassetid://10709797006",
["lucide-chevrons-right"]="rbxassetid://10709797382",
["lucide-chevrons-right-left"]="rbxassetid://10709797274",
["lucide-chevrons-up"]="rbxassetid://10709797622",
["lucide-chevrons-up-down"]="rbxassetid://10709797508",
["lucide-chrome"]="rbxassetid://10709797725",
["lucide-circle"]="rbxassetid://10709798174",
["lucide-circle-dot"]="rbxassetid://10709797837",
["lucide-circle-ellipsis"]="rbxassetid://10709797985",
["lucide-circle-slashed"]="rbxassetid://10709798100",
["lucide-citrus"]="rbxassetid://10709798276",
["lucide-clapperboard"]="rbxassetid://10709798350",
["lucide-clipboard"]="rbxassetid://10709799288",
["lucide-clipboard-check"]="rbxassetid://10709798443",
["lucide-clipboard-copy"]="rbxassetid://10709798574",
["lucide-clipboard-edit"]="rbxassetid://10709798682",
["lucide-clipboard-list"]="rbxassetid://10709798792",
["lucide-clipboard-signature"]="rbxassetid://10709798890",
["lucide-clipboard-type"]="rbxassetid://10709798999",
["lucide-clipboard-x"]="rbxassetid://10709799124",
["lucide-clock"]="rbxassetid://10709805144",
["lucide-clock-1"]="rbxassetid://10709799535",
["lucide-clock-10"]="rbxassetid://10709799718",
["lucide-clock-11"]="rbxassetid://10709799818",
["lucide-clock-12"]="rbxassetid://10709799962",
["lucide-clock-2"]="rbxassetid://10709803876",
["lucide-clock-3"]="rbxassetid://10709803989",
["lucide-clock-4"]="rbxassetid://10709804164",
["lucide-clock-5"]="rbxassetid://10709804291",
["lucide-clock-6"]="rbxassetid://10709804435",
["lucide-clock-7"]="rbxassetid://10709804599",
["lucide-clock-8"]="rbxassetid://10709804784",
["lucide-clock-9"]="rbxassetid://10709804996",
["lucide-cloud"]="rbxassetid://10709806740",
["lucide-cloud-cog"]="rbxassetid://10709805262",
["lucide-cloud-drizzle"]="rbxassetid://10709805371",
["lucide-cloud-fog"]="rbxassetid://10709805477",
["lucide-cloud-hail"]="rbxassetid://10709805596",
["lucide-cloud-lightning"]="rbxassetid://10709805727",
["lucide-cloud-moon"]="rbxassetid://10709805942",
["lucide-cloud-moon-rain"]="rbxassetid://10709805838",
["lucide-cloud-off"]="rbxassetid://10709806060",
["lucide-cloud-rain"]="rbxassetid://10709806277",
["lucide-cloud-rain-wind"]="rbxassetid://10709806166",
["lucide-cloud-snow"]="rbxassetid://10709806374",
["lucide-cloud-sun"]="rbxassetid://10709806631",
["lucide-cloud-sun-rain"]="rbxassetid://10709806475",
["lucide-cloudy"]="rbxassetid://10709806859",
["lucide-clover"]="rbxassetid://10709806995",
["lucide-code"]="rbxassetid://10709810463",
["lucide-code-2"]="rbxassetid://10709807111",
["lucide-codepen"]="rbxassetid://10709810534",
["lucide-codesandbox"]="rbxassetid://10709810676",
["lucide-coffee"]="rbxassetid://10709810814",
["lucide-cog"]="rbxassetid://10709810948",
["lucide-coins"]="rbxassetid://10709811110",
["lucide-columns"]="rbxassetid://10709811261",
["lucide-command"]="rbxassetid://10709811365",
["lucide-compass"]="rbxassetid://10709811445",
["lucide-component"]="rbxassetid://10709811595",
["lucide-concierge-bell"]="rbxassetid://10709811706",
["lucide-connection"]="rbxassetid://10747361219",
["lucide-contact"]="rbxassetid://10709811834",
["lucide-contrast"]="rbxassetid://10709811939",
["lucide-cookie"]="rbxassetid://10709812067",
["lucide-copy"]="rbxassetid://10709812159",
["lucide-copyleft"]="rbxassetid://10709812251",
["lucide-copyright"]="rbxassetid://10709812311",
["lucide-corner-down-left"]="rbxassetid://10709812396",
["lucide-corner-down-right"]="rbxassetid://10709812485",
["lucide-corner-left-down"]="rbxassetid://10709812632",
["lucide-corner-left-up"]="rbxassetid://10709812784",
["lucide-corner-right-down"]="rbxassetid://10709812939",
["lucide-corner-right-up"]="rbxassetid://10709813094",
["lucide-corner-up-left"]="rbxassetid://10709813185",
["lucide-corner-up-right"]="rbxassetid://10709813281",
["lucide-cpu"]="rbxassetid://10709813383",
["lucide-croissant"]="rbxassetid://10709818125",
["lucide-crop"]="rbxassetid://10709818245",
["lucide-cross"]="rbxassetid://10709818399",
["lucide-crosshair"]="rbxassetid://10709818534",
["lucide-crown"]="rbxassetid://10709818626",
["lucide-cup-soda"]="rbxassetid://10709818763",
["lucide-curly-braces"]="rbxassetid://10709818847",
["lucide-currency"]="rbxassetid://10709818931",
["lucide-database"]="rbxassetid://10709818996",
["lucide-delete"]="rbxassetid://10709819059",
["lucide-diamond"]="rbxassetid://10709819149",
["lucide-dice-1"]="rbxassetid://10709819266",
["lucide-dice-2"]="rbxassetid://10709819361",
["lucide-dice-3"]="rbxassetid://10709819508",
["lucide-dice-4"]="rbxassetid://10709819670",
["lucide-dice-5"]="rbxassetid://10709819801",
["lucide-dice-6"]="rbxassetid://10709819896",
["lucide-dices"]="rbxassetid://10723343321",
["lucide-diff"]="rbxassetid://10723343416",
["lucide-disc"]="rbxassetid://10723343537",
["lucide-divide"]="rbxassetid://10723343805",
["lucide-divide-circle"]="rbxassetid://10723343636",
["lucide-divide-square"]="rbxassetid://10723343737",
["lucide-dollar-sign"]="rbxassetid://10723343958",
["lucide-download"]="rbxassetid://10723344270",
["lucide-download-cloud"]="rbxassetid://10723344088",
["lucide-droplet"]="rbxassetid://10723344432",
["lucide-droplets"]="rbxassetid://10734883356",
["lucide-drumstick"]="rbxassetid://10723344737",
["lucide-edit"]="rbxassetid://10734883598",
["lucide-edit-2"]="rbxassetid://10723344885",
["lucide-edit-3"]="rbxassetid://10723345088",
["lucide-egg"]="rbxassetid://10723345518",
["lucide-egg-fried"]="rbxassetid://10723345347",
["lucide-electricity"]="rbxassetid://10723345749",
["lucide-electricity-off"]="rbxassetid://10723345643",
["lucide-equal"]="rbxassetid://10723345990",
["lucide-equal-not"]="rbxassetid://10723345866",
["lucide-eraser"]="rbxassetid://10723346158",
["lucide-euro"]="rbxassetid://10723346372",
["lucide-expand"]="rbxassetid://10723346553",
["lucide-external-link"]="rbxassetid://10723346684",
["lucide-eye"]="rbxassetid://10723346959",
["lucide-eye-off"]="rbxassetid://10723346871",
["lucide-factory"]="rbxassetid://10723347051",
["lucide-fan"]="rbxassetid://10723354359",
["lucide-fast-forward"]="rbxassetid://10723354521",
["lucide-feather"]="rbxassetid://10723354671",
["lucide-figma"]="rbxassetid://10723354801",
["lucide-file"]="rbxassetid://10723374641",
["lucide-file-archive"]="rbxassetid://10723354921",
["lucide-file-audio"]="rbxassetid://10723355148",
["lucide-file-audio-2"]="rbxassetid://10723355026",
["lucide-file-axis-3d"]="rbxassetid://10723355272",
["lucide-file-badge"]="rbxassetid://10723355622",
["lucide-file-badge-2"]="rbxassetid://10723355451",
["lucide-file-bar-chart"]="rbxassetid://10723355887",
["lucide-file-bar-chart-2"]="rbxassetid://10723355746",
["lucide-file-box"]="rbxassetid://10723355989",
["lucide-file-check"]="rbxassetid://10723356210",
["lucide-file-check-2"]="rbxassetid://10723356100",
["lucide-file-clock"]="rbxassetid://10723356329",
["lucide-file-code"]="rbxassetid://10723356507",
["lucide-file-cog"]="rbxassetid://10723356830",
["lucide-file-cog-2"]="rbxassetid://10723356676",
["lucide-file-diff"]="rbxassetid://10723357039",
["lucide-file-digit"]="rbxassetid://10723357151",
["lucide-file-down"]="rbxassetid://10723357322",
["lucide-file-edit"]="rbxassetid://10723357495",
["lucide-file-heart"]="rbxassetid://10723357637",
["lucide-file-image"]="rbxassetid://10723357790",
["lucide-file-input"]="rbxassetid://10723357933",
["lucide-file-json"]="rbxassetid://10723364435",
["lucide-file-json-2"]="rbxassetid://10723364361",
["lucide-file-key"]="rbxassetid://10723364605",
["lucide-file-key-2"]="rbxassetid://10723364515",
["lucide-file-line-chart"]="rbxassetid://10723364725",
["lucide-file-lock"]="rbxassetid://10723364957",
["lucide-file-lock-2"]="rbxassetid://10723364861",
["lucide-file-minus"]="rbxassetid://10723365254",
["lucide-file-minus-2"]="rbxassetid://10723365086",
["lucide-file-output"]="rbxassetid://10723365457",
["lucide-file-pie-chart"]="rbxassetid://10723365598",
["lucide-file-plus"]="rbxassetid://10723365877",
["lucide-file-plus-2"]="rbxassetid://10723365766",
["lucide-file-question"]="rbxassetid://10723365987",
["lucide-file-scan"]="rbxassetid://10723366167",
["lucide-file-search"]="rbxassetid://10723366550",
["lucide-file-search-2"]="rbxassetid://10723366340",
["lucide-file-signature"]="rbxassetid://10723366741",
["lucide-file-spreadsheet"]="rbxassetid://10723366962",
["lucide-file-symlink"]="rbxassetid://10723367098",
["lucide-file-terminal"]="rbxassetid://10723367244",
["lucide-file-text"]="rbxassetid://10723367380",
["lucide-file-type"]="rbxassetid://10723367606",
["lucide-file-type-2"]="rbxassetid://10723367509",
["lucide-file-up"]="rbxassetid://10723367734",
["lucide-file-video"]="rbxassetid://10723373884",
["lucide-file-video-2"]="rbxassetid://10723367834",
["lucide-file-volume"]="rbxassetid://10723374172",
["lucide-file-volume-2"]="rbxassetid://10723374030",
["lucide-file-warning"]="rbxassetid://10723374276",
["lucide-file-x"]="rbxassetid://10723374544",
["lucide-file-x-2"]="rbxassetid://10723374378",
["lucide-files"]="rbxassetid://10723374759",
["lucide-film"]="rbxassetid://10723374981",
["lucide-filter"]="rbxassetid://10723375128",
["lucide-fingerprint"]="rbxassetid://10723375250",
["lucide-flag"]="rbxassetid://10723375890",
["lucide-flag-off"]="rbxassetid://10723375443",
["lucide-flag-triangle-left"]="rbxassetid://10723375608",
["lucide-flag-triangle-right"]="rbxassetid://10723375727",
["lucide-flame"]="rbxassetid://10723376114",
["lucide-flashlight"]="rbxassetid://10723376471",
["lucide-flashlight-off"]="rbxassetid://10723376365",
["lucide-flask-conical"]="rbxassetid://10734883986",
["lucide-flask-round"]="rbxassetid://10723376614",
["lucide-flip-horizontal"]="rbxassetid://10723376884",
["lucide-flip-horizontal-2"]="rbxassetid://10723376745",
["lucide-flip-vertical"]="rbxassetid://10723377138",
["lucide-flip-vertical-2"]="rbxassetid://10723377026",
["lucide-flower"]="rbxassetid://10747830374",
["lucide-flower-2"]="rbxassetid://10723377305",
["lucide-focus"]="rbxassetid://10723377537",
["lucide-folder"]="rbxassetid://10723387563",
["lucide-folder-archive"]="rbxassetid://10723384478",
["lucide-folder-check"]="rbxassetid://10723384605",
["lucide-folder-clock"]="rbxassetid://10723384731",
["lucide-folder-closed"]="rbxassetid://10723384893",
["lucide-folder-cog"]="rbxassetid://10723385213",
["lucide-folder-cog-2"]="rbxassetid://10723385036",
["lucide-folder-down"]="rbxassetid://10723385338",
["lucide-folder-edit"]="rbxassetid://10723385445",
["lucide-folder-heart"]="rbxassetid://10723385545",
["lucide-folder-input"]="rbxassetid://10723385721",
["lucide-folder-key"]="rbxassetid://10723385848",
["lucide-folder-lock"]="rbxassetid://10723386005",
["lucide-folder-minus"]="rbxassetid://10723386127",
["lucide-folder-open"]="rbxassetid://10723386277",
["lucide-folder-output"]="rbxassetid://10723386386",
["lucide-folder-plus"]="rbxassetid://10723386531",
["lucide-folder-search"]="rbxassetid://10723386787",
["lucide-folder-search-2"]="rbxassetid://10723386674",
["lucide-folder-symlink"]="rbxassetid://10723386930",
["lucide-folder-tree"]="rbxassetid://10723387085",
["lucide-folder-up"]="rbxassetid://10723387265",
["lucide-folder-x"]="rbxassetid://10723387448",
["lucide-folders"]="rbxassetid://10723387721",
["lucide-form-input"]="rbxassetid://10723387841",
["lucide-forward"]="rbxassetid://10723388016",
["lucide-frame"]="rbxassetid://10723394389",
["lucide-framer"]="rbxassetid://10723394565",
["lucide-frown"]="rbxassetid://10723394681",
["lucide-fuel"]="rbxassetid://10723394846",
["lucide-function-square"]="rbxassetid://10723395041",
["lucide-gamepad"]="rbxassetid://10723395457",
["lucide-gamepad-2"]="rbxassetid://10723395215",
["lucide-gauge"]="rbxassetid://10723395708",
["lucide-gavel"]="rbxassetid://10723395896",
["lucide-gem"]="rbxassetid://10723396000",
["lucide-ghost"]="rbxassetid://10723396107",
["lucide-gift"]="rbxassetid://10723396402",
["lucide-gift-card"]="rbxassetid://10723396225",
["lucide-git-branch"]="rbxassetid://10723396676",
["lucide-git-branch-plus"]="rbxassetid://10723396542",
["lucide-git-commit"]="rbxassetid://10723396812",
["lucide-git-compare"]="rbxassetid://10723396954",
["lucide-git-fork"]="rbxassetid://10723397049",
["lucide-git-merge"]="rbxassetid://10723397165",
["lucide-git-pull-request"]="rbxassetid://10723397431",
["lucide-git-pull-request-closed"]="rbxassetid://10723397268",
["lucide-git-pull-request-draft"]="rbxassetid://10734884302",
["lucide-glass"]="rbxassetid://10723397788",
["lucide-glass-2"]="rbxassetid://10723397529",
["lucide-glass-water"]="rbxassetid://10723397678",
["lucide-glasses"]="rbxassetid://10723397895",
["lucide-globe"]="rbxassetid://10723404337",
["lucide-globe-2"]="rbxassetid://10723398002",
["lucide-grab"]="rbxassetid://10723404472",
["lucide-graduation-cap"]="rbxassetid://10723404691",
["lucide-grape"]="rbxassetid://10723404822",
["lucide-grid"]="rbxassetid://10723404936",
["lucide-grip-horizontal"]="rbxassetid://10723405089",
["lucide-grip-vertical"]="rbxassetid://10723405236",
["lucide-hammer"]="rbxassetid://10723405360",
["lucide-hand"]="rbxassetid://10723405649",
["lucide-hand-metal"]="rbxassetid://10723405508",
["lucide-hard-drive"]="rbxassetid://10723405749",
["lucide-hard-hat"]="rbxassetid://10723405859",
["lucide-hash"]="rbxassetid://10723405975",
["lucide-haze"]="rbxassetid://10723406078",
["lucide-headphones"]="rbxassetid://10723406165",
["lucide-heart"]="rbxassetid://10723406885",
["lucide-heart-crack"]="rbxassetid://10723406299",
["lucide-heart-handshake"]="rbxassetid://10723406480",
["lucide-heart-off"]="rbxassetid://10723406662",
["lucide-heart-pulse"]="rbxassetid://10723406795",
["lucide-help-circle"]="rbxassetid://10723406988",
["lucide-hexagon"]="rbxassetid://10723407092",
["lucide-highlighter"]="rbxassetid://10723407192",
["lucide-history"]="rbxassetid://10723407335",
["lucide-home"]="rbxassetid://10723407389",
["lucide-hourglass"]="rbxassetid://10723407498",
["lucide-ice-cream"]="rbxassetid://10723414308",
["lucide-image"]="rbxassetid://10723415040",
["lucide-image-minus"]="rbxassetid://10723414487",
["lucide-image-off"]="rbxassetid://10723414677",
["lucide-image-plus"]="rbxassetid://10723414827",
["lucide-import"]="rbxassetid://10723415205",
["lucide-inbox"]="rbxassetid://10723415335",
["lucide-indent"]="rbxassetid://10723415494",
["lucide-indian-rupee"]="rbxassetid://10723415642",
["lucide-infinity"]="rbxassetid://10723415766",
["lucide-info"]="rbxassetid://10723415903",
["lucide-inspect"]="rbxassetid://10723416057",
["lucide-italic"]="rbxassetid://10723416195",
["lucide-japanese-yen"]="rbxassetid://10723416363",
["lucide-joystick"]="rbxassetid://10723416527",
["lucide-key"]="rbxassetid://10723416652",
["lucide-keyboard"]="rbxassetid://10723416765",
["lucide-lamp"]="rbxassetid://10723417513",
["lucide-lamp-ceiling"]="rbxassetid://10723416922",
["lucide-lamp-desk"]="rbxassetid://10723417016",
["lucide-lamp-floor"]="rbxassetid://10723417131",
["lucide-lamp-wall-down"]="rbxassetid://10723417240",
["lucide-lamp-wall-up"]="rbxassetid://10723417356",
["lucide-landmark"]="rbxassetid://10723417608",
["lucide-languages"]="rbxassetid://10723417703",
["lucide-laptop"]="rbxassetid://10723423881",
["lucide-laptop-2"]="rbxassetid://10723417797",
["lucide-lasso"]="rbxassetid://10723424235",
["lucide-lasso-select"]="rbxassetid://10723424058",
["lucide-laugh"]="rbxassetid://10723424372",
["lucide-layers"]="rbxassetid://10723424505",
["lucide-layout"]="rbxassetid://10723425376",
["lucide-layout-dashboard"]="rbxassetid://10723424646",
["lucide-layout-grid"]="rbxassetid://10723424838",
["lucide-layout-list"]="rbxassetid://10723424963",
["lucide-layout-template"]="rbxassetid://10723425187",
["lucide-leaf"]="rbxassetid://10723425539",
["lucide-library"]="rbxassetid://10723425615",
["lucide-life-buoy"]="rbxassetid://10723425685",
["lucide-lightbulb"]="rbxassetid://10723425852",
["lucide-lightbulb-off"]="rbxassetid://10723425762",
["lucide-line-chart"]="rbxassetid://10723426393",
["lucide-link"]="rbxassetid://10723426722",
["lucide-link-2"]="rbxassetid://10723426595",
["lucide-link-2-off"]="rbxassetid://10723426513",
["lucide-list"]="rbxassetid://10723433811",
["lucide-list-checks"]="rbxassetid://10734884548",
["lucide-list-end"]="rbxassetid://10723426886",
["lucide-list-minus"]="rbxassetid://10723426986",
["lucide-list-music"]="rbxassetid://10723427081",
["lucide-list-ordered"]="rbxassetid://10723427199",
["lucide-list-plus"]="rbxassetid://10723427334",
["lucide-list-start"]="rbxassetid://10723427494",
["lucide-list-video"]="rbxassetid://10723427619",
["lucide-list-x"]="rbxassetid://10723433655",
["lucide-loader"]="rbxassetid://10723434070",
["lucide-loader-2"]="rbxassetid://10723433935",
["lucide-locate"]="rbxassetid://10723434557",
["lucide-locate-fixed"]="rbxassetid://10723434236",
["lucide-locate-off"]="rbxassetid://10723434379",
["lucide-lock"]="rbxassetid://10723434711",
["lucide-log-in"]="rbxassetid://10723434830",
["lucide-log-out"]="rbxassetid://10723434906",
["lucide-luggage"]="rbxassetid://10723434993",
["lucide-magnet"]="rbxassetid://10723435069",
["lucide-mail"]="rbxassetid://10734885430",
["lucide-mail-check"]="rbxassetid://10723435182",
["lucide-mail-minus"]="rbxassetid://10723435261",
["lucide-mail-open"]="rbxassetid://10723435342",
["lucide-mail-plus"]="rbxassetid://10723435443",
["lucide-mail-question"]="rbxassetid://10723435515",
["lucide-mail-search"]="rbxassetid://10734884739",
["lucide-mail-warning"]="rbxassetid://10734885015",
["lucide-mail-x"]="rbxassetid://10734885247",
["lucide-mails"]="rbxassetid://10734885614",
["lucide-map"]="rbxassetid://10734886202",
["lucide-map-pin"]="rbxassetid://10734886004",
["lucide-map-pin-off"]="rbxassetid://10734885803",
["lucide-maximize"]="rbxassetid://10734886735",
["lucide-maximize-2"]="rbxassetid://10734886496",
["lucide-medal"]="rbxassetid://10734887072",
["lucide-megaphone"]="rbxassetid://10734887454",
["lucide-megaphone-off"]="rbxassetid://10734887311",
["lucide-meh"]="rbxassetid://10734887603",
["lucide-menu"]="rbxassetid://10734887784",
["lucide-message-circle"]="rbxassetid://10734888000",
["lucide-message-square"]="rbxassetid://10734888228",
["lucide-mic"]="rbxassetid://10734888864",
["lucide-mic-2"]="rbxassetid://10734888430",
["lucide-mic-off"]="rbxassetid://10734888646",
["lucide-microscope"]="rbxassetid://10734889106",
["lucide-microwave"]="rbxassetid://10734895076",
["lucide-milestone"]="rbxassetid://10734895310",
["lucide-minimize"]="rbxassetid://10734895698",
["lucide-minimize-2"]="rbxassetid://10734895530",
["lucide-minus"]="rbxassetid://10734896206",
["lucide-minus-circle"]="rbxassetid://10734895856",
["lucide-minus-square"]="rbxassetid://10734896029",
["lucide-monitor"]="rbxassetid://10734896881",
["lucide-monitor-off"]="rbxassetid://10734896360",
["lucide-monitor-speaker"]="rbxassetid://10734896512",
["lucide-moon"]="rbxassetid://10734897102",
["lucide-more-horizontal"]="rbxassetid://10734897250",
["lucide-more-vertical"]="rbxassetid://10734897387",
["lucide-mountain"]="rbxassetid://10734897956",
["lucide-mountain-snow"]="rbxassetid://10734897665",
["lucide-mouse"]="rbxassetid://10734898592",
["lucide-mouse-pointer"]="rbxassetid://10734898476",
["lucide-mouse-pointer-2"]="rbxassetid://10734898194",
["lucide-mouse-pointer-click"]="rbxassetid://10734898355",
["lucide-move"]="rbxassetid://10734900011",
["lucide-move-3d"]="rbxassetid://10734898756",
["lucide-move-diagonal"]="rbxassetid://10734899164",
["lucide-move-diagonal-2"]="rbxassetid://10734898934",
["lucide-move-horizontal"]="rbxassetid://10734899414",
["lucide-move-vertical"]="rbxassetid://10734899821",
["lucide-music"]="rbxassetid://10734905958",
["lucide-music-2"]="rbxassetid://10734900215",
["lucide-music-3"]="rbxassetid://10734905665",
["lucide-music-4"]="rbxassetid://10734905823",
["lucide-navigation"]="rbxassetid://10734906744",
["lucide-navigation-2"]="rbxassetid://10734906332",
["lucide-navigation-2-off"]="rbxassetid://10734906144",
["lucide-navigation-off"]="rbxassetid://10734906580",
["lucide-network"]="rbxassetid://10734906975",
["lucide-newspaper"]="rbxassetid://10734907168",
["lucide-octagon"]="rbxassetid://10734907361",
["lucide-option"]="rbxassetid://10734907649",
["lucide-outdent"]="rbxassetid://10734907933",
["lucide-package"]="rbxassetid://10734909540",
["lucide-package-2"]="rbxassetid://10734908151",
["lucide-package-check"]="rbxassetid://10734908384",
["lucide-package-minus"]="rbxassetid://10734908626",
["lucide-package-open"]="rbxassetid://10734908793",
["lucide-package-plus"]="rbxassetid://10734909016",
["lucide-package-search"]="rbxassetid://10734909196",
["lucide-package-x"]="rbxassetid://10734909375",
["lucide-paint-bucket"]="rbxassetid://10734909847",
["lucide-paintbrush"]="rbxassetid://10734910187",
["lucide-paintbrush-2"]="rbxassetid://10734910030",
["lucide-palette"]="rbxassetid://10734910430",
["lucide-palmtree"]="rbxassetid://10734910680",
["lucide-paperclip"]="rbxassetid://10734910927",
["lucide-party-popper"]="rbxassetid://10734918735",
["lucide-pause"]="rbxassetid://10734919336",
["lucide-pause-circle"]="rbxassetid://10735024209",
["lucide-pause-octagon"]="rbxassetid://10734919143",
["lucide-pen-tool"]="rbxassetid://10734919503",
["lucide-pencil"]="rbxassetid://10734919691",
["lucide-percent"]="rbxassetid://10734919919",
["lucide-person-standing"]="rbxassetid://10734920149",
["lucide-phone"]="rbxassetid://10734921524",
["lucide-phone-call"]="rbxassetid://10734920305",
["lucide-phone-forwarded"]="rbxassetid://10734920508",
["lucide-phone-incoming"]="rbxassetid://10734920694",
["lucide-phone-missed"]="rbxassetid://10734920845",
["lucide-phone-off"]="rbxassetid://10734921077",
["lucide-phone-outgoing"]="rbxassetid://10734921288",
["lucide-pie-chart"]="rbxassetid://10734921727",
["lucide-piggy-bank"]="rbxassetid://10734921935",
["lucide-pin"]="rbxassetid://10734922324",
["lucide-pin-off"]="rbxassetid://10734922180",
["lucide-pipette"]="rbxassetid://10734922497",
["lucide-pizza"]="rbxassetid://10734922774",
["lucide-plane"]="rbxassetid://10734922971",
["lucide-play"]="rbxassetid://10734923549",
["lucide-play-circle"]="rbxassetid://10734923214",
["lucide-plus"]="rbxassetid://10734924532",
["lucide-plus-circle"]="rbxassetid://10734923868",
["lucide-plus-square"]="rbxassetid://10734924219",
["lucide-podcast"]="rbxassetid://10734929553",
["lucide-pointer"]="rbxassetid://10734929723",
["lucide-pound-sterling"]="rbxassetid://10734929981",
["lucide-power"]="rbxassetid://10734930466",
["lucide-power-off"]="rbxassetid://10734930257",
["lucide-printer"]="rbxassetid://10734930632",
["lucide-puzzle"]="rbxassetid://10734930886",
["lucide-quote"]="rbxassetid://10734931234",
["lucide-radio"]="rbxassetid://10734931596",
["lucide-radio-receiver"]="rbxassetid://10734931402",
["lucide-rectangle-horizontal"]="rbxassetid://10734931777",
["lucide-rectangle-vertical"]="rbxassetid://10734932081",
["lucide-recycle"]="rbxassetid://10734932295",
["lucide-redo"]="rbxassetid://10734932822",
["lucide-redo-2"]="rbxassetid://10734932586",
["lucide-refresh-ccw"]="rbxassetid://10734933056",
["lucide-refresh-cw"]="rbxassetid://10734933222",
["lucide-refrigerator"]="rbxassetid://10734933465",
["lucide-regex"]="rbxassetid://10734933655",
["lucide-repeat"]="rbxassetid://10734933966",
["lucide-repeat-1"]="rbxassetid://10734933826",
["lucide-reply"]="rbxassetid://10734934252",
["lucide-reply-all"]="rbxassetid://10734934132",
["lucide-rewind"]="rbxassetid://10734934347",
["lucide-rocket"]="rbxassetid://10734934585",
["lucide-rocking-chair"]="rbxassetid://10734939942",
["lucide-rotate-3d"]="rbxassetid://10734940107",
["lucide-rotate-ccw"]="rbxassetid://10734940376",
["lucide-rotate-cw"]="rbxassetid://10734940654",
["lucide-rss"]="rbxassetid://10734940825",
["lucide-ruler"]="rbxassetid://10734941018",
["lucide-russian-ruble"]="rbxassetid://10734941199",
["lucide-sailboat"]="rbxassetid://10734941354",
["lucide-save"]="rbxassetid://10734941499",
["lucide-scale"]="rbxassetid://10734941912",
["lucide-scale-3d"]="rbxassetid://10734941739",
["lucide-scaling"]="rbxassetid://10734942072",
["lucide-scan"]="rbxassetid://10734942565",
["lucide-scan-face"]="rbxassetid://10734942198",
["lucide-scan-line"]="rbxassetid://10734942351",
["lucide-scissors"]="rbxassetid://10734942778",
["lucide-screen-share"]="rbxassetid://10734943193",
["lucide-screen-share-off"]="rbxassetid://10734942967",
["lucide-scroll"]="rbxassetid://10734943448",
["lucide-search"]="rbxassetid://10734943674",
["lucide-send"]="rbxassetid://10734943902",
["lucide-separator-horizontal"]="rbxassetid://10734944115",
["lucide-separator-vertical"]="rbxassetid://10734944326",
["lucide-server"]="rbxassetid://10734949856",
["lucide-server-cog"]="rbxassetid://10734944444",
["lucide-server-crash"]="rbxassetid://10734944554",
["lucide-server-off"]="rbxassetid://10734944668",
["lucide-settings"]="rbxassetid://10734950309",
["lucide-settings-2"]="rbxassetid://10734950020",
["lucide-share"]="rbxassetid://10734950813",
["lucide-share-2"]="rbxassetid://10734950553",
["lucide-sheet"]="rbxassetid://10734951038",
["lucide-shield"]="rbxassetid://10734951847",
["lucide-shield-alert"]="rbxassetid://10734951173",
["lucide-shield-check"]="rbxassetid://10734951367",
["lucide-shield-close"]="rbxassetid://10734951535",
["lucide-shield-off"]="rbxassetid://10734951684",
["lucide-shirt"]="rbxassetid://10734952036",
["lucide-shopping-bag"]="rbxassetid://10734952273",
["lucide-shopping-cart"]="rbxassetid://10734952479",
["lucide-shovel"]="rbxassetid://10734952773",
["lucide-shower-head"]="rbxassetid://10734952942",
["lucide-shrink"]="rbxassetid://10734953073",
["lucide-shrub"]="rbxassetid://10734953241",
["lucide-shuffle"]="rbxassetid://10734953451",
["lucide-sidebar"]="rbxassetid://10734954301",
["lucide-sidebar-close"]="rbxassetid://10734953715",
["lucide-sidebar-open"]="rbxassetid://10734954000",
["lucide-sigma"]="rbxassetid://10734954538",
["lucide-signal"]="rbxassetid://10734961133",
["lucide-signal-high"]="rbxassetid://10734954807",
["lucide-signal-low"]="rbxassetid://10734955080",
["lucide-signal-medium"]="rbxassetid://10734955336",
["lucide-signal-zero"]="rbxassetid://10734960878",
["lucide-siren"]="rbxassetid://10734961284",
["lucide-skip-back"]="rbxassetid://10734961526",
["lucide-skip-forward"]="rbxassetid://10734961809",
["lucide-skull"]="rbxassetid://10734962068",
["lucide-slack"]="rbxassetid://10734962339",
["lucide-slash"]="rbxassetid://10734962600",
["lucide-slice"]="rbxassetid://10734963024",
["lucide-sliders"]="rbxassetid://10734963400",
["lucide-sliders-horizontal"]="rbxassetid://10734963191",
["lucide-smartphone"]="rbxassetid://10734963940",
["lucide-smartphone-charging"]="rbxassetid://10734963671",
["lucide-smile"]="rbxassetid://10734964441",
["lucide-smile-plus"]="rbxassetid://10734964188",
["lucide-snowflake"]="rbxassetid://10734964600",
["lucide-sofa"]="rbxassetid://10734964852",
["lucide-sort-asc"]="rbxassetid://10734965115",
["lucide-sort-desc"]="rbxassetid://10734965287",
["lucide-speaker"]="rbxassetid://10734965419",
["lucide-sprout"]="rbxassetid://10734965572",
["lucide-square"]="rbxassetid://10734965702",
["lucide-star"]="rbxassetid://10734966248",
["lucide-star-half"]="rbxassetid://10734965897",
["lucide-star-off"]="rbxassetid://10734966097",
["lucide-stethoscope"]="rbxassetid://10734966384",
["lucide-sticker"]="rbxassetid://10734972234",
["lucide-sticky-note"]="rbxassetid://10734972463",
["lucide-stop-circle"]="rbxassetid://10734972621",
["lucide-stretch-horizontal"]="rbxassetid://10734972862",
["lucide-stretch-vertical"]="rbxassetid://10734973130",
["lucide-strikethrough"]="rbxassetid://10734973290",
["lucide-subscript"]="rbxassetid://10734973457",
["lucide-sun"]="rbxassetid://10734974297",
["lucide-sun-dim"]="rbxassetid://10734973645",
["lucide-sun-medium"]="rbxassetid://10734973778",
["lucide-sun-moon"]="rbxassetid://10734973999",
["lucide-sun-snow"]="rbxassetid://10734974130",
["lucide-sunrise"]="rbxassetid://10734974522",
["lucide-sunset"]="rbxassetid://10734974689",
["lucide-superscript"]="rbxassetid://10734974850",
["lucide-swiss-franc"]="rbxassetid://10734975024",
["lucide-switch-camera"]="rbxassetid://10734975214",
["lucide-sword"]="rbxassetid://10734975486",
["lucide-swords"]="rbxassetid://10734975692",
["lucide-syringe"]="rbxassetid://10734975932",
["lucide-table"]="rbxassetid://10734976230",
["lucide-table-2"]="rbxassetid://10734976097",
["lucide-tablet"]="rbxassetid://10734976394",
["lucide-tag"]="rbxassetid://10734976528",
["lucide-tags"]="rbxassetid://10734976739",
["lucide-target"]="rbxassetid://10734977012",
["lucide-tent"]="rbxassetid://10734981750",
["lucide-terminal"]="rbxassetid://10734982144",
["lucide-terminal-square"]="rbxassetid://10734981995",
["lucide-text-cursor"]="rbxassetid://10734982395",
["lucide-text-cursor-input"]="rbxassetid://10734982297",
["lucide-thermometer"]="rbxassetid://10734983134",
["lucide-thermometer-snowflake"]="rbxassetid://10734982571",
["lucide-thermometer-sun"]="rbxassetid://10734982771",
["lucide-thumbs-down"]="rbxassetid://10734983359",
["lucide-thumbs-up"]="rbxassetid://10734983629",
["lucide-ticket"]="rbxassetid://10734983868",
["lucide-timer"]="rbxassetid://10734984606",
["lucide-timer-off"]="rbxassetid://10734984138",
["lucide-timer-reset"]="rbxassetid://10734984355",
["lucide-toggle-left"]="rbxassetid://10734984834",
["lucide-toggle-right"]="rbxassetid://10734985040",
["lucide-tornado"]="rbxassetid://10734985247",
["lucide-toy-brick"]="rbxassetid://10747361919",
["lucide-train"]="rbxassetid://10747362105",
["lucide-trash"]="rbxassetid://10747362393",
["lucide-trash-2"]="rbxassetid://10747362241",
["lucide-tree-deciduous"]="rbxassetid://10747362534",
["lucide-tree-pine"]="rbxassetid://10747362748",
["lucide-trees"]="rbxassetid://10747363016",
["lucide-trending-down"]="rbxassetid://10747363205",
["lucide-trending-up"]="rbxassetid://10747363465",
["lucide-triangle"]="rbxassetid://10747363621",
["lucide-trophy"]="rbxassetid://10747363809",
["lucide-truck"]="rbxassetid://10747364031",
["lucide-tv"]="rbxassetid://10747364593",
["lucide-tv-2"]="rbxassetid://10747364302",
["lucide-type"]="rbxassetid://10747364761",
["lucide-umbrella"]="rbxassetid://10747364971",
["lucide-underline"]="rbxassetid://10747365191",
["lucide-undo"]="rbxassetid://10747365484",
["lucide-undo-2"]="rbxassetid://10747365359",
["lucide-unlink"]="rbxassetid://10747365771",
["lucide-unlink-2"]="rbxassetid://10747397871",
["lucide-unlock"]="rbxassetid://10747366027",
["lucide-upload"]="rbxassetid://10747366434",
["lucide-upload-cloud"]="rbxassetid://10747366266",
["lucide-usb"]="rbxassetid://10747366606",
["lucide-user"]="rbxassetid://10747373176",
["lucide-user-check"]="rbxassetid://10747371901",
["lucide-user-cog"]="rbxassetid://10747372167",
["lucide-user-minus"]="rbxassetid://10747372346",
["lucide-user-plus"]="rbxassetid://10747372702",
["lucide-user-x"]="rbxassetid://10747372992",
["lucide-users"]="rbxassetid://10747373426",
["lucide-utensils"]="rbxassetid://10747373821",
["lucide-utensils-crossed"]="rbxassetid://10747373629",
["lucide-venetian-mask"]="rbxassetid://10747374003",
["lucide-verified"]="rbxassetid://10747374131",
["lucide-vibrate"]="rbxassetid://10747374489",
["lucide-vibrate-off"]="rbxassetid://10747374269",
["lucide-video"]="rbxassetid://10747374938",
["lucide-video-off"]="rbxassetid://10747374721",
["lucide-view"]="rbxassetid://10747375132",
["lucide-voicemail"]="rbxassetid://10747375281",
["lucide-volume"]="rbxassetid://10747376008",
["lucide-volume-1"]="rbxassetid://10747375450",
["lucide-volume-2"]="rbxassetid://10747375679",
["lucide-volume-x"]="rbxassetid://10747375880",
["lucide-wallet"]="rbxassetid://10747376205",
["lucide-wand"]="rbxassetid://10747376565",
["lucide-wand-2"]="rbxassetid://10747376349",
["lucide-watch"]="rbxassetid://10747376722",
["lucide-waves"]="rbxassetid://10747376931",
["lucide-webcam"]="rbxassetid://10747381992",
["lucide-wifi"]="rbxassetid://10747382504",
["lucide-wifi-off"]="rbxassetid://10747382268",
["lucide-wind"]="rbxassetid://10747382750",
["lucide-wrap-text"]="rbxassetid://10747383065",
["lucide-wrench"]="rbxassetid://10747383470",
["lucide-x"]="rbxassetid://10747384394",
["lucide-x-circle"]="rbxassetid://10747383819",
["lucide-x-octagon"]="rbxassetid://10747384037",
["lucide-x-square"]="rbxassetid://10747384217",
["lucide-zoom-in"]="rbxassetid://10747384552",
["lucide-zoom-out"]="rbxassetid://10747384679"
}
}
end,
[30]=function()local
aa, ab, ac=c(30)
local ad={
SingleMotor=ac(ab.SingleMotor),
GroupMotor=ac(ab.GroupMotor),
Instant=ac(ab.Instant),
Linear=ac(ab.Linear),
Spring=ac(ab.Spring),
isMotor=ac(ab.isMotor)
}
return ad
end,
[31]=function()local
aa, ab, ac=c(31)
local ad,ae,af,ag=a.RunService,ac(ab.Parent.Signal),function()
end,{}
ag.__index=ag
function ag.new()
return setmetatable({_onStep=ae.new(),_onStart=ae.new(),_onComplete=ae.new()},ag)
end
function ag.onStep(ah,d)
return ah._onStep:connect(d)
end
function ag.onStart(ah,d)
return ah._onStart:connect(d)
end
function ag.onComplete(ah,d)
return ah._onComplete:connect(d)
end
function ag.start(ah)
if not ah._connection then
ah._connection=
ad.RenderStepped:Connect(
function(d)
ah:step(d)
end
)
end
end
function ag.stop(ah)
if ah._connection then
ah._connection:Disconnect()
ah._connection=nil
end
end
ag.destroy=ag.stop
ag.step=af
ag.getValue=af
ag.setGoal=af
function ag.__tostring(ah)
return"Motor"
end
return ag
end,
[32]=function()local
aa, ab, ac=c(32)
return function()
local ad,ae=a.RunService,ac(ab.Parent.BaseMotor)
describe(
"connection management",
function()
local af=ae.new()
it(
"should hook up connections on :start()",
function()
af:start()
expect(typeof(af._connection)).to.equal"RBXScriptConnection"
end
)
it(
"should remove connections on :stop() or :destroy()",
function()
af:stop()
expect(af._connection).to.equal(nil)
end
)
end
)
it(
"should call :step() with deltaTime",
function()
local af,ag=(ae.new())
function af.step(ah,...)
ag={...}
af:stop()
end
af:start()
local ah=ad.RenderStepped:Wait()
ad.RenderStepped:Wait()
expect(ag).to.be.ok()
expect(ag[1]).to.equal(ah)
end
)
end
end,
[33]=function()local
aa, ab, ac=c(33)
local ad,ae,af=ac(ab.Parent.BaseMotor),ac(ab.Parent.SingleMotor),ac(ab.Parent.isMotor)
local ag=setmetatable({},ad)
ag.__index=ag
local ah=function(ah)
if af(ah)then
return ah
end
local d=typeof(ah)
if d=="number"then
return ae.new(ah,false)
elseif d=="table"then
return ag.new(ah,false)
end
error(("Unable to convert %q to motor; type %s is unsupported"):format(ah,d),2)
end
function ag.new(d,e)
assert(d,"Missing argument #1: initialValues")
assert(typeof(d)=="table","initialValues must be a table!")
assert(
not d.step,
[[initialValues contains disallowed property "step". Did you mean to put a table of values here?]]
)
local f=setmetatable(ad.new(),ag)
if e~=nil then
f._useImplicitConnections=e
else
f._useImplicitConnections=true
end
f._complete=true
f._motors={}
for g,h in pairs(d)do
f._motors[g]=ah(h)
end
return f
end
function ag.step(d,e)
if d._complete then
return true
end
local f=true
for g,h in pairs(d._motors)do
local i=h:step(e)
if not i then
f=false
end
end
d._onStep:fire(d:getValue())
if f then
if d._useImplicitConnections then
d:stop()
end
d._complete=true
d._onComplete:fire()
end
return f
end
function ag.setGoal(d,e)
assert(
not e.step,
[[goals contains disallowed property "step". Did you mean to put a table of goals here?]]
)
d._complete=false
d._onStart:fire()
for f,g in pairs(e)do
local h=assert(d._motors[f],("Unknown motor for key %s"):format(f))
h:setGoal(g)
end
if d._useImplicitConnections then
d:start()
end
end
function ag.getValue(d)
local e={}
for f,g in pairs(d._motors)do
e[f]=g:getValue()
end
return e
end
function ag.__tostring(d)
return"Motor(Group)"
end
return ag
end,
[34]=function()local
aa, ab, ac=c(34)
return function()
local ad,ae,af=ac(ab.Parent.GroupMotor),ac(ab.Parent.Instant),ac(ab.Parent.Spring)
it(
"should complete when all child motors are complete",
function()
local ag=ad.new({A=1,B=2},false)
expect(ag._complete).to.equal(true)
ag:setGoal{A=ae.new(3),B=af.new(4,{frequency=7.5,dampingRatio=1})}
expect(ag._complete).to.equal(false)
ag:step(1.6666666666666665E-2)
expect(ag._complete).to.equal(false)
for ah=1,30 do
ag:step(1.6666666666666665E-2)
end
expect(ag._complete).to.equal(true)
end
)
it(
"should start when the goal is set",
function()
local ag,ah=ad.new({A=0},false),false
ag:onStart(
function()
ah=not ah
end
)
ag:setGoal{A=ae.new(1)}
expect(ah).to.equal(true)
ag:setGoal{A=ae.new(1)}
expect(ah).to.equal(false)
end
)
it(
"should properly return all values",
function()
local ag=ad.new({A=1,B=2},false)
local ah=ag:getValue()
expect(ah.A).to.equal(1)
expect(ah.B).to.equal(2)
end
)
it(
"should error when a goal is given to GroupMotor.new",
function()
local ag=
pcall(
function()
ad.new(ae.new(0))
end
)
expect(ag).to.equal(false)
end
)
it(
[[should error when a single goal is provided to GroupMotor:step]],
function()
local ag=
pcall(
function()
ad.new{a=1}:setGoal(ae.new(0))
end
)
expect(ag).to.equal(false)
end
)
end
end,
[35]=function()
c(35)
local aa={}
aa.__index=aa
function aa.new(ab)
return setmetatable({_targetValue=ab},aa)
end
function aa.step(ab)
return{complete=true,value=ab._targetValue}
end
return aa
end,
[36]=function()local
aa, ab, ac=c(36)
return function()
local ad=ac(ab.Parent.Instant)
it(
"should return a completed state with the provided value",
function()
local ae=ad.new(1.23)
local af=ae:step(0.1,{value=0,complete=false})
expect(af.complete).to.equal(true)
expect(af.value).to.equal(1.23)
end
)
end
end,
[37]=function()
c(37)
local aa={}
aa.__index=aa
function aa.new(ab,ac)
assert(ab,"Missing argument #1: targetValue")
ac=ac or{}
return setmetatable({_targetValue=ab,_velocity=ac.velocity or 1},aa)
end
function aa.step(ab,ac,ad)
local ae,af,ag=ac.value,ab._velocity,ab._targetValue
local ah=ad*af
local d=ah>=math.abs(ag-ae)
ae=ae+ah*(ag>ae and 1 or-1)
if d then
ae=ab._targetValue
af=0
end
return{complete=d,value=ae,velocity=af}
end
return aa
end,
[38]=function()local
aa, ab, ac=c(38)
return function()
local ad,ae=ac(ab.Parent.SingleMotor),ac(ab.Parent.Linear)
describe(
"completed state",
function()
local af,ag=ad.new(0,false),ae.new(1,{velocity=1})
af:setGoal(ag)
for ah=1,60 do
af:step(1.6666666666666665E-2)
end
it(
"should complete",
function()
expect(af._state.complete).to.equal(true)
end
)
it(
"should be exactly the goal value when completed",
function()
expect(af._state.value).to.equal(1)
end
)
end
)
describe(
"uncompleted state",
function()
local af,ag=ad.new(0,false),ae.new(1,{velocity=1})
af:setGoal(ag)
for ah=1,59 do
af:step(1.6666666666666665E-2)
end
it(
"should be uncomplete",
function()
expect(af._state.complete).to.equal(false)
end
)
end
)
describe(
"negative velocity",
function()
local af,ag=ad.new(1,false),ae.new(0,{velocity=1})
af:setGoal(ag)
for ah=1,60 do
af:step(1.6666666666666665E-2)
end
it(
"should complete",
function()
expect(af._state.complete).to.equal(true)
end
)
it(
"should be exactly the goal value when completed",
function()
expect(af._state.value).to.equal(0)
end
)
end
)
end
end,
[39]=function()
c(39)
local aa={}
aa.__index=aa
function aa.new(ab,ac)
return setmetatable({signal=ab,connected=true,_handler=ac},aa)
end
function aa.disconnect(ab)
if ab.connected then
ab.connected=false
for ac,ad in pairs(ab.signal._connections)do
if ad==ab then
table.remove(ab.signal._connections,ac)
return
end
end
end
end
local ab={}
ab.__index=ab
function ab.new()
return setmetatable({_connections={},_threads={}},ab)
end
function ab.fire(ac,...)
for ad,ae in pairs(ac._connections)do
ae._handler(...)
end
for ad,ae in pairs(ac._threads)do
coroutine.resume(ae,...)
end
ac._threads={}
end
function ab.connect(ac,ad)
local ae=aa.new(ac,ad)
table.insert(ac._connections,ae)
return ae
end
function ab.wait(ac)
table.insert(ac._threads,coroutine.running())
return coroutine.yield()
end
return ab
end,
[40]=function()local
aa, ab, ac=c(40)
return function()
local ad=ac(ab.Parent.Signal)
it(
"should invoke all connections, instantly",
function()
local ae,af,ag=(ad.new())
ae:connect(
function(ah)
af=ah
end
)
ae:connect(
function(ah)
ag=ah
end
)
ae:fire"hello"
expect(af).to.equal"hello"
expect(ag).to.equal"hello"
end
)
it(
"should return values when :wait() is called",
function()
local ae=ad.new()
spawn(
function()
ae:fire(123,"hello")
end
)
local af,ag=ae:wait()
expect(af).to.equal(123)
expect(ag).to.equal"hello"
end
)
it(
"should properly handle disconnections",
function()
local ae,af=ad.new(),false
local ag=
ae:connect(
function()
af=true
end
)
ag:disconnect()
ae:fire()
expect(af).to.equal(false)
end
)
end
end,
[41]=function()local
aa, ab, ac=c(41)
local ad=ac(ab.Parent.BaseMotor)
local ae=setmetatable({},ad)
ae.__index=ae
function ae.new(af,ag)
assert(af,"Missing argument #1: initialValue")
assert(typeof(af)=="number","initialValue must be a number!")
local ah=setmetatable(ad.new(),ae)
if ag~=nil then
ah._useImplicitConnections=ag
else
ah._useImplicitConnections=true
end
ah._goal=nil
ah._state={complete=true,value=af}
return ah
end
function ae.step(af,ag)
if af._state.complete then
return true
end
local ah=af._goal:step(af._state,ag)
af._state=ah
af._onStep:fire(ah.value)
if ah.complete then
if af._useImplicitConnections then
af:stop()
end
af._onComplete:fire()
end
return ah.complete
end
function ae.getValue(af)
return af._state.value
end
function ae.setGoal(af,ag)
af._state.complete=false
af._goal=ag
af._onStart:fire()
if af._useImplicitConnections then
af:start()
end
end
function ae.__tostring(af)
return"Motor(Single)"
end
return ae
end,
[42]=function()local
aa, ab, ac=c(42)
return function()
local ad,ae=ac(ab.Parent.SingleMotor),ac(ab.Parent.Instant)
it(
"should assign new state on step",
function()
local af=ad.new(0,false)
af:setGoal(ae.new(5))
af:step(1.6666666666666665E-2)
expect(af._state.complete).to.equal(true)
expect(af._state.value).to.equal(5)
end
)
it(
[[should invoke onComplete listeners when the goal is completed]],
function()
local af,ag=ad.new(0,false),false
af:onComplete(
function()
ag=true
end
)
af:setGoal(ae.new(5))
af:step(1.6666666666666665E-2)
expect(ag).to.equal(true)
end
)
it(
"should start when the goal is set",
function()
local af,ag=ad.new(0,false),false
af:onStart(
function()
ag=not ag
end
)
af:setGoal(ae.new(5))
expect(ag).to.equal(true)
af:setGoal(ae.new(5))
expect(ag).to.equal(false)
end
)
end
end,
[43]=function()
c(43)
local aa,ab,ac,ad=0.001,0.001,0.0001,{}
ad.__index=ad
function ad.new(ae,af)
assert(ae,"Missing argument #1: targetValue")
af=af or{}
return setmetatable(
{_targetValue=ae,_frequency=af.frequency or 4,_dampingRatio=af.dampingRatio or 1},
ad
)
end
function ad.step(ae,af,ag)
local ah,d,e,f,g=ae._dampingRatio,ae._frequency*2*math.pi,ae._targetValue,af.value,af.velocity or 0
local h,i,j,k=f-e,(math.exp(-ah*d*ag))
if ah==1 then
j=(h*(1+d*ag)+g*ag)*i+e
k=(g*(1-d*ag)-h*(d*d*ag))*i
elseif ah<1 then
local l=math.sqrt(1-ah*ah)
local m,n,o=math.cos(d*l*ag),(math.sin(d*l*ag))
if l>ac then
o=n/l
else
local p=ag*d
o=p+((p*p)*(l*l)*(l*l)/20-l*l)*(p*p*p)/6
end
local p
if d*l>ac then
p=n/(d*l)
else
local q=d*l
p=ag+((ag*ag)*(q*q)*(q*q)/20-q*q)*(ag*ag*ag)/6
end
j=(h*(m+ah*o)+g*p)*i+e
k=(g*(m-o*ah)-h*(o*d))*i
else
local l=math.sqrt(ah*ah-1)
local m,n=-d*(ah-l),-d*(ah+l)
local o=(g-h*m)/(2*d*l)
local p=h-o
local q,r=p*math.exp(m*ag),o*math.exp(n*ag)
j=q+r+e
k=q*m+r*n
end
local l=math.abs(k)<aa and math.abs(j-e)<ab
return{complete=l,value=l and e or j,velocity=k}
end
return ad
end,
[44]=function()local
aa, ab, ac=c(44)
return function()
local ad,ae=ac(ab.Parent.SingleMotor),ac(ab.Parent.Spring)
describe(
"completed state",
function()
local af,ag=ad.new(0,false),ae.new(1,{frequency=2,dampingRatio=0.75})
af:setGoal(ag)
for ah=1,100 do
af:step(1.6666666666666665E-2)
end
it(
"should complete",
function()
expect(af._state.complete).to.equal(true)
end
)
it(
"should be exactly the goal value when completed",
function()
expect(af._state.value).to.equal(1)
end
)
end
)
it(
"should inherit velocity",
function()
local af=ad.new(0,false)
af._state={complete=false,value=0,velocity=-5}
local ag=ae.new(1,{frequency=2,dampingRatio=1})
af:setGoal(ag)
af:step(1.6666666666666665E-2)
expect(af._state.velocity<0).to.equal(true)
end
)
end
end,
[45]=function()
c(45)
local aa=function(aa)
local ab=tostring(aa):match"^Motor%((.+)%)$"
if ab then
return true,ab
else
return false
end
end
return aa
end,
[46]=function()local
aa, ab, ac=c(46)
return function()
local ad,ae,af=ac(ab.Parent.isMotor),ac(ab.Parent.SingleMotor),ac(ab.Parent.GroupMotor)
local ag,ah=ae.new(0),af.new{}
it(
"should properly detect motors",
function()
expect(ad(ag)).to.equal(true)
expect(ad(ah)).to.equal(true)
end
)
it(
"shouldn't detect things that aren't motors",
function()
expect(ad{}).to.equal(false)
end
)
it(
"should return the proper motor type",
function()local
d, e=ad(ag)local
f, g=ad(ah)
expect(e).to.equal"Single"
expect(g).to.equal"Group"
end
)
end
end,
[47]=function()local
aa, ab, ac=c(47)
local ad={Names={"Dark","Darker","Light","Aqua","Amethyst","Rose"}}
for ae,af in next,ab:GetChildren()do
local ag=ac(af)
ad[ag.Name]=ag
end
return ad
end,
[48]=function()
c(48)
return{
Name="Amethyst",
Accent=Color3.fromRGB(97,62,167),
AcrylicMain=Color3.fromRGB(20,20,20),
AcrylicBorder=Color3.fromRGB(110,90,130),
AcrylicGradient=ColorSequence.new(Color3.fromRGB(85,57,139),Color3.fromRGB(40,25,65)),
AcrylicNoise=0.92,
TitleBarLine=Color3.fromRGB(95,75,110),
Tab=Color3.fromRGB(160,140,180),
Element=Color3.fromRGB(140,120,160),
ElementBorder=Color3.fromRGB(60,50,70),
InElementBorder=Color3.fromRGB(100,90,110),
ElementTransparency=0.87,
ToggleSlider=Color3.fromRGB(140,120,160),
ToggleToggled=Color3.fromRGB(0,0,0),
SliderRail=Color3.fromRGB(140,120,160),
DropdownFrame=Color3.fromRGB(170,160,200),
DropdownHolder=Color3.fromRGB(60,45,80),
DropdownBorder=Color3.fromRGB(50,40,65),
DropdownOption=Color3.fromRGB(140,120,160),
Keybind=Color3.fromRGB(140,120,160),
Input=Color3.fromRGB(140,120,160),
InputFocused=Color3.fromRGB(20,10,30),
InputIndicator=Color3.fromRGB(170,150,190),
Dialog=Color3.fromRGB(60,45,80),
DialogHolder=Color3.fromRGB(45,30,65),
DialogHolderLine=Color3.fromRGB(40,25,60),
DialogButton=Color3.fromRGB(60,45,80),
DialogButtonBorder=Color3.fromRGB(95,80,110),
DialogBorder=Color3.fromRGB(85,70,100),
DialogInput=Color3.fromRGB(70,55,85),
DialogInputLine=Color3.fromRGB(175,160,190),
Text=Color3.fromRGB(240,240,240),
SubText=Color3.fromRGB(170,170,170),
Hover=Color3.fromRGB(140,120,160),
HoverChange=0.04
}
end,
[49]=function()
c(49)
return{
Name="Aqua",
Accent=Color3.fromRGB(60,165,165),
AcrylicMain=Color3.fromRGB(20,20,20),
AcrylicBorder=Color3.fromRGB(50,100,100),
AcrylicGradient=ColorSequence.new(Color3.fromRGB(60,140,140),Color3.fromRGB(40,80,80)),
AcrylicNoise=0.92,
TitleBarLine=Color3.fromRGB(60,120,120),
Tab=Color3.fromRGB(140,180,180),
Element=Color3.fromRGB(110,160,160),
ElementBorder=Color3.fromRGB(40,70,70),
InElementBorder=Color3.fromRGB(80,110,110),
ElementTransparency=0.84,
ToggleSlider=Color3.fromRGB(110,160,160),
ToggleToggled=Color3.fromRGB(0,0,0),
SliderRail=Color3.fromRGB(110,160,160),
DropdownFrame=Color3.fromRGB(160,200,200),
DropdownHolder=Color3.fromRGB(40,80,80),
DropdownBorder=Color3.fromRGB(40,65,65),
DropdownOption=Color3.fromRGB(110,160,160),
Keybind=Color3.fromRGB(110,160,160),
Input=Color3.fromRGB(110,160,160),
InputFocused=Color3.fromRGB(20,10,30),
InputIndicator=Color3.fromRGB(130,170,170),
Dialog=Color3.fromRGB(40,80,80),
DialogHolder=Color3.fromRGB(30,60,60),
DialogHolderLine=Color3.fromRGB(25,50,50),
DialogButton=Color3.fromRGB(40,80,80),
DialogButtonBorder=Color3.fromRGB(80,110,110),
DialogBorder=Color3.fromRGB(50,100,100),
DialogInput=Color3.fromRGB(45,90,90),
DialogInputLine=Color3.fromRGB(130,170,170),
Text=Color3.fromRGB(240,240,240),
SubText=Color3.fromRGB(170,170,170),
Hover=Color3.fromRGB(110,160,160),
HoverChange=0.04
}
end,
[50]=function()
c(50)
return{
Name="Dark",
Accent=Color3.fromRGB(96,205,255),
AcrylicMain=Color3.fromRGB(60,60,60),
AcrylicBorder=Color3.fromRGB(90,90,90),
AcrylicGradient=ColorSequence.new(Color3.fromRGB(40,40,40),Color3.fromRGB(40,40,40)),
AcrylicNoise=0.9,
TitleBarLine=Color3.fromRGB(75,75,75),
Tab=Color3.fromRGB(120,120,120),
Element=Color3.fromRGB(120,120,120),
ElementBorder=Color3.fromRGB(35,35,35),
InElementBorder=Color3.fromRGB(90,90,90),
ElementTransparency=0.87,
ToggleSlider=Color3.fromRGB(120,120,120),
ToggleToggled=Color3.fromRGB(0,0,0),
SliderRail=Color3.fromRGB(120,120,120),
DropdownFrame=Color3.fromRGB(160,160,160),
DropdownHolder=Color3.fromRGB(45,45,45),
DropdownBorder=Color3.fromRGB(35,35,35),
DropdownOption=Color3.fromRGB(120,120,120),
Keybind=Color3.fromRGB(120,120,120),
Input=Color3.fromRGB(160,160,160),
InputFocused=Color3.fromRGB(10,10,10),
InputIndicator=Color3.fromRGB(150,150,150),
Dialog=Color3.fromRGB(45,45,45),
DialogHolder=Color3.fromRGB(35,35,35),
DialogHolderLine=Color3.fromRGB(30,30,30),
DialogButton=Color3.fromRGB(45,45,45),
DialogButtonBorder=Color3.fromRGB(80,80,80),
DialogBorder=Color3.fromRGB(70,70,70),
DialogInput=Color3.fromRGB(55,55,55),
DialogInputLine=Color3.fromRGB(160,160,160),
Text=Color3.fromRGB(240,240,240),
SubText=Color3.fromRGB(170,170,170),
Hover=Color3.fromRGB(120,120,120),
HoverChange=0.07
}
end,
[51]=function()
c(51)
return{
Name="Darker",
Accent=Color3.fromRGB(72,138,182),
AcrylicMain=Color3.fromRGB(30,30,30),
AcrylicBorder=Color3.fromRGB(60,60,60),
AcrylicGradient=ColorSequence.new(Color3.fromRGB(25,25,25),Color3.fromRGB(15,15,15)),
AcrylicNoise=0.94,
TitleBarLine=Color3.fromRGB(65,65,65),
Tab=Color3.fromRGB(100,100,100),
Element=Color3.fromRGB(70,70,70),
ElementBorder=Color3.fromRGB(25,25,25),
InElementBorder=Color3.fromRGB(55,55,55),
ElementTransparency=0.82,
DropdownFrame=Color3.fromRGB(120,120,120),
DropdownHolder=Color3.fromRGB(35,35,35),
DropdownBorder=Color3.fromRGB(25,25,25),
Dialog=Color3.fromRGB(35,35,35),
DialogHolder=Color3.fromRGB(25,25,25),
DialogHolderLine=Color3.fromRGB(20,20,20),
DialogButton=Color3.fromRGB(35,35,35),
DialogButtonBorder=Color3.fromRGB(55,55,55),
DialogBorder=Color3.fromRGB(50,50,50),
DialogInput=Color3.fromRGB(45,45,45),
DialogInputLine=Color3.fromRGB(120,120,120)
}
end,
[52]=function()
c(52)
return{
Name="Light",
Accent=Color3.fromRGB(0,103,192),
AcrylicMain=Color3.fromRGB(200,200,200),
AcrylicBorder=Color3.fromRGB(120,120,120),
AcrylicGradient=ColorSequence.new(Color3.fromRGB(255,255,255),Color3.fromRGB(255,255,255)),
AcrylicNoise=0.96,
TitleBarLine=Color3.fromRGB(160,160,160),
Tab=Color3.fromRGB(90,90,90),
Element=Color3.fromRGB(255,255,255),
ElementBorder=Color3.fromRGB(180,180,180),
InElementBorder=Color3.fromRGB(150,150,150),
ElementTransparency=0.65,
ToggleSlider=Color3.fromRGB(40,40,40),
ToggleToggled=Color3.fromRGB(255,255,255),
SliderRail=Color3.fromRGB(40,40,40),
DropdownFrame=Color3.fromRGB(200,200,200),
DropdownHolder=Color3.fromRGB(240,240,240),
DropdownBorder=Color3.fromRGB(200,200,200),
DropdownOption=Color3.fromRGB(150,150,150),
Keybind=Color3.fromRGB(120,120,120),
Input=Color3.fromRGB(200,200,200),
InputFocused=Color3.fromRGB(100,100,100),
InputIndicator=Color3.fromRGB(80,80,80),
Dialog=Color3.fromRGB(255,255,255),
DialogHolder=Color3.fromRGB(240,240,240),
DialogHolderLine=Color3.fromRGB(228,228,228),
DialogButton=Color3.fromRGB(255,255,255),
DialogButtonBorder=Color3.fromRGB(190,190,190),
DialogBorder=Color3.fromRGB(140,140,140),
DialogInput=Color3.fromRGB(250,250,250),
DialogInputLine=Color3.fromRGB(160,160,160),
Text=Color3.fromRGB(0,0,0),
SubText=Color3.fromRGB(40,40,40),
Hover=Color3.fromRGB(50,50,50),
HoverChange=0.16
}
end,
[53]=function()
c(53)
return{
Name="Rose",
Accent=Color3.fromRGB(180,55,90),
AcrylicMain=Color3.fromRGB(40,40,40),
AcrylicBorder=Color3.fromRGB(130,90,110),
AcrylicGradient=ColorSequence.new(Color3.fromRGB(190,60,135),Color3.fromRGB(165,50,70)),
AcrylicNoise=0.92,
TitleBarLine=Color3.fromRGB(140,85,105),
Tab=Color3.fromRGB(180,140,160),
Element=Color3.fromRGB(200,120,170),
ElementBorder=Color3.fromRGB(110,70,85),
InElementBorder=Color3.fromRGB(120,90,90),
ElementTransparency=0.86,
ToggleSlider=Color3.fromRGB(200,120,170),
ToggleToggled=Color3.fromRGB(0,0,0),
SliderRail=Color3.fromRGB(200,120,170),
DropdownFrame=Color3.fromRGB(200,160,180),
DropdownHolder=Color3.fromRGB(120,50,75),
DropdownBorder=Color3.fromRGB(90,40,55),
DropdownOption=Color3.fromRGB(200,120,170),
Keybind=Color3.fromRGB(200,120,170),
Input=Color3.fromRGB(200,120,170),
InputFocused=Color3.fromRGB(20,10,30),
InputIndicator=Color3.fromRGB(170,150,190),
Dialog=Color3.fromRGB(120,50,75),
DialogHolder=Color3.fromRGB(95,40,60),
DialogHolderLine=Color3.fromRGB(90,35,55),
DialogButton=Color3.fromRGB(120,50,75),
DialogButtonBorder=Color3.fromRGB(155,90,115),
DialogBorder=Color3.fromRGB(100,70,90),
DialogInput=Color3.fromRGB(135,55,80),
DialogInputLine=Color3.fromRGB(190,160,180),
Text=Color3.fromRGB(240,240,240),
SubText=Color3.fromRGB(170,170,170),
Hover=Color3.fromRGB(200,120,170),
HoverChange=0.04
}
end
}
do
local ab,ac,ad,ae,af,ag,ah,d,e,f,g,h,i,j,k,l=
task,
setmetatable,
error,
newproxy,
getmetatable,
next,
table,
unpack,
coroutine,
script,
type,
require,
pcall,
getfenv,
setfenv,
rawget
local m,n,o,p,q,r,s,t,u,v,w=ah.insert,ah.remove,ah.freeze or function(m)
return m
end,ab and ab.defer or function(m,...)
local n=e.create(m)
e.resume(n,...)
return n
end,"0.0.0-venv",{},{},{},{},{},{}
local x,y={GetChildren=function(x)
local y,z=w[x],{}
for A in ag,y do
m(z,A)
end
return z
end,FindFirstChild=function(x,y)
if not y then
ad("Argument 1 missing or nil",2)
end
for z in ag,w[x]do
if z.Name==y then
return z
end
end
return
end,GetFullName=function(x)
local y,z=x.Name,x.Parent
while z do
y=z.Name.."."..y
z=z.Parent
end
return"VirtualEnv."..y
end},{}
for z,A in ag,x do
y[z]=function(B,...)
if not w[B]then
ad("Expected ':' not '.' calling member function "..z,1)
end
return A(B,...)
end
end
local z=function(z,A,B)
local C,E,F,G,H=ac({},{__mode="k"}),function(C)
ad(C.." is not a valid (virtual) member of "..z..' "'..A..'"',1)
end,function(C)
ad("Unable to assign (virtual) property "..C..". Property is read only",1)
end,(ae(true))
local I=af(G)
I.__index=function(J,K)
if K=="ClassName"then
return z
elseif K=="Name"then
return A
elseif K=="Parent"then
return B
elseif z=="StringValue"and K=="Value"then
return H
else
local L=y[K]
if L then
return L
end
end
for L in ag,C do
if L.Name==K then
return L
end
end
E(K)
end
I.__newindex=function(J,K,L)
if K=="ClassName"then
F(K)
elseif K=="Name"then
A=L
elseif K=="Parent"then
if L==G then
return
end
if B~=nil then
w[B][G]=nil
end
B=L
if L~=nil then
w[L][G]=true
end
elseif z=="StringValue"and K=="Value"then
H=L
else
E(K)
end
end
I.__tostring=function()
return A
end
w[G]=C
if B~=nil then
w[B][G]=true
end
return G
end
local function D(A,B)
local C,E,F,G=A[1],A[2],A[3],A[4]
local H=n(F,1)
local I=z(E,H,B)
r[C]=I
if F then
for J,K in ag,F do
I[J]=K
end
end
if G then
for J,K in ag,G do
D(K,I)
end
end
return I
end
local A={}
for B,C in ag,b do
m(A,D(C))
end
for B,C in ag,aa do
local E=r[B]
s[E]=C
local F=E.ClassName
if F=="LocalScript"or F=="Script"then
m(u,E)
end
end
local B=function(B)
local C,E=B.ClassName,t[B]
if E and C=="ModuleScript"then
return d(E)
end
local F=s[B]
if not F then
return
end
if C=="LocalScript"or C=="Script"then
F()
return
else
local G={F()}
t[B]=G
return d(G)
end
end
function c(C)
local E=r[C]
local F=s[E]
if not F then
return
end
local G,H,I,J,K,L,M=false,o{Version=q,Script=f,Shared=v,GetScript=function()
return f
end,GetShared=function()
return v
end},E,function(G,...)
if w[G]and G.ClassName=="ModuleScript"and s[G]then
return B(G)
end
return h(G,...)
end
local N,O=function(N,...)
if not G then
M()
end
if g(N)=="number"and N>=0 then
if N==0 then
return L
else
N=N+1
local O,P=i(j,N)
if O and P==K then
return L
end
end
end
return j(N,...)
end,function(N,O,...)
if not G then
M()
end
if g(N)=="number"and N>=0 then
if N==0 then
return k(L,O)
else
N=N+1
local P,Q=i(j,N)
if P and Q==K then
return k(L,O)
end
end
end
return k(N,O,...)
end
function M()
K=j(0)
local P={maui=H,script=I,require=J,getfenv=N,setfenv=O}
L=
ac(
{},
{__index=function(Q,R)
local S=l(L,R)
if S~=nil then
return S
end
local T=P[R]
if T~=nil then
return T
end
return K[R]
end}
)
k(F,L)
G=true
end
return H,I,J,N,O
end
for C,E in ag,u do
p(B,E)
end
do
local C
for E,F in ag,A do
if F.ClassName=="ModuleScript"and F.Name=="MainModule"then
C=F
break
end
end
if C then
return B(C)
end
end
end
