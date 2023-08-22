local httpService = game:GetService("HttpService")
local instance = {instances = {}}
local Uitils = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/UI.lua"))()
function instance.new(class, properties)
	local inst = Instance.new(class)
	for property, value in next, properties do
		inst[property] = value
	end
	
	table.insert(instance.instances, inst)
	return inst
end

local ting = {}

function ting.Notify(Text, Length)
    local gui = Instance.new("ScreenGui")
    gui.Name = "NotificationGui"
    gui.Parent = game.CoreGui

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0.06, 0, 0.04, 0)  -- Don't worry, we'll set the size later
    frame.Position = UDim2.new(0.935,0,0.95,0)  -- Same here
    frame.BackgroundColor3 = Color3.fromRGB(20,20,20)
    frame.BackgroundTransparency = 0
    frame.BorderSizePixel = 0
    frame.Parent = gui

	local uicorner = Instance.new("UICorner", frame)

	local strok = instance.new("UIStroke", {
		Name = "Strokeyboy";
		Parent = frame;
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
		Color = Color3.fromRGB(75,75,75);
	})


    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 1, 0)
	textLabel.BackgroundTransparency = 1
    textLabel.Text = Text
    textLabel.TextColor3 = Color3.fromRGB(75,75,75)
    textLabel.TextSize = frame.AbsoluteSize.Y - (string.len(Text)*(3.5 - (string.len(Text) / 8)))
    textLabel.Parent = frame

	local debris = game:GetService("Debris")

	debris:AddItem(gui, Length)
end

ting.Notify("Loading...", 3)

local scrname = tostring(math.random(10000000000000000000000,9999999999999999999999999999999))

local ScreenGui = instance.new("ScreenGui", {
	Parent = game.Workspace;
	Name = scrname;
	ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
})

local MainFrame = instance.new("Frame", {
	Name = "MainFrame";
	Parent = ScreenGui;
	BackgroundColor3 = Color3.fromRGB(25, 25, 25);
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0.299837917, 0, 0.299565881, 0);
	Size = UDim2.new(0.37, 0, 0.400000006, 0);
})

local TopTopBar = instance.new("Frame", {
	Name = "TopTopBar";
	Parent = MainFrame;
	BackgroundColor3 = Color3.fromRGB(25, 25, 25);
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0, 0, 1.65616385e-07, 0);
	Size = UDim2.new(0.99999994, 0, 0.0999998376, 0);
})

local ScrollingFrame = instance.new("ScrollingFrame", {
	Parent = TopTopBar;
	Active = true;
	BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	BackgroundTransparency = 1.000;
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0.0559967309, 0, 0, 0);
	Size = UDim2.new(0.77, 0, 1, 0);
	AutomaticCanvasSize = Enum.AutomaticSize.X;
	CanvasSize = UDim2.new(0, 0, 0, 0);
	ScrollBarThickness = 0;
})

local UIListLayout = instance.new("UIListLayout", {
	Parent = ScrollingFrame;
	FillDirection = Enum.FillDirection.Horizontal;
})

local U = instance.new("TextButton", {
	Name = "U";
	Parent = ScrollingFrame;
	BackgroundColor3 = Color3.fromRGB(25,25,25);
	BackgroundTransparency = 0;
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	ClipsDescendants = true;
	Position = UDim2.new(0.73994869, 0, 0, 0);
	Size = UDim2.new(0, 0, 1, 0);
	Font = Enum.Font.Gotham;
	Text = "+";
	TextColor3 = Color3.fromRGB(75, 75, 75);
	TextScaled = true;
	TextSize = 14.000;
	TextWrapped = true;
})

local AR4 = instance.new("UIAspectRatioConstraint", {
	Name = "AR4";
	Parent = U;
	AspectType = Enum.AspectType.ScaleWithParentSize;
	DominantAxis = Enum.DominantAxis.Height;
})

local TextButton = instance.new("TextButton", {
	Parent = TopTopBar;
	BackgroundColor3 = Color3.fromRGB(25,25,25);
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0.865072966, 0, 0, 0);
	Size = UDim2.new(0.134927019, 0, 1, 0);
	Font = Enum.Font.Gotham;
	Text = "×";
	TextColor3 = Color3.fromRGB(75,75,75);
	TextScaled = true;
	TextSize = 14.000;
	TextWrapped = true;
})

local HomeButton = instance.new("ImageButton", {
	Name = "HomeButton";
	Parent = TopTopBar;
	BackgroundColor3 = Color3.fromRGB(40, 40, 40);
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Size = UDim2.new(0, 0, 1, 0);
	Image = "http://www.roblox.com/asset/?id=4034483344";
	ImageColor3 = Color3.fromRGB(75, 75, 75);
})

