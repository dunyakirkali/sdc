{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 810.0, 0.0, 877.0, 601.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
		"bglocked" : 0,
		"defrect" : [ 193.0, 140.0, 989.0, 582.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t open l close",
					"id" : "obj-36",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 32.0, 252.0, 81.0, 20.0 ],
					"numoutlets" : 3,
					"outlettype" : [ "open", "", "close" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s videoDevice",
					"id" : "obj-33",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 32.0, 282.0, 85.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend vdevice",
					"id" : "obj-23",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 32.0, 222.0, 99.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Source Information:\ninput :\nsize: ",
					"linecount" : 3,
					"presentation_linecount" : 3,
					"id" : "obj-38",
					"presentation_rect" : [ 31.0, 176.0, 150.0, 48.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 20.0, 337.0, 150.0, 48.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend append",
					"id" : "obj-43",
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 32.0, 173.0, 95.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r videoFeedDevices",
					"id" : "obj-42",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"patching_rect" : [ 32.0, 147.0, 117.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t getvdevlist",
					"id" : "obj-37",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 25.0, 95.0, 74.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "s videoDevice",
					"id" : "obj-35",
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 25.0, 120.0, 85.0, 20.0 ],
					"numoutlets" : 0,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"id" : "obj-34",
					"presentation_rect" : [ 35.0, 70.0, 100.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 25.0, 70.0, 100.0, 20.0 ],
					"numoutlets" : 3,
					"presentation" : 1,
					"outlettype" : [ "", "", "int" ],
					"text" : "Detect Sources",
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r videoFeedRawPreview",
					"id" : "obj-31",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"patching_rect" : [ 270.0, 3.0, 141.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.fpsgui",
					"id" : "obj-30",
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 196.0, 273.0, 60.0, 35.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r visualVideoFeedRotate",
					"id" : "obj-25",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"patching_rect" : [ 795.0, 224.0, 142.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r visualVideoFeedSaturation",
					"id" : "obj-28",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"patching_rect" : [ 784.0, 165.0, 161.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r visualVideoFeedHue",
					"id" : "obj-27",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"patching_rect" : [ 784.0, 108.0, 128.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r visualVideoFeedBrightness",
					"id" : "obj-26",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"patching_rect" : [ 784.0, 44.0, 163.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r videoFeedPreview",
					"id" : "obj-9",
					"fontsize" : 12.0,
					"numinlets" : 0,
					"patching_rect" : [ 368.0, 534.0, 117.0, 20.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.fpsgui",
					"id" : "obj-24",
					"fontsize" : 11.595187,
					"numinlets" : 1,
					"patching_rect" : [ 270.0, 539.0, 60.0, 35.0 ],
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"id" : "obj-22",
					"presentation_rect" : [ 15.0, 120.0, 154.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 32.0, 197.0, 154.0, 20.0 ],
					"numoutlets" : 3,
					"presentation" : 1,
					"types" : [  ],
					"items" : "Acer Crystal Eye webcam",
					"outlettype" : [ "int", "", "" ],
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-21",
					"numinlets" : 1,
					"patching_rect" : [ 15.0, 540.0, 25.0, 25.0 ],
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-20",
					"numinlets" : 0,
					"patching_rect" : [ 15.0, 15.0, 25.0, 25.0 ],
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"id" : "obj-19",
					"presentation_rect" : [ 270.0, 285.0, 320.0, 240.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 270.0, 285.0, 320.0, 240.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jit.pwindow",
					"id" : "obj-18",
					"presentation_rect" : [ 270.0, 30.0, 320.0, 240.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 270.0, 30.0, 320.0, 240.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Pos y",
					"id" : "obj-17",
					"presentation_rect" : [ 615.0, 495.0, 150.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 615.0, 495.0, 150.0, 20.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Height",
					"id" : "obj-16",
					"presentation_rect" : [ 615.0, 375.0, 150.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 615.0, 375.0, 150.0, 20.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Pos x",
					"id" : "obj-15",
					"presentation_rect" : [ 615.0, 435.0, 150.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 615.0, 435.0, 150.0, 20.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Width",
					"id" : "obj-14",
					"presentation_rect" : [ 615.0, 315.0, 150.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 615.0, 315.0, 150.0, 20.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Rotate",
					"id" : "obj-13",
					"presentation_rect" : [ 615.0, 255.0, 150.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 615.0, 255.0, 150.0, 20.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Saturation",
					"id" : "obj-12",
					"presentation_rect" : [ 615.0, 195.0, 150.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 615.0, 195.0, 150.0, 20.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Hue\n",
					"id" : "obj-11",
					"presentation_rect" : [ 615.0, 135.0, 150.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 615.0, 135.0, 150.0, 20.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Brightness",
					"id" : "obj-10",
					"presentation_rect" : [ 615.0, 75.0, 150.0, 20.0 ],
					"fontsize" : 12.0,
					"numinlets" : 1,
					"patching_rect" : [ 615.0, 75.0, 150.0, 20.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"fontname" : "Arial"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"id" : "obj-5",
					"presentation_rect" : [ 615.0, 465.0, 160.0, 26.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 615.0, 465.0, 160.0, 26.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "" ],
					"orientation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"id" : "obj-6",
					"presentation_rect" : [ 615.0, 405.0, 160.0, 26.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 615.0, 405.0, 160.0, 26.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "" ],
					"orientation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"id" : "obj-7",
					"presentation_rect" : [ 615.0, 345.0, 160.0, 26.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 615.0, 345.0, 160.0, 26.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "" ],
					"orientation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"id" : "obj-8",
					"presentation_rect" : [ 615.0, 285.0, 160.0, 26.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 615.0, 285.0, 160.0, 26.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "" ],
					"orientation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"size" : 720.0,
					"id" : "obj-3",
					"presentation_rect" : [ 615.0, 225.0, 160.0, 26.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 615.0, 226.0, 160.0, 26.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "" ],
					"orientation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"size" : 100.0,
					"id" : "obj-4",
					"presentation_rect" : [ 615.0, 165.0, 160.0, 26.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 615.0, 165.0, 160.0, 26.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "" ],
					"orientation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"size" : 180.0,
					"id" : "obj-2",
					"presentation_rect" : [ 615.0, 105.0, 160.0, 26.0 ],
					"numinlets" : 1,
					"min" : -180.0,
					"patching_rect" : [ 615.0, 105.0, 160.0, 26.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "" ],
					"orientation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "slider",
					"size" : 100.0,
					"id" : "obj-1",
					"presentation_rect" : [ 615.0, 45.0, 160.0, 26.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 615.0, 45.0, 160.0, 26.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"outlettype" : [ "" ],
					"orientation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"id" : "obj-29",
					"presentation_rect" : [ 7.0, 52.0, 185.0, 169.0 ],
					"numinlets" : 1,
					"patching_rect" : [ 17.0, 48.0, 180.0, 350.0 ],
					"numoutlets" : 0,
					"presentation" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 2 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-23", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-22", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
