require "scripts/style"

local gfxscale  = 0.23299203640500568828213879408419;
local barcenter = ( 1024 / 2 ) * screenScaleX;
local activeTab = "messageText";
local tnSpacing = 42;
local tnStart   = screenScaleX * 1024 / 2 - tnSpacing * 4.5;
local separate  = 100 * screenScaleY;
local bgtop     = 80 * screenScaleY;
local bartop    = manBGTop - 20 * screenScaleY;

LocalFont = {
  GeoscapeFont,
  55,
  WhiteColor
};

GSButtonGraphics = {
	"uitextures/manbar/topbar_button_geoscape_inactive",
	"uitextures/manbar/topbar_button_geoscape_active",
	"uitextures/manbar/topbar_button_geoscape_active",
};
BaseButtonGraphics = {
	"uitextures/manbar/topbar_button_base_inactive",
	"uitextures/manbar/topbar_button_base_active",
	"uitextures/manbar/topbar_button_base_active",
};
ResButtonGraphics = {
	"uitextures/manbar/topbar_button_research_inactive",
	"uitextures/manbar/topbar_button_research_active",
	"uitextures/manbar/topbar_button_research_active",
};
WSButtonGraphics = {
	"uitextures/manbar/topbar_button_workshop_inactive",
	"uitextures/manbar/topbar_button_workshop_active",
	"uitextures/manbar/topbar_button_workshop_active",
};
PplButtonGraphics = {
	"uitextures/manbar/topbar_button_barracks_inactive",
	"uitextures/manbar/topbar_button_barracks_active",
	"uitextures/manbar/topbar_button_barracks_active",
};
StoreButtonGraphics = {
	"uitextures/manbar/topbar_button_stores_inactive",
	"uitextures/manbar/topbar_button_stores_active",
	"uitextures/manbar/topbar_button_stores_active",
};
SEQButtonGraphics = {
	"uitextures/manbar/topbar_button_soldier_inactive",
	"uitextures/manbar/topbar_button_soldier_active",
	"uitextures/manbar/topbar_button_soldier_active",
};
VEQButtonGraphics = {
	"uitextures/manbar/topbar_button_vehicle_inactive",
	"uitextures/manbar/topbar_button_vehicle_active",
	"uitextures/manbar/topbar_button_vehicle_active",
};
AEQButtonGraphics = {
	"uitextures/manbar/topbar_button_aircraft_inactive",
	"uitextures/manbar/topbar_button_aircraft_active",
	"uitextures/manbar/topbar_button_aircraft_active",
};
XenopediaButtonGraphics = {
	"uitextures/manbar/topbar_button_xenopedia_inactive",
	"uitextures/manbar/topbar_button_xenopedia_active",
	"uitextures/manbar/topbar_button_xenopedia_active",
};
GSButtonStyle = {
	parent   = DefaultStyle,
	font     = XenonautsButtonFontSmall,
	sound    = kDefaultButtonSound,
	type     = kToggle,
	graphics = GSButtonGraphics,
};
BaseButtonStyle = {
	parent   = DefaultStyle,
	font     = XenonautsButtonFontSmall,
	sound    = kDefaultButtonSound,
	type     = kPush,
	graphics = BaseButtonGraphics,
};
ResButtonStyle = {
	parent   = DefaultStyle,
	font     = XenonautsButtonFontSmall,
	sound    = kDefaultButtonSound,
	type     = kPush,
	graphics = ResButtonGraphics,
};
WSButtonStyle = {
	parent   = DefaultStyle,
	font     = XenonautsButtonFontSmall,
	sound    = kDefaultButtonSound,
	type     = kPush,
	graphics = WSButtonGraphics,
};
PplButtonStyle = {
	parent   = DefaultStyle,
	font     = XenonautsButtonFontSmall,
	sound    = kDefaultButtonSound,
	type     = kPush,
	graphics = PplButtonGraphics,
};
StoreButtonStyle = {
	parent   = DefaultStyle,
	font     = XenonautsButtonFontSmall,
	sound    = kDefaultButtonSound,
	type     = kPush,
	graphics = StoreButtonGraphics,
};
SEQButtonStyle = {
	parent   = DefaultStyle,
	font     = XenonautsButtonFontSmall,
	sound    = kDefaultButtonSound,
	type     = kPush,
	graphics = SEQButtonGraphics,
};
VEQButtonStyle = {
	parent   = DefaultStyle,
	font     = XenonautsButtonFontSmall,
	sound    = kDefaultButtonSound,
	type     = kPush,
	graphics = VEQButtonGraphics,
};
AEQButtonStyle = {
	parent   = DefaultStyle,
	font     = XenonautsButtonFontSmall,
	sound    = kDefaultButtonSound,
	type     = kPush,
	graphics = AEQButtonGraphics,
};
XenopediaButtonStyle = {
	parent   = DefaultStyle,
	font     = XenonautsButtonFontSmall,
	sound    = kDefaultButtonSound,
	type     = kPush,
	graphics = XenopediaButtonGraphics,
};


