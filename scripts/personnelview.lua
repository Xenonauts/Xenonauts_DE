require "scripts/style"

XenonautsTableHeaderFont = {
  GeoscapeFont,
  1,
  BlackColor
};
XenonautsTableContentsFont = {
  GeoscapeFont,
  1,
  BlackColor
};
XenonautsBaseNameFont = {
  GeoscapeFont,
  1,
  WhiteColor
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

local cpbheight = hww / ( 1141.0 / 233.0 ) * 1.5;

local pageHeaderHeight      = cpbheight * 0.13;

local tableLeft             = hww * 0.05;
local tableWidth            = hww * 0.90;
local tableTop              = cpbheight * 0.12;
local tableHeight           = cpbheight * 0.65;
local tableHeaderHeight     = tableHeight * 0.09;
local tableHeaderFontHeight = screenResolutionH * 0.014;
local navigationText = screenResolutionH * 0.018;

local c1x = tableWidth*(25/1252);
local c1w = tableWidth*(128/1252 - 40/1252);
local c2x = tableWidth*(115/1252);
local c2w = tableWidth*(370/1252 - 115/1252);
local c3x = tableWidth*(350/1252);
local c3w = tableWidth*(36/1252);
local c4x = tableWidth*(422/1252);
local c4w = tableWidth*(36/1252);
local c5x = tableWidth*(494/1252);
local c5w = tableWidth*(36/1252);
local c6x = tableWidth*(566/1252);
local c6w = tableWidth*(36/1252);
local c7x = tableWidth*(638/1252);
local c7w = tableWidth*(36/1252);
local c8x = tableWidth*(710/1252);
local c8w = tableWidth*(36/1252);
local c9x = tableWidth*(800/1252);
local c9w = tableWidth*(975/1252 - 800/1252);
local c10x = tableWidth*(1030/1252);
local c10w = tableWidth*(1150/1252 - 1009/1252);
local c11x = tableWidth*(1200/1252);
local c11w = tableWidth*(20/1252);

local sbx  = hww * 0.20;
local sby  = hwh * 0.00;
local sbw  = hww * 0.50;
local sbh1 = hwh * 0.22;
local sbh2 = hwh * 0.80;

local bbh = sbh1 * 0.33;

local hireBubbleWidth = sbw * 0.86;
local hireTableHeaderHeight = sbh2 * 0.05;
local hireTableWidth = hireBubbleWidth;
local hireTableLeft = 0;

local hc1x = hireBubbleWidth * 0.025;
local hc1w = hireTableWidth * 0.10;
local hc2x = hc1x + hc1w;
local hc2w = hireTableWidth * 0.38;
local hc3x = hc2x + hc2w;
local hc3w = hireTableWidth * 0.0675;
local hc4x = hc3x + hc3w + (hireTableWidth * 0.0025);
local hc4w = hireTableWidth * 0.0675;
local hc5x = hc4x + hc4w + (hireTableWidth * 0.0025);
local hc5w = hireTableWidth * 0.0675;
local hc6x = hc5x + hc5w + (hireTableWidth * 0.0025);
local hc6w = hireTableWidth * 0.0675;
local hc7x = hc6x + hc6w + (hireTableWidth * 0.0025);
local hc7w = hireTableWidth * 0.0675;
local hc8x = hc7x + hc7w + (hireTableWidth * 0.0025);
local hc8w = hireTableWidth * 0.0675;
local hc9x = hc8x + hc8w;
local hc9w = hireTableWidth * 0.07;

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

personnel_list_colors = {
  hcolor = Color(192,192,192,100);
  scolor = Color(192,192,192,150);
};

personnel_color_area = 0.9;

MakeDialog
{
  PersonnelView
  {
    name = "personnelview",

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
      image = "ui_screens/ui_personnel/personnel_clipboard",

      NonUniformScaledImage
      {
        name  = "static",
        x = tableLeft,
        y = tableTop,
        w = tableWidth,
        h = pageHeaderHeight,
        image = "uitextures/white",
        tint = Color(18,18,18,255),

        ScalingText
        {
          font = XenonautsBaseNameFont,
          name = "cpbbasename",
          x = tableWidth * 0.01,
          y = 0,
          w = kMax,
          h = kMax,
          fontScale = pageHeaderHeight * 0.55,
	        flags = kHAlignLeft + kVAlignCenter,
          label = "PersonnelView.BaseName",
        },
        
        SetStyle( CommenceButtonStyle ),
        TiledButton
        {
          name = "transferbtn",
          x = tableWidth * 0.62,
          y = pageHeaderHeight * 0.15,
          w = tableWidth * 0.18,
          h = pageHeaderHeight * 0.7,
          fontScale = tableHeaderFontHeight * 1.2,
          bordersize = 1,
          font = XenonautsTableContentsFont,
          label = "PersonnelView.Transfer",
          grayondisabled = true,

	        command = 
	          function()
	            TransferSoldiers();
            end,
        },
        SetStyle( CommenceButtonStyle ),
        TiledButton
        {
          name = "firebtn",
          x = tableWidth * 0.81,
          y = pageHeaderHeight * 0.15,
          w = tableWidth * 0.18,
          h = pageHeaderHeight * 0.7,
          fontScale = tableHeaderFontHeight * 1.2,
          bordersize = 1,
          font = XenonautsTableContentsFont,
          label = "PersonnelView.Dismiss",
          grayondisabled = true,

	        command = 
	          function()
	            DismissSoldiers();
            end,
        },
      },

      ScalingText
      {
        font = XenonautsTableHeaderFont,
        name = "col00",
        x = tableLeft + c1x + 25.00,
        y = tableTop + pageHeaderHeight * 1.10,
        w = c1w,
        h = tableHeaderHeight,
        fontScale = navigationText,
	      flags = kHAlignLeft + kVAlignCenter,
        label = "PersonnelView.Rank",
        mouseover = true,
        mouseovercolor = BubbleOverColor,
        command = 
          function()
            SortSoldiers( 0, 0 );
          end,
      },
      ScalingText
      {
        font = XenonautsTableHeaderFont,
        name = "col01",
        x = c2x,
        y = tableTop + pageHeaderHeight * 1.10,
        w = c2w,
        h = tableHeaderHeight,
        fontScale = navigationText,
	      flags = kHAlignCenter + kVAlignCenter,
        label = "PersonnelView.Name",
        mouseover = true,
        mouseovercolor = BubbleOverColor,
        command = 
          function()
            SortSoldiers( 0, 1 );
          end,
      },
      ScalingText
      {
        font = XenonautsTableHeaderFont,
        name = "col02",
        x = tableLeft + c3x,
        y = tableTop + pageHeaderHeight * 1.10,
        w = c3w,
        h = tableHeaderHeight,
        fontScale = navigationText,
	      flags = kHAlignCenter + kVAlignCenter,
        label = "PersonnelView.APS",
        mouseover = true,
        mouseovercolor = BubbleOverColor,
        command = 
          function()
            SortSoldiers( 0, 2 );
          end,
      },
      ScalingText
      {
        font = XenonautsTableHeaderFont,
        name = "col03",
        x = tableLeft + c4x,
        y = tableTop + pageHeaderHeight * 1.10,
        w = c4w,
        h = tableHeaderHeight,
        fontScale = navigationText,
	      flags = kHAlignCenter + kVAlignCenter,
        label = "PersonnelView.HPS",
        mouseover = true,
        mouseovercolor = BubbleOverColor,
        command = 
          function()
            SortSoldiers( 0, 3 );
          end,
      },
      ScalingText
      {
        font = XenonautsTableHeaderFont,
        name = "col04",
        x = tableLeft + c5x,
        y = tableTop + pageHeaderHeight * 1.10,
        w = c5w,
        h = tableHeaderHeight,
        fontScale = navigationText,
	      flags = kHAlignCenter + kVAlignCenter,
        label = "PersonnelView.STR",
        mouseover = true,
        mouseovercolor = BubbleOverColor,
        command = 
          function()
            SortSoldiers( 0, 4 );
          end,
      },
      ScalingText
      {
        font = XenonautsTableHeaderFont,
        name = "col05",
        x = tableLeft + c6x,
        y = tableTop + pageHeaderHeight * 1.10,
        w = c6w,
        h = tableHeaderHeight,
        fontScale = navigationText,
	      flags = kHAlignCenter + kVAlignCenter,
        label = "PersonnelView.ACC",
        mouseover = true,
        mouseovercolor = BubbleOverColor,
        command = 
          function()
            SortSoldiers( 0, 5 );
          end,
      },
      ScalingText
      {
        font = XenonautsTableHeaderFont,
        name = "col06",
        x = tableLeft + c7x,
        y = tableTop + pageHeaderHeight * 1.10,
        w = c7w,
        h = tableHeaderHeight,
        fontScale = navigationText,
	      flags = kHAlignCenter + kVAlignCenter,
        label = "PersonnelView.RFL",
        mouseover = true,
        mouseovercolor = BubbleOverColor,
        command = 
          function()
            SortSoldiers( 0, 6 );
          end,
      },
      ScalingText
      {
        font = XenonautsTableHeaderFont,
        name = "col07",
        x = tableLeft + c8x,
        y = tableTop + pageHeaderHeight * 1.10,
        w = c8w,
        h = tableHeaderHeight,
        fontScale = navigationText,
	      flags = kHAlignCenter + kVAlignCenter,
        label = "PersonnelView.BRV",
        mouseover = true,
        mouseovercolor = BubbleOverColor,
        command = 
          function()
            SortSoldiers( 0, 7 );
          end,
      },
      ScalingText
      {
        font = XenonautsTableHeaderFont,
        name = "col08",
        x = tableLeft + c9x,
        y = tableTop + pageHeaderHeight * 1.10,
        w = c9w,
        h = tableHeaderHeight,
        fontScale = navigationText,
	      flags = kHAlignCenter + kVAlignCenter,
        label = "PersonnelView.Role",
        mouseover = true,
        mouseovercolor = BubbleOverColor,
        command = 
          function()
            SortSoldiers( 0, 8 );
          end,
      },
      ScalingText
      {
        font = XenonautsTableHeaderFont,
        name = "col09",
        x = tableLeft + c10x,
        y = tableTop + pageHeaderHeight * 1.10,
        w = c10w,
        h = tableHeaderHeight,
        fontScale = navigationText,
	      flags = kHAlignCenter + kVAlignCenter,
        label = "PersonnelView.Status",
        mouseover = true,
        mouseovercolor = BubbleOverColor,
        command = 
          function()
            SortSoldiers( 0, 9 );
          end,
      },
      ScalingText
      {
        font = XenonautsTableHeaderFont,
        name = "static",
        x = tableLeft + c11x,
        y = tableTop + pageHeaderHeight * 1.10,
        w = c11w,
        h = tableHeaderHeight,
        fontScale = navigationText,
	      flags = kHAlignCenter + kVAlignCenter,
        label = "Empty",
        command = 
          function()
            SortSoldiers( 0, 10 );
          end,
      },

      NonUniformScaledImage
      {
        name  = "static",
        x = tableLeft,
        y = tableTop + (pageHeaderHeight * 1.10) + tableHeaderHeight,
        w = tableWidth,
        h = 1,
        image = "uitextures/white",
        tint = Color(0,0,0,25),
      },

      ListControl
      {
	      name  = "roster",
        x = tableLeft,
        y = tableTop + (pageHeaderHeight * 1.10) + tableHeaderHeight + 2,
        w = tableWidth,
        h = kMax,
        font = XenonautsTableContentsFont,
        fontScale = tableHeaderFontHeight,
        hswl = true,
        drawSelection = true,
        scrollspeed = 1,
        fullrowhighlight = true,
        
        column1x = c1x,
        column1w = c1w,
        column2x = c2x,
        column2w = c2w,
        column3x = c3x,
        column3w = c3w,
        column4x = c4x,
        column4w = c4w,
        column5x = c5x,
        column5w = c5w,
        column6x = c6x,
        column6w = c6w,
        column7x = c7x,
        column7w = c7w,
        column8x = c8x,
        column8w = c8w,
        column9x = c9x,
        column9w = c9w,
        column10x = c10x,
        column10w = c10w,
        column11x = c11x,
        column11w = c11w,

        TiledImage
        {
          name = "scrollbar",
          x = kMax - 9,
          y = 0,
          w = kMax,
          h = kMax,
          image = "ui_screens/ui_research/scrollbarspeech",
          bordersize = 1,

          NonUniformScaledImage
          {
	          name  = "scrollbarBtn",
            x = 2,
            y = 2,
            w = 5,
            h = 1,
            image = "ui_screens/ui_research/scrollbar_button",
          },
        },
      },
    },
    TiledImage
    {
      name = "manage_tab",
      x = sbx,
      y = sbh1 * 0.4,
      w = sbw,
      h = sbh1,
      image = "ui_screens/ui_stores/speechbubble",
      bordersize = 4,

      ScalingText
      {
        font = XenonautsTableContentsFont,
        name = "static",
        x = sbw * 0.1,
        y = 0,
        w = sbw * 0.8,
        h = sbh1 * 0.66,
        fontScale = tableHeaderFontHeight,
	      flags = kHAlignCenter + kVAlignCenter,
        label = "PersonnelView.Comment1",
      },
      NonUniformScaledImage
      {
        name  = "static",
        x = sbw / 2,
        y = sbh1 * 0.66,
        w = 1,
        h = kMax - 2,
        image = "uitextures/white",
        tint = Color(0,0,0,25),
      },
      BeginGroup(),
      SetStyle( BubbleButtonStyle ),
      TiledButton
      {
        name = "managesoldiersbtn",
        x = 0,
        y = sbh1 * 0.66,
        w = sbw / 2,
        h = kMax - 2,
        bordersize = 1,
        font = BubbleButtonFont,
        overfontcolor = BubbleOverColor,
        downfontcolor = BubbleDownColor,
        fontScale = navigationText,
        label = "PersonnelView.Manage",
		outline = 2,
      },
      TiledButton
      {
        name = "hirebtn",
        x = sbw / 2,
        y = sbh1 * 0.66,
        w = kMax,
        h = kMax - 2,
        bordersize = 1,
        font = BubbleButtonFont,
        overfontcolor = BubbleOverColor,
        downfontcolor = BubbleDownColor,
        fontScale = navigationText,
        label = "PersonnelView.Hire",
        command = 
          function()
	          HireSelected();
          end,
      }
    },

    TiledImage
    {
      name = "hire_tab",
      x = sbx,
      y = sby,
      w = sbw,
      h = sbh2 - (sbh2 * 0.08),
      image = "ui_screens/ui_stores/speechbubble",
      bordersize = 4,

      ScalingText
      {
        font = XenonautsTableContentsFont,
        name = "static",
        x = 0,
        y = -sbh2 * 0.01,
        w = kMax,
        h = sbh2 * 0.16,
        fontScale = tableHeaderFontHeight,
	      flags = kHAlignCenter + kVAlignCenter,
        label = "PersonnelView.Comment2",
      },
      TiledImage
      {
        name = "static",
        x = sbw * 0.07,
        y = (sbh2 * 0.16) - (sbh2 * 0.03),
        w = sbw * 0.86,
        h = sbh2 * 0.60,
        image = "ui_screens/ui_research/speechbubble_white",
        bordersize = 4,

        ScalingText
        {
          font = XenonautsTableHeaderFont,
          name = "col10",
          x = hc1x * 0.9,
          y = sbh2 * 0.002,
          w = hc1w,
          h = hireTableHeaderHeight,
          fontScale = tableHeaderFontHeight,
	        flags = kHAlignLeft + kVAlignCenter,
          label = "PersonnelView.Rank",
          command = 
            function()
              SortSoldiers( 1, 0 );
            end,
        },
        ScalingText
        {
          font = XenonautsTableHeaderFont,
          name = "col11",
          x = hc2x * 0.2,
          y = sbh2 * 0.005,
          w = hc2w,
          h = hireTableHeaderHeight,
          fontScale = tableHeaderFontHeight,
	        flags = kHAlignCenter + kVAlignCenter,
          label = "PersonnelView.Name",
          command = 
            function()
              SortSoldiers( 1, 1 );
            end,
        },
        ScalingText
        {
          font = XenonautsTableHeaderFont,
          name = "col12",
          x = hc3x,
          y = sbh2 * 0.005,
          w = hc3w,
          h = hireTableHeaderHeight,
          fontScale = tableHeaderFontHeight,
	        flags = kHAlignCenter + kVAlignCenter,
          label = "PersonnelView.APS",
          command = 
            function()
              SortSoldiers( 1, 2 );
            end,
        },
        ScalingText
        {
          font = XenonautsTableHeaderFont,
          name = "col13",
          x = hc4x,
          y = sbh2 * 0.005,
          w = hc4w,
          h = hireTableHeaderHeight,
          fontScale = tableHeaderFontHeight,
	        flags = kHAlignCenter + kVAlignCenter,
          label = "PersonnelView.HPS",
          command = 
            function()
              SortSoldiers( 1, 3 );
            end,
        },
        ScalingText
        {
          font = XenonautsTableHeaderFont,
          name = "col14",
          x = hc5x,
          y = sbh2 * 0.005,
          w = hc5w,
          h = hireTableHeaderHeight,
          fontScale = tableHeaderFontHeight,
	        flags = kHAlignCenter + kVAlignCenter,
          label = "PersonnelView.STR",
          command = 
            function()
              SortSoldiers( 1, 4 );
            end,
        },
        ScalingText
        {
          font = XenonautsTableHeaderFont,
          name = "col15",
          x = hc6x,
          y = sbh2 * 0.005,
          w = hc6w,
          h = hireTableHeaderHeight,
          fontScale = tableHeaderFontHeight,
	        flags = kHAlignCenter + kVAlignCenter,
          label = "PersonnelView.ACC",
          command = 
            function()
              SortSoldiers( 1, 5 );
            end,
        },
        ScalingText
        {
          font = XenonautsTableHeaderFont,
          name = "col16",
          x = hc7x,
          y = sbh2 * 0.005,
          w = hc7w,
          h = hireTableHeaderHeight,
          fontScale = tableHeaderFontHeight,
	        flags = kHAlignCenter + kVAlignCenter,
          label = "PersonnelView.RFL",
          command = 
            function()
              SortSoldiers( 1, 6 );
            end,
        },
        ScalingText
        {
          font = XenonautsTableHeaderFont,
          name = "col17",
          x = hc8x,
          y = sbh2 * 0.005,
          w = hc8w,
          h = hireTableHeaderHeight,
          fontScale = tableHeaderFontHeight,
	        flags = kHAlignCenter + kVAlignCenter,
          label = "PersonnelView.BRV",
          command = 
            function()
              SortSoldiers( 1, 7 );
            end,
        },
        ScalingText
        {
          font = XenonautsTableHeaderFont,
          name = "col18",
          x = hc9x,
          y = sbh2 * 0.005,
          w = hc9w,
          h = hireTableHeaderHeight,
          fontScale = tableHeaderFontHeight,
	        flags = kHAlignCenter + kVAlignCenter,
          label = "Empty",
          command = 
            function()
              SortSoldiers( 1, 8 );
            end,
        },
        
        NonUniformScaledImage
        {
          name  = "static",
          x = 1,
          y = hireTableHeaderHeight,
          w = kMax - 1,
          h = 1,
          image = "uitextures/white",
          tint = Color(0,0,0,25),
        },

        ListControl
        {
	        name  = "hireroster",
          x = hireTableLeft,
          y = hireTableHeaderHeight + 4,
          w = hireTableWidth,
          h = kMax - 2,
          font = XenonautsTableContentsFont,
          fontScale = tableHeaderFontHeight,
          hideScrollbar = true,
          drawSelection = true,
          fullrowhighlight = true,
          highlightonly = true,
          
          column1x = hc1x,
          column1w = hc1w,
          column2x = hc2x,
          column2w = hc2w,
          column3x = hc3x,
          column3w = hc3w,
          column4x = hc4x,
          column4w = hc4w,
          column5x = hc5x,
          column5w = hc5w,
          column6x = hc6x,
          column6w = hc6w,
          column7x = hc7x,
          column7w = hc7w,
          column8x = hc8x,
          column8w = hc8w,
          column9x = hc9x,
          column9w = hc9w,

          TiledImage
          {
            name = "scrollbar",
            x = kMax - 1,
            y = 0,
            w = kMax,
            h = kMax,
            image = "ui_screens/ui_research/scrollbarspeech",
            bordersize = 1,

            NonUniformScaledImage
	          {
		          name  = "scrollbarBtn",
	            x = 0,
	            y = 0,
	            w = 5,
	            h = 1,
		          image = "ui_screens/ui_research/scrollbar_button",
	          },
          },
        },
      },
      
      TiledImage
      {
        name = "static",
        x = sbw * 0.07,
        y = sbh2 * 0.78 - (sbh2 * 0.03),
        w = sbw * 0.47,
        h = sbh2 * 0.04,
        image = "ui_screens/ui_research/stores_buttonup",
        bordersize = 4,

        ScalingText
        {
          font = XenonautsTableContentsFont,
          name = "static",
          x = sbw * 0.015,
          y = 0,
          w = kMax,
          h = kMax,
          fontScale = tableHeaderFontHeight,
	        flags = kHAlignLeft + kVAlignCenter,
          label = "PersonnelView.LivSpace",
        },
        ProgressBar
        {
          font = XenonautsTableContentsFont,
          name = "livingspaceprog",
          x = sbw * 0.45 * 0.34,
          y = sbh2 * 0.01,
          w = sbw * 0.45 * 0.53,
          h = sbh2 * 0.02,
          barheight = sbh2 * 0.02,
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
        ScalingText
        {
          font = XenonautsTableContentsFont,
          name = "livingspace",
          x = sbw * 0.015,
          y = 0,
          w = sbw * 0.45 - sbw * 0.01,
          h = kMax,
          fontScale = tableHeaderFontHeight,
	        flags = kHAlignRight + kVAlignCenter,
          label = "#60/70",
        },
      },
      SetStyle( CommenceButtonStyle ),
      TiledButton
      {
        name = "hirebtn",
        x = sbw * 0.72,
        y = (sbh2 * 0.78) - (sbh2 * 0.03),
        w = sbw * 0.21,
        h = sbh2 * 0.04,
        fontScale = tableHeaderFontHeight,
        bordersize = 1,
        font = XenonautsTableContentsFont,
        label = "PersonnelView.HireBtn",
        grayondisabled = true,

        command = 
          function()
            HireSoldiers();
          end,
      },
      
      NonUniformScaledImage
      {
        name  = "static",
        x = sbw / 2,
        y = (sbh2 - sbh1 * 0.34) - (sbh2 * 0.08),
        w = 1,
        h = kMax - 2,
        image = "uitextures/white",
        tint = Color(0,0,0,25),
      },
      BeginGroup(),
      SetStyle( BubbleButtonStyle ),
      TiledButton
      {
        name = "managesoldiersbtn",
        x = 0,
        y = (sbh2 - sbh1 * 0.34) - (sbh2 * 0.08),
        w = sbw / 2,
        h = kMax - 2,
        bordersize = 1,
        font = BubbleButtonFont,
        overfontcolor = BubbleOverColor,
        downfontcolor = BubbleDownColor,
        fontScale = navigationText,
        label = "PersonnelView.Manage",
        command = 
          function()
	          ManageSelected();
          end,
      },
      TiledButton
      {
        name = "hirebtn",
        x = sbw / 2,
        y = (sbh2 - sbh1 * 0.34) - (sbh2 * 0.08),
        w = kMax,
        h = kMax - 2,
        bordersize = 1,
        font = BubbleButtonFont,
        overfontcolor = BubbleOverColor,
        downfontcolor = BubbleDownColor,
        fontScale = navigationText,
        label = "PersonnelView.Hire",
		outline = 2,
      }
    },
  }
}