local AR3 = instance.new("UIAspectRatioConstraint", {
	Name = "AR3";
	Parent = HomeButton;
	AspectType = Enum.AspectType.ScaleWithParentSize;
	DominantAxis = Enum.DominantAxis.Height;
})

local Tab = instance.new("Folder", {
	Name = "Tab";
	Parent = MainFrame;
})

local Bar = instance.new("Frame", {
	Name = "Bar";
	Parent = Tab;
	BackgroundColor3 = Color3.fromRGB(40, 40, 40);
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0, 0, 0.100000001, 0);
	Size = UDim2.new(0.99999994, 0, 0.139999941, 0);
})

local Run = instance.new("TextButton", {
	Name = "Run";
	Parent = Bar;
	BackgroundColor3 = Color3.fromRGB(40,40,40);
	BackgroundTransparency = 0;
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Size = UDim2.new(0, 0, 1, 0);
	Text = ">";
	Font = Enum.Font.Arial;
	TextScaled = true;
	TextColor3 = Color3.fromRGB(75,75,75)
})

local AR1 = instance.new("UIAspectRatioConstraint", {
	Name = "AR1";
	Parent = Run;
	AspectType = Enum.AspectType.ScaleWithParentSize;
	DominantAxis = Enum.DominantAxis.Height;
})

local CloseTab = instance.new("TextButton", {
	Name = "CloseTab";
	Parent = Bar;
	BackgroundColor3 = Color3.fromRGB(40,40,40);
	BackgroundTransparency = 0;
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	Size = UDim2.new(0,0,1,0);
	BorderSizePixel = 0;
	Font = Enum.Font.Gotham;
	TextScaled = true;
	Text = "×";
	TextColor3 = Color3.fromRGB(75,75,75)
})

local AR2 = instance.new("UIAspectRatioConstraint", {
	Name = "AR2";
	Parent = CloseTab;
	AspectType = Enum.AspectType.ScaleWithParentSize;
	DominantAxis = Enum.DominantAxis.Height;
})

local UIListLayout2 = instance.new("UIListLayout", {
	Name = "UIListLayout2";
	Parent = Bar;
	FillDirection = Enum.FillDirection.Horizontal;
	SortOrder = Enum.SortOrder.LayoutOrder;
})

local Main = instance.new("Frame", {
	Name = "Main";
	Parent = Tab;
	BackgroundColor3 = Color3.fromRGB(30, 30, 30);
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0, 0, 0.239999995, 0);
	Size = UDim2.new(1, 0, 0.75999999, 0);
})

local ScrollingFrame2 = instance.new("ScrollingFrame", {
	Name = "ScrollingFrame2";
	Parent = Main;
	Active = true;
	BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	CanvasSize = UDim2.new(0,0,0,0);
	BackgroundTransparency = 1.000;
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0.01, 0,0,0);
	Size = UDim2.new(0.99, 0, 1, 0);
})

local TextBox = instance.new("TextBox", {
	Parent = ScrollingFrame2;
	BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	BackgroundTransparency = 1.000;
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Size = UDim2.new(1, 0, 1, 0);
	ClearTextOnFocus = false;
	Font = Enum.Font.SourceSans;
	MultiLine = true;
	PlaceholderColor3 = Color3.fromRGB(178, 178, 178);
	Text = "TabText";
	TextColor3 = Color3.fromRGB(255, 255, 255);
	TextSize = MainFrame.AbsoluteSize.Y / 20;
	TextXAlignment = Enum.TextXAlignment.Left;
	TextYAlignment = Enum.TextYAlignment.Top;
})

local TabPreset = instance.new("TextButton", {
	Name = "TabPreset";
	Parent = MainFrame;
	BackgroundColor3 = Color3.fromRGB(40, 40, 40);
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Size = UDim2.new(0.21398297, 0, 1, 0);
	Font = Enum.Font.Gotham;
	Text = "Tab 1";
	TextColor3 = Color3.fromRGB(75, 75, 75);
	TextScaled = false;
	TextSize = MainFrame.AbsoluteSize.Y / 16;
	TextWrapped = true;
})

local Value = instance.new("StringValue", {
	Name = "Value";
	Parent = TabPreset;
	Value = "";
})

local CurrentTab = instance.new("ObjectValue", {
	Name = "CurrentTab";
	Parent = TopTopBar;
	Value = HomeButton;
})

local Home = instance.new("Folder", {
	Name = "Home";
	Parent = MainFrame;
})

local Bar2 = instance.new("Frame", {
	Name = "Bar2";
	Parent = Home;
	BackgroundColor3 = Color3.fromRGB(40, 40, 40);
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0, 0, 0.100000001, 0);
	Size = UDim2.new(0.99999994, 0, 0.139999941, 0);
})

