require "scripts/style"

XenonautsTableHeaderFont = {
  GeoscapeFont,
  1,
  WhiteColor
};
XenonautsTableContentsFont = {
  GeoscapeFont,
  1,
  BlackColor
};

BubbleNormalColor = Color(0,0,0,255);
BubbleOverColor   = Color(77,76,72,255);
BubbleDownColor   = Color(255,255,255,255);

BubbleButtonGraphics = {
	"uitextures/transparent",
	"uitextures/transparent",
	"uitextures/transparent",
	"uitextures/transparent",
};

CommenceButtonGraphics = {
	"ui_screens/ui_research/stores_buttonup",
	"ui_screens/ui_research/stores_buttondown",
	"ui_screens/ui_research/stores_buttonover",
};

local cpbheight = hww / ( 1206.0 / 277.0 );

local tableLeft             = hww * 0.07;
local tableWidth            = hww * 0.86;
local tableTop              = cpbheight * 0.35;
local tableHeight           = cpbheight * 0.65;
local tableHeaderHeight     = tableHeight * 0.25;
local tableHeaderFontHeight = screenResolutionH * 0.014;
local navigationText = screenResolutionH * 0.018;

local c1x = tableWidth * 0.05;
local c1w = tableWidth * 0.25;
local c2x = c1x + c1w;
local c2w = tableWidth * 0.15;
local c3x = c2x + c2w;
local c3w = tableWidth * 0.35;
local c4x = c3x + c3w;
local c4w = tableWidth * 0.20;

local sbx  = hww * 0.13;
local sby  = hwh * 0.00;
local sbw  = hww * 0.72;
local sbh1 = hwh * 0.45;
local sbh2 = hwh * 0.35;

local bbh = sbh1 * 0.2;

local descLineSpacing = tableHeaderFontHeight / 3;
local listLineSpacing = tableHeaderFontHeight / 2;
local tabLineSpacing  = navigationText        / 3;

BubbleButtonFont = {
  "fonts/xenonauts.mvec",
  1,
  BubbleNormalColor
};

BubbleButtonStyle = {
	parent   = DefaultStyle,
	sound    = kDefaultButtonSound,
	type     = kRadio,
	graphics = BubbleButtonGraphics,
	font     = BubbleButtonFont,
};

CommenceButtonStyle = {
	parent   = DefaultStyle,
	sound    = kDefaultButtonSound,
	type     = kPush,
	graphics = CommenceButtonGraphics,
	font     = XenonautsTableContentsFont,
};

