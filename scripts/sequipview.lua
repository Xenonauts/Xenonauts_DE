require "scripts/style"

CategoryButtonGraphics = {
	"ui_screens/ui_aircraft/buttonup",
	"ui_screens/ui_aircraft/buttondown",
	"ui_screens/ui_aircraft/buttonover",
	"ui_screens/ui_aircraft/buttondownover",
};

CategoryButtonStyle = {
	parent   = DefaultStyle,
	sound    = kDefaultButtonSound,
	type     = kRadio,
	graphics = CategoryButtonGraphics,
};

ArrowMoveUpButtonGraphics = {
	"ui_screens/ui_soldierequip/arrow_moveup_up",
	"ui_screens/ui_soldierequip/arrow_moveup_down",
	"ui_screens/ui_soldierequip/arrow_moveup_over",
};

ArrowMoveUpButtonStyle = {
	parent   = DefaultStyle,
	font     = XenonautsButtonFontMedium,
	sound    = kDefaultButtonSound,
	type     = kPush,
	graphics = ArrowMoveUpButtonGraphics,
};

ArrowMoveDownButtonGraphics = {
	"ui_screens/ui_soldierequip/arrow_movedown_up",
	"ui_screens/ui_soldierequip/arrow_movedown_down",
	"ui_screens/ui_soldierequip/arrow_movedown_over",
};

ArrowMoveDownButtonStyle = {
	parent   = DefaultStyle,
	font     = XenonautsButtonFontMedium,
	sound    = kDefaultButtonSound,
	type     = kPush,
	graphics = ArrowMoveDownButtonGraphics,
};

SEQSelectorFont = {
  GeoscapeFont,
  1,
  BlackColor
};

SoldierListFont = {
  GeoscapeFont,
  1,
  BlackColor
};

SoldierNameFont = {
  GeoscapeFont,
  1,
  BlackColor
};

SoldierNameEditFont = {
  GeoscapeFont,
  screenResolutionH * 0.021,
  BlackColor
};

SoldierStatFont = {
  GeoscapeFont,
  1,
  VEQstatColor
};

SEQStatLinkFont = {
  GeoscapeFont,
  1,
  BlueLinkColor
};

SEQWhiteFont = {
  GeoscapeFont,
  1,
  WhiteColor
};

NoVehiclesFont = {
  GeoscapeFont,
  1,
  WhiteColor
};

BarSecondColor = Color(1,145,21,255);

CatNormalColor = Color(0,0,0,255);
CatOverColor   = Color(0,0,0,255);
CatDownColor   = Color(255,255,255,255);

CatButtonFont = {
  "fonts/xenonauts.mvec",
  1,
  CatNormalColor
};

InjuredColor = {
  color = Color( 233, 111, 122, 255 );
}

local pbarcolor = Color(0,201,29,255);

local scl = ( hwh / 940 );

local stw = scl * 388;
local sth = scl * 542;

local wsw = scl * 360;
local wsh = scl * 882 - 20;

local asw = scl * 700;
local ash = scl * 280;
local asc = scl * 240;
local asi = ash / 5;

local c1x = asw * 0.01;
local c1w = ( asw - asc ) * 0.1;
local c2x = ( asw - asc ) * 0.12;
local c2w = ( asw - asc ) * 0.77;

local medalAspect = 48.0 / 32.0;
local medalWidth  = Floor( ( Floor( stw * 0.95 ) - 8 ) / 9 );
local medalHeight = Floor( medalWidth * medalAspect );

----------------------------------------------

local soldierScale = 0.45 * screenScaleY;
local soldierSizeX = 750 * soldierScale;
local soldierSizeY = 30 * soldierScale;