writefile("Krnl.png", game:HttpGet('https://github.com/GroceyLot/My-roblox-stuff/raw/Things/Krnl_32512-1.png'))

local Logo = instance.new("ImageLabel", {
	Name = "Logo";
	Parent = Bar2;
	BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	BackgroundTransparency = 1.000;
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Size = UDim2.new(0, 0, 1, 0);
	Image = getcustomasset("Krnl.png");
})

local UIAspectRatioConstraint = instance.new("UIAspectRatioConstraint", {
	Parent = Logo;
	AspectType = Enum.AspectType.ScaleWithParentSize;
	DominantAxis = Enum.DominantAxis.Height;
})

local TextLabel = instance.new("TextLabel", {
	Parent = Logo;
	BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	BackgroundTransparency = 1.000;
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(1, 0, 0, 0);
	Size = UDim2.new(2, 0, 1, 0);
	Font = Enum.Font.GothamSemibold;
	Text = "Welcome "..game.Players.LocalPlayer.Name.."!";
	TextColor3 = Color3.fromRGB(125,125,125);
	TextScaled = true;
	TextSize = 14.000;
	TextWrapped = true;
})

local Main2 = instance.new("Frame", {
	Name = "Main2";
	Parent = Home;
	BackgroundColor3 = Color3.fromRGB(30, 30, 30);
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0, 0, 0.239999995, 0);
	Size = UDim2.new(1, 0, 0.75999999, 0);
})

local SideBar = instance.new("Frame", {
	Name = "SideBar";
	Parent = Main2;
	BackgroundColor3 = Color3.fromRGB(30, 30, 30);
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0, 0, 0.0285627246, 0);
	Size = UDim2.new(0.250999957, 0, 0.971437275, 0);
})

local UIListLayout3 = instance.new("UIListLayout", {
	Name = "UIListLayout3";
	Parent = SideBar;
	SortOrder = Enum.SortOrder.LayoutOrder;
	Padding = UDim.new(0, 10);
})

local TextButton2 = instance.new("TextButton", {
	Name = "TextButton2";
	Parent = SideBar;
	BackgroundColor3 = Color3.fromRGB(40,40,40);
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0, 0, 0.0666463599, 0);
	Size = UDim2.new(1, 0, 0.100000001, 0);
	Font = Enum.Font.ArialBold;
	Text = "Community >";
	TextColor3 = Color3.fromRGB(125,125,125);
	TextSize = MainFrame.AbsoluteSize.Y / 23;
})

local TextButton7 = instance.new("TextButton", {
	Name = "TextButton7";
	Parent = SideBar;
	BackgroundColor3 = Color3.fromRGB(40,40,40);
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0, 0, 0.0666463599, 0);
	Size = UDim2.new(1, 0, 0.100000001, 0);
	Font = Enum.Font.ArialBold;
	Text = "< ScriptBlox";
	TextColor3 = Color3.fromRGB(125,125,125);
	TextSize = MainFrame.AbsoluteSize.Y / 23;
})

local Content = instance.new("Frame", {
	Name = "Content";
	Parent = Main2;
	BackgroundColor3 = Color3.fromRGB(30, 30, 30);
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0.249999925, 0, 0, 0);
	Size = UDim2.new(0.749999821, 0, 1, 0);
})

local Scrolling = instance.new("ScrollingFrame", {
	Name = "Scrolling";
	Parent = Content;
	BackgroundColor3 = Color3.fromRGB(0, 0, 0);
	BackgroundTransparency = 1.000;
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Size = UDim2.new(1, 0, 1, 0);
	CanvasSize = UDim2.new(0, 0, 0, 0);
	AutomaticCanvasSize = Enum.AutomaticSize.XY;
})

local UIListLayout3 = instance.new("UIListLayout", {
	Name = "UIListLayout3";
	Parent = Scrolling;
	HorizontalAlignment = Enum.HorizontalAlignment.Center;
	SortOrder = Enum.SortOrder.LayoutOrder;
})

local Frame = instance.new("Frame", {
	Parent = Scrolling;
	AnchorPoint = Vector2.new(0.5, 0.5);
	BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	BackgroundTransparency = 1.000;
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0.499999881, 0, 0.290433675, 0);
	Size = UDim2.new(0.5, 0, 0.699999988, 0);
})

writefile('if.png',  game:HttpGet('https://github.com/GroceyLot/My-roblox-stuff/raw/Things/preview%20(2).png'))