XenonautsSpeed1ButtonGraphics = {
	"uitextures/manbar/speedbuttons_button1_inactive",
	"uitextures/manbar/speedbuttons_button1_active",
	"uitextures/manbar/speedbuttons_button1_active",
};
XenonautsSpeed2ButtonGraphics = {
	"uitextures/manbar/speedbuttons_button2_inactive",
	"uitextures/manbar/speedbuttons_button2_active",
	"uitextures/manbar/speedbuttons_button2_active",
};
XenonautsSpeed3ButtonGraphics = {
	"uitextures/manbar/speedbuttons_button3_inactive",
	"uitextures/manbar/speedbuttons_button3_active",
	"uitextures/manbar/speedbuttons_button3_active",
};
XenonautsSpeed4ButtonGraphics = {
	"uitextures/manbar/speedbuttons_button4_inactive",
	"uitextures/manbar/speedbuttons_button4_active",
	"uitextures/manbar/speedbuttons_button4_active",
};

MakeDialog
{
  name="gamescreen",

  NavigationBar
  {
	  name = "navigationBar",
    x = 0,
    y = 0,
    w = kMax,
    h = kMax,

	ScalingText
    {
      font = NewUI_TopbarLarge,
	    name = "screenName",
	    x = 210 * screenScaleY * gfxscale,
	    y = 45 * screenScaleY * gfxscale,
	    w = 1500 * screenScaleY * gfxscale,
	    h = 100 * screenScaleY * gfxscale,
	fontScale = 1 * screenScaleY,
	    flags = kHAlignLeft + kVAlignCenter,
	    label = "Geoscape"
    },
    ScalingText
    {
      font = NewUI_TopbarSmall,
	    name = "screenDesc",
	    x = 210 * screenScaleY * gfxscale,
	    y = 115 * screenScaleY * gfxscale,
	    w = 1500 * screenScaleY * gfxscale,
	    h = 100 * screenScaleY * gfxscale,
	fontScale = 1 * screenScaleY,
	    flags = kHAlignLeft + kVAlignCenter,
	    label = "SCCS"
    },
	ScalingText
    {
      font = NewUI_TopbarLarge,
	    name = "bgtextheader",
	    x = kMax - 200 * screenScaleY - 10,
	    y = 10,
	    w = 200 * screenScaleY,
	    h = 30 * screenScaleY,
	    flags = kHAlignRight + kVAlignTop,
		fontScale = 1 * screenScaleY,
	    label = "Empty"
    },
    ScalingText
    {
      font = LocalFont,
	    name = "bgtextstats",
	    x = kMax - 300 - 10,
	    y = 28,
	    w = 200,
	    h = 80,
	    flags = kHAlignRight + kVAlignTop,
		fontScale = 1 * screenScaleY,
	    label = "Empty"
    },
	ScalingText
    {
      font = LocalFont,
	    name = "bgtextvalue",
	    x = kMax - 100 - 10,
	    y = 28,
	    w = 100,
	    h = 80,
	    flags = kHAlignRight + kVAlignTop,
		fontScale = 1 * screenScaleY,
	    label = "Empty"
    },
	
	NonUniformScaledImage
    {
      name = "speedsBg",
	    x = kMax/2,
	    y = 45 * screenScaleY * gfxscale,
	    w = 495 * screenScaleY * gfxscale,
		h = 79 * screenScaleY * gfxscale,
      image = "uitextures/manbar/speedbuttons_background",
    
		BeginGroup(),

		  SetStyle( XenonautsSpeedButtonStyle ),
		  Button
		  {
		    name = "speed1",
		    x = 64 * screenScaleY * gfxscale,
		    y = 24 * screenScaleY * gfxscale,
			scale = screenScaleY * gfxscale,
			  graphics = XenonautsSpeed1ButtonGraphics,
			  command = 
			    function()
            SetSpeed1();
			    end
		  },
		  Button
		  {
		    name = "speed2",
		    x = 148 * screenScaleY * gfxscale,
		    y = 24 * screenScaleY * gfxscale,
			scale = screenScaleY * gfxscale,
			  graphics = XenonautsSpeed2ButtonGraphics,
			  command = 
			    function()
            SetSpeed2();
			    end
		  },
		  Button
		  {
		    name = "speed3",
		    x = 254 * screenScaleY * gfxscale,
		    y = 24 * screenScaleY * gfxscale,
			scale = screenScaleY * gfxscale,
			  graphics = XenonautsSpeed3ButtonGraphics,
			  command = 
			    function()
            SetSpeed3();
			    end
		  },
		  Button
		  {
		    name = "speed4",
		    x = 392 * screenScaleY * gfxscale,
		    y = 24 * screenScaleY * gfxscale,
			scale = screenScaleY * gfxscale,
			  graphics = XenonautsSpeed4ButtonGraphics,
			  command = 
			    function()
            SetSpeed4();
			    end
		  },
		  BeginGroup(),
	},
	ScalingText
	{
		font = NewUI_TopbarSmall,
		name = "buildBaseLink",
		x = kMax/2 - 495 * screenScaleY * gfxscale,
		y = 45 * screenScaleY * gfxscale,
	    w = 540 * screenScaleY * gfxscale,
		h = 79 * screenScaleY * gfxscale,
		flags = kVAlignCenter + kHAlignRight,
		fontScale = 1 * screenScaleY,
		hoverFontColor = OrangeTextColor,
	    label = "Nav.BuildBase",
		command =
			function()
			  BuildNewBaseMode();
			end,
	},
	ScalingText
	{
		font = NewUI_TopbarSmall,
		name = "interceptLink",
		x = kMax/2 + 248 * screenScaleY * gfxscale,
		y = 45 * screenScaleY * gfxscale,
	    w = 495 * screenScaleY * gfxscale,
		h = 79 * screenScaleY * gfxscale,
		flags = kVAlignCenter + kHAlignRight,
		fontScale = 1 * screenScaleY,
		hoverFontColor = OrangeTextColor,
	    label = "launchinterceptors",
		command =
			function()
			  OnLaunchInterceptorsButton();
			end,
	},
	ScalingText
    {
		font = NewUI_TopbarSmall,
		name = "finalMissionLink",
		x = kMax/2,
		y = 45 * screenScaleY * gfxscale + 85 * screenScaleY * gfxscale,
		w = 495 * screenScaleY * gfxscale,
		h = 79 * screenScaleY * gfxscale,
		flags = kHAlignCenter + kVAlignCenter,
		hoverFontColor = OrangeTextColor,
		label = "FinalMission.Launch",
		fontScale = 1 * screenScaleY,
		command =
			function()
			  OnLaunchFinalMission();
			end,
    },
	
	
	
	  EarthView
	  {
	    name = "earthview",
	    x = 0,
	    y = 117,
	    w = kMax,
	    h = kMax,
		  
    	AIDebug
	    {
	      name = "aiDebug";
        align = kHAlignRight + kVAlignBottom,
 	      x = kMax,
        y = kMax,
        w = 300,
        h = 300,
        image = "uitextures/blackwhiteframe",
        bordersize = 2,

        Text
        {
          name = "AIDEBUG.ResearchPoints",
          x = 10,
          y = 10,
          w = kMax - 10,
          h = 15,
          font  = XenonautsButtonFontSmall,
          flags = kHAlignLeft + kVAlignCenter,
          label = "AIDEBUG.ResearchPoints",
        },
		
		Text
        {
          name = "AIDEBUG.NextWave",
          x = 10,
          y = 30,
          w = kMax - 10,
          h = 15,
          font  = XenonautsButtonFontSmall,
          flags = kHAlignLeft + kVAlignCenter,
          label = "AIDEBUG.NextWave",
        },

        Window
        {
          x = 10,
          y = 50,
          w = kMax - 10,
          h = 15,
        
          SetStyle( XenonautsCheckBoxStyle ),
          Button
          {
            name = "AIDEBUG.ShowAlienBases",
          },
          Text
          {
	          name = "label",
	          x = 15,
	          y = 0,
	          w = kMax,
	          h = kMax,
	          flags = kHAlignLeft + kVAlignCenter,
	          label = "AIDEBUG.ShowAlienBases",
          },
        },

        Window
        {
          x = 10,
          y = 70,
          w = kMax - 10,
          h = 15,
        
          SetStyle( XenonautsCheckBoxStyle ),
          Button
          {
            name = "AIDEBUG.ShowMissions",
          },
          Text
          {
	          name = "label",
	          x = 15,
	          y = 0,
	          w = kMax,
	          h = kMax,
	          flags = kHAlignLeft + kVAlignCenter,
	          label = "AIDEBUG.ShowMissions",
          },
        },
        
        DottedLabel
        {
          font = XenonautsLabelFontMediumOrange,
          name = "aidebugna",
          x = 10,
          y = kMax - 1 * 16,
          w = kMax - 10,
          h = 16,
          align = kHAlignLeft + kVAlignBottom,
          left = "NA",
          right = "0",
          leftcolor = OrangeTextColor,
          dotscolor = WhiteColor,
          rightcolor = DarkOrangeTextColor,
          fontScale = 1,
        },
        DottedLabel
        {
          font = XenonautsLabelFontMediumOrange,
          name = "aidebugca",
          x = 10,
          y = kMax - 2 * 16,
          w = kMax - 10,
          h = 16,
          align = kHAlignLeft + kVAlignBottom,
          left = "CA",
          right = "0",
          leftcolor = OrangeTextColor,
          dotscolor = WhiteColor,
          rightcolor = DarkOrangeTextColor,
          fontScale = 1,
        },
        DottedLabel
        {
          font = XenonautsLabelFontMediumOrange,
          name = "aidebugsa",
          x = 10,
          y = kMax - 3 * 16,
          w = kMax - 10,
          h = 16,
          align = kHAlignLeft + kVAlignBottom,
          left = "SA",
          right = "0",
          leftcolor = OrangeTextColor,
          dotscolor = WhiteColor,
          rightcolor = DarkOrangeTextColor,
          fontScale = 1,
        },
        DottedLabel
        {
          font = XenonautsLabelFontMediumOrange,
          name = "aidebugeu",
          x = 10,
          y = kMax - 4 * 16,
          w = kMax - 10,
          h = 16,
          align = kHAlignLeft + kVAlignBottom,
          left = "EU",
          right = "0",
          leftcolor = OrangeTextColor,
          dotscolor = WhiteColor,
          rightcolor = DarkOrangeTextColor,
          fontScale = 1,
        },
        DottedLabel
        {
          font = XenonautsLabelFontMediumOrange,
          name = "aidebugsu",
          x = 10,
          y = kMax - 5 * 16,
          w = kMax - 10,
          h = 16,
          align = kHAlignLeft + kVAlignBottom,
          left = "SU",
          right = "0",
          leftcolor = OrangeTextColor,
          dotscolor = WhiteColor,
          rightcolor = DarkOrangeTextColor,
          fontScale = 1,
        },
        DottedLabel
        {
          font = XenonautsLabelFontMediumOrange,
          name = "aidebugnaf",
          x = 10,
          y = kMax - 6 * 16,
          w = kMax - 10,
          h = 16,
          align = kHAlignLeft + kVAlignBottom,
          left = "NAF",
          right = "0",
          leftcolor = OrangeTextColor,
          dotscolor = WhiteColor,
          rightcolor = DarkOrangeTextColor,
          fontScale = 1,
        },
        DottedLabel
        {
          font = XenonautsLabelFontMediumOrange,
          name = "aidebugsaf",
          x = 10,
          y = kMax - 7 * 16,
          w = kMax - 10,
          h = 16,
          align = kHAlignLeft + kVAlignBottom,
          left = "SAF",
          right = "0",
          leftcolor = OrangeTextColor,
          dotscolor = WhiteColor,
          rightcolor = DarkOrangeTextColor,
          fontScale = 1,
        },
        DottedLabel
        {
          font = XenonautsLabelFontMediumOrange,
          name = "aidebugme",
          x = 10,
          y = kMax - 8 * 16,
          w = kMax - 10,
          h = 16,
          align = kHAlignLeft + kVAlignBottom,
          left = "ME",
          right = "0",
          leftcolor = OrangeTextColor,
          dotscolor = WhiteColor,
          rightcolor = DarkOrangeTextColor,
          fontScale = 1,
        },
        DottedLabel
        {
          font = XenonautsLabelFontMediumOrange,
          name = "aidebugch",
          x = 10,
          y = kMax - 9 * 16,
          w = kMax - 10,
          h = 16,
          align = kHAlignLeft + kVAlignBottom,
          left = "CH",
          right = "0",
          leftcolor = OrangeTextColor,
          dotscolor = WhiteColor,
          rightcolor = DarkOrangeTextColor,
          fontScale = 1,
        },
        DottedLabel
        {
          font = XenonautsLabelFontMediumOrange,
          name = "aidebugau",
          x = 10,
          y = kMax - 10 * 16,
          w = kMax - 10,
          h = 16,
          align = kHAlignLeft + kVAlignBottom,
          left = "AU",
          right = "0",
          leftcolor = OrangeTextColor,
          dotscolor = WhiteColor,
          rightcolor = DarkOrangeTextColor,
          fontScale = 1,
        },
	    },
		ScalingText
	    {
	      name = "objectiveText",
          flags = kHAlignRight,
 	      x = kMax - 600 - screenResolutionW * 25 / 1920,
          y = kMax - 40 * screenScaleY - 10,
		  w = 600,
		  h = 20 * screenScaleY,
		  label = "Objectives.Objective0",
		  font = XenonautsLabelFontMediumOrange,		  
		  fontScale = 1.1 * screenScaleY,
		},
	  },

    NonUniformScaledImage
    {
      x = 0,
      y = kMax - screenResolutionH * 225 / 1080,
      w = kMax,
      h = kMax,
      image = "uitextures/gsframe/geoscape_overlay_bottom",

	    ListControl
      {
	      name  = "eventlog",
        x = screenResolutionW * 460 / 1920,
        y = screenResolutionH * 99  / 1080,
        w = screenResolutionW * 995 / 1920,
        h = screenResolutionH * 113 / 1080,
        font = EventFeedFont,
        fontScale = screenScaleY,
        hideScrollbar = true,
        arrangeDown = false,
        ignoreMouse = true,
        drawSelection = false,
        
        column1x  = 0,
        column1w  = 0.14 * screenResolutionW * 995 / 1920,
        column2x  = 0.15 * screenResolutionW * 995 / 1920,
        column2w  = 0.85 * screenResolutionW * 995 / 1920,

        TiledImage
        {
          name = "scrollbar",
          x = kMax - 9,
          y = 0,
          w = kMax,
          h = kMax,
          image = "uitextures/scrollbar",
          bordersize = 4,

          NonUniformScaledImage
	        {
		        name  = "scrollbarBtn",
	          x = 2,
	          y = 2,
	          w = 5,
	          h = 5,
		        image = "uitextures/white",
	        },
        },
      },
    },
    NonUniformScaledImage
    {
      x = 0,
      y = bartop + 107 * screenScaleY * gfxscale * 0.5,
      w = screenResolutionW * 50 / 1920,
      h = kMax - screenResolutionH * 225 / 1080,
      image = "uitextures/gsframe/geoscape_overlay_l",
    },
    NonUniformScaledImage
    {
      x = kMax - screenResolutionW * 50 / 1920,
      y = bartop + 107 * screenScaleY * gfxscale * 0.5,
      w = kMax,
      h = kMax - screenResolutionH * 225 / 1080,
      image = "uitextures/gsframe/geoscape_overlay_r",
    },
    NonUniformScaledImage
    {
      x = screenResolutionW * 50 / 1920,
      y = bartop + 107 * screenScaleY * gfxscale * 0.5,
      w = kMax - screenResolutionW * 50 / 1920,
      h = screenResolutionH * 60 / 1080,
      image = "uitextures/gsframe/geoscape_overlay_top",
    },
	
	
	
	
	NonUniformScaledImage
	{
		name = "timebg",
	    x = 0,
	    y = bartop,
	    w = 642 * screenScaleY * gfxscale,
	    h = 107 * screenScaleY * gfxscale,
		  image = "uitextures/manbar/topbar_leftside_screen",

		NonUniformScaledImage
		{
		  name = "time_inner_bg",
	      x = 39 * screenScaleY * gfxscale,
	      y = 34 * screenScaleY * gfxscale,
	      w = 557 * screenScaleY * gfxscale,
	      h = 54 * screenScaleY * gfxscale,
		  image = "uitextures/transparent",
		  
		  ScalingText
		  {
			font = LocalFont,
			  name = "time",
			  x = kCenter,
			  y = 0,
			  w = kMax,
			  h = kMax,
			  fontScale = screenScaleY * gfxscale,
			  flags = kHAlignLeft + kVAlignCenter,
			  label = "undefined"
		  },
		  ScalingText
		  {
			font = LocalFont,
			  name = "date",
			  x = kCenter,
			  y = 0,
			  w = kMax,
			  h = kMax,
			  fontScale = screenScaleY * gfxscale,
			  flags = kHAlignRight + kVAlignCenter,
			  label = "undefined"
		  },
		},
	},		
    NonUniformScaledImage
	  {
		  name = "leftslope",
	    x = 642 * screenScaleY * gfxscale,
	    y = bartop,
	    w = 101 * screenScaleY * gfxscale,
	    h = 107 * screenScaleY * gfxscale,
		  image = "uitextures/manbar/topbar_leftside_slope",
		},		
    NonUniformScaledImage
	  {
		  name = "leftbar",
	    x = Floor( 642 * screenScaleY * gfxscale ) + Floor( 101 * screenScaleY * gfxscale ),
	    y = bartop,
	    w = ( barcenter - 990 * screenScaleY * gfxscale ) - ( Floor( 642 * screenScaleY * gfxscale ) + Floor( 101 * screenScaleY * gfxscale ) ),
	    h = 69 * screenScaleY * gfxscale,
		  image = "uitextures/manbar/narrow_bar",
		  
		},		

		-------------------------------------------------------------

    NonUniformScaledImage
	  {
		  name = "rightbar",
	    x = barcenter + 990 * screenScaleY * gfxscale,
	    y = bartop,
	    w = kMax - Floor( 642 * screenScaleY * gfxscale ) - Floor( 101 * screenScaleY * gfxscale ),
	    h = 69 * screenScaleY * gfxscale,
		  image = "uitextures/manbar/narrow_bar",
		},		
    NonUniformScaledImage
	  {
		  name = "rightslope",
	    x = kMax - Floor( 642 * screenScaleY * gfxscale ) - Floor( 101 * screenScaleY * gfxscale ),
	    y = bartop,
	    w = 101 * screenScaleY * gfxscale,
	    h = 107 * screenScaleY * gfxscale,
		  image = "uitextures/manbar/topbar_rightside_slope",
		},		
    NonUniformScaledImage
	  {
		  name = "moneybg",
	    x = kMax - Floor( 642 * screenScaleY * gfxscale ),
	    y = bartop,
	    w = 642 * screenScaleY * gfxscale,
	    h = 107 * screenScaleY * gfxscale,
		  image = "uitextures/manbar/topbar_rightside_screen",

      ScalingText
      {
        font = LocalFont,
	      name = "funds",
	      x = 39 * screenScaleY * gfxscale,
	      y = 34 * screenScaleY * gfxscale,
	      w = 557 * screenScaleY * gfxscale,
	      h = 54 * screenScaleY * gfxscale,
	      fontScale = screenScaleY * gfxscale,
	      flags = kHAlignCenter + kVAlignCenter,
	      label = "undefined"
      },
	  },

		-------------------------------------------------------------

    NonUniformScaledImage
	  {
	    name = "buttonbg",
	    x = barcenter,
	    y = bartop,
	    w = 1990 * screenScaleY * gfxscale,
	    h = 151 * screenScaleY * gfxscale,
	    align = kHAlignCenter + kVAlignTop,
		  image = "uitextures/manbar/topbar_button_background",
		  
      SetStyle( GSButtonStyle ),
      Button
      {
        name = "geoscape",
        x = 298 * screenScaleY * gfxscale,
        y = 16 * screenScaleY * gfxscale,
        scale = screenScaleY * gfxscale,
        on = true,
		
   		  command = 
		      function()
		      end,
      },
	  TooltipRect
	  {
		name = "geoscape_tooltip",
		x = 298 * screenScaleY * gfxscale,
		y = 16 * screenScaleY * gfxscale,
		w = 100,
		h = 100,
		
		text="Geoscape",
		uppercase = false,
	  },

      BeginGroup(),

      SetStyle( BaseButtonStyle ),
      Button
      {
        name = "bases",
        x = 438 * screenScaleY * gfxscale,
        y = 16 * screenScaleY * gfxscale,
        scale = screenScaleY * gfxscale,
        
   		  command = 
		      function()
				SetWindowVisible( "navigationBar", false );
				DisplayDialog { "scripts/managementbar.lua", activeTab = "base" };
		      end,
      },
	  TooltipRect
	  {
		name = "bases_tooltip",
		x = 438 * screenScaleY * gfxscale,
		y = 16 * screenScaleY * gfxscale,
		w = 100,
		h = 100,
		
		text="BaseHeaderName",
		uppercase = false,
	  },
	  
      SetStyle( ResButtonStyle ),
      Button
      {
        name = "research",
        x = 577 * screenScaleY * gfxscale,
        y = 16 * screenScaleY * gfxscale,
        scale = screenScaleY * gfxscale,
        
   		  command = 
		      function()
				SetWindowVisible( "navigationBar", false );
				DisplayDialog { "scripts/managementbar.lua", activeTab = "research" };
		      end,
      },
	  TooltipRect
	  {
		name = "research_tooltip",
		x = 577 * screenScaleY * gfxscale,
		y = 16 * screenScaleY * gfxscale,
		w = 100,
		h = 100,
		
		text="ResearchHeaderName",
		uppercase = false,
	  },
	  
      SetStyle( WSButtonStyle ),
      Button
      {
        name = "workshop",
        x = 717 * screenScaleY * gfxscale,
        y = 16 * screenScaleY * gfxscale,
        scale = screenScaleY * gfxscale,
        
   		  command = 
		      function()
				SetWindowVisible( "navigationBar", false );
				DisplayDialog { "scripts/managementbar.lua", activeTab = "workshop" };
		      end,
      },
	  TooltipRect
	  {
		name = "workshop_tooltip",
		x = 717 * screenScaleY * gfxscale,
		y = 16 * screenScaleY * gfxscale,
		w = 100,
		h = 100,
		
		text="WorkshopHeaderName",
		uppercase = false,
	  },
	  
      SetStyle( PplButtonStyle ),
      Button
      {
        name = "personnel",
        x = 856 * screenScaleY * gfxscale,
        y = 16 * screenScaleY * gfxscale,
        scale = screenScaleY * gfxscale,
        
   		  command = 
		      function()
				SetWindowVisible( "navigationBar", false );
				DisplayDialog { "scripts/managementbar.lua", activeTab = "personnel" };
		      end,
      },
	  TooltipRect
	  {
		name = "personnel_tooltip",
		x = 856 * screenScaleY * gfxscale,
		y = 16 * screenScaleY * gfxscale,
		w = 100,
		h = 100,
		
		text="PersonnelHeaderName",
		uppercase = false,
	  },
	  
      SetStyle( StoreButtonStyle ),
      Button
      {
        name = "store",
        x = 996 * screenScaleY * gfxscale,
        y = 16 * screenScaleY * gfxscale,
        scale = screenScaleY * gfxscale,
        
   		  command = 
		      function()
				SetWindowVisible( "navigationBar", false );
				DisplayDialog { "scripts/managementbar.lua", activeTab = "store" };
		      end,
      },
	  TooltipRect
	  {
		name = "store_tooltip",
		x = 996 * screenScaleY * gfxscale,
		y = 16 * screenScaleY * gfxscale,
		w = 100,
		h = 100,
		
		text="StoreHeaderName",
		uppercase = false,
	  },
	  
      SetStyle( SEQButtonStyle ),
      Button
      {
        name = "equip",
        x = 1135 * screenScaleY * gfxscale,
        y = 16 * screenScaleY * gfxscale,
        scale = screenScaleY * gfxscale,
        
   		  command = 
		      function()
				SetWindowVisible( "navigationBar", false );
				DisplayDialog { "scripts/managementbar.lua", activeTab = "equip" };
		      end,
      },
	  TooltipRect
	  {
		name = "equip_tooltip",
		x = 1135 * screenScaleY * gfxscale,
		y = 16 * screenScaleY * gfxscale,
		w = 100,
		h = 100,
		
		text="SEquipHeaderName",
		uppercase = false,
	  },
	  
      SetStyle( VEQButtonStyle ),
      Button
      {
        name = "vehicle",
        x = 1275 * screenScaleY * gfxscale,
        y = 16 * screenScaleY * gfxscale,
        scale = screenScaleY * gfxscale,
        
   		  command = 
		      function()
				SetWindowVisible( "navigationBar", false );
				DisplayDialog { "scripts/managementbar.lua", activeTab = "vehicle" };
		      end,
      },
	  TooltipRect
	  {
		name = "vehicle_tooltip",
		x = 1275 * screenScaleY * gfxscale,
		y = 16 * screenScaleY * gfxscale,
		w = 100,
		h = 100,
		
		text="VEquipHeaderName",
		uppercase = false,
	  },
	  
      SetStyle( AEQButtonStyle ),
      Button
      {
        name = "aircraft",
        x = 1414 * screenScaleY * gfxscale,
        y = 16 * screenScaleY * gfxscale,
        scale = screenScaleY * gfxscale,
        
   		  command = 
		      function()
				SetWindowVisible( "navigationBar", false );
				DisplayDialog { "scripts/managementbar.lua", activeTab = "aircraft" };
		      end,
      },
	  TooltipRect
	  {
		name = "aircraft_tooltip",
		x = 1414 * screenScaleY * gfxscale,
		y = 16 * screenScaleY * gfxscale,
		w = 100,
		h = 100,
		
		text="AEquipHeaderName",
		uppercase = false,
	  },
	  
      SetStyle( XenopediaButtonStyle ),
      Button
      {
        name = "xenopedia",
        x = 1554 * screenScaleY * gfxscale,
        y = 16 * screenScaleY * gfxscale,
        scale = screenScaleY * gfxscale,
        
   		  command = 
		      function()
				DoModal( "scripts/xenopedia.lua" );
		      end,
      },
	  TooltipRect
	  {
		name = "xenopedia_tooltip",
		x = 1554 * screenScaleY * gfxscale,
		y = 16 * screenScaleY * gfxscale,
		w = 100,
		h = 100,
		
		text="XenopediaHeaderName",
		uppercase = false,
	  },
    },
	
  	NonUniformScaledImage
	  {
		  name = "maplocationbg",
		  x = Floor( 642 * screenScaleY * gfxscale ) + Floor( 101 * screenScaleY * gfxscale ),
		  y = bartop,
		  w = ( barcenter - 990 * screenScaleY * gfxscale ) - ( Floor( 642 * screenScaleY * gfxscale ) + Floor( 101 * screenScaleY * gfxscale ) ),
		  h = 69 * screenScaleY * gfxscale,
  		
		  image = "uitextures/black",

		  ScalingText
		  {
		    font = XenonautsLabelFontSmall,
			  name = "maplocation",
			  x = 2,
			  y = 0,
			  w = kMax,
			  h = kMax,
			  flags = kHAlignLeft + kVAlignCenter,
			  fontScale = 1 * screenScaleY,
			  label = "Geoscape"
		  },
	  },

    Window
    {
      name = "hide_showRadarRanges",
      x = kMax - 100,
      y = kMax - 20,
      w = kMax - 5,
      h = kMax - 5,
    
      SetStyle( XenonautsCheckBoxStyle ),
      Button
      {
        name = "showRadarRanges",
      },
      ScalingText
      {
	      name = "label",
	      x = 15,
	      y = 0,
	      w = kMax,
	      h = kMax,
	      flags = kHAlignCenter + kVAlignCenter,
	      label = "Nav.Radar",
      },
    },

	  GSDialog
	  {
		  name  = "cancelwaypoint",
		  image = "uitextures/transparent",
		  x     = kCenter,
		  y     = 140 * screenScaleY,		  
  		w     = 180 * screenScaleX,
  		h     = 65 * screenScaleY,
  		bordersize = 2,
  		
      ScalingText
      {
        name = "static",
        x = 0,
        y = 0,
        w = kMax - 5,
        h = 40 * screenScaleY,
        flags = kHAlignCenter + kVAlignCenter,
        label = "CreateWaypoint",
        font = XenonautsLabelFontMedium,
        fontScale = 1.0*screenScaleY,
      },

      SetStyle( XenonautsTiledButtonStyle ),
      TiledButton
      {
        name = "done",
        x = kCenter,
        y = 39 * screenScaleY,
        w = 100 * screenScaleX,
        h = 20 * screenScaleY,
        bordersize = 2,
        font = XenonautsButtonFontSmall,
        label = "Cancel",
        fontScale = screenScaleY,
		outline = 1,

        command = 
          function()
            NormalMode( false );
          end,
      },
    },
  },
}

SetButtonToggleState( "showRadarRanges", true );
SetWindowVisible( "cancelwaypoint", false );
SetWindowVisible( "hide_showRadarRanges", false );