MakeDialog
{
  ResearchView
  {
    name = "researchview",

    x = 0,
    y = 0,
    w = kMax,
    h = kMax,
    
    
    NonUniformScaledImage
    {
      name  = "clipboard",
      x = 0,
      y = hwh - cpbheight,
      w = hww,
      h = kMax,
      image = "ui_screens/ui_research/research_clipboard",

      NonUniformScaledImage
      {
        name  = "static",
        x = tableLeft,
        y = tableTop - (screenResolutionH * 0.005),
        w = tableWidth,
        h = tableHeaderHeight,
        image = "uitextures/white",
        tint = Color(18,18,18,255),

        ScalingText
        {
          font = XenonautsTableHeaderFont,
          name = "static",
          x = c1x,
          y = 0,
          w = c1w,
          h = kMax,
          fontScale = navigationText,
  	      flags = kHAlignLeft + kVAlignCenter,
          label = "ResearchView.ProjectName",
        },
        ScalingText
        {
          font = XenonautsTableHeaderFont,
          name = "static",
          x = c2x,
          y = 0,
          w = c2w,
          h = kMax,
          fontScale = navigationText,
  	      flags = kHAlignCenter + kVAlignCenter,
          label = "ResearchView.Progress",
        },
        ScalingText
        {
          font = XenonautsTableHeaderFont,
          name = "scientistsheader",
          x = c3x,
          y = 0,
          w = c3w,
          h = kMax,
          fontScale = navigationText,
  	      flags = kHAlignCenter + kVAlignCenter,
          label = "ResearchView.Scientists",
        },
        ScalingText
        {
          font = XenonautsTableHeaderFont,
          name = "static",
          x = c4x,
          y = 0,
          w = c4w,
          h = kMax,
          fontScale = navigationText,
  	      flags = kHAlignCenter + kVAlignCenter,
          label = "Cancel",
        },
      },
      ListControl
      {
        name  = "activeprojects",
        x = tableLeft,
        y = tableTop + tableHeaderHeight + (screenResolutionH * 0.01),
        w = tableWidth,
        h = tableHeight - tableHeaderHeight - (screenResolutionH * 0.015),
        font = XenonautsTableContentsFont,
        fontScale = tableHeaderFontHeight,
        hswl = true,
        drawSelection = false,
        
        column1x = c1x,
        column1w = c1w,
        column2x = c2x,
        column2w = c2w,
        column3x = c3x,
        column3w = c3w,
        column4x = c4x,
        column4w = c4w,

        TiledImage
        {
          name = "scrollbar",
          x = kMax - 9,
          y = 0,
          w = kMax,
          h = kMax,
          image = "uitextures/scrollbar",
          tint = Color(192,192,192,255),
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
      }
    },
    TiledImage
    {
      name = "manage_tab",
      x = sbx,
      y = sby,
      w = sbw,
      h = sbh1,
      image = "ui_screens/ui_stores/speechbubble",
      bordersize = 4,

      ScalingText
      {
        font = XenonautsTableContentsFont,
        name = "static",
        x = 0,
        y = 0,
        w = kMax,
        h = sbh1 * 0.22,
        fontScale = tableHeaderFontHeight,
	      flags = kHAlignCenter + kVAlignCenter,
        label = "ResearchView.Comment1",
      },
      TiledImage
      {
        name = "static",
        x = sbw * 0.07,
        y = sbh1 * 0.22,
        w = sbw * 0.86,
        h = sbh1 * 0.55,
        image = "ui_screens/ui_research/speechbubble_white",
        bordersize = 4,

        ScalingText
        {
          font = XenonautsTableContentsFont,
          name = "researchdescription",
          x = sbw * 0.86 * 0.4,
          y = sbh1 * 0.55 * 0.1,
          w = sbw * 0.86 * 0.55,
          h = kMax,
          fontScale = tableHeaderFontHeight,
	        flags = kHAlignLeft + kVAlignTop,
          label = "Empty",
          padding = descLineSpacing,
        },
        SetStyle( CommenceButtonStyle ),
        TiledButton
        {
          name = "commencebtn",
          x = sbw * 0.86 * 0.65,
          y = sbh1 * 0.55 * 0.80,
          w = sbw * 0.86 * 0.30,
          h = sbh1 * 0.5 * 0.15,
          bordersize = 1,
          font = XenonautsTableContentsFont,
          fontScale = tableHeaderFontHeight,
          label = "ResearchView.Commence",

	        command = 
	          function()
	            SetWindowVisible( "commencebtn", false );
		          StartResearch();
            end,
        },
        ListControl
        {
          font = MenuElementSubHeadingBlack,
          name = "availabletechlist",
          x = sbw * 0.86 * 0.02,
          y = sbh1 * 0.03,
          w = sbw * 0.86 * 0.34,
          h = sbh1 * 0.55 * 0.9,
          fontScale = tableHeaderFontHeight,
          hcolor = Color(18,18,18,255),
  		    mcolor = WhiteColor,
  		    thcolor = WhiteColor,
  		    textsize = tableHeaderFontHeight + listLineSpacing,

          TiledImage
          {
            name = "scrollbar",
            x = kMax - 7,
            y = 0,
            w = kMax,
            h = kMax,
            image = "ui_screens/ui_research/scrollbarspeech",
            tint = Color(192,192,192,255),
            bordersize = 1,

            NonUniformScaledImage
	          {
		          name  = "scrollbarBtn",
	            x = 1,
	            y = 1,
	            w = 5,
	            h = 0,
              image = "ui_screens/ui_research/scrollbar_button",
	          },
          },
        },
      },
      NonUniformScaledImage
      {
        name  = "static",
        x = sbw / 2,
        y = sbh1 * 0.8,
        w = 1,
        h = kMax - 2,
        image = "uitextures/white",
        tint = Color(0,0,0,25),
      },
      BeginGroup(),
      SetStyle( BubbleButtonStyle ),
      TiledButton
      {
        name = "manageresearchbtn",
        x = 0,
        y = sbh1 * 0.8,
        w = sbw / 2,
        h = kMax - 2,
        bordersize = 1,
        font = BubbleButtonFont,
        overfontcolor = BubbleOverColor,
        downfontcolor = BubbleDownColor,
        fontScale = navigationText,
        outline = 2;
        label = "ResearchView.Manage",
        padding = tabLineSpacing,
      },
      TiledButton
      {
        name = "hirefirebtn",
        x = sbw / 2,
        y = sbh1 * 0.8,
        w = kMax,
        h = kMax - 2,
        bordersize = 1,
        font = BubbleButtonFont,
        overfontcolor = BubbleOverColor,
        downfontcolor = BubbleDownColor,
        fontScale = navigationText,
        outline = 0;
        label = "ResearchView.HireFire",
        padding = tabLineSpacing,
        command = 
          function()
	          HireFireSelected();
          end,
      }
    },

    TiledImage
    {
      name = "hirefire_tab",
      x = sbx,
      y = hwh * 0.1,
      w = sbw,
      h = sbh2,
      image = "ui_screens/ui_stores/speechbubble",
      bordersize = 4,

      ScalingText
      {
        font = XenonautsTableContentsFont,
        name = "static",
        x = 0,
        y = 0,
        w = kMax,
        h = sbh1 * 0.22,
        fontScale = tableHeaderFontHeight,
	      flags = kHAlignCenter + kVAlignCenter,
        label = "ResearchView.Comment2",
      },
      TiledImage
      {
        name = "static",
        x = sbw * 0.07,
        y = sbh1 * 0.22,
        w = sbw * 0.86,
        h = sbh2 * 0.40,
        image = "ui_screens/ui_research/speechbubble_white",
        bordersize = 4,

        ScalingText
        {
          font = XenonautsTableContentsFont,
          name = "static",
          x = sbw  * 0.86 * 0.43,
          y = sbh2 * 0.4  * 0.1,
          w = sbw  * 0.86 * 0.6,
          h = sbh2 * 0.4  * 0.2,
          fontScale = tableHeaderFontHeight,
	        flags = kHAlignLeft + kVAlignCenter,
          label = "ResearchView.TotalSci",
        },
        ScalingText
        {
          font = XenonautsTableContentsFont,
          name = "static",
          x = sbw  * 0.86 * 0.43,
          y = sbh2 * 0.4  * 0.3,
          w = sbw  * 0.86 * 0.6,
          h = sbh2 * 0.4  * 0.2,
          fontScale = tableHeaderFontHeight,
	        flags = kHAlignLeft + kVAlignCenter,
          label = "ResearchView.LabSpace",
        },
        ScalingText
        {
          font = XenonautsTableContentsFont,
          name = "static",
          x = sbw  * 0.86 * 0.43,
          y = sbh2 * 0.4  * 0.5,
          w = sbw  * 0.86 * 0.6,
          h = sbh2 * 0.4  * 0.2,
          fontScale = tableHeaderFontHeight,
	        flags = kHAlignLeft + kVAlignCenter,
          label = "ResearchView.LivSpace",
        },
        ScalingText
        {
          font = XenonautsTableContentsFont,
          name = "static",
          x = sbw  * 0.86 * 0.43,
          y = sbh2 * 0.4  * 0.7,
          w = sbw  * 0.86 * 0.6,
          h = sbh2 * 0.4  * 0.2,
          fontScale = tableHeaderFontHeight,
	        flags = kHAlignLeft + kVAlignCenter,
          label = "ResearchView.Wages",
        },

        ScalingText
        {
          font = XenonautsTableContentsFont,
          name = "totalsci",
          x = sbw  * 0.86 * 0.4,
          y = sbh2 * 0.4  * 0.1,
          w = sbw  * 0.86 * 0.58,
          h = sbh2 * 0.4  * 0.2,
          fontScale = tableHeaderFontHeight,
	        flags = kHAlignRight + kVAlignCenter,
          label = "#50",
        },
        ScalingText
        {
          font = XenonautsTableContentsFont,
          name = "labspaceavail",
          x = sbw  * 0.86 * 0.4,
          y = sbh2 * 0.4  * 0.3,
          w = sbw  * 0.86 * 0.58,
          h = sbh2 * 0.4  * 0.2,
          fontScale = tableHeaderFontHeight,
	        flags = kHAlignRight + kVAlignCenter,
          label = "#0/120",
        },
        ScalingText
        {
          font = XenonautsTableContentsFont,
          name = "livingspaceavail",
          x = sbw  * 0.86 * 0.4,
          y = sbh2 * 0.4  * 0.5,
          w = sbw  * 0.86 * 0.58,
          h = sbh2 * 0.4  * 0.2,
          fontScale = tableHeaderFontHeight,
	        flags = kHAlignRight + kVAlignCenter,
          label = "#60/120",
        },
        ScalingText
        {
          font = XenonautsTableContentsFont,
          name = "sciwages",
          x = sbw  * 0.86 * 0.4,
          y = sbh2 * 0.4  * 0.7,
          w = sbw  * 0.86 * 0.58,
          h = sbh2 * 0.4  * 0.2,
          fontScale = tableHeaderFontHeight,
	        flags = kHAlignRight + kVAlignCenter,
          label = "ResearchView.PerMonth",
        },

        ProgressBar
        {
          font = XenonautsTableContentsFont,
          name = "labspaceavailprog",
          x = sbw  * 0.86 * 0.665,
          y = sbh2 * 0.4  * 0.35,
          w = sbw  * 0.86 * 0.25,
          h = sbh2 * 0.4  * 0.08,
          barheight = sbh2 * 0.4 * 0.08,
          min = 0,
          max = 100,
          barcolor = Color(0,201,29,255),
          barcolor2 = Color(0,255,0,255),
          bgimage  = "ui_screens/ui_research/progress_bg",
          barimage = "ui_screens/ui_research/progressbar",
          bgtilebordersize = 4,
          percent  = false,
          fontScale = 0,
        },
        ProgressBar
        {
          font = XenonautsTableContentsFont,
          name = "livingspaceavailprog",
          x = sbw  * 0.86 * 0.665,
          y = sbh2 * 0.4  * 0.55,
          w = sbw  * 0.86 * 0.25,
          h = sbh2 * 0.4  * 0.08,
          barheight = sbh2 * 0.4 * 0.08,
          min = 0,
          max = 100,
          barcolor = Color(255,235,0,255),
          barcolor2 = Color(255,235,0,255),
          bgimage  = "ui_screens/ui_research/progress_bg",
          barimage = "ui_screens/ui_research/progressbar",
          bgtilebordersize = 4,
          percent  = false,
          fontScale = 0,
        },

        SetStyle( CommenceButtonStyle ),
        TiledButton
        {
          name = "hirebtn",
          x = sbw  * 0.86 * 0.03,
          y = sbh2 * 0.4  * 0.55,
          w = sbw  * 0.86 * 0.35,
          h = sbh2 * 0.4  * 0.30,
          fontScale = tableHeaderFontHeight,
          bordersize = 1,
          font = XenonautsTableContentsFont,
          label = "ResearchView.HireBtn",
          grayondisabled = true,

	        command = 
	          function()
	            DoHireFire();
            end,
        },

        ScalingText
        {
          font = XenonautsTableContentsFont,
          name = "static",
          x = sbw  * 0.86 * 0.03,
          y = sbh2 * 0.4  * 0.32,
          w = sbw  * 0.86 * 0.35,
          h = sbh2 * 0.4  * 0.20,
          fontScale = tableHeaderFontHeight,
	        flags = kHAlignLeft + kVAlignCenter,
          label = "ResearchView.HireCost",
        },
        ScalingText
        {
          font = XenonautsTableContentsFont,
          name = "hirecost",
          x = sbw  * 0.86 * 0.03,
          y = sbh2 * 0.4  * 0.32,
          w = sbw  * 0.86 * 0.35,
          h = sbh2 * 0.4  * 0.20,
          fontScale = tableHeaderFontHeight,
	        flags = kHAlignRight + kVAlignCenter,
          label = "#$0",
        },

        ScalingText
        {
          font = XenonautsTableContentsFont,
          name = "sciincrement",
          x = sbw  * 0.86 * 0.03,
          y = sbh2 * 0.4  * 0.10,
          w = sbw  * 0.86 * 0.35,
          h = sbh2 * 0.4  * 0.20,
          fontScale = tableHeaderFontHeight,
	        flags = kHAlignCenter + kVAlignCenter,
          label = "#5",
        },
        SetStyle( XenonautsRemButtonStyle ),
        RCButton
        {
          name = "remButton",
          x = sbw  * 0.86 * 0.12,
          y = sbh2 * 0.4  * 0.10,
          w = sbw  * 0.86 * 0.05,
          h = sbh2 * 0.4  * 0.15,
          scale = sbh2 * 0.4 * 0.10 / 17,
          command = 
            function()
	            AddSci( -1 );
            end,
        },
        SetStyle( XenonautsAddButtonStyle ),
        RCButton
        {
          name = "addButton",
          x = sbw  * 0.86 * 0.25,
          y = sbh2 * 0.4  * 0.10,
          w = sbw  * 0.86 * 0.05,
          h = sbh2 * 0.4  * 0.15,
          scale = sbh2 * 0.4 * 0.10 / 17,
          command = 
            function()
	            AddSci( 1 );
            end,
        },
      },
      NonUniformScaledImage
      {
        name  = "static",
        x = sbw / 2,
        y = kMax - bbh,
        w = 1,
        h = kMax - 2,
        image = "uitextures/white",
        tint = Color(0,0,0,25),
      },
      BeginGroup(),
      SetStyle( BubbleButtonStyle ),
      TiledButton
      {
        name = "manageresearchbtn",
        x = 0,
        y = kMax - bbh,
        w = sbw / 2,
        h = kMax - 2,
        bordersize = 1,
        font = BubbleButtonFont,
        overfontcolor = BubbleOverColor,
        downfontcolor = BubbleDownColor,
        fontScale = navigationText,
        outline = 0;
        label = "ResearchView.Manage",
        padding = tabLineSpacing,
        command = 
          function()
	          ManageSelected();
          end,
      },
      TiledButton
      {
        name = "hirefirebtn",
        x = sbw / 2,
        y = kMax - bbh,
        w = kMax,
        h = kMax - 2,
        bordersize = 1,
        font = BubbleButtonFont,
        overfontcolor = BubbleOverColor,
        downfontcolor = BubbleDownColor,
        fontScale = navigationText,
        outline = 2;
        label = "ResearchView.HireFire",
        padding = tabLineSpacing,
      }
    },
  }
}