local ImageLabel = instance.new("ImageLabel", {
	Parent = Frame;
	AnchorPoint = Vector2.new(0.5, 0.5);
	BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0.5, 0, 0.400000006, 0);
	Size = UDim2.new(0.899999976, 0, 0.699999988, 0);
	Image = getcustomasset("if.png");
})

local UIStroke6 = instance.new("UIStroke", {
	Name = "Strokeyboy";
	Parent = ImageLabel;
	ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	Color = Color3.fromRGB(75,75,75);
})

local UICorner2 = instance.new("UICorner", {
	Name = "UICorner2";
	Parent = ImageLabel;
})

local TextLabel = instance.new("TextLabel", {
	Parent = Frame;
	AnchorPoint = Vector2.new(0.5, 0.5);
	BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	BackgroundTransparency = 1.000;
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0.375, 0, 0.851999998, 0);
	Size = UDim2.new(0.649999976, 0, 0.203999996, 0);
	Font = Enum.Font.Gotham;
	Text = "Infinite Yield";
	TextColor3 = Color3.fromRGB(75, 75, 75);
	TextSize = Frame.AbsoluteSize.Y / 8;
	TextWrapped = true;
})

local TextButton3 = instance.new("TextButton", {
	Name = "TextButton3";
	Parent = Frame;
	AnchorPoint = Vector2.new(0.5, 0.5);
	BackgroundColor3 = Color3.fromRGB(40, 40, 40);
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0.824999928, 0, 0.851999998, 0);
	Size = UDim2.new(0.200000003, 0, 0.150000006, 0);
	Font = Enum.Font.Gotham;
	Text = "Run";
	TextColor3 = Color3.fromRGB(75, 75, 75);
	TextSize = Frame.AbsoluteSize.Y / 8;
	TextWrapped = true;
})

local UIStroke5 = instance.new("UIStroke", {
	Name = "Strokeyboy";
	Parent = TextButton3;
	ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	Color = Color3.fromRGB(75,75,75);
})

local UICorner = instance.new("UICorner", {
	Parent = TextButton3;
})

local Frame3 = instance.new("Frame", {
	Name = "Frame3";
	Parent = Scrolling;
	AnchorPoint = Vector2.new(0.5, 0.5);
	BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	BackgroundTransparency = 1.000;
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0.499999881, 0, 0.290433675, 0);
	Size = UDim2.new(0.5, 0, 0.699999988, 0);
})

writefile('dex.png',  game:HttpGet('https://github.com/GroceyLot/My-roblox-stuff/raw/Things/preview.png'))

local ImageLabel3 = instance.new("ImageLabel", {
	Name = "ImageLabel3";
	Parent = Frame3;
	AnchorPoint = Vector2.new(0.5, 0.5);
	BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0.5, 0, 0.400000006, 0);
	Size = UDim2.new(0.899999976, 0, 0.699999988, 0);
	Image = getcustomasset("dex.png");
})

local UIStroke4 = instance.new("UIStroke", {
	Name = "Strokeyboy";
	Parent = ImageLabel3;
	ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	Color = Color3.fromRGB(75,75,75);
})

local UICorner5 = instance.new("UICorner", {
	Name = "UICorner5";
	Parent = ImageLabel3;
})

local TextLabel3 = instance.new("TextLabel", {
	Name = "TextLabel3";
	Parent = Frame3;
	AnchorPoint = Vector2.new(0.5, 0.5);
	BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	BackgroundTransparency = 1.000;
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0.375, 0, 0.851999998, 0);
	Size = UDim2.new(0.649999976, 0, 0.203999996, 0);
	Font = Enum.Font.Gotham;
	Text = "Secure Dex";
	TextColor3 = Color3.fromRGB(75, 75, 75);
	TextSize = Frame3.AbsoluteSize.Y / 8;
	TextWrapped = true;
})

local TextButton5 = instance.new("TextButton", {
	Name = "TextButton5";
	Parent = Frame3;
	AnchorPoint = Vector2.new(0.5, 0.5);
	BackgroundColor3 = Color3.fromRGB(40, 40, 40);
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0.824999928, 0, 0.851999998, 0);
	Size = UDim2.new(0.200000003, 0, 0.150000006, 0);
	Font = Enum.Font.Gotham;
	Text = "Run";
	TextColor3 = Color3.fromRGB(75, 75, 75);
	TextSize = Frame3.AbsoluteSize.Y / 8;
	TextWrapped = true;
})

local UIStroke3 = instance.new("UIStroke", {
	Name = "Strokeyboy";
	Parent = TextButton5;
	ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	Color = Color3.fromRGB(75,75,75);
})

local UICorner5 = instance.new("UICorner", {
	Name = "UICorner5";
	Parent = TextButton5;
})