MakeDialog
{
  SoldierEquipView
  {
    name = "sequipview",

    x = 10,
    y = 30,
    w = kMax,
    h = kMax,
    aircraftslotitemheight = asi;
    
    Bitmap
    {
      name = "soldiershadow",
      x = 1004 * 0.5 * screenScaleX - soldierSizeX * 0.5,
      y = soldierSizeY,
      scale = soldierScale,
      image = "ui_screens/ui_soldierequip/soldiershadow",
    },
    Bitmap
    {
      name = "armourbackpiece",
      x = 1004 * 0.5 * screenScaleX - soldierSizeX * 0.5,
      y = soldierSizeY,
      scale = soldierScale,
      image = "armourimages/basicarmour",
    },
    Bitmap
    {
      name = "soldierface",
      x = 1004 * 0.5 * screenScaleX - soldierSizeX * 0.5,
      y = soldierSizeY,
      scale = soldierScale,
      image = "armourimages/face1",
    },
    Bitmap
    {
      name = "soldierhands",
      x = 1004 * 0.5 * screenScaleX - soldierSizeX * 0.5,
      y = soldierSizeY,
      scale = soldierScale,
      image = "armourimages/basicarmour",
    },
    Bitmap
    {
      name = "soldierarmour",
      x = 1004 * 0.5 * screenScaleX - soldierSizeX * 0.5,
      y = soldierSizeY,
      scale = soldierScale,
      image = "armourimages/basicarmour",
    },

    ScalingText
    {
      name = "injurylab",
      font = SoldierNameFont,
      fontScale = hwh * 0.03,
      x = hww * 0.435,
      y = hwh * 0.3,
      w = hww * 0.15,
      h = hwh * 0.05,
      flags = kHAlignCenter + kVAlignTop,
      label = "SEQ.SoldierHealth",

      ProgressBar
      {
        font = XenonautsDisabledFont,
        name = "injuryprog",
        x = 0,
        y = hwh * 0.03,
        w = kMax,
        h = hwh * 0.02,
        barheight = hwh * 0.02,
        min = 0,
        max = 100,
        barcolor = RedColor,
        barcolor2 = RedColor,
        bgimage  = "uitextures/blackframetrans",
        barimage = "uitextures/white",
        bgtilebordersize = 4,
        percent  = false,
      },
    },

    ScalingText
    {
      font = XenonautsLabelFontLarge,
      name = "percentComplete",
      x = kCenter,
      y = kCenter,
      w = kMax,
      h = kMax,
      fontScale = screenScaleY,
	    flags = kHAlignCenter + kVAlignCenter,
      label = "SEQ.HOURSTOARRIVE",
    },
    ScalingText
    {
      font = NoVehiclesFont,
      name = "noVehicles",
      x = kCenter,
      y = hwh * 0.3,
      w = kMax,
      h = hwh / 15,
      fontScale = hwh / 15,
	    flags = kHAlignCenter + kVAlignCenter,
      label = "SEQ.NoSoldiers",
    },
    
    TitledFrame
    {
	    name  = "primweaponframe",
      x = 280 * screenScaleX,
      y = 150 * screenScaleY,
      w = 5 * Floor( 30 * screenScaleX ),
      h = 23 * screenScaleY + ( 5 * Floor( 30 * screenScaleX ) * 2 / 5 ),
	    headimage = "uitextures/sequip/frametoptrans",
	    bodyimage = "uitextures/sequip/framebottomtrans",
      bordersize = 2,
      headersize = 23 * screenScaleY,
      
      ScalingText
      {
        font = MedSmallSoldier,
        name = "static",
        x = 0,
        y = 13 * screenScaleY,
        w = kMax,
        h = 10 * screenScaleY,
        fontScale = screenScaleY,
  	    flags = kHAlignLeft + kVAlignBottom,
        label = "SEQ.PRIMWEAPON",
        outline = 1,
      },
      WeaponSlot
      {
        name = "primary",
        x = 0,
        y = 23 * screenScaleY,
        w = kMax,
        h = kMax,
        image = "weapons/empty",
      },
    },

    TitledFrame
    {
	    name  = "secondaryweaponframe",
      x = 280 * screenScaleX,
      y = 160 * screenScaleY + 23 * screenScaleY + ( 5 * Floor( 30 * screenScaleX ) * 2 / 5 ) + 5,
      w = 5 * Floor( 30 * screenScaleX ),
      h = 23 * screenScaleY + ( 5 * Floor( 30 * screenScaleX ) * 2 / 5 ),
	    headimage = "uitextures/sequip/frametoptrans",
	    bodyimage = "uitextures/sequip/framebottomtrans",
      bordersize = 2,
      headersize = 23 * screenScaleY,
      
      ScalingText
      {
        font = MedSmallSoldier,
        name = "static",
        x = 0,
        y = 13 * screenScaleY,
        w = kMax,
        h = 10 * screenScaleY,
        fontScale = screenScaleY,
  	    flags = kHAlignLeft + kVAlignBottom,
        label = "SEQ.SECWEAPON",
        outline = 1,
      },
      WeaponSlot
      {
        name = "secondary",
        x = 0,
        y = 23 * screenScaleY,
        w = kMax,
        h = kMax,
        image = "weapons/empty",
      },
    },

    ScalingText
    {
      font = MedSmallSoldier,
      name = "hideme1",
      x = 280 * screenScaleX,
      y = 145 * screenScaleY + ( 23 * screenScaleY + ( 160 * 2 / 5 ) * screenScaleX ) * 2 + 5 + 15,
      w = 160 * screenScaleX,
      h = 12 * screenScaleY,
	    flags = kHAlignLeft + kVAlignBottom,
      label = "SEQ.CARRWEIGHT",
      fontScale = screenScaleY,
      outline = 1,
    },
    ProgressBar
    {
      font = XenonautsDisabledFont,
      name = "carriedweight",
      x = 280 * screenScaleX,
      y = 145 * screenScaleY + ( 23 * screenScaleY + ( 160 * 2 / 5 ) * screenScaleX ) * 2 + 5 + 15 + 12 * screenScaleY,
      w = 130 * screenScaleX,
      h = 8 * screenScaleY,
      barheight = 8 * screenScaleY,
      min = 0,
      max = 100,
      barcolor = pbarcolor,
      barcolor2 = BarLightGrey,
      barcolor3 = RedColor,
      bgimage  = "uitextures/blackframetrans",
      barimage = "uitextures/white",
      bgtilebordersize = 4,
      percent  = false,
    },
    ScalingText
    {
      font = XenonautsLabelFontSmallStatbar,
      name = "carriedweightText",
      x = 280 * screenScaleX + 114 * screenScaleX,
      y = 145 * screenScaleY + ( 23 * screenScaleY + ( 160 * 2 / 5 ) * screenScaleX ) * 2 + 5 + 15 + 12 * screenScaleY,
      w = 40 * screenScaleX,
      h = 10 * screenScaleY,
	    flags = kHAlignRight + kVAlignCenter,
      label = "undefined",
      fontScale = screenScaleY,
      outline = 1,
    },

    ScalingText
    {
      font = MedSmallSoldier,
      name = "hideme2",
      x = 280 * screenScaleX,
      y = 143 * screenScaleY + ( 23 * screenScaleY + ( 160 * 2 / 5 ) * screenScaleX ) * 2 + 5 + 15 + 12 * screenScaleY + 12 * screenScaleY + 5,
      w = 160 * screenScaleX,
      h = 12 * screenScaleY,
	    flags = kHAlignLeft + kVAlignBottom,
      label = "SEQ.TUAfterPen",
      fontScale = screenScaleY,
      outline = 1,
    },
    ProgressBar
    {
      font = XenonautsDisabledFont,
      name = "apafterpen",
      x = 280 * screenScaleX,
      y = 143 * screenScaleY + ( 23 * screenScaleY + ( 160 * 2 / 5 ) * screenScaleX ) * 2 + 5 + 15 + 12 * screenScaleY + 12 * screenScaleY + 5 + 12 * screenScaleY,
      w = 130 * screenScaleX,
      h = 8 * screenScaleY,
      barheight = 8 * screenScaleY,
      min = 0,
      max = 80,
      barcolor = pbarcolor,
      bgimage  = "uitextures/blackframetrans",
      barimage = "uitextures/white",
      bgtilebordersize = 4,
      percent  = false,
    },
    ScalingText
    {
      font = XenonautsLabelFontSmallStatbar,
      name = "apafterpenText",
      x = 280 * screenScaleX + 114 * screenScaleX,
      y = 143 * screenScaleY + ( 23 * screenScaleY + ( 160 * 2 / 5 ) * screenScaleX ) * 2 + 5 + 15 + 12 * screenScaleY + 12 * screenScaleY + 5 + 12 * screenScaleY,
      w = 40 * screenScaleX,
      h = 10 * screenScaleY,
	    flags = kHAlignRight + kVAlignCenter,
      label = "undefined",
      fontScale = screenScaleY,
      outline = 1,
    },

	ScalingText
	{
	  font = MedSmallSoldier,
	  name = "armourcombolabel",
	  x = 280 * screenScaleX,
	  y = 60 * screenScaleY,
	  w = 5 * Floor( 30 * screenScaleX ),
	  h = 50 * screenScaleY,
	  label = "SEQ.ARMOURBOX",
	  fontScale = screenScaleY,
	  outline = 1,
	},		
	
    ComboBox
    {
      name = "armourcombo",
      x = 280 * screenScaleX,
      y = 70 * screenScaleY,
      w = 5 * Floor( 30 * screenScaleX ),
      h = 200,
	  
      NonUniformScaledImage
      {
        name = "armourcmbobg",
        x = 0,
        y = 0,
        w = kMax,
        h = 220 * 0.25 * screenScaleY,
        image = "uitextures/white",
        tint = Color( 120, 134, 143, 255 ),

        NonUniformScaledImage
        {
          x = 5,
          y = ( 220 * 0.25 * screenScaleY ) / 2,
          w = kMax - 5,
          h = ( 220 * 0.25 * screenScaleY ) / 2 - 5,
          image = "uitextures/white",
          tint = Color( 58, 65, 71, 255 ),
        },
      
        ScalingText
        {
          font = XenonautsLabelFontMediumBlack,
          name = "static",
          x = 0,
          y = 0,
          w = kMax,
          h = ( 220 * 0.25 * screenScaleY ) / 2,
  	      flags = kHAlignCenter + kVAlignCenter,
          label = "SEQ.ARMOUREQUIPPED",
          fontScale = screenScaleY,
        },
        ScalingText
        {
          font = XenonautsLabelFontMedium,
          name = "textlabel",
          x = 0,
          y = ( 220 * 0.25 * screenScaleY ) / 2,
          w = kMax,
          h = kMax - 5,
  	      flags = kHAlignCenter + kVAlignCenter,
          label = "undefined",
          fontScale = screenScaleY,
          outline = 1,
        },
		
      },
      
      SetStyle( XenonautsArmourComboButtonStyle ),
      TiledButton
      {      
        name = "combobutton",
	      align = kHAlignLeft + kVAlignBottom,
        x = kMax - 37 * screenScaleY,
        y = ( 220 * 0.2045 - 3 ) * screenScaleY,
        w = ( 220 * 0.2045 - 5 ) * screenScaleY / 2,
        h = ( 220 * 0.2045 - 5 ) * screenScaleY / 2,
        bordersize = 2,
  	      
        command = 
          function()
          end,
      },
      TiledImage
      {
        name = "listcontrolbg",
        x = 5,
        y = 220 * 0.23 * screenScaleY,
        w = kMax - 5,
        h = 100 * screenScaleY,
        image = "ui_screens/ui_soldierequip/soldiereqbutton",
        bordersize = 4,

        ListControl
        {
          name = "listcontrol",
          x = 0,
          y = 0,
          w = kMax,
          h = kMax,
          font = MediumSoldier,
		  fontScale = screenResolutionH * 0.0012,
		  outline = 1,
        
          TiledImage
          {
            name = "scrollbar",
            x = kMax - 9,
            y = 0,
            w = 0,
            h = kMax,
            image = "ui_screens/ui_research/scrollbarspeech",
            bordersize = 4,

            NonUniformScaledImage
	          {
		          name  = "scrollbarBtn",
	            x = 2,
	            y = 2,
	            w = 5,
	            h = 5,
		          image = "ui_screens/ui_research/scrollbar_button",
	          },
          },
        },
      },
    },

    TiledImage
    {
	    name  = "soldierinfo",
      x = 0,
      y = 20,
      w = stw,
      h = sth,
      image = "ui_screens/ui_stores/speechbubble",
      bordersize = 4,

      NonUniformScaledImage
      {      
        name  = "soldierimageholder",
        x = stw * 0.025,
        y = stw * 0.025,
        w = stw * 0.95 * 0.3333333,
        h = stw * 0.95 * 0.3333333 * ( 70.0 / 63.0 ),
        image = "uitextures/white",
        tint = Color(155,155,155,255),

        NonUniformScaledImage
        {      
          name  = "soldierimage",
          x = 0,
          y = 0,
          w = kMax,
          h = kMax,
          image = "uitextures/transparent",
        },
        NonUniformScaledImage
        {      
          name  = "soldierrankimage",
          x = kMax,
          y = kMax,
          w = stw * 0.95 * 0.15,
          h = stw * 0.95 * 0.15,
          image = "rankimages/rank.private",
	        align = kHAlignRight + kVAlignBottom,
        },
      },

      ScalingText
      {
        font = SoldierNameFont,
        name = "soldiername",
        x = stw * 0.05 + stw * 0.95 * 0.3333333,
        y = stw * 0.025,
        w = kMax - stw * 0.025,
        h = stw * 0.12,
  	    flags = kHAlignLeft + kVAlignTop,
        label = "undefined",
			  fontScale = screenResolutionH * 0.021,
      },
      ClearingTextEdit
      {
        font = SoldierNameEditFont,
        name = "callsignedit",
        x = stw * 0.05 + stw * 0.95 * 0.3333333,
        y = stw * 0.025,
        w = kMax - stw * 0.025,
        h = stw * 0.12,
  	    flags = kHAlignLeft + kVAlignTop,
			  utf8   = true,
			  length = 20,
			  ignore = kIllegalNameChars,
      },
      SetStyle( XenonautsInvisibleTiledButtonStyle ),
      TiledButton
      {
			  name   = "soldiercallsign",
        x = stw * 0.05 + stw * 0.95 * 0.3333333,
        y = stw * 0.145,
        w = kMax - stw * 0.025,
        h = stw * 0.04,
  	    flags  = kHAlignLeft + kVAlignCenter,
			  fontScale = screenResolutionH * 0.013,
		    bordersize = 1,
			  font   = SEQStatLinkFont,
			  label  = "SEQ.Rename",
			  underlined = true,
			  
        command = 
          function()
            OnChangeCallsign();
        end,
      },

      DottedLabel
      {
        font = SoldierStatFont,
        name = "statage",
        x = stw * 0.05 + stw * 0.95 * 0.3333333,
        y = stw * 0.21,
        w = kMax - stw * 0.04,
        h = stw * 0.035,
        left = "SEQ.STATAGE",
        right = "undefined",
        fontScale = screenResolutionH * 0.011,
      },
      DottedLabel
      {
        font = SoldierStatFont,
        name = "statnation",
        x = stw * 0.05 + stw * 0.95 * 0.3333333,
        y = stw * 0.25,
        w = kMax - stw * 0.04,
        h = stw * 0.035,
        left = "SEQ.Nationality",
        right = "undefined",
        fontScale = screenResolutionH * 0.011,
      },
      DottedLabel
      {
        font = SoldierStatFont,
        name = "statregiment",
        x = stw * 0.05 + stw * 0.95 * 0.3333333,
        y = stw * 0.29,
        w = kMax - stw * 0.04,
        h = stw * 0.035,
        left = "SEQ.PREVREG",
        right = "undefined",
        fontScale = screenResolutionH * 0.011,
      },
      DottedLabel
      {
        font = SoldierStatFont,
        name = "statprevexp",
        x = stw * 0.05 + stw * 0.95 * 0.3333333,
        y = stw * 0.33,
        w = kMax - stw * 0.04,
        h = stw * 0.035,
        left = "SEQ.PREVEXP",
        right = "undefined",
        fontScale = screenResolutionH * 0.011,
      },
      Window
      {
        x = stw * 0.025,
        y = stw * 0.4,
        w = kMax - stw * 0.025,
        h = medalHeight,
        
        NonUniformScaledImage
        {
          name = "medal1",
          x = ( medalWidth + 1 ) * 0,
          y = 0,
          w = medalWidth,
          h = kMax,
          image = "medals/ServiceMedal_gray",
        },
        NonUniformScaledImage
        {
          name = "medal2",
          x = ( medalWidth + 1 ) * 1,
          y = 0,
          w = medalWidth,
          h = kMax,
          image = "medals/OrderOfGallantry_gray",
        },
        NonUniformScaledImage
        {
          name = "medal3",
          x = ( medalWidth + 1 ) * 2,
          y = 0,
          w = medalWidth,
          h = kMax,
          image = "medals/CitationForCurage_gray",
        },
        NonUniformScaledImage
        {
          name = "medal4",
          x = ( medalWidth + 1 ) * 3,
          y = 0,
          w = medalWidth,
          h = kMax,
          image = "medals/CitationForValor_gray",
        },
        NonUniformScaledImage
        {
          name = "medal5",
          x = ( medalWidth + 1 ) * 4,
          y = 0,
          w = medalWidth,
          h = kMax,
          image = "medals/CitationForBravery_gray",
        },
        NonUniformScaledImage
        {
          name = "medal6",
          x = ( medalWidth + 1 ) * 5,
          y = 0,
          w = medalWidth,
          h = kMax,
          image = "medals/CrimsonHeart_gray",
        },
        NonUniformScaledImage
        {
          name = "medal7",
          x = ( medalWidth + 1 ) * 6,
          y = 0,
          w = medalWidth,
          h = kMax,
          image = "medals/MilitaryCross_gray",
        },
        NonUniformScaledImage
        {
          name = "medal8",
          x = ( medalWidth + 1 ) * 7,
          y = 0,
          w = medalWidth,
          h = kMax,
          image = "medals/CruxSolaris_gray",
        },
        NonUniformScaledImage
        {
          name = "medal9",
          x = ( medalWidth + 1 ) * 8,
          y = 0,
          w = medalWidth,
          h = kMax,
          image = "medals/SurvivalMedal_gray",
        },
      },

      -------------------------------------------

      DottedLabel
      {
        font = SoldierStatFont,
        name = "statap",
        x = stw * 0.04,
        y = stw * 0.7,
        w = kMax - stw * 0.04,
        h = stw * 0.045,
        left = "SEQ.TimeUnits",
        right = "undefined",
        leftcolor = BlackColor,
        dotscolor = WhiteColor,
        rightcolor = BlackColor,
        hidedots = true,
        fontScale = screenResolutionH * 0.014,

        ProgressBar
        {
          font = XenonautsDisabledFont,
          name = "progress",
          x = stw * 0.95 * 0.3,
          y = screenResolutionH * 0.002,
          w = stw * 0.95 * 0.6,
          h = kMax - 2,
          barheight = stw * 0.0275,
          min = 1,
          max = 100,
          barcolor = pbarcolor,
          barcolor2 = BarSecondColor,
          bgimage  = "uitextures/blackframe",
          bgimage  = "uitextures/blackframe",
          barimage = "uitextures/white",
          bgtilebordersize = 4,
          percent  = false,
        },
      },
      DottedLabel
      {
        font = SoldierStatFont,
        name = "statres",
        x = stw * 0.04,
        y = stw * 0.76,
        w = kMax - stw * 0.04,
        h = stw * 0.045,
        left = "SEQ.Resilence",
        right = "undefined",
        leftcolor = BlackColor,
        dotscolor = WhiteColor,
        rightcolor = BlackColor,
        hidedots = true,
        fontScale = screenResolutionH * 0.014,

        ProgressBar
        {
          font = XenonautsDisabledFont,
          name = "progress",
          x = stw * 0.95 * 0.3,
          y = screenResolutionH * 0.002,
          w = stw * 0.95 * 0.6,
          h = kMax - 2,
          barheight = stw * 0.0275,
          min = 1,
          max = 100,
          barcolor = pbarcolor,
          barcolor2 = BarSecondColor,
          bgimage  = "uitextures/blackframe",
          bgimage  = "uitextures/blackframe",
          barimage = "uitextures/white",
          bgtilebordersize = 4,
          percent  = false,
        },
      },
      DottedLabel
      {
        font = SoldierStatFont,
        name = "statstr",
        x = stw * 0.04,
        y = stw * 0.82,
        w = kMax - stw * 0.04,
        h = stw * 0.045,
        left = "SEQ.Strenght",
        right = "undefined",
        leftcolor = BlackColor,
        dotscolor = WhiteColor,
        rightcolor = BlackColor,
        hidedots = true,
        fontScale = screenResolutionH * 0.014,

        ProgressBar
        {
          font = XenonautsDisabledFont,
          name = "progress",
          x = stw * 0.95 * 0.3,
          y = screenResolutionH * 0.002,
          w = stw * 0.95 * 0.6,
          h = kMax - 2,
          barheight = stw * 0.0275,
          min = 1,
          max = 100,
          barcolor = pbarcolor,
          barcolor2 = BarSecondColor,
          bgimage  = "uitextures/blackframe",
          bgimage  = "uitextures/blackframe",
          barimage = "uitextures/white",
          bgtilebordersize = 4,
          percent  = false,
        },
      },
      DottedLabel
      {
        font = SoldierStatFont,
        name = "statacc",
        x = stw * 0.04,
        y = stw * 0.88,
        w = kMax - stw * 0.04,
        h = stw * 0.045,
        left = "SEQ.Accuracy",
        right = "undefined",
        leftcolor = BlackColor,
        dotscolor = WhiteColor,
        rightcolor = BlackColor,
        hidedots = true,
        fontScale = screenResolutionH * 0.014,

        ProgressBar
        {
          font = XenonautsDisabledFont,
          name = "progress",
          x = stw * 0.95 * 0.3,
          y = screenResolutionH * 0.002,
          w = stw * 0.95 * 0.6,
          h = kMax - 2,
          barheight = stw * 0.0275,
          min = 1,
          max = 100,
          barcolor = pbarcolor,
          barcolor2 = BarSecondColor,
          bgimage  = "uitextures/blackframe",
          bgimage  = "uitextures/blackframe",
          barimage = "uitextures/white",
          bgtilebordersize = 4,
          percent  = false,
        },
      },
      DottedLabel
      {
        font = SoldierStatFont,
        name = "statref",
        x = stw * 0.04,
        y = stw * 0.94,
        w = kMax - stw * 0.04,
        h = stw * 0.045,
        left = "SEQ.Reflexes",
        right = "undefined",
        leftcolor = BlackColor,
        dotscolor = WhiteColor,
        rightcolor = BlackColor,
        hidedots = true,
        fontScale = screenResolutionH * 0.014,

        ProgressBar
        {
          font = XenonautsDisabledFont,
          name = "progress",
          x = stw * 0.95 * 0.3,
          y = screenResolutionH * 0.002,
          w = stw * 0.95 * 0.6,
          h = kMax - 2,
          barheight = stw * 0.0275,
          min = 1,
          max = 100,
          barcolor = pbarcolor,
          barcolor2 = BarSecondColor,
          bgimage  = "uitextures/blackframe",
          bgimage  = "uitextures/blackframe",
          barimage = "uitextures/white",
          bgtilebordersize = 4,
          percent  = false,
        },
      },
      DottedLabel
      {
        font = SoldierStatFont,
        name = "statbrav",
        x = stw * 0.04,
        y = stw * 1.00,
        w = kMax - stw * 0.04,
        h = stw * 0.045,
        left = "SEQ.Bravery",
        right = "undefined",
        leftcolor = BlackColor,
        dotscolor = WhiteColor,
        rightcolor = BlackColor,
        hidedots = true,
        fontScale = screenResolutionH * 0.014,

        ProgressBar
        {
          font = XenonautsDisabledFont,
          name = "progress",
          x = stw * 0.95 * 0.3,
          y = screenResolutionH * 0.002,
          w = stw * 0.95 * 0.6,
          h = kMax - 2,
          barheight = stw * 0.0275,
          min = 1,
          max = 100,
          barcolor = pbarcolor,
          barcolor2 = BarSecondColor,
          bgimage  = "uitextures/blackframe",
          bgimage  = "uitextures/blackframe",
          barimage = "uitextures/white",
          bgtilebordersize = 4,
          percent  = false,
        },
      },

      DottedLabel
      {
        font = SoldierStatFont,
        name = "statmissions",
        name = "statmissions",
        x = stw * 0.04,
        y = stw * 1.10,
        w = kMax - stw * 0.04,
        h = stw * 0.045,
        left = "SEQ.STATMISSIONS",
        right = "undefined",
        leftcolor = BlackColor,
        dotscolor = BlackColor,
        rightcolor = BlackColor,
        fontScale = screenResolutionH * 0.014,
      },
      DottedLabel
      {
        font = SoldierStatFont,
        name = "statkills",
        x = stw * 0.04,
        y = stw * 1.16,
        w = kMax - stw * 0.04,
        h = stw * 0.045,
        left = "SEQ.STATKILLS",
        right = "undefined",
        leftcolor = BlackColor,
        dotscolor = BlackColor,
        rightcolor = BlackColor,
        fontScale = screenResolutionH * 0.014,
      },

      -------------------------------------------
      
      SetStyle( XenonautsInvisibleTiledButtonStyle ),
      TiledButton
      {
          name = "soldierdismissbutton",
          x = stw * 0.04,
          y = kMax - stw * 0.155,
          w = stw * 0.4,
          h = stw * 0.035,
  	      flags  = kHAlignLeft + kVAlignCenter,
			    fontScale = stw * 0.035,
		      bordersize = 1,
			    font   = SEQStatLinkFont,
          label = "SEQ.Dismiss",
  			  underlined = true,
    	      
          command = 
            function()
              OnDissmissSoldierPressed();
            end,
      },
      TiledButton
      {
          name = "relocatebutton",
          x = kMax - stw * 0.44,
          y = kMax - stw * 0.155,
          w = stw * 0.4,
          h = stw * 0.035,
  	      flags  = kHAlignRight + kVAlignCenter,
			    fontScale = stw * 0.035,
		      bordersize = 1,
			    font   = SEQStatLinkFont,
          label = "SEQ.Relocate",
  			  underlined = true,
    	      
          command = 
            function()            
              DoModal( "scripts/relocatedialog.lua" );
            end,
      },
      
      NonUniformScaledImage
      {
          x = 1,
          y = kMax - stw * 0.11,
          w = kMax - 1,
          h = 1,
          image = "uitextures/black",
          tint = Color( 0, 0, 0, 25 );
      },

      NonUniformScaledImage
      {
          x = stw / 2,
          y = kMax - stw * 0.11 + 1,
          w = 1,
          h = kMax - 1,
          image = "uitextures/black",
          tint = Color( 0, 0, 0, 25 );
      },

      SetStyle( XenonautsInvisibleTiledButtonStyle ),
      TiledButton
      {
        name = "prevsoldierbutton",
        x = 0,
        y = kMax - stw * 0.11 + 1,
        w = stw * 0.5,
        h = kMax,
        bordersize = 2,
        font = SEQSelectorFont,
        label = "SEQ.STATPREVSOLDIER",
        fontScale = stw * 0.045,
  	      
        command = 
          function()
            OnPrevSoldierPressed();
          end,
      },
      TiledButton
      {
        name = "nextsoldierbutton",
        x = stw * 0.5,
        y = kMax - stw * 0.11 + 1,
        w = kMax,
        h = kMax,
        bordersize = 2,
        font = SEQSelectorFont,
        label = "SEQ.STATNEXTSOLDIER",
        fontScale = stw * 0.045,
  	      
        command = 
          function()
            OnNextSoldierPressed();
          end,
      },
      
      -------------------------------------------

      ScalingText
      {
        name = "assigntext",
        x = stw * 0.04,
        y = stw * 0.603,
        w = kMax - stw * 0.025,
        h = stw * 0.04,
        flags = kHAlignLeft + kVAlignCenter,
        label = "SEQ.Assignment",
        font = SoldierStatFont,
        fontScale = screenResolutionH * 0.014,
      },
      
      ComboBox
      {
        name = "assigncombo",
        x = stw * 0.5,
        y = stw * 0.595,
        w = kMax - stw * 0.04,
        h = stw * 0.05,

        TiledImage
        {
          name = "listcontrolbg",
          x = 0,
          y = 0,
          w = kMax,
          h = kMax,
          image = "uitextures/white",
          tint = Color(22,22,22,255),

          ScalingText
          {
            font = SEQWhiteFont,
            name = "textlabel",
            x = 0,
            y = 0,
            w = kMax,
            h = kMax,
	          flags = kHAlignCenter + kVAlignCenter,
            label = "undefined",
            fontScale = -0.8,
          },
        },
        SetStyle( XenonautsInvisibleTiledButtonStyle ),
        TiledButton
        {      
          name = "combobutton",
          x = 0,
          y = 0,
          w = kMax,
          h = kMax,
          bordersize = 2,
          font = SoldierStatFont,
    	      
          command = 
            function()
            end,
        },
        TiledImage
        {
          name = "listcontrolbg",
          x = 0,
          y = stw * 0.05,
          w = kMax,
          h = stw / 2,
          image = "uitextures/soldiereqbutton",
          bordersize = 4,

          ListControl
          {
            name = "listcontrol",
            x = 0,
            y = 0,
            w = kMax,
            h = kMax,
            font = MediumSoldier,
			fontScale = screenResolutionH * 0.0013,
          
            TiledImage
            {
              name = "scrollbar",
              x = kMax - 9,
              y = 0,
              w = 0,
              h = kMax,
              image = "ui_screens/ui_research/scrollbarspeech",
              bordersize = 4,

              NonUniformScaledImage
              {
	              name  = "scrollbarBtn",
                x = 2,
                y = 2,
                w = 5,
                h = 5,
	              image = "ui_screens/ui_research/scrollbar_button",
              },
            },
          },
        },
      },
    },

    TiledImage
    {
	    name  = "assignment",
      x = 0,
      y = kMax - (ash * 1.03),
      w = asw,
      h = ash,
      image = "ui_screens/ui_stores/speechbubble",
      bordersize = 4,
      
      ListControl
      {
        name = "assignmentlist",
        x = asc * 0.10,
        y = ash * 0.04,
        w = asc * 0.8,
        h = ash * 0.92,
        font = SoldierListFont,
        fontScale = screenResolutionH * 0.014,
        thcolor = RedColor,
        hswl = true,
      
        TiledImage
        {
          name = "scrollbar",
          x = kMax - 9,
          y = 0,
          w = kMax,
          h = kMax,
          image = "ui_screens/ui_research/scrollbarspeech",
          tint = Color(192,192,192,255),
          bordersize = 4,

          NonUniformScaledImage
	        {
		        name  = "scrollbarBtn",
	          x = 2,
	          y = 2,
	          w = 5,
	          h = 5,
		        image = "ui_screens/ui_research/scrollbar_button",
	        },
        },
      },
      
      NonUniformScaledImage
      {
          x = asc,
          y = 1,
          w = 1,
          h = kMax - 1,
          image = "uitextures/black",
          tint = Color( 0, 0, 0, 25 );
      },
      
      ListControl
      {
        name = "soldierlist",
        x = asc + ash * 0.04,
        y = ash * 0.04,
        w = kMax - 3 * ash * 0.04 - 26,
        h = kMax - ash * 0.04,
        font = SoldierListFont,
        fontScale = screenResolutionH * 0.014,
		    thcolor = WhiteColor,
		    mcolor = WhiteColor,

        column1x = c1x,
        column1w = c1w,
        column2x = c2x,
        column2w = c2w,
        hswl = true,
      
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

      SetStyle( ArrowMoveUpButtonStyle ),
      NonUniformScaledButton
      {
        name  = "soldierlistmoveup",
        x = kMax - ash * 0.04 - 26,
        y = kMax / 2 - 20 - 39,
        w = 26,
        h = 39,
        command =
          function()
            SoldierListMove( -1 );
          end,
      },
      SetStyle( ArrowMoveDownButtonStyle ),
      NonUniformScaledButton
      {
        name  = "soldierlistmovedown",
        x = kMax - ash * 0.04 - 26,
        y = kMax / 2 + 20,
        w = 26,
        h = 39,
        command =
          function()
            SoldierListMove( 1 );
          end,
      },
    },

    TiledImage
    {
	    name  = "weaponselect",
      x = kMax - (wsw * 1.02),
      y = 20,
      w = wsw,
      h = wsh,
      image = "ui_screens/ui_stores/speechbubble",
      bordersize = 4,
      headersize = 23 * screenScaleY,
            
      BeginGroup(),
      SetStyle( CategoryButtonStyle ),

      TiledButton
      {
        name = "weapons",
        x = wsw * 0.07,
        y = wsw * 0.07,
        w = wsw * 0.375,
        h = wsw * 0.08,
        bordersize = 4,
        font = CatButtonFont,
        label = "SEQ.WEAPONS",
        fontScale = screenResolutionH * 0.014,
        overfontcolor = CatOverColor,
        downfontcolor = CatDownColor,
        outlineselected = true,
	      outline = 1,
  	      
        command = 
          function()
            OnWeaponsPressed();
          end,
      },
      TiledButton
      {
        name = "equipment",
        x = wsw * 0.55,
        y = wsw * 0.07,
        w = wsw * 0.375,
        h = wsw * 0.08,
        bordersize = 4,
        font = CatButtonFont,
        label = "SEQ.EQUIPMENT",
        fontScale = screenResolutionH * 0.014,
        overfontcolor = CatOverColor,
        downfontcolor = CatDownColor,
		outlineselected = true,
	      outline = 1,
  	      
        command = 
          function()
            OnEquipmentPressed();
          end,
      },

      Window
      {
        name = "weaponwindow";
        x = wsw * 0.04,
        y = wsw * 0.2,
        w = wsw * 0.94,
        h = wsh - wsw * 0.2 - wsw * 0.05,
        
        Window
        {
          name = "weaponfilter",
          x = 0,
          y = 0,
          w = kMax,
          h = kMax,

          BeginGroup(),
          SetStyle( CategoryButtonStyle ),

          TiledButton
          {
            name = "ballistics",
            x = 0,
            y = 0,
            w = wsw * 0.90 * 0.94 * 0.25,
            h = wsw * 0.07,
            bordersize = 4,
            font = CatButtonFont,
            label = "SEQ.BALLISTICS",
            fontScale = screenResolutionH * 0.012,
            overfontcolor = CatOverColor,
            downfontcolor = CatDownColor,
			outlineselected = true,
			outline = 1,
		  
            command = 
              function()
                OnBallisticsPressed();
              end,
          },
          TiledButton
          {
            name = "laser",
            x = Floor( wsw * 0.90 * 0.94 * 0.25 ) * 1 + Floor( wsw * 0.02 ) * 1,
            y = 0,
            w = wsw * 0.90 * 0.94 * 0.25,
            h = wsw * 0.07,
            bordersize = 4,
            font = CatButtonFont,
            label = "SEQ.LASERS",
            fontScale = screenResolutionH * 0.012,
            overfontcolor = CatOverColor,
            downfontcolor = CatDownColor,
			outlineselected			= true,
			outline = 1,
			
            command = 
              function()
                OnLasersPressed();
              end,
          },
          TiledButton
          {
            name = "plasma",
            x = Floor( wsw * 0.90 * 0.94 * 0.25 ) * 2 + Floor( wsw * 0.02 ) * 2,
            y = 0,
            w = wsw * 0.90 * 0.94 * 0.25,
            h = wsw * 0.07,
            bordersize = 4,
            font = CatButtonFont,
            downfontcolor = OrangeTextColor,
            label = "SEQ.PLASMAS",
            fontScale = screenResolutionH * 0.012,
            overfontcolor = CatOverColor,
            downfontcolor = CatDownColor,
			outlineselected = true,
			outline = 1,
			
            command = 
              function()
                OnPlasmasPressed();
              end,
          },
          TiledButton
          {
            name = "mag",
            x = Floor( wsw * 0.90 * 0.94 * 0.25 ) * 3 + Floor( wsw * 0.02 ) * 3,
            y = 0,
            w = wsw * 0.90 * 0.94 * 0.25,
            h = wsw * 0.07,
            bordersize = 4,
            font = CatButtonFont,
            downfontcolor = OrangeTextColor,
            label = "SEQ.MAGS",
            fontScale = screenResolutionH * 0.012,
            overfontcolor = CatOverColor,
            downfontcolor = CatDownColor,
			outlineselected = true,
			outline = 1, 
 
            command = 
              function()
                OnMAGsPressed();
              end,
          },
        },
       
        Window
        {
          name = "equipmentfilter",
          x = 0,
          y = 0,
          w = kMax,
          h = kMax,

          BeginGroup(),
          SetStyle( CategoryButtonStyle ),

          TiledButton
          {
            name = "grenades",
            x = 0,
            y = 0,
            w = wsw * 0.90 * 0.96 * 0.333333,
            h = wsw * 0.07,
            bordersize = 4,
            font = CatButtonFont,
            label = "SEQ.GRENADES",
            fontScale = wsw * 0.04,
            overfontcolor = CatOverColor,
            downfontcolor = CatDownColor,
			outlineselected = true,
			outline = 1,
			
            command = 
              function()
                OnGrenadesPressed();
              end,
          },
          TiledButton
          {
            name = "rockets",
            x = Floor( wsw * 0.90 * 0.96 * 0.333333 ) * 1 + Floor( wsw * 0.02 ) * 1,
            y = 0,
            w = wsw * 0.90 * 0.96 * 0.333333,
            h = wsw * 0.07,
            bordersize = 4,
            font = CatButtonFont,
            label = "SEQ.ROCKETS",
            fontScale = wsw * 0.04,
            overfontcolor = CatOverColor,
            downfontcolor = CatDownColor,
			outlineselected = true,
			outline = 1,
			
            command = 
              function()
                OnRocketsPressed();
              end,
          },
          TiledButton
          {
            name = "otherequipment",
            x = Floor( wsw * 0.90 * 0.96 * 0.333333 ) * 2 + Floor( wsw * 0.02 ) * 2,
            y = 0,
            w = wsw * 0.90 * 0.96 * 0.333333,
            h = wsw * 0.07,
            bordersize = 4,
            font = CatButtonFont,
            label = "SEQ.OTHER",
            fontScale = wsw * 0.04,
            overfontcolor = CatOverColor,
            downfontcolor = CatDownColor,
			outlineselected = true,
			outline = 1,
			
            command = 
              function()
                OnOtherPressed();
              end,
          },
        },
       
        ListControl
        {
          name = "weaponlist",
          x = 0,
          y = wsw * 0.1,
          w = kMax,
          h = kMax,
          font = MediumSoldier,
          fiw = wsw * 0.90,
          hswl = true,
        
			    TiledImage
			    {
			      name = "scrollbar",
			      x = kMax - 7,
			      y = 2,
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
    },

	ScalingText
	{
	  font = MedSmallSoldier,
	  name = "roleboxlabel",
	  x = 580 * screenScaleX,
	  y = 1.49 * Floor( 30 * screenScaleX ),
	  w = 70 * screenScaleY,
	  h = 50 * screenScaleY,
	  label = "SEQ.ROLEBOX",
	  fontScale = screenScaleY,
	  outline = 1,
	},		
	
    NonUniformScaledImage
    {
      name = "soldierrolebox",
      x = 580 * screenScaleX,
      w = 5 + 6 * Floor( 30 * screenScaleX ),
      y = 70 * screenScaleY,
      h = 220 * 0.25 * screenScaleY,
      image = "uitextures/white",
      tint = Color( 120, 134, 143, 255 ),

      SetStyle( XenonautsRoleButtonStyle ),
      NonUniformScaledButton
      {      
        name  = "soldierrolebutton",
        x = 5,
        y = 5,
        w = 220 * 0.25 * screenScaleY - 10,
        h = kMax - 5,
        command = 
          function()
            RoleClicked();
          end,
      },
    
      NonUniformScaledImage
      {
        x = 220 * 0.25 * screenScaleY,
        y = 5,
        w = kMax - 5,
        h = ( 220 * 0.25 * screenScaleY ) / 2 - 5,
        image = "uitextures/white",
        tint = Color( 58, 65, 71, 255 ),
      },
    
      ScalingText
      {
        font = XenonautsLabelFontMedium,
        name = "soldierrolename",
        x = 220 * 0.25 * screenScaleY,
        y = 5,
        w = kMax - 5,
        h = ( 220 * 0.25 * screenScaleY ) / 2 - 5,
	      flags = kHAlignCenter + kVAlignCenter,
        label = "Undefined",
        fontScale = screenScaleY,
        outline = 1,
        command = 
          function()
	          RoleClicked();
          end,
      },
      ScalingText
      {
        font = XenonautsLabelFontMediumBlack,
        name = "static",
        x = 220 * 0.25 * screenScaleY,
        y = ( 220 * 0.25 * screenScaleY ) / 2,
        w = kMax - 5,
        h = kMax - 5,
	      flags = kHAlignCenter + kVAlignCenter,
        label = "SEQ.Role.EquipDefault",
        fontScale = screenScaleY * 0.7,
        underlined = true,
		mouseover = true,
		mouseovercolor = WhiteColor,
        command = 
          function()
	          EquipLoadout();
          end,
      },
    },

    InventoryContainer
    {
	    name  = "backpack",
      x = 610 * screenScaleX,
      y = 145 * screenScaleY,
      w = 10 + 5 * Floor( 30 * screenScaleX ),
      h = 10 + 5 * Floor( 30 * screenScaleX ) + 22 * screenScaleY,
	    headimage = "uitextures/sequip/frametoptrans",
	    bodyimage = "uitextures/sequip/framebottomtrans2",
      bordersize = 2,
      headersize = 26 * screenScaleY,
      location = 1,
      
      ScalingText
      {
        font = MedSmallSoldier,
        name = "static",
        x = 5,
        y = 17 * screenScaleY,
        w = kMax,
        h = 10 * screenScaleY,
        fontScale = screenScaleY,
  	    flags = kHAlignLeft + kVAlignBottom,
        label = "SEQ.BACKPACK",
        outline = 1,
      },
      
      -- Line 1
      InventorySlot
      {
	      name  = "slot1_1",
        x = 5  + 0 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 0 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/centertopleft",
        bordersize = 3,
      },
      InventorySlot
      {
	      name  = "slot1_2",
        x = 5  + 1 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 0 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/centertop",
        bordersize = 3,
      },
      InventorySlot
      {
	      name  = "slot1_3",
        x = 5  + 2 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 0 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/centertop",
        bordersize = 3,
      },
      InventorySlot
      {
	      name  = "slot1_4",
        x = 5  + 3 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 0 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/centertop",
        bordersize = 3,
      },
      InventorySlot
      {
	      name  = "slot1_5",
        x = 5  + 4 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 0 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/centertopright",
        bordersize = 3,
      },

      -- Line 2
      InventorySlot
      {
	      name  = "slot2_1",
        x = 5  + 0 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 1 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/centerleft",
        bordersize = 3,
      },
      InventorySlot
      {
	      name  = "slot2_2",
        x = 5  + 1 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 1 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/center",
        bordersize = 3,
      },
      InventorySlot
      {
	      name  = "slot2_3",
        x = 5  + 2 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 1 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/center",
        bordersize = 3,
      },
      InventorySlot
      {
	      name  = "slot2_4",
        x = 5  + 3 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 1 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/center",
        bordersize = 3,
      },
      InventorySlot
      {
	      name  = "slot2_5",
        x = 5  + 4 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 1 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/centerright",
        bordersize = 3,
      },

      -- Line 3
      InventorySlot
      {
	      name  = "slot3_1",
        x = 5  + 0 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 2 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/centerleft",
        bordersize = 3,
      },
      InventorySlot
      {
	      name  = "slot3_2",
        x = 5  + 1 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 2 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/center",
        bordersize = 3,
      },
      InventorySlot
      {
	      name  = "slot3_3",
        x = 5  + 2 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 2 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/center",
        bordersize = 3,
      },
      InventorySlot
      {
	      name  = "slot3_4",
        x = 5  + 3 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 2 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/center",
        bordersize = 3,
      },
      InventorySlot
      {
	      name  = "slot3_5",
        x = 5  + 4 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 2 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/centerright",
        bordersize = 3,
      },

      -- Line 4
      InventorySlot
      {
	      name  = "slot4_1",
        x = 5  + 0 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 3 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/centerleft",
        bordersize = 3,
      },
      InventorySlot
      {
	      name  = "slot4_2",
        x = 5  + 1 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 3 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/center",
        bordersize = 3,
      },
      InventorySlot
      {
	      name  = "slot4_3",
        x = 5  + 2 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 3 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/center",
        bordersize = 3,
      },
      InventorySlot
      {
	      name  = "slot4_4",
        x = 5  + 3 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 3 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/center",
        bordersize = 3,
      },
      InventorySlot
      {
	      name  = "slot4_5",
        x = 5  + 4 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 3 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/centerright",
        bordersize = 3,
      },

      -- Line 5
      InventorySlot
      {
	      name  = "slot5_1",
        x = 5  + 0 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 4 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/centerbottomleft",
        bordersize = 3,
      },
      InventorySlot
      {
	      name  = "slot5_2",
        x = 5  + 1 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 4 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/centerbottom",
        bordersize = 3,
      },
      InventorySlot
      {
	      name  = "slot5_3",
        x = 5  + 2 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 4 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/centerbottom",
        bordersize = 3,
      },
      InventorySlot
      {
	      name  = "slot5_4",
        x = 5  + 3 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 4 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/centerbottom",
        bordersize = 3,
      },
      InventorySlot
      {
	      name  = "slot5_5",
        x = 5  + 4 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 4 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/centerbottomright",
        bordersize = 3,
      },
    },
    
    InventoryContainer
    {
	    name  = "belt",
      x = 610 * screenScaleX,
      y = 140 * screenScaleY + 160 * screenScaleX + 22 * screenScaleY + 5,
      w = 10 + 5 * Floor( 30 * screenScaleX ),
      h = 10 + 2 * Floor( 30 * screenScaleX ) + 22 * screenScaleY,
	    image = "uitextures/titledframe",
	    headimage = "uitextures/sequip/frametoptrans",
	    bodyimage = "uitextures/sequip/framebottomtrans2",
      bordersize = 2,
      headersize = 27 * screenScaleY,
      location = 2;
      
      ScalingText
      {
        font = MedSmallSoldier,
        name = "static",
        x = 5,
        y = 17 * screenScaleY,
        w = kMax,
        h = 10 * screenScaleY,
        fontScale = screenScaleY,
  	    flags = kHAlignLeft + kVAlignBottom,
        label = "SEQ.BELT",
        outline = 1,
      },

      -- Line 1
      InventorySlot
      {
	      name  = "slot1_1",
        x = 5  + 0 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 0 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/centerend",
        bordersize = 3,
      },
      InventorySlot
      {
	      name  = "slot1_2",
        x = 5  + 1 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 0 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/centertopbottom",
        bordersize = 3,
      },
      InventorySlot
      {
	      name  = "slot1_3",
        x = 5  + 2 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 0 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/centertop",
        bordersize = 3,
      },
      InventorySlot
      {
	      name  = "slot1_4",
        x = 5  + 3 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 0 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/centertop",
        bordersize = 3,
      },
      InventorySlot
      {
	      name  = "slot1_5",
        x = 5  + 4 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 0 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/centertopright",
        bordersize = 3,
      },

      -- Line 2
      InventorySlot
      {
	      name  = "slot2_3",
        x = 5  + 2 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 1 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/centerbottomleft",
        bordersize = 3,
      },
      InventorySlot
      {
	      name  = "slot2_4",
        x = 5  + 3 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 1 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/centerbottom",
        bordersize = 3,
      },
      InventorySlot
      {
	      name  = "slot2_5",
        x = 5  + 4 * Floor( 30 * screenScaleX ),
        y = 23 * screenScaleY + 5 + 1 * Floor( 30 * screenScaleX ),
        w = Floor( 30 * screenScaleX ),
        h = Floor( 30 * screenScaleX ),
	      image = "uitextures/sequip/centerbottomright",
        bordersize = 3,
      },
    },
  }
}

SetButtonToggleState( "weapons", true );
SetWindowVisible( "callsignedit", false );
OnWeaponsPressed();