local Frame2 = instance.new("Frame", {
	Name = "Frame2";
	Parent = Scrolling;
	AnchorPoint = Vector2.new(0.5, 0.5);
	BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	BackgroundTransparency = 1.000;
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0.499999881, 0, 0.290433675, 0);
	Size = UDim2.new(0.5, 0, 0.699999988, 0);
})

writefile('vyn.jpeg',  game:HttpGet('https://github.com/GroceyLot/My-roblox-stuff/raw/Things/download.jpeg'))

local ImageLabel2 = instance.new("ImageLabel", {
	Name = "ImageLabel2";
	Parent = Frame2;
	AnchorPoint = Vector2.new(0.5, 0.5);
	BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0.5, 0, 0.400000006, 0);
	Size = UDim2.new(0.899999976, 0, 0.699999988, 0);
	Image = getcustomasset("vyn.jpeg");
})

local UIStroke = instance.new("UIStroke", {
	Name = "Strokeyboy";
	Parent = ImageLabel2;
	ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	Color = Color3.fromRGB(75,75,75);
})

local UICorner4 = instance.new("UICorner", {
	Name = "UICorner4";
	Parent = ImageLabel2;
})

local TextLabel2 = instance.new("TextLabel", {
	Name = "TextLabel2";
	Parent = Frame2;
	AnchorPoint = Vector2.new(0.5, 0.5);
	BackgroundColor3 = Color3.fromRGB(255, 255, 255);
	BackgroundTransparency = 1.000;
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0.375, 0, 0.851999998, 0);
	Size = UDim2.new(0.649999976, 0, 0.203999996, 0);
	Font = Enum.Font.Gotham;
	Text = "Vynixius Collection";
	TextColor3 = Color3.fromRGB(75, 75, 75);
	TextSize = Frame2.AbsoluteSize.Y / 10;
})

local TextButton4 = instance.new("TextButton", {
	Name = "TextButton4";
	Parent = Frame2;
	AnchorPoint = Vector2.new(0.5, 0.5);
	BackgroundColor3 = Color3.fromRGB(40, 40, 40);
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0.824999928, 0, 0.851999998, 0);
	Size = UDim2.new(0.200000003, 0, 0.150000006, 0);
	Font = Enum.Font.Gotham;
	Text = "Run";
	TextColor3 = Color3.fromRGB(75, 75, 75);
	TextSize = Frame2.AbsoluteSize.Y / 8;
})
local UIStroke2 = instance.new("UIStroke", {
	Name = "Strokeyboy";
	Parent = TextButton4;
	ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	Color = Color3.fromRGB(75,75,75);
})

local UICorner3 = instance.new("UICorner", {
	Name = "UICorner3";
	Parent = TextButton4;
})

local Divider = instance.new("Frame", {
	Name = "Divider";
	Parent = Home;
	BackgroundColor3 = Color3.fromRGB(75, 75, 75);
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0.25, 0, 0.100000001, 0);
	Size = UDim2.new(0.002, 0, 0.899999976, 0);
})

local ScriptBlox = instance.new("Frame", {
	Name = "ScriptBlox";
	Parent = Home;
	BackgroundColor3 = Color3.fromRGB(40, 40, 40);
	BorderColor3 = Color3.fromRGB(40, 40, 40);
	BorderSizePixel = 0;
	Visible = false;
	Position = UDim2.new(-0.501555085, 0, 0.369030774, 0);
	Size = UDim2.new(0.501555085, 0, 0.630969286, 0);
})

local TextBoxy = instance.new("TextBox", {
	Name = "TextBoxy";
	Parent = ScriptBlox;
	AnchorPoint = Vector2.new(0.5, 0.5);
	BackgroundColor3 = Color3.fromRGB(40, 40, 40);
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0.5, 0, 0.100000001, 0);
	Size = UDim2.new(0.800000012, 0, 0.100000001, 0);
	Font = Enum.Font.SourceSans;
	Text = "Search scriptblox";
	TextColor3 = Color3.fromRGB(75, 75, 75);
	TextSize = 14.000;
})

local UICornerrt = instance.new("UICorner", {
	Name = "UICornerrt";
	Parent = TextBoxy;
})

local UIStrokeryyyyy = instance.new("UIStroke", {
	Name = "UIStrokeyy";
	Parent = TextBoxy;
	ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	Color = Color3.fromRGB(75,75,75)
})


local Serchery = instance.new("ImageButton", {
	Name = "Serchery";
	Parent = ScriptBlox;
	AnchorPoint = Vector2.new(1, 0.5);
	BackgroundColor3 = Color3.fromRGB(40, 40, 40);
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0.899999976, 0, 0.100000001, 0);
	Size = UDim2.new(0, 0, 0.100000001, 0);
	Image = "http://www.roblox.com/asset/?id=11496279085";
	ImageColor3 = Color3.fromRGB(75, 75, 75);
})

local arc = instance.new("UIAspectRatioConstraint", {
	Name = "arc";
	Parent = Serchery;
	AspectType = Enum.AspectType.ScaleWithParentSize;
	DominantAxis = Enum.DominantAxis.Height;
})

local uik = instance.new("UICorner", {
	Name = "uik";
	Parent = Serchery;
})

local UIStrokeryyyy = instance.new("UIStroke", {
	Name = "UIStrokeyy";
	Parent = Serchery;
	ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	Color = Color3.fromRGB(75,75,75)
})

local ScrollingFramse = instance.new("ScrollingFrame", {
	Parent = ScriptBlox;
	Active = true;
	AnchorPoint = Vector2.new(0.5, 0.5);
	BackgroundColor3 = Color3.fromRGB(40, 40, 40);
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(0.5, 0, 0.574999988, 0);
	Size = UDim2.new(0.800000012, 0, 0.75, 0);
	CanvasSize = UDim2.new(0, 0, 0, 0);
	AutomaticCanvasSize = Enum.AutomaticSize.XY;
})

local uic = instance.new("UICorner", {
	Name = "uic";
	Parent = ScrollingFramse;
})

local UIStrokeryyy = instance.new("UIStroke", {
	Name = "UIStrokeyy";
	Parent = ScrollingFramse;
	ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	Color = Color3.fromRGB(75,75,75)
})

local rl = instance.new("TextLabel", {
	Name = "rl";
	Parent = ScrollingFramse;
	BackgroundColor3 = Color3.fromRGB(40, 40, 40);
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Size = UDim2.new(0.75, 0, 0.300000012, 0);
	Font = Enum.Font.SourceSans;
	TextColor3 = Color3.fromRGB(75, 75, 75);
	TextScaled = true;
	TextSize = 14.000;
	TextWrapped = true;
})

local UICornery = instance.new("UICorner", {
	Name = "UICornery";
	Parent = rl;
})

local UIStrokery = instance.new("UIStroke", {
	Name = "UIStrokeyy";
	Parent = rl;
	ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	Color = Color3.fromRGB(75,75,75)
})

local TextButtony = instance.new("TextButton", {
	Name = "TextButtony";
	Parent = rl;
	BackgroundColor3 = Color3.fromRGB(40, 40, 40);
	BorderColor3 = Color3.fromRGB(0, 0, 0);
	BorderSizePixel = 0;
	Position = UDim2.new(1, 0, 0, 0);
	Size = UDim2.new(0.26, 0, 1, 0);
	Font = Enum.Font.SourceSans;
	Text = "Open";
	TextColor3 = Color3.fromRGB(75, 75, 75);
	TextScaled = true;
	TextSize = 14.000;
	TextWrapped = true;
})

local UICornerby = instance.new("UICorner", {
	Name = "UICornerby";
	Parent = TextButtony;
})

local UIStrokeryy = instance.new("UIStroke", {
	Name = "UIStrokeyy";
	Parent = TextButtony;
	ApplyStrokeMode = Enum.ApplyStrokeMode.Border;
	Color = Color3.fromRGB(75,75,75)
})

local yellow = instance.new("UIListLayout", {
	Name = "ye";
	Parent = ScrollingFramse;
})
rl.Parent = game.CoreGui

-- Scripts:

function load(q)
	local qurl = httpService:UrlEncode(q)
	local url = 'https://scriptblox.com/api/script/search?q='..qurl
	local jsondata = game:HttpGet(url)
	local data = httpService:JSONDecode(jsondata)
	print(tostring(data.result.totalPages))
	for i,v in pairs(ScrollingFramse:GetChildren()) do
		if v ~= uic and v ~= UIStrokeryyy and v ~= yellow then
			v:Destroy()
		end
	end
	for d,scrip in pairs(data.result.scripts) do
		local condition = scrip.scriptType == 'free'
		if condition then
			local rl2 = rl:Clone()
			rl2.Text = scrip.title
			rl2.Parent = ScrollingFramse
			rl2.TextButtony.MouseButton1Click:Connect(function()
				ting.Notify("Running", 1)
				local sc = "https://rawscripts.net/raw/" .. scrip.slug
				print(sc)
				local cre = game:HttpGet(sc)
				print(cre)
				local Taby = TabPreset:Clone()
		local num = 1
		local done = false
		repeat
			if ScrollingFrame:FindFirstChild("Tab"..tostring(num)) then
				num = num+1
			else
				done = true
			end
		until done
		Taby.Name = "Tab"..tostring(num)
		Taby.Text = Taby.Name
		Taby.Parent = ScrollingFrame
		CurrentTab.Value.BackgroundTransparency = 1
		pcall(function()CurrentTab.Value:FindFirstChild("Value").Value = TextBox.Text;end)
		CurrentTab.Value = Taby
		Taby.Value.Value = cre
		Home.Parent = game.CoreGui
		Tab.Parent = MainFrame
		ScriptBlox.Visible = false
		TextBox.Text = Taby.Value.Value
		Taby.MouseButton1Click:Connect(function()
			CurrentTab.Value.BackgroundTransparency = 1
			Home.Parent = game.CoreGui
			Tab.Parent = MainFrame
			ScriptBlox.Visible = false
			pcall(function()CurrentTab.Value:FindFirstChild("Value").Value = TextBox.Text;end)
			TextBox.Text = Taby.Value.Value
			CurrentTab.Value = Taby
			Taby.BackgroundTransparency = 0
		end)
				ting.Notify("Script ran", 3)
			end)
		end
	end
end

TextButton7.MouseButton1Click:Connect(function ()
	ScriptBlox.Visible = not ScriptBlox.Visible
end)

Serchery.MouseButton1Click:Connect(function ()
	pcall(load,TextBoxy.ContentText)
end)

local function AZJDW_fake_script() -- U.S4 
	local script = Instance.new('LocalScript', U)

	U.MouseButton1Click:Connect(function()
		local Taby = TabPreset:Clone()
		local num = 1
		local done = false
		repeat
			if ScrollingFrame:FindFirstChild("Tab"..tostring(num)) then
				num = num+1
			else
				done = true
			end
		until done
		Taby.Name = "Tab"..tostring(num)
		Taby.Text = Taby.Name
		Taby.Parent = ScrollingFrame
		CurrentTab.Value.BackgroundTransparency = 1
		pcall(function()CurrentTab.Value:FindFirstChild("Value").Value = TextBox.Text;end)
		CurrentTab.Value = Taby
		Home.Parent = game.CoreGui
		ScriptBlox.Visible = false
		Tab.Parent = MainFrame
		TextBox.Text = Taby.Value.Value
		Taby.MouseButton1Click:Connect(function()
			CurrentTab.Value.BackgroundTransparency = 1
			Home.Parent = game.CoreGui
			Tab.Parent = MainFrame
			ScriptBlox.Visible = false
			pcall(function()CurrentTab.Value:FindFirstChild("Value").Value = TextBox.Text;end)
			TextBox.Text = Taby.Value.Value
			CurrentTab.Value = Taby
			Taby.BackgroundTransparency = 0
		end)
	end)
	
end
coroutine.wrap(AZJDW_fake_script)()
local function CBZTMI_fake_script() -- TextButton.S2 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Click:Connect(function()
		pcall(function()CurrentTab.Value:FindFirstChild("Value").Value = TextBox.Text;end)
		local tabs = {}
		local json = {Tabs = nil}
		for i,v in ipairs(ScrollingFrame:GetChildren()) do
			if v:FindFirstChild("Value") then
				local obj = {Name = v.Name, Text = v.Value.Value}
				table.insert(tabs, obj)
			end
		end
		json.Tabs = tabs
		local encodedTabs = httpService:JSONEncode(json)
		writefile("KrnlInternal/Info.txt", encodedTabs)
		Tab:Destroy()
		Home:Destroy()
		rl:Destroy()
		TabPreset:Destroy()
		ScreenGui:Destroy()
	end)
end
coroutine.wrap(CBZTMI_fake_script)()
local function ZHIWJ_fake_script() -- HomeButton.S3 
	local script = Instance.new('LocalScript', HomeButton)

	script.Parent.MouseButton1Click:Connect(function()
		CurrentTab.Value.BackgroundTransparency = 1
		pcall(function()CurrentTab.Value:FindFirstChild("Value").Value = TextBox.Text;end)
		CurrentTab.Value = HomeButton
		CurrentTab.Value.BackgroundTransparency = 0
		Tab.Parent = game.CoreGui
		Home.Parent = MainFrame
	end)
end
coroutine.wrap(ZHIWJ_fake_script)()
local function PYIMREQ_fake_script() -- Run.S7 
	local script = Instance.new('LocalScript', Run)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(TextBox.ContentText)()
	end)
end
coroutine.wrap(PYIMREQ_fake_script)()
local function BLZTVX_fake_script() -- CloseTab.S6 
	local script = Instance.new('LocalScript', CloseTab)

	script.Parent.MouseButton1Click:Connect(function()
		CurrentTab.Value:Destroy()
		CurrentTab.Value = HomeButton
		CurrentTab.Value.BackgroundTransparency = 0
		Home.Parent = MainFrame
		Tab.Parent = game.CoreGui
	end)
end
coroutine.wrap(BLZTVX_fake_script)()
local function UXHRFVX_fake_script() -- TextBox.S5 
	local script = Instance.new('LocalScript', TextBox)

	while true do
		ScrollingFrame2.CanvasSize = UDim2.new(0,TextBox.TextBounds.X,0,TextBox.TextBounds.Y)
		TextBox.Size = UDim2.new(1,0,1,0)
		wait()
	end
end
coroutine.wrap(UXHRFVX_fake_script)()
local function NXPAR_fake_script() -- Tab.S8 
	local script = Instance.new('LocalScript', Tab)

	script.Parent.Parent = script.Parent.Parent.Parent.Parent
end
coroutine.wrap(NXPAR_fake_script)()
local function OAKNYEC_fake_script() -- TabPreset.S1 
	local script = Instance.new('LocalScript', TabPreset)

	script.Parent.Parent = script.Parent.Parent.Parent.Parent
end
coroutine.wrap(OAKNYEC_fake_script)()
local function LBFDQ_fake_script() -- TextButton3.LocalScript 
	local script = Instance.new('LocalScript', TextButton3)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
	end)
end
coroutine.wrap(LBFDQ_fake_script)()
local function CAGP_fake_script() -- TextButton5.LocalScript3 
	local script = Instance.new('LocalScript', TextButton5)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/BypassedDarkDexV3.lua", true))()
	end)
end
coroutine.wrap(CAGP_fake_script)()
local function EKJVLCU_fake_script() -- TextButton4.LocalScript2 
	local script = Instance.new('LocalScript', TextButton4)

	script.Parent.MouseButton1Click:Connect(function()
		loadstring(game:HttpGet('https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Loader.lua'))()
	end)
end
coroutine.wrap(EKJVLCU_fake_script)()
if isfolder("KrnlInternal") then
	local info = readfile("KrnlInternal/Info.txt")
	local data = httpService:JSONDecode(info)
	for i,v in data.Tabs do
		local text = v.Text
		local Taby = TabPreset:Clone()
		Taby.Name = v.Name
		Taby.Text = Taby.Name
		Taby.Parent = ScrollingFrame
		CurrentTab.Value.BackgroundTransparency = 1
		pcall(function()CurrentTab.Value:FindFirstChild("Value").Value = TextBox.Text;end)
		CurrentTab.Value = Taby
		Taby.Value.Value = text
		Home.Parent = game.CoreGui
		Tab.Parent = MainFrame
		TextBox.Text = Taby.Value.Value
		Taby.MouseButton1Click:Connect(function()
			CurrentTab.Value.BackgroundTransparency = 1
			Home.Parent = game.CoreGui
			Tab.Parent = MainFrame
			pcall(function()CurrentTab.Value:FindFirstChild("Value").Value = TextBox.Text;end)
			TextBox.Text = Taby.Value.Value
			CurrentTab.Value = Taby
			Taby.BackgroundTransparency = 0
		end)
	end
else
	makefolder("KrnlInternal")
	local json = {Tabs = {}}
	writefile("KrnlInternal/Info.txt", httpService:JSONEncode(json))
end
ScreenGui.Parent = game.CoreGui
ting.Notify("Loaded", 4)
Uitils.MakeDraggable(MainFrame, TopTopBar, 0)
CurrentTab.Value.BackgroundTransparency = 1
CurrentTab.Value = HomeButton
CurrentTab.Value.BackgroundTransparency = 0
Tab.Parent = game.CoreGui
Home.Parent = MainFrame
while true do
	local tabs = {}
	if not game.CoreGui:FindFirstChild(scrname) then
		break
	end
	local json = {Tabs = nil}
	for i,v in ipairs(ScrollingFrame:GetChildren()) do
		if v:FindFirstChild("Value") then
			local obj = {Name = v.Name, Text = v.Value.Value}
			table.insert(tabs, obj)
		end
		wait(0.1)
	end
	json.Tabs = tabs
	local encodedTabs = httpService:JSONEncode(json)
	writefile("KrnlInternal/Info.txt", encodedTabs)
	if not game.CoreGui:FindFirstChild(scrname) then
		break
	end
	wait(5)
	if not game.CoreGui:FindFirstChild(scrname) then
		break
	end
	wait(5)
	if not game.CoreGui:FindFirstChild(scrname) then
		break
	end
	pcall(function()CurrentTab.Value:FindFirstChild("Value").Value = TextBox.Text;end)
	ting.Notify("Saved!", 2)
end
