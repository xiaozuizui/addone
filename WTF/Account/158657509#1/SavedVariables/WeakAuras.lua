
WeakAurasSaved = {
	["dynamicIconCache"] = {
		["净化邪恶"] = {
			[204213] = 236216,
		},
		["阴暗面之力"] = {
			[198069] = 1394892,
		},
		["渐隐术"] = {
			[586] = 135994,
		},
		["全神贯注"] = {
			[47536] = 237548,
		},
		["教派分歧"] = {
			[214621] = 463285,
		},
		["暗言术：痛"] = {
			[589] = 136207,
		},
		["真言术：韧"] = {
			[21562] = 135987,
		},
	},
	["displays"] = {
		["群体驱散CD-戒律"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["custom_hide"] = "timed",
						["type"] = "status",
						["duration"] = "1",
						["unevent"] = "auto",
						["use_showOn"] = true,
						["spellName"] = 32375,
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
							"奥术飞弹！", -- [1]
						},
						["realSpellName"] = "群体驱散",
						["use_spellName"] = true,
						["inverse"] = true,
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 32375,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["progressPrecision"] = 0,
			["internalVersion"] = 9,
			["xOffset"] = 0,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["displayIcon"] = "136096",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["parent"] = "MS技能监控-戒律",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 20,
					["multi"] = {
						[21] = true,
						[19] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["stickyDuration"] = false,
			["config"] = {
			},
			["text2Font"] = "Friz Quadrata TT",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				0.694117647058824, -- [1]
				0.396078431372549, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["width"] = 40,
			["text2Enabled"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text1Font"] = "Friz Quadrata TT",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 24,
			["selfPoint"] = "CENTER",
			["text1"] = "%p",
			["text2"] = "%p",
			["icon"] = true,
			["zoom"] = 0,
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "群体驱散CD-戒律",
			["glow"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["useglowColor"] = false,
			["uid"] = "UKPV(EosmX4",
			["inverse"] = true,
			["text1Containment"] = "INSIDE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["真言术：耀计时2"] = {
			["textFlags"] = "OUTLINE",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 180,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0.19607843137255, -- [1]
				0.011764705882353, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["model_path"] = "SPELLS/Jinrokh_ThunderTroll_ElectricWater_State.m2",
			["barColor"] = {
				0.11764705882353, -- [1]
				0.11764705882353, -- [2]
				0.11764705882353, -- [3]
				0.96000000089407, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["sparkOffsetY"] = 0,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["sequence"] = 1,
			["timerColor"] = {
				1, -- [1]
				0.87450980392157, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["scale"] = 1,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "Aluminium",
			["textFont"] = "Friz Quadrata TT",
			["model_z"] = 0,
			["spark"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["uid"] = "L3uGFTqqRWo",
			["textColor"] = {
				0.670588235294118, -- [1]
				0.968627450980392, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["color"] = {
			},
			["authorOptions"] = {
			},
			["model_x"] = 0,
			["config"] = {
			},
			["selfPoint"] = "CENTER",
			["sparkRotationMode"] = "MANUAL",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["do_sound"] = true,
					["sound_path"] = "Interface\\AddOns\\Media\\Slice n Dice.ogg",
					["sound"] = " custom",
					["sound_channel"] = "Dialog",
				},
				["init"] = {
				},
			},
			["displayTextLeft"] = " %p",
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["itemName"] = 0,
						["use_genericShowOn"] = true,
						["names"] = {
							"吸血鬼之触", -- [1]
						},
						["powertype"] = 0,
						["ownOnly"] = true,
						["genericShowOn"] = "showOnCooldown",
						["use_unit"] = true,
						["spellName"] = 194509,
						["remaining"] = "60",
						["use_powertype"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "status",
						["use_remaining"] = false,
						["use_trackcharge"] = true,
						["custom_hide"] = "timed",
						["charges_operator"] = ">=",
						["trackcharge"] = "2",
						["event"] = "Cooldown Progress (Spell)",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["charges"] = "1",
						["use_itemName"] = true,
						["unevent"] = "auto",
						["realSpellName"] = "真言术：耀",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["use_charges"] = false,
						["subeventPrefix"] = "SPELL",
						["remaining_operator"] = "<",
						["unit"] = "target",
						["use_specific_unit"] = false,
					},
					["untrigger"] = {
						["spellName"] = 194509,
					},
				}, -- [1]
				["disjunctive"] = "all",
				["customTriggerLogic"] = "\n\n",
				["activeTriggerMode"] = 1,
			},
			["auto"] = true,
			["internalVersion"] = 9,
			["advance"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["sparkMirror"] = false,
			["stickyDuration"] = true,
			["borderBackdrop"] = "Solid",
			["borderOffset"] = 5,
			["icon"] = true,
			["anchorFrameType"] = "SELECTFRAME",
			["height"] = 16,
			["timerFlags"] = "None",
			["timer"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				0.011764705882353, -- [1]
				0, -- [2]
				0.35686274509804, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["sparkHidden"] = "NEVER",
			["borderInset"] = 13,
			["displayTextRight"] = "%n",
			["sparkWidth"] = 5,
			["border"] = false,
			["anchorFrameFrame"] = "WeakAuras:真言术：耀背景材质2",
			["modelIsUnit"] = false,
			["borderSize"] = 7,
			["sparkColor"] = {
				0.635294117647059, -- [1]
				0.556862745098039, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon_side"] = "LEFT",
			["textSize"] = 15,
			["borderInFront"] = false,
			["sparkHeight"] = 50,
			["borderColor"] = {
				0, -- [1]
				0.007843137254902, -- [2]
				0.15294117647059, -- [3]
				1, -- [4]
			},
			["borderEdge"] = "Blizzard Party",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 50,
			["useAdjustededMax"] = false,
			["id"] = "真言术：耀计时2",
			["model_y"] = 0,
			["frameStrata"] = 1,
			["width"] = 124.5,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["customTextUpdate"] = "update",
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL_INVERSE",
			["conditions"] = {
			},
			["stacksFont"] = "Friz Quadrata TT",
			["parent"] = "戒律监控",
		},
		["纯净术计时"] = {
			["textFlags"] = "OUTLINE",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 180,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0.19607843137255, -- [1]
				0.011764705882353, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["model_path"] = "SPELLS/Jinrokh_ThunderTroll_ElectricWater_State.m2",
			["barColor"] = {
				0.11764705882353, -- [1]
				0.11764705882353, -- [2]
				0.11764705882353, -- [3]
				0.96000000089407, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["sparkOffsetY"] = 0,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = true,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["sequence"] = 1,
			["timerColor"] = {
				1, -- [1]
				0.87450980392157, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["scale"] = 1,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "Aluminium",
			["textFont"] = "Friz Quadrata TT",
			["model_z"] = 0,
			["spark"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["uid"] = "JbtDfNAPPji",
			["textColor"] = {
				0.670588235294118, -- [1]
				0.968627450980392, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["color"] = {
			},
			["authorOptions"] = {
			},
			["model_x"] = 0,
			["config"] = {
			},
			["sparkTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Moon",
			["sparkRotationMode"] = "MANUAL",
			["auto"] = true,
			["textSize"] = 15,
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
							"吸血鬼之触", -- [1]
						},
						["remaining"] = "60",
						["duration"] = "1",
						["use_specific_unit"] = false,
						["use_unit"] = true,
						["ownOnly"] = true,
						["use_powertype"] = true,
						["spellName"] = 527,
						["use_remaining"] = false,
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["use_itemName"] = true,
						["remaining_operator"] = "<",
						["realSpellName"] = "纯净术",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unit"] = "target",
						["custom_hide"] = "timed",
						["debuffType"] = "HARMFUL",
						["powertype"] = 0,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["spellName"] = 527,
					},
				}, -- [1]
				["disjunctive"] = "all",
				["customTriggerLogic"] = "\n\n",
				["activeTriggerMode"] = 1,
			},
			["borderBackdrop"] = "Solid",
			["internalVersion"] = 9,
			["advance"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["sparkMirror"] = false,
			["stickyDuration"] = true,
			["borderOffset"] = 5,
			["selfPoint"] = "CENTER",
			["zoom"] = 0,
			["anchorFrameType"] = "SELECTFRAME",
			["height"] = 16,
			["timerFlags"] = "None",
			["backdropColor"] = {
				0.011764705882353, -- [1]
				0, -- [2]
				0.35686274509804, -- [3]
				1, -- [4]
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["icon"] = true,
			["id"] = "纯净术计时",
			["sparkWidth"] = 5,
			["displayTextRight"] = "%n",
			["modelIsUnit"] = false,
			["border"] = false,
			["anchorFrameFrame"] = "WeakAuras:纯净术背景材质",
			["borderInset"] = 13,
			["borderInFront"] = false,
			["borderSize"] = 7,
			["icon_side"] = "LEFT",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["do_sound"] = true,
					["sound_path"] = "Interface\\AddOns\\Media\\Slice n Dice.ogg",
					["sound"] = " custom",
					["sound_channel"] = "Dialog",
				},
				["init"] = {
				},
			},
			["displayTextLeft"] = " %p",
			["sparkHeight"] = 50,
			["sparkColor"] = {
				0.635294117647059, -- [1]
				0.556862745098039, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderEdge"] = "Blizzard Party",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 50,
			["borderColor"] = {
				0, -- [1]
				0.007843137254902, -- [2]
				0.15294117647059, -- [3]
				1, -- [4]
			},
			["sparkHidden"] = "NEVER",
			["model_y"] = 0,
			["frameStrata"] = 1,
			["width"] = 250,
			["timer"] = false,
			["customTextUpdate"] = "update",
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL_INVERSE",
			["conditions"] = {
			},
			["stacksFont"] = "Friz Quadrata TT",
			["parent"] = "戒律监控",
		},
		["全神贯注持续"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["customText"] = "function(expirationTime)\n    local remaining = expirationTime - GetTime()\n    if remaining <60 then\n        return math.floor(remaining)\n    else\n        return \"\"\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["ownOnly"] = true,
						["use_unit"] = true,
						["buffShowOn"] = "showOnActive",
						["type"] = "aura",
						["unevent"] = "auto",
						["use_showOn"] = true,
						["spellName"] = 33076,
						["event"] = "Action Usable",
						["custom_hide"] = "timed",
						["realSpellName"] = "愈合祷言",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
						["names"] = {
							"全神贯注", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 33076,
					},
				}, -- [1]
				["disjunctive"] = "all",
				["customTriggerLogic"] = "\n\n",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 9,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
					["do_sound"] = true,
					["sound"] = " custom",
					["sound_path"] = "Interface\\AddOns\\Media\\Light's Hammer.ogg",
					["sound_channel"] = "Dialog",
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["selfPoint"] = "CENTER",
			["stickyDuration"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["glow"] = true,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["useglowColor"] = false,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 8,
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["text1Containment"] = "INSIDE",
			["cooldownTextEnabled"] = false,
			["config"] = {
			},
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				0.952941176470588, -- [2]
				0.0862745098039216, -- [3]
				1, -- [4]
			},
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["width"] = 40,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Enabled"] = false,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 24,
			["parent"] = "MS技能监控-戒律",
			["text1"] = "%p",
			["text1Font"] = "Friz Quadrata TT",
			["text2"] = "%p",
			["zoom"] = 0,
			["auto"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["id"] = "全神贯注持续",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["desaturate"] = false,
			["uid"] = "xRp(kIlkUbH",
			["inverse"] = true,
			["authorOptions"] = {
			},
			["conditions"] = {
			},
			["cooldown"] = true,
			["text1Enabled"] = true,
		},
		["奥术洪流CD-戒律"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["duration"] = "1",
						["custom_hide"] = "timed",
						["charges_operator"] = "==",
						["type"] = "status",
						["spellName"] = 232633,
						["unevent"] = "auto",
						["use_showOn"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["debuffType"] = "HELPFUL",
						["realSpellName"] = "奥术洪流",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["charges"] = "0",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 232633,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["selfPoint"] = "CENTER",
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["preset"] = "grow",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["text1Containment"] = "INSIDE",
			["internalVersion"] = 9,
			["authorOptions"] = {
			},
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.694117647058824, -- [1]
								0.396078431372549, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "text1Color",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [2]
			},
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["icon"] = true,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["single"] = "BloodElf",
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 3,
					["multi"] = {
						[8] = true,
						[3] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["use_name"] = false,
				["use_race"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["stickyDuration"] = false,
			["config"] = {
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				0.972549019607843, -- [2]
				0.172549019607843, -- [3]
				1, -- [4]
			},
			["width"] = 40,
			["text2Enabled"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["useglowColor"] = false,
			["text1Font"] = "Friz Quadrata TT",
			["text2FontSize"] = 24,
			["text1FontFlags"] = "OUTLINE",
			["text1"] = "%p",
			["text2"] = "%p",
			["progressPrecision"] = 0,
			["zoom"] = 0,
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "奥术洪流CD-戒律",
			["text2Font"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["glow"] = false,
			["uid"] = "hw7dk1or)9x",
			["inverse"] = true,
			["parent"] = "MS技能监控-戒律",
			["displayIcon"] = "609815",
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["福音"] = {
			["glow"] = false,
			["text1FontSize"] = 16,
			["parent"] = "MS技能监控-戒律",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["text1Enabled"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["preset"] = "grow",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["progressPrecision"] = 0,
			["authorOptions"] = {
			},
			["cooldownTextEnabled"] = true,
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["displayIcon"] = 135907,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "235966",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["duration"] = "1",
						["names"] = {
						},
						["use_absorbMode"] = true,
						["custom_hide"] = "timed",
						["ownOnly"] = true,
						["type"] = "status",
						["spellName"] = 246287,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["name"] = "维伦的未来预言",
						["event"] = "Cooldown Progress (Spell)",
						["use_spellId"] = true,
						["realSpellName"] = "福音",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["fullscan"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 246287,
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 21,
					["multi"] = {
						[3] = true,
						[13] = true,
						[8] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["actions"] = {
				["start"] = {
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\sonar.ogg",
					["do_sound"] = false,
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["config"] = {
			},
			["internalVersion"] = 9,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				0.694117647058824, -- [1]
				0.396078431372549, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["width"] = 40,
			["text2Enabled"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["text1Font"] = "Friz Quadrata TT",
			["text2FontSize"] = 24,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1"] = "%p",
			["zoom"] = 0,
			["desaturate"] = false,
			["text2"] = "%p",
			["auto"] = true,
			["xOffset"] = 0,
			["id"] = "福音",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "Y7l9)gTwa)U",
			["inverse"] = true,
			["text1Containment"] = "INSIDE",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 2,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["text2Point"] = "CENTER",
		},
		["神圣之星CD-戒律"] = {
			["glow"] = false,
			["text1FontSize"] = 16,
			["parent"] = "MS技能监控-戒律",
			["customText"] = "function(expirationTime)\n    local remaining = expirationTime - GetTime()\n    if remaining <60 then\n        return math.floor(remaining)\n    else\n        return \"\"\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["text1Enabled"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "197030",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
							"圣洁", -- [1]
						},
						["use_showgcd"] = true,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["spellName"] = 110744,
						["ownOnly"] = true,
						["type"] = "status",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["custom_hide"] = "timed",
						["event"] = "Cooldown Progress (Spell)",
						["spellIds"] = {
						},
						["realSpellName"] = "神圣之星",
						["use_spellId"] = true,
						["name"] = "圣洁",
						["use_spellName"] = true,
						["unevent"] = "auto",
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
						["fullscan"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 110744,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)   \n    return t[1]\nend",
				["activeTriggerMode"] = 1,
			},
			["text2Point"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["displayIcon"] = 1060982,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["desaturate"] = false,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 17,
					["multi"] = {
						[17] = true,
						[18] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["config"] = {
			},
			["xOffset"] = 0,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["width"] = 40,
			["alpha"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["frameStrata"] = 1,
			["text2FontSize"] = 24,
			["text1FontFlags"] = "OUTLINE",
			["text1"] = "%p",
			["zoom"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["auto"] = true,
			["text1Color"] = {
				0.694117647058824, -- [1]
				0.396078431372549, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "神圣之星CD-戒律",
			["stickyDuration"] = false,
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextEnabled"] = false,
			["uid"] = "hdZtSaUE(U(",
			["inverse"] = true,
			["authorOptions"] = {
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["internalVersion"] = 9,
		},
		["教派分歧CD"] = {
			["glow"] = false,
			["text1FontSize"] = 16,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customText"] = "function(expirationTime)\n    local remaining = expirationTime - GetTime()\n    if remaining <60 then\n        return math.floor(remaining)\n    else\n        return \"\"\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["parent"] = "MS技能监控-戒律",
			["text2Font"] = "Friz Quadrata TT",
			["stickyDuration"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["xOffset"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["desaturate"] = false,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 3,
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_name"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
			},
			["cooldownTextEnabled"] = false,
			["internalVersion"] = 9,
			["config"] = {
			},
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				0.694117647058824, -- [1]
				0.396078431372549, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["width"] = 40,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text2Enabled"] = false,
			["text1Font"] = "Friz Quadrata TT",
			["text2FontSize"] = 24,
			["authorOptions"] = {
			},
			["text1"] = "%p",
			["text1Containment"] = "INSIDE",
			["zoom"] = 0,
			["text2"] = "%p",
			["auto"] = true,
			["text1FontFlags"] = "MONOCHROME",
			["id"] = "教派分歧CD",
			["text2Point"] = "CENTER",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["uid"] = ")vO6(FIhNkF",
			["inverse"] = true,
			["progressPrecision"] = 0,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = true,
						["custom_hide"] = "timed",
						["type"] = "status",
						["unevent"] = "auto",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["duration"] = "1",
						["realSpellName"] = "教派分歧",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 214621,
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 214621,
					},
				}, -- [1]
				["disjunctive"] = "all",
				["customTriggerLogic"] = "function(t)   \n    return (t[1] and t[2]) or t[3]   \nend",
				["activeTriggerMode"] = 1,
			},
		},
		["暗影魔/摧心魔CD-戒律"] = {
			["glow"] = false,
			["text1FontSize"] = 16,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["cooldownSwipe"] = true,
			["parent"] = "MS技能监控-戒律",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "200174",
						["duration"] = "21",
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["remaining"] = "168",
						["subeventPrefix"] = "SPELL",
						["unit"] = "player",
						["remaining_operator"] = "<=",
						["use_remaining"] = false,
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["type"] = "status",
						["name"] = "摧心魔",
						["unevent"] = "auto",
						["use_showOn"] = true,
						["use_spellName"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["use_genericShowOn"] = true,
						["realSpellName"] = "暗影魔",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["spellName"] = 34433,
						["debuffType"] = "HELPFUL",
						["sourceUnit"] = "player",
						["names"] = {
						},
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 34433,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1]\nend\n\n\n\n",
				["activeTriggerMode"] = -10,
			},
			["text2Point"] = "CENTER",
			["internalVersion"] = 9,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["useglowColor"] = false,
			["displayIcon"] = 609815,
			["text2Font"] = "Friz Quadrata TT",
			["stickyDuration"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["xOffset"] = 0,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["config"] = {
			},
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 11,
					["multi"] = {
						[10] = true,
						[11] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["use_name"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["cooldownTextEnabled"] = true,
			["width"] = 40,
			["alpha"] = 1,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				0.694117647058824, -- [1]
				0.396078431372549, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Containment"] = "INSIDE",
			["desaturate"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["animation"] = {
				["start"] = {
					["scaleType"] = "straightScale",
					["colorR"] = 1,
					["scaley"] = 1.3,
					["scalex"] = 1.3,
					["colorA"] = 1,
					["duration_type"] = "seconds",
					["alpha"] = 0,
					["x"] = 0,
					["y"] = 0,
					["colorB"] = 1,
					["colorG"] = 1,
					["scaleFunc"] = "    function(progress, startX, startY, scaleX, scaleY)\n      return startX + (progress * (scaleX - startX)), startY + (progress * (scaleY - startY))\n    end\n  ",
					["use_scale"] = true,
					["rotate"] = 0,
					["duration"] = "0.2",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["text1Font"] = "Ubuntu Condensed",
			["text2FontSize"] = 24,
			["text2"] = "%p",
			["text1"] = "%p",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
					["do_glow"] = false,
				},
				["init"] = {
				},
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["zoom"] = 0,
			["auto"] = true,
			["useTooltip"] = false,
			["id"] = "暗影魔/摧心魔CD-戒律",
			["text2Enabled"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "zS(M5jTbLpr",
			["inverse"] = true,
			["text1Enabled"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["暗影魔/摧心魔持续-戒律"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["text1"] = "%p",
			["text2Font"] = "Friz Quadrata TT",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownSwipe"] = true,
			["icon"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
				},
				["finish"] = {
					["do_glow"] = false,
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["displayIcon"] = "",
			["internalVersion"] = 9,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["animation"] = {
				["start"] = {
					["colorR"] = 1,
					["type"] = "none",
					["use_scale"] = true,
					["scaley"] = 1.3,
					["duration"] = "0.2",
					["duration_type"] = "seconds",
					["alpha"] = 0,
					["colorB"] = 1,
					["y"] = 0,
					["x"] = 0,
					["colorG"] = 1,
					["colorA"] = 1,
					["scalex"] = 1.3,
					["rotate"] = 0,
					["scaleFunc"] = "    function(progress, startX, startY, scaleX, scaleY)\n      return startX + (progress * (scaleX - startX)), startY + (progress * (scaleY - startY))\n    end\n  ",
					["scaleType"] = "straightScale",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["authorOptions"] = {
			},
			["uid"] = "wZixmXPTPHd",
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["alpha"] = 1,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["anchorFrameType"] = "SELECTFRAME",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 17,
					["multi"] = {
						[11] = true,
						[12] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[3] = true,
					},
				},
				["use_name"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["frameStrata"] = 4,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "200174",
						["duration"] = "12",
						["percenthealth_operator"] = ">",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["use_unit"] = true,
						["use_totemName"] = true,
						["spellName"] = "摧心魔",
						["name"] = "摧心魔",
						["use_spellName"] = true,
						["sourceName"] = "摧心魔",
						["use_totemType"] = false,
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["use_sourceName"] = false,
						["use_health"] = false,
						["subeventSuffix"] = "",
						["type"] = "status",
						["percenthealth"] = "0",
						["event"] = "Totem",
						["totemName"] = "暗影魔",
						["custom_hide"] = "timed",
						["use_spellId"] = false,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["unit"] = "pet",
						["use_percenthealth"] = true,
						["sourceUnit"] = "player",
						["subeventPrefix"] = "UNIT_DESTROYED",
					},
					["untrigger"] = {
						["use_absorbMode"] = true,
						["use_unit"] = true,
						["unit"] = "pet",
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["use_clones"] = false,
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["duration"] = "1",
						["totemName"] = "摧心魔",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["use_totemName"] = true,
						["event"] = "Totem",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(trigger)\n    return trigger[1]\nend\n\n\n\n",
				["activeTriggerMode"] = -10,
			},
			["text1Color"] = {
				1, -- [1]
				0.945098039215686, -- [2]
				0.0627450980392157, -- [3]
				1, -- [4]
			},
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Ubuntu Condensed",
			["text1Containment"] = "INSIDE",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["zoom"] = 0,
			["glow"] = true,
			["text2FontSize"] = 24,
			["parent"] = "戒律监控",
			["anchorFrameParent"] = false,
			["stickyDuration"] = false,
			["cooldownTextEnabled"] = true,
			["text2"] = "%p",
			["auto"] = true,
			["anchorFrameFrame"] = "WeakAuras:暗影魔/摧心魔CD-戒律",
			["id"] = "暗影魔/摧心魔持续-戒律",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["width"] = 40,
			["text1Enabled"] = true,
			["config"] = {
			},
			["inverse"] = true,
			["useTooltip"] = false,
			["conditions"] = {
			},
			["cooldown"] = true,
			["iconInset"] = 0,
		},
		["教派分歧持续"] = {
			["modelIsUnit"] = false,
			["borderBackdrop"] = "Blizzard Tooltip",
			["api"] = false,
			["xOffset"] = 0,
			["yOffset"] = 80,
			["anchorPoint"] = "CENTER",
			["model_x"] = 0,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["stack_info"] = "count",
						["spellId"] = "198076",
						["ownOnly"] = true,
						["name_info"] = "aura",
						["names"] = {
							"教派分歧", -- [1]
						},
						["use_specific_unit"] = false,
						["spellName"] = 47788,
						["group_count"] = "1",
						["buffShowOn"] = "showOnActive",
						["group_countOperator"] = "==",
						["debuffType"] = "HARMFUL",
						["event"] = "Cooldown Progress (Spell)",
						["type"] = "aura",
						["name"] = "诸罪加身",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["use_spellName"] = true,
						["countOperator"] = ">=",
						["count"] = "1",
						["realSpellName"] = "守护之魂",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["custom_hide"] = "timed",
						["unit"] = "target",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 47788,
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 9,
			["advance"] = false,
			["animation"] = {
				["start"] = {
					["preset"] = "shrink",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["model_st_ty"] = 0,
			["rotation"] = 0,
			["model_st_tx"] = 0,
			["height"] = 150,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["use_petbattle"] = false,
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sequence"] = 1,
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "model",
			["borderSize"] = 16,
			["model_st_us"] = 40,
			["borderOffset"] = 5,
			["model_st_rz"] = 0,
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["model_path"] = "spells/7fx_priest_voidorb_state.m2",
			["model_st_ry"] = 0,
			["frameStrata"] = 4,
			["config"] = {
			},
			["id"] = "教派分歧持续",
			["model_y"] = -1.75,
			["model_st_rx"] = 270,
			["width"] = 150,
			["uid"] = "qg2Bno7jrlo",
			["borderInset"] = 11,
			["anchorFrameType"] = "SCREEN",
			["model_z"] = -4,
			["conditions"] = {
			},
			["model_st_tz"] = 0,
			["parent"] = "戒律监控",
		},
		["痛苦压制CD-戒律"] = {
			["glow"] = false,
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["customText"] = "function(expirationTime)\n    local remaining = expirationTime - GetTime()\n    if remaining <60 then\n        return math.floor(remaining)\n    else\n        return \"\"\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["desaturate"] = false,
			["authorOptions"] = {
			},
			["cooldownTextEnabled"] = false,
			["stickyDuration"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 18,
					["multi"] = {
						[17] = true,
						[18] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_name"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["internalVersion"] = 9,
			["config"] = {
			},
			["selfPoint"] = "CENTER",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				0.694117647058824, -- [1]
				0.396078431372549, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["width"] = 40,
			["text2Enabled"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["parent"] = "MS技能监控-戒律",
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = "%p",
			["zoom"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["auto"] = true,
			["text1Containment"] = "INSIDE",
			["id"] = "痛苦压制CD-戒律",
			["text1Font"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "g2vTDMi1YZt",
			["inverse"] = true,
			["text2Point"] = "CENTER",
			["displayIcon"] = 1060982,
			["cooldown"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "197030",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = false,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["spellName"] = 33206,
						["ownOnly"] = true,
						["type"] = "status",
						["names"] = {
							"圣洁", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["custom_hide"] = "timed",
						["event"] = "Cooldown Progress (Spell)",
						["spellIds"] = {
						},
						["realSpellName"] = "痛苦压制",
						["use_spellId"] = true,
						["name"] = "圣洁",
						["use_spellName"] = true,
						["unevent"] = "auto",
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
						["fullscan"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 33206,
					},
				}, -- [1]
				["disjunctive"] = "all",
				["customTriggerLogic"] = "function(t)\n    return t[1] and (t[2] or t[3])\nend",
				["activeTriggerMode"] = 1,
			},
		},
		["虚空形态"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["yOffset"] = -22.999755859375,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["anchorFrameType"] = "SCREEN",
			["load"] = {
				["use_spec"] = true,
				["use_combat"] = true,
				["class"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 3,
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["stickyDuration"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura2",
						["subeventSuffix"] = "_CAST_START",
						["auranames"] = {
							"虚空形态", -- [1]
						},
						["duration"] = "1",
						["matchesShowOn"] = "showAlways",
						["event"] = "Health",
						["unit"] = "player",
						["useName"] = true,
						["use_absorbMode"] = true,
						["spellIds"] = {
						},
						["use_unit"] = true,
						["unevent"] = "auto",
						["names"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["text1Containment"] = "INSIDE",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["xOffset"] = -228.999816894531,
			["text1Font"] = "Friz Quadrata TT",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 24,
			["text2Font"] = "Friz Quadrata TT",
			["text1"] = "%s",
			["text2Enabled"] = false,
			["glow"] = false,
			["text2"] = "%p",
			["auto"] = true,
			["zoom"] = 0,
			["id"] = "虚空形态",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 64,
			["cooldownTextEnabled"] = true,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "buffed",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								["custom"] = "local numOfc = UintPower(\"Player\");",
							},
							["property"] = "customcode",
						}, -- [1]
					},
				}, -- [1]
			},
			["internalVersion"] = 9,
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
		},
		["阴暗面之力材质"] = {
			["user_y"] = -0.5,
			["stacksSize"] = 12,
			["user_x"] = -0.5,
			["xOffset"] = -245.999694824219,
			["stacksFlags"] = "None",
			["yOffset"] = 52.9996948242188,
			["foregroundColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkRotation"] = 0,
			["sameTexture"] = true,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 225,
			["sparkOffsetY"] = 0,
			["crop_y"] = 1.03,
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["crop"] = 0.41,
			["stacks"] = true,
			["blendMode"] = "BLEND",
			["texture"] = "Interface\\AddOns\\Media\\111",
			["textFont"] = "Friz Quadrata TT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["auto"] = true,
			["compress"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["backgroundOffset"] = 2,
			["authorOptions"] = {
			},
			["config"] = {
			},
			["sparkOffsetX"] = 0,
			["crop_x"] = 1.18,
			["parent"] = "戒律监控",
			["borderOffset"] = 5,
			["uid"] = "9OFCdh)zfSY",
			["barInFront"] = true,
			["color"] = {
				0.992156862745098, -- [1]
				1, -- [2]
				0.984313725490196, -- [3]
				1, -- [4]
			},
			["desaturateBackground"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["customTextUpdate"] = "update",
			["width"] = 57.0000305175781,
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["fullscan"] = true,
						["type"] = "aura",
						["spellId"] = "198069",
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["ownOnly"] = true,
						["event"] = "Health",
						["names"] = {
						},
						["custom_hide"] = "timed",
						["use_spellId"] = true,
						["name"] = "阴暗面之力",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["use_specific_unit"] = false,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["endAngle"] = 360,
			["internalVersion"] = 9,
			["displayTextLeft"] = "%n",
			["animation"] = {
				["start"] = {
					["translateType"] = "straightTranslate",
					["use_scale"] = false,
					["alphaType"] = "straight",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_translate"] = true,
					["use_alpha"] = false,
					["scaleType"] = "straightScale",
					["colorA"] = 1,
					["scaleFunc"] = "    function(progress, startX, startY, scaleX, scaleY)\n      return startX + (progress * (scaleX - startX)), startY + (progress * (scaleY - startY))\n    end\n  ",
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      return startX + (progress * deltaX), startY + (progress * deltaY)\n    end\n  ",
					["scaley"] = 1,
					["alpha"] = 0,
					["colorR"] = 1,
					["y"] = 40,
					["x"] = 40,
					["preset"] = "slidebottom",
					["type"] = "custom",
					["scalex"] = 1,
					["rotate"] = 0,
					["duration"] = "0.2",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["preset"] = "slidetop",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						nil, -- [2]
						true, -- [3]
						true, -- [4]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["text"] = true,
			["sparkHidden"] = "NEVER",
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["timerSize"] = 12,
			["timer"] = true,
			["height"] = 61.0000419616699,
			["timerFlags"] = "None",
			["icon"] = false,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["rotate"] = true,
			["spark"] = false,
			["borderBackdrop"] = "Blizzard Tooltip",
			["textFlags"] = "None",
			["mirror"] = false,
			["borderEdge"] = "None",
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["borderSize"] = 16,
			["anchorFrameFrame"] = "WeakAuras:戒律监控",
			["icon_side"] = "RIGHT",
			["border"] = false,
			["sparkWidth"] = 10,
			["sparkHeight"] = 30,
			["stacksFont"] = "Friz Quadrata TT",
			["startAngle"] = 0,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["zoom"] = 0,
			["id"] = "阴暗面之力材质",
			["textSize"] = 12,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["sparkRotationMode"] = "AUTO",
			["borderInset"] = 11,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "VERTICAL",
			["conditions"] = {
			},
			["anchorPoint"] = "CENTER",
			["regionType"] = "texture",
		},
		["横向分割线-戒律"] = {
			["config"] = {
			},
			["xOffset"] = 0,
			["anchorFrameFrame"] = "WeakAuras:戒律监控",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.75, -- [4]
			},
			["rotate"] = true,
			["mirror"] = false,
			["yOffset"] = 17,
			["anchorPoint"] = "CENTER",
			["regionType"] = "texture",
			["blendMode"] = "ADD",
			["authorOptions"] = {
			},
			["desaturate"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["discrete_rotation"] = 0,
			["internalVersion"] = 9,
			["anchorFrameType"] = "SELECTFRAME",
			["selfPoint"] = "CENTER",
			["id"] = "横向分割线-戒律",
			["frameStrata"] = 1,
			["alpha"] = 1,
			["width"] = 712,
			["rotation"] = 0,
			["uid"] = "6tTbIwOO6MH",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["custom_hide"] = "timed",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["use_absorbMode"] = true,
						["names"] = {
						},
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["event"] = "Health",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["height"] = 2,
			["conditions"] = {
			},
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "戒律监控",
		},
		["4T21-戒律"] = {
			["textFlags"] = "OUTLINE",
			["stacksSize"] = 12,
			["xOffset"] = 6.1035156250e-05,
			["stacksFlags"] = "None",
			["yOffset"] = -67,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useTooltip"] = false,
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.96078431372549, -- [1]
				1, -- [2]
				0.941176470588235, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["use_name"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				0.968627450980392, -- [1]
				0.988235294117647, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "ElvUI Norm",
			["textFont"] = "默认",
			["zoom"] = 0,
			["spark"] = true,
			["timerFont"] = "默认",
			["alpha"] = 1,
			["uid"] = "aURijGEQyRm",
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				0.694117647058824, -- [1]
				0.423529411764706, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["sparkRotationMode"] = "AUTO",
			["config"] = {
			},
			["textSize"] = 12,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "252848",
						["names"] = {
							"凯尔萨斯的绝招", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
						["spellName"] = 209455,
						["use_unit"] = true,
						["type"] = "aura",
						["buffShowOn"] = "showOnActive",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["use_spellName"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["name"] = "光辉焦镜",
						["realSpellName"] = "凯尔萨斯的绝招",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
						["unevent"] = "auto",
						["use_remaining"] = false,
						["unit"] = "player",
						["fullscan"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 209455,
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["stacksFont"] = "Friz Quadrata TT",
			["internalVersion"] = 9,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "slidebottom",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["glow_frame"] = "WeakAuras:炎爆护腕触发",
					["do_sound"] = false,
					["sound"] = " custom",
					["sound_path"] = "Interface\\AddOns\\Media\\Speed of Light.ogg",
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["displayTextLeft"] = "苦修+30%伤害",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["timer"] = true,
			["height"] = 15,
			["timerFlags"] = "OUTLINE",
			["width"] = 560,
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["customTextUpdate"] = "update",
			["displayStacks"] = "%s",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkHidden"] = "NEVER",
			["sparkWidth"] = 5,
			["border"] = false,
			["anchorFrameFrame"] = "WeakAuras:戒律监控",
			["timerSize"] = 14,
			["borderInFront"] = false,
			["borderSize"] = 16,
			["icon_side"] = "LEFT",
			["borderBackdrop"] = "Blizzard Tooltip",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sparkHeight"] = 40,
			["borderInset"] = 11,
			["stacksContainment"] = "INSIDE",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["borderEdge"] = "None",
			["id"] = "4T21-戒律",
			["borderOffset"] = 5,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["auto"] = true,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["cooldown"] = true,
			["parent"] = "戒律监控",
		},
		["苦修计时"] = {
			["sparkWidth"] = 5,
			["stacksSize"] = 12,
			["xOffset"] = 0.5,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0.007843137254902, -- [2]
				0.15294117647059, -- [3]
				1, -- [4]
			},
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0.149019607843137, -- [1]
				0.149019607843137, -- [2]
				0.149019607843137, -- [3]
				0, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["model_path"] = "SPELLS/Jinrokh_ThunderTroll_ElectricWater_State.m2",
			["barColor"] = {
				0.149019607843137, -- [1]
				0.149019607843137, -- [2]
				0.149019607843137, -- [3]
				0.96000000089407, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["sparkOffsetY"] = 0,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["sequence"] = 1,
			["timerColor"] = {
				1, -- [1]
				0.87450980392157, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["scale"] = 1,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["sparkDesaturate"] = false,
			["texture"] = "Aluminium",
			["textFont"] = "Friz Quadrata TT",
			["model_z"] = 0,
			["spark"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["uid"] = "BT1Lw78SSV4",
			["textColor"] = {
				1, -- [1]
				0.945098039215686, -- [2]
				0.313725490196078, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["color"] = {
			},
			["authorOptions"] = {
			},
			["config"] = {
			},
			["model_x"] = 0,
			["zoom"] = 0,
			["borderInset"] = 13,
			["sparkRotationMode"] = "AUTO",
			["auto"] = true,
			["displayTextLeft"] = " %p",
			["triggers"] = {
				{
					["trigger"] = {
						["itemName"] = 0,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
							"暗言术：痛", -- [1]
						},
						["remaining"] = "60",
						["duration"] = "1",
						["use_specific_unit"] = false,
						["use_unit"] = true,
						["ownOnly"] = true,
						["use_powertype"] = true,
						["spellName"] = 47540,
						["use_remaining"] = false,
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["unevent"] = "auto",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["use_itemName"] = true,
						["remaining_operator"] = "<",
						["realSpellName"] = "苦修",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unit"] = "target",
						["custom_hide"] = "timed",
						["debuffType"] = "HARMFUL",
						["powertype"] = 0,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["spellName"] = 47540,
					},
				}, -- [1]
				["disjunctive"] = "all",
				["customTriggerLogic"] = "\n\n",
				["activeTriggerMode"] = 1,
			},
			["sparkColor"] = {
				1, -- [1]
				0.945098039215686, -- [2]
				0.313725490196078, -- [3]
				1, -- [4]
			},
			["internalVersion"] = 9,
			["advance"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["sparkMirror"] = false,
			["stickyDuration"] = true,
			["borderBackdrop"] = "Solid",
			["customTextUpdate"] = "update",
			["width"] = 250,
			["icon"] = true,
			["timer"] = false,
			["timerFlags"] = "None",
			["progressPrecision"] = 1,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				0.011764705882353, -- [1]
				0, -- [2]
				0.35686274509804, -- [3]
				1, -- [4]
			},
			["id"] = "苦修计时",
			["height"] = 16,
			["displayTextRight"] = "%n",
			["modelIsUnit"] = false,
			["actions"] = {
				["start"] = {
					["do_sound"] = false,
				},
				["finish"] = {
					["do_sound"] = true,
					["sound_path"] = "Interface\\AddOns\\Media\\Finisher.ogg",
					["sound"] = " custom",
					["sound_channel"] = "Dialog",
				},
				["init"] = {
				},
			},
			["border"] = false,
			["borderEdge"] = "Blizzard Party",
			["sparkTexture"] = "Textures\\SpellActivationOverlays\\Daybreak",
			["borderInFront"] = false,
			["sparkRotation"] = 180,
			["icon_side"] = "RIGHT",
			["borderSize"] = 7,
			["anchorFrameFrame"] = "WeakAuras:苦修背景材质",
			["sparkHeight"] = 50,
			["textFlags"] = "OUTLINE",
			["useAdjustededMax"] = false,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 15,
			["selfPoint"] = "CENTER",
			["sparkHidden"] = "NEVER",
			["model_y"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["borderOffset"] = 5,
			["textSize"] = 15,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["parent"] = "戒律监控",
			["stacksFont"] = "Friz Quadrata TT",
		},
		["苦修背景材质"] = {
			["modelIsUnit"] = false,
			["borderBackdrop"] = "Blizzard Tooltip",
			["api"] = false,
			["xOffset"] = 0,
			["yOffset"] = 25,
			["anchorPoint"] = "CENTER",
			["model_x"] = -0.05,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_alwaystrue"] = true,
						["use_absorbMode"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
							"暗言术：痛", -- [1]
						},
						["duration"] = "1",
						["spellName"] = 34861,
						["custom_hide"] = "timed",
						["ownOnly"] = true,
						["type"] = "status",
						["custom_type"] = "status",
						["unevent"] = "auto",
						["use_showOn"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["use_genericShowOn"] = true,
						["realSpellName"] = "圣言术：灵",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["debuffType"] = "HARMFUL",
						["check"] = "update",
						["use_unit"] = true,
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["unit"] = "player",
						["spellName"] = 34861,
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 9,
			["advance"] = false,
			["selfPoint"] = "LEFT",
			["model_st_ty"] = 0,
			["desc"] = "Serves as a background and looks pretty sweet.",
			["rotation"] = 0,
			["model_st_tx"] = 0,
			["height"] = 14.999969482422,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sequence"] = 1,
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "Blizzard Dialog",
			["regionType"] = "model",
			["borderSize"] = 5,
			["model_st_us"] = 40,
			["borderOffset"] = 2,
			["model_st_rz"] = 0,
			["authorOptions"] = {
			},
			["model_path"] = "spells/cfx_priest_purgethewicked_statechest.m2",
			["parent"] = "戒律监控",
			["model_z"] = 5,
			["frameStrata"] = 1,
			["config"] = {
			},
			["id"] = "苦修背景材质",
			["model_y"] = 2.2,
			["model_st_rx"] = 270,
			["width"] = 250,
			["uid"] = "noQyBo1FVvY",
			["borderInset"] = 11,
			["anchorFrameType"] = "SCREEN",
			["model_st_ry"] = 0,
			["conditions"] = {
			},
			["model_st_tz"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "pulse",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
		},
		["心灵尖啸CD-戒律"] = {
			["glow"] = false,
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["text1Enabled"] = true,
			["internalVersion"] = 9,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["progressPrecision"] = 0,
			["selfPoint"] = "CENTER",
			["text2Point"] = "CENTER",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["authorOptions"] = {
			},
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 20,
					["multi"] = {
						[21] = true,
						[19] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["config"] = {
			},
			["parent"] = "MS技能监控-戒律",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["width"] = 40,
			["text2Enabled"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = "%p",
			["zoom"] = 0,
			["stickyDuration"] = false,
			["text2"] = "%p",
			["auto"] = true,
			["text1Color"] = {
				0.694117647058824, -- [1]
				0.396078431372549, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "心灵尖啸CD-戒律",
			["text1Containment"] = "INSIDE",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
							"奥术飞弹！", -- [1]
						},
						["use_showgcd"] = true,
						["spellName"] = 8122,
						["type"] = "status",
						["duration"] = "1",
						["unevent"] = "auto",
						["use_showOn"] = true,
						["custom_hide"] = "timed",
						["event"] = "Cooldown Progress (Spell)",
						["use_unit"] = true,
						["realSpellName"] = "心灵尖啸",
						["use_spellName"] = true,
						["inverse"] = true,
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 8122,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["uid"] = "zwH4MFqvGcx",
			["inverse"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = "136096",
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["分割线2-戒律"] = {
			["selfPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				0.733333333333333, -- [2]
				0.952941176470588, -- [3]
				1, -- [4]
			},
			["xOffset"] = -125,
			["authorOptions"] = {
			},
			["mirror"] = false,
			["yOffset"] = 25,
			["regionType"] = "texture",
			["rotate"] = true,
			["blendMode"] = "BLEND",
			["anchorPoint"] = "CENTER",
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "34914",
						["ownOnly"] = true,
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["custom_hide"] = "timed",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["names"] = {
						},
						["event"] = "Health",
						["debuffType"] = "HARMFUL",
						["name"] = "吸血鬼之触",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_absorbMode"] = true,
						["unit"] = "player",
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["fullscan"] = true,
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["config"] = {
			},
			["internalVersion"] = 9,
			["discrete_rotation"] = 0,
			["animation"] = {
				["start"] = {
					["preset"] = "slidetop",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["preset"] = "slidetop",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "分割线2-戒律",
			["desaturate"] = false,
			["alpha"] = 1,
			["width"] = 1.5,
			["rotation"] = 0,
			["uid"] = "immpWtOcRir",
			["frameStrata"] = 4,
			["anchorFrameType"] = "SCREEN",
			["height"] = 20,
			["conditions"] = {
			},
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[4] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["parent"] = "戒律监控",
		},
		["光晕CD-戒律"] = {
			["glow"] = false,
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["customText"] = "function(expirationTime)\n    local remaining = expirationTime - GetTime()\n    if remaining <60 then\n        return math.floor(remaining)\n    else\n        return \"\"\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["parent"] = "MS技能监控-戒律",
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Point"] = "CENTER",
			["desaturate"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["authorOptions"] = {
			},
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 18,
					["multi"] = {
						[17] = true,
						[18] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
			},
			["stickyDuration"] = false,
			["config"] = {
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["width"] = 40,
			["alpha"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["internalVersion"] = 9,
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 24,
			["text2Enabled"] = false,
			["text1"] = "%p",
			["zoom"] = 0,
			["cooldownTextEnabled"] = false,
			["text2"] = "%p",
			["auto"] = true,
			["text1Color"] = {
				0.694117647058824, -- [1]
				0.396078431372549, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "光晕CD-戒律",
			["text1Enabled"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["uid"] = "3Nzve1FPRk7",
			["inverse"] = true,
			["text1Containment"] = "INSIDE",
			["displayIcon"] = 1060982,
			["cooldown"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "197030",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
						["ownOnly"] = true,
						["type"] = "status",
						["names"] = {
							"圣洁", -- [1]
						},
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["spellName"] = 120517,
						["event"] = "Cooldown Progress (Spell)",
						["spellIds"] = {
						},
						["realSpellName"] = "光晕",
						["use_spellId"] = true,
						["name"] = "圣洁",
						["use_spellName"] = true,
						["unevent"] = "auto",
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
						["fullscan"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 120517,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)   \n    return t[1]\nend",
				["activeTriggerMode"] = 1,
			},
		},
		["纯净术CD-戒律"] = {
			["glow"] = false,
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["customText"] = "function(expirationTime)\n    local remaining = expirationTime - GetTime()\n    if remaining <60 then\n        return math.floor(remaining)\n    else\n        return \"\"\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["text1Enabled"] = true,
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "197030",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
							"圣洁", -- [1]
						},
						["use_showgcd"] = true,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["spellName"] = 527,
						["ownOnly"] = true,
						["type"] = "status",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["custom_hide"] = "timed",
						["event"] = "Cooldown Progress (Spell)",
						["spellIds"] = {
						},
						["realSpellName"] = "纯净术",
						["use_spellId"] = true,
						["name"] = "圣洁",
						["use_spellName"] = true,
						["unevent"] = "auto",
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
						["fullscan"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 527,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["customTriggerLogic"] = "function(t)   \n    return t[1]\nend",
				["activeTriggerMode"] = 1,
			},
			["text2Point"] = "CENTER",
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["desaturate"] = false,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 18,
					["multi"] = {
						[17] = true,
						[18] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["config"] = {
			},
			["parent"] = "MS技能监控-戒律",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["width"] = 40,
			["text2Enabled"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 24,
			["text1Color"] = {
				0.694117647058824, -- [1]
				0.396078431372549, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1"] = "%p",
			["zoom"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "纯净术CD-戒律",
			["stickyDuration"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["cooldownTextEnabled"] = false,
			["uid"] = "zIv12dJ)QfM",
			["inverse"] = true,
			["authorOptions"] = {
			},
			["displayIcon"] = 1060982,
			["cooldown"] = true,
			["internalVersion"] = 9,
		},
		["争分夺秒材质1"] = {
			["sparkWidth"] = 10,
			["stacksSize"] = 12,
			["user_x"] = -0.5,
			["xOffset"] = 243,
			["stacksFlags"] = "None",
			["yOffset"] = 54.9998779296875,
			["foregroundColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sameTexture"] = true,
			["rotateText"] = "NONE",
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 135,
			["sparkOffsetY"] = 0,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = true,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						nil, -- [2]
						true, -- [3]
						true, -- [4]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["crop"] = 0.41,
			["stacks"] = true,
			["blendMode"] = "BLEND",
			["texture"] = "Interface\\AddOns\\Media\\111",
			["textFont"] = "Friz Quadrata TT",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["spark"] = false,
			["compress"] = false,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["config"] = {
			},
			["sparkOffsetX"] = 0,
			["crop_x"] = 1.18,
			["parent"] = "戒律监控",
			["auto"] = true,
			["uid"] = "zzO4mZrR9B2",
			["barInFront"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["desaturateBackground"] = false,
			["borderOffset"] = 5,
			["regionType"] = "texture",
			["customTextUpdate"] = "update",
			["anchorFrameType"] = "SELECTFRAME",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["fullscan"] = true,
						["type"] = "aura",
						["spellId"] = "197763",
						["subeventSuffix"] = "_CAST_START",
						["buffShowOn"] = "showOnActive",
						["ownOnly"] = true,
						["event"] = "Health",
						["names"] = {
						},
						["custom_hide"] = "timed",
						["use_spellId"] = true,
						["name"] = "争分夺秒",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["unit"] = "player",
						["use_specific_unit"] = false,
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["endAngle"] = 360,
			["internalVersion"] = 9,
			["textSize"] = 12,
			["animation"] = {
				["start"] = {
					["translateType"] = "straightTranslate",
					["use_scale"] = false,
					["alphaType"] = "straight",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_translate"] = true,
					["use_alpha"] = false,
					["type"] = "custom",
					["scaleType"] = "straightScale",
					["scaleFunc"] = "    function(progress, startX, startY, scaleX, scaleY)\n      return startX + (progress * (scaleX - startX)), startY + (progress * (scaleY - startY))\n    end\n  ",
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      return startX + (progress * deltaX), startY + (progress * deltaY)\n    end\n  ",
					["scaley"] = 1,
					["alpha"] = 0,
					["scalex"] = 1,
					["y"] = 40,
					["x"] = -40,
					["preset"] = "slidebottom",
					["colorB"] = 1,
					["colorR"] = 1,
					["rotate"] = 0,
					["duration"] = "0.2",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["preset"] = "slidetop",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["zoom"] = 0,
			["text"] = true,
			["sparkHidden"] = "NEVER",
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["sparkRotationMode"] = "AUTO",
			["displayTextRight"] = "%p",
			["timerFlags"] = "None",
			["timer"] = true,
			["rotate"] = true,
			["borderBackdrop"] = "Blizzard Tooltip",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["displayTextLeft"] = "%n",
			["sparkRotation"] = 0,
			["startAngle"] = 0,
			["icon"] = false,
			["border"] = false,
			["anchorFrameFrame"] = "WeakAuras:戒律监控",
			["user_y"] = -0.5,
			["borderSize"] = 16,
			["textFlags"] = "None",
			["icon_side"] = "RIGHT",
			["borderEdge"] = "None",
			["mirror"] = false,
			["sparkHeight"] = 30,
			["foregroundTexture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["backgroundOffset"] = 2,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["height"] = 60,
			["id"] = "争分夺秒材质1",
			["color"] = {
				0.992156862745098, -- [1]
				1, -- [2]
				0.984313725490196, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["width"] = 60,
			["stacksFont"] = "Friz Quadrata TT",
			["borderInset"] = 11,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "VERTICAL",
			["conditions"] = {
			},
			["anchorPoint"] = "CENTER",
			["crop_y"] = 1.03,
		},
		["引导条-戒律"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 2,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.764705882352941, -- [1]
				0.317647058823529, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["MAGE"] = true,
						["PALADIN"] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						nil, -- [1]
						true, -- [2]
						true, -- [3]
						true, -- [4]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = true,
			["sparkDesaturate"] = false,
			["texture"] = "ElvUI Blank",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 2,
			["spark"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["uid"] = "4Sm2gzHdTch",
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["color"] = {
			},
			["customTextUpdate"] = "update",
			["displayTextLeft"] = " ",
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = true,
						["type"] = "status",
						["unevent"] = "auto",
						["custom_hide"] = "timed",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["castType"] = "channel",
						["event"] = "Cast",
						["spellIds"] = {
						},
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 9,
			["authorOptions"] = {
			},
			["animation"] = {
				["start"] = {
					["preset"] = "fade",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["config"] = {
			},
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["auto"] = true,
			["sparkColor"] = {
				0.996078431372549, -- [1]
				1, -- [2]
				0.964705882352941, -- [3]
				1, -- [4]
			},
			["height"] = 8,
			["timerFlags"] = "None",
			["zoom"] = 0,
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["sparkWidth"] = 5,
			["borderInset"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["borderBackdrop"] = "Solid",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["border"] = false,
			["anchorFrameFrame"] = "WeakAuras:戒律监控",
			["id"] = "引导条-戒律",
			["borderSize"] = 8,
			["borderInFront"] = false,
			["icon_side"] = "RIGHT",
			["displayTextRight"] = " ",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["sparkHeight"] = 35,
			["useAdjustededMax"] = false,
			["sparkRotationMode"] = "MANUAL",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["timer"] = false,
			["sparkHidden"] = "NEVER",
			["borderEdge"] = "None",
			["frameStrata"] = 4,
			["width"] = 500,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["textSize"] = 12,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["stacksFont"] = "Friz Quadrata TT",
			["parent"] = "戒律监控",
		},
		["信仰飞跃CD-戒律"] = {
			["glow"] = false,
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["text1Enabled"] = true,
			["internalVersion"] = 9,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["progressPrecision"] = 0,
			["selfPoint"] = "CENTER",
			["text2Point"] = "CENTER",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["displayIcon"] = "136096",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["authorOptions"] = {
			},
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 20,
					["multi"] = {
						[21] = true,
						[19] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["use_name"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["config"] = {
			},
			["parent"] = "MS技能监控-戒律",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["width"] = 40,
			["text2Enabled"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = "%p",
			["zoom"] = 0,
			["stickyDuration"] = false,
			["text2"] = "%p",
			["auto"] = true,
			["text1Color"] = {
				0.694117647058824, -- [1]
				0.396078431372549, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "信仰飞跃CD-戒律",
			["text1Containment"] = "INSIDE",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
							"奥术飞弹！", -- [1]
						},
						["use_showgcd"] = false,
						["spellName"] = 73325,
						["type"] = "status",
						["duration"] = "1",
						["unevent"] = "auto",
						["use_showOn"] = true,
						["custom_hide"] = "timed",
						["event"] = "Cooldown Progress (Spell)",
						["use_unit"] = true,
						["realSpellName"] = "信仰飞跃",
						["use_spellName"] = true,
						["inverse"] = true,
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 73325,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["uid"] = "f63GNd)hLjk",
			["inverse"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["施法条-戒律"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 2,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["rotateText"] = "NONE",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0.972549019607843, -- [2]
				0.0823529411764706, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["MAGE"] = true,
						["PALADIN"] = true,
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						nil, -- [1]
						true, -- [2]
						true, -- [3]
						true, -- [4]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = true,
			["sparkDesaturate"] = false,
			["texture"] = "ElvUI Blank",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 2,
			["spark"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["sparkColor"] = {
				0.996078431372549, -- [1]
				1, -- [2]
				0.964705882352941, -- [3]
				1, -- [4]
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["color"] = {
			},
			["sparkRotationMode"] = "MANUAL",
			["displayTextLeft"] = " ",
			["triggers"] = {
				{
					["trigger"] = {
						["use_castType"] = true,
						["type"] = "status",
						["unevent"] = "auto",
						["custom_hide"] = "timed",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["names"] = {
						},
						["castType"] = "cast",
						["event"] = "Cast",
						["spellIds"] = {
						},
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 9,
			["authorOptions"] = {
			},
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "fade",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["preset"] = "fade",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["config"] = {
			},
			["auto"] = true,
			["uid"] = "ugWCi)9qf8k",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["height"] = 8,
			["timerFlags"] = "None",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["sparkWidth"] = 5,
			["borderBackdrop"] = "Solid",
			["anchorFrameType"] = "SELECTFRAME",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["anchorFrameFrame"] = "WeakAuras:戒律监控",
			["border"] = false,
			["borderEdge"] = "None",
			["sparkHidden"] = "NEVER",
			["borderInFront"] = false,
			["borderSize"] = 8,
			["icon_side"] = "RIGHT",
			["displayTextRight"] = " ",
			["zoom"] = 0,
			["sparkHeight"] = 35,
			["useAdjustededMax"] = false,
			["sparkRotation"] = 0,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["customTextUpdate"] = "update",
			["id"] = "施法条-戒律",
			["timer"] = false,
			["frameStrata"] = 4,
			["width"] = 500,
			["textSize"] = 12,
			["borderInset"] = 1,
			["inverse"] = true,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["stacksFont"] = "Friz Quadrata TT",
			["parent"] = "戒律监控",
		},
		["教派分歧持续时间"] = {
			["outline"] = "OUTLINE",
			["modelIsUnit"] = false,
			["borderBackdrop"] = "Blizzard Tooltip",
			["api"] = false,
			["parent"] = "戒律监控",
			["displayText"] = "%p",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["model_x"] = 0,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["stack_info"] = "count",
						["spellId"] = "198076",
						["ownOnly"] = true,
						["name_info"] = "aura",
						["use_unit"] = true,
						["unit"] = "target",
						["spellName"] = 47788,
						["group_count"] = "1",
						["debuffType"] = "HARMFUL",
						["custom_hide"] = "timed",
						["buffShowOn"] = "showOnActive",
						["event"] = "Cooldown Progress (Spell)",
						["type"] = "aura",
						["name"] = "诸罪加身",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["use_spellId"] = true,
						["countOperator"] = ">=",
						["count"] = "1",
						["realSpellName"] = "守护之魂",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["group_countOperator"] = "==",
						["use_specific_unit"] = false,
						["names"] = {
							"教派分歧", -- [1]
						},
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 47788,
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 9,
			["advance"] = false,
			["wordWrap"] = "WordWrap",
			["model_st_ty"] = 0,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["model_st_tx"] = 0,
			["xOffset"] = 0,
			["height"] = 150,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "shrink",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
				["use_name"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["model_path"] = "spells/7fx_priest_voidorb_state.m2",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 18,
			["sequence"] = 1,
			["authorOptions"] = {
			},
			["scale"] = 1,
			["conditions"] = {
			},
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "text",
			["borderSize"] = 16,
			["model_st_us"] = 40,
			["selfPoint"] = "CENTER",
			["model_st_rz"] = 0,
			["config"] = {
			},
			["borderOffset"] = 5,
			["anchorFrameType"] = "SELECTFRAME",
			["model_z"] = -4,
			["justify"] = "CENTER",
			["frameStrata"] = 4,
			["id"] = "教派分歧持续时间",
			["model_y"] = -1.7,
			["model_st_rx"] = 270,
			["width"] = 150,
			["model_st_ry"] = 0,
			["uid"] = "I18)xzx19M7",
			["borderInset"] = 11,
			["anchorFrameFrame"] = "WeakAuras:教派分歧持续",
			["fixedWidth"] = 200,
			["model_st_tz"] = 0,
			["color"] = {
				0.235294117647059, -- [1]
				0.396078431372549, -- [2]
				0.843137254901961, -- [3]
				1, -- [4]
			},
		},
		["空间裂隙持续-戒律"] = {
			["glow"] = true,
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["zoom"] = 0,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["desaturate"] = false,
			["internalVersion"] = 9,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text2Point"] = "CENTER",
			["text2Font"] = "Friz Quadrata TT",
			["displayIcon"] = "609815",
			["stickyDuration"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["icon"] = true,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["text1Enabled"] = true,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["single"] = "VoidElf",
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 3,
					["multi"] = {
						[8] = true,
						[3] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["use_name"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_race"] = true,
			},
			["config"] = {
			},
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["width"] = 40,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				0.972549019607843, -- [2]
				0.172549019607843, -- [3]
				1, -- [4]
			},
			["alpha"] = 1,
			["animation"] = {
				["start"] = {
					["preset"] = "grow",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["text1FontFlags"] = "OUTLINE",
			["parent"] = "MS技能监控-戒律",
			["text2FontSize"] = 24,
			["useTooltip"] = false,
			["text1"] = "%p",
			["text1Font"] = "Friz Quadrata TT",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["auto"] = true,
			["xOffset"] = 0,
			["id"] = "空间裂隙持续-戒律",
			["text2Enabled"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["spellId"] = "256948",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["fullscan"] = true,
						["use_spellId"] = true,
						["name"] = "空间裂隙",
						["buffShowOn"] = "showOnActive",
						["names"] = {
						},
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["uid"] = "54X(1LsjgHd",
			["inverse"] = true,
			["text1Containment"] = "INSIDE",
			["conditions"] = {
			},
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["纯净术背景材质"] = {
			["modelIsUnit"] = false,
			["borderBackdrop"] = "Blizzard Tooltip",
			["api"] = false,
			["xOffset"] = 0,
			["yOffset"] = 25,
			["anchorPoint"] = "CENTER",
			["model_x"] = 0,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_alwaystrue"] = true,
						["use_absorbMode"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["duration"] = "1",
						["spellName"] = 2050,
						["custom_hide"] = "timed",
						["ownOnly"] = true,
						["type"] = "status",
						["custom_type"] = "status",
						["unevent"] = "auto",
						["use_showOn"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["use_genericShowOn"] = true,
						["realSpellName"] = "圣言术：静",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["debuffType"] = "HARMFUL",
						["check"] = "update",
						["names"] = {
							"吸血鬼之触", -- [1]
						},
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["unit"] = "player",
						["spellName"] = 2050,
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 9,
			["advance"] = false,
			["selfPoint"] = "RIGHT",
			["model_st_ty"] = 0,
			["desc"] = "Serves as a background and looks pretty sweet.",
			["rotation"] = 0,
			["model_st_tx"] = 0,
			["height"] = 15,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = true,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sequence"] = 0,
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "Blizzard Dialog",
			["regionType"] = "model",
			["borderSize"] = 5,
			["model_st_us"] = 40,
			["borderOffset"] = 2,
			["model_st_rz"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "pulse",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["authorOptions"] = {
			},
			["model_path"] = "spells/icenuke_missile.m2",
			["model_z"] = -3,
			["model_st_ry"] = 0,
			["config"] = {
			},
			["id"] = "纯净术背景材质",
			["model_y"] = 1,
			["frameStrata"] = 1,
			["width"] = 250,
			["uid"] = "rYf3YmUyD10",
			["borderInset"] = 11,
			["anchorFrameType"] = "SCREEN",
			["model_st_rx"] = 270,
			["conditions"] = {
			},
			["model_st_tz"] = 0,
			["parent"] = "戒律监控",
		},
		["压制声音提示"] = {
			["outline"] = "OUTLINE",
			["user_x"] = 0,
			["xOffset"] = 0,
			["displayText"] = "%c",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["desaturateBackground"] = false,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura16",
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "33206",
						["ownOnly"] = true,
						["genericShowOn"] = "showOnActive",
						["names"] = {
							"守护之魂", -- [1]
						},
						["destName"] = "守护之魂",
						["use_destName"] = false,
						["custom_hide"] = "timed",
						["type"] = "event",
						["subeventSuffix"] = "_CAST_SUCCESS",
						["unit"] = "target",
						["debuffType"] = "HELPFUL",
						["event"] = "Combat Log",
						["unevent"] = "timed",
						["duration"] = "10",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["name"] = "痛苦压制",
						["use_specific_unit"] = false,
						["sourceUnit"] = "player",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["endAngle"] = 360,
			["internalVersion"] = 9,
			["wordWrap"] = "WordWrap",
			["backgroundColor"] = {
				0.5, -- [1]
				0.5, -- [2]
				0.5, -- [3]
				0.5, -- [4]
			},
			["color"] = {
				1, -- [1]
				0.909803921568627, -- [2]
				0.00392156862745098, -- [3]
				1, -- [4]
			},
			["crop_x"] = 0.41,
			["stickyDuration"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["authorOptions"] = {
			},
			["parent"] = "戒律监控",
			["height"] = 11.6666316986084,
			["rotate"] = true,
			["crop_y"] = 0.41,
			["selfPoint"] = "CENTER",
			["config"] = {
			},
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["actions"] = {
				["start"] = {
					["do_sound"] = true,
					["sound"] = " custom",
					["sound_path"] = "Interface\\AddOns\\Media\\天使 - 英雄不朽.ogg",
					["do_message"] = false,
					["sound_channel"] = "Dialog",
				},
				["finish"] = {
					["do_sound"] = false,
				},
				["init"] = {
				},
			},
			["startAngle"] = 0,
			["width"] = 21.6666278839111,
			["alpha"] = 1,
			["mirror"] = false,
			["anchorFrameFrame"] = "WeakAuras:戒律监控",
			["crop"] = 0.41,
			["regionType"] = "text",
			["blendMode"] = "ADD",
			["discrete_rotation"] = 0,
			["desaturate"] = false,
			["conditions"] = {
			},
			["texture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura16",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[2] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["sameTexture"] = true,
			["justify"] = "LEFT",
			["compress"] = false,
			["id"] = "压制声音提示",
			["fontSize"] = 12,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["use_rotate"] = true,
					["scalex"] = 1,
					["rotateType"] = "straight",
					["colorG"] = 1,
					["type"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["preset"] = "rotateClockwise",
					["y"] = 0,
					["x"] = 0,
					["colorA"] = 1,
					["rotate"] = 360,
					["duration"] = "1",
					["rotateFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["colorB"] = 1,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["uid"] = "iCByrowV6OV",
			["inverse"] = false,
			["user_y"] = 0,
			["orientation"] = "ANTICLOCKWISE",
			["fixedWidth"] = 200,
			["foregroundColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["backgroundOffset"] = 2,
		},
		["真言术：耀背景材质1"] = {
			["modelIsUnit"] = false,
			["borderBackdrop"] = "Blizzard Tooltip",
			["api"] = false,
			["authorOptions"] = {
			},
			["yOffset"] = 25,
			["anchorPoint"] = "CENTER",
			["model_x"] = 0,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_alwaystrue"] = true,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["duration"] = "1",
						["debuffType"] = "HARMFUL",
						["custom_hide"] = "timed",
						["use_absorbMode"] = true,
						["type"] = "status",
						["ownOnly"] = true,
						["custom_type"] = "status",
						["use_showOn"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unevent"] = "auto",
						["realSpellName"] = "圣言术：静",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 2050,
						["check"] = "update",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"吸血鬼之触", -- [1]
						},
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 2050,
						["unit"] = "player",
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 9,
			["advance"] = false,
			["model_path"] = "spells/icenuke_missile.m2",
			["model_st_ty"] = 0,
			["desc"] = "Serves as a background and looks pretty sweet.",
			["rotation"] = 0,
			["model_st_tx"] = 0,
			["height"] = 15,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sequence"] = 0,
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "Blizzard Dialog",
			["regionType"] = "model",
			["borderSize"] = 5,
			["model_st_us"] = 40,
			["borderOffset"] = 2,
			["model_st_rz"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "pulse",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["xOffset"] = -125,
			["parent"] = "戒律监控",
			["model_z"] = -3,
			["model_st_ry"] = 0,
			["model_st_rx"] = 270,
			["id"] = "真言术：耀背景材质1",
			["model_y"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["config"] = {
			},
			["borderInset"] = 11,
			["uid"] = "GVM64Zh)0UC",
			["width"] = 124,
			["conditions"] = {
			},
			["model_st_tz"] = 0,
			["selfPoint"] = "RIGHT",
		},
		["真言术：韧监控-戒律"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 600,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["useglowColor"] = false,
			["internalVersion"] = 9,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "alphaPulse",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["authorOptions"] = {
			},
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["text1Enabled"] = false,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 50,
			["icon"] = true,
			["load"] = {
				["use_petbattle"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["difficulty"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["conditions"] = {
			},
			["selfPoint"] = "CENTER",
			["xOffset"] = 0,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["config"] = {
			},
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["width"] = 50,
			["text2Enabled"] = false,
			["text2FontSize"] = 24,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1"] = "%s",
			["glow"] = true,
			["text2"] = "%p",
			["zoom"] = 0,
			["auto"] = true,
			["cooldownTextEnabled"] = true,
			["id"] = "真言术：韧监控-戒律",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["stickyDuration"] = false,
			["uid"] = "UnA4VWLPF4(",
			["inverse"] = false,
			["parent"] = "戒律监控",
			["displayIcon"] = 136200,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["spellId"] = "21562",
						["subeventSuffix"] = "_CAST_START",
						["fullscan"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
						["use_spellId"] = true,
						["name"] = "真言术：韧",
						["buffShowOn"] = "showOnMissing",
						["names"] = {
							"暗影形态", -- [1]
						},
						["spellIds"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["names"] = {
							"虚空形态", -- [1]
						},
						["spellIds"] = {
						},
						["custom_hide"] = "timed",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnMissing",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["text1Containment"] = "INSIDE",
		},
		["渐隐术持续-戒律"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["spellId"] = "586",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["fullscan"] = true,
						["use_spellId"] = true,
						["name"] = "渐隐术",
						["buffShowOn"] = "showOnActive",
						["names"] = {
						},
						["spellIds"] = {
						},
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["stickyDuration"] = false,
			["internalVersion"] = 9,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["progressPrecision"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Friz Quadrata TT",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["displayIcon"] = "609815",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["xOffset"] = 0,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 3,
					["multi"] = {
						[8] = true,
						[3] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["use_name"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["text1Containment"] = "INSIDE",
			["config"] = {
			},
			["text1Enabled"] = true,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["width"] = 40,
			["alpha"] = 1,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["text2FontSize"] = 24,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1"] = "%p",
			["text2"] = "%p",
			["icon"] = true,
			["zoom"] = 0,
			["auto"] = true,
			["useglowColor"] = false,
			["id"] = "渐隐术持续-戒律",
			["text1Color"] = {
				1, -- [1]
				0.972549019607843, -- [2]
				0.172549019607843, -- [3]
				1, -- [4]
			},
			["text2Enabled"] = false,
			["anchorFrameType"] = "SCREEN",
			["parent"] = "MS技能监控-戒律",
			["uid"] = "x42heu6cfX6",
			["inverse"] = true,
			["glow"] = true,
			["conditions"] = {
			},
			["cooldown"] = true,
			["animation"] = {
				["start"] = {
					["preset"] = "grow",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
		},
		["真言术：障持续"] = {
			["glow"] = true,
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["text1Enabled"] = true,
			["internalVersion"] = 9,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["preset"] = "grow",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["progressPrecision"] = 0,
			["selfPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["displayIcon"] = 253400,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["authorOptions"] = {
			},
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 20,
					["multi"] = {
						[21] = true,
						[19] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["config"] = {
			},
			["parent"] = "MS技能监控-戒律",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				1, -- [1]
				0.952941176470588, -- [2]
				0.0862745098039216, -- [3]
				1, -- [4]
			},
			["width"] = 40,
			["text2Enabled"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = false,
					["message_type"] = "SAY",
					["message"] = "消散开启！",
					["do_message"] = false,
					["sound"] = " custom",
				},
				["finish"] = {
					["message"] = "消散结束！",
					["do_sound"] = false,
					["message_type"] = "SAY",
					["sound"] = " custom",
					["sound_path"] = "Interface\\AddOns\\Media\\Finisher.ogg",
					["do_message"] = false,
				},
				["init"] = {
				},
			},
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = "%p",
			["zoom"] = 0,
			["stickyDuration"] = false,
			["text2"] = "%p",
			["auto"] = false,
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "真言术：障持续",
			["text1Containment"] = "INSIDE",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "62618",
						["ownOnly"] = true,
						["genericShowOn"] = "showOnActive",
						["use_specific_unit"] = false,
						["subeventPrefix"] = "SPELL",
						["custom_hide"] = "timed",
						["unit"] = "player",
						["type"] = "event",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_SUCCESS",
						["unevent"] = "timed",
						["names"] = {
							"守护之魂", -- [1]
						},
						["event"] = "Combat Log",
						["name"] = "真言术：障",
						["use_spellName"] = false,
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["use_sourceUnit"] = true,
						["duration"] = "10",
						["debuffType"] = "HELPFUL",
						["sourceUnit"] = "player",
						["fullscan"] = true,
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["uid"] = "uoUMcTS8EMR",
			["inverse"] = true,
			["xOffset"] = 0,
			["conditions"] = {
			},
			["cooldown"] = true,
			["text2Point"] = "CENTER",
		},
		["MS技能监控-戒律"] = {
			["grow"] = "HORIZONTAL",
			["controlledChildren"] = {
				"教派分歧CD", -- [1]
				"暗影盟约CD", -- [2]
				"真言术：慰CD-戒律", -- [3]
				"真言术：耀CD", -- [4]
				"神圣之星CD-戒律", -- [5]
				"光晕CD-戒律", -- [6]
				"福音", -- [7]
				"全神贯注CD", -- [8]
				"全神贯注持续", -- [9]
				"痛苦压制CD-戒律", -- [10]
				"真言术：障CD", -- [11]
				"真言术：障持续", -- [12]
				"暗影魔/摧心魔CD-戒律", -- [13]
				"纯净术CD-戒律", -- [14]
				"群体驱散CD-戒律", -- [15]
				"心灵尖啸CD-戒律", -- [16]
				"绝望祷言CD-戒律", -- [17]
				"信仰飞跃CD-戒律", -- [18]
				"天堂之羽CD-戒律", -- [19]
				"渐隐术CD-戒律", -- [20]
				"渐隐术持续-戒律", -- [21]
				"闪光立场CD-戒律", -- [22]
				"空间裂隙CD-戒律", -- [23]
				"空间裂隙持续-戒律", -- [24]
				"奥术洪流CD-戒律", -- [25]
			},
			["xOffset"] = -0.99993896484375,
			["yOffset"] = 124.999847412109,
			["anchorPoint"] = "CENTER",
			["space"] = 2,
			["background"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 9,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["align"] = "CENTER",
			["stagger"] = 0,
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["race"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["animate"] = false,
			["scale"] = 1,
			["border"] = "None",
			["anchorFrameFrame"] = "WeakAuras:戒律监控",
			["regionType"] = "dynamicgroup",
			["sort"] = "none",
			["expanded"] = true,
			["constantFactor"] = "RADIUS",
			["borderOffset"] = 16,
			["id"] = "MS技能监控-戒律",
			["authorOptions"] = {
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["selfPoint"] = "CENTER",
			["config"] = {
			},
			["rotation"] = 0,
			["uid"] = "1psPI38acLa",
			["conditions"] = {
			},
			["radius"] = 200,
			["backgroundInset"] = 0,
		},
		["法力值条-戒律"] = {
			["textFlags"] = "None",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 11,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["rotateText"] = "NONE",
			["icon"] = false,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				0.380392156862745, -- [1]
				0.443137254901961, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["desc"] = "Starfall bar.  Nothing fancy.",
			["sparkOffsetY"] = 0,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["sparkDesaturate"] = true,
			["texture"] = "Melli",
			["textFont"] = "Friz Quadrata TT",
			["borderOffset"] = 2,
			["spark"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["sparkColor"] = {
				0.0509803921568627, -- [1]
				0.149019607843137, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["color"] = {
			},
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n",
			["triggers"] = {
				{
					["trigger"] = {
						["ownOnly"] = true,
						["genericShowOn"] = "showOnActive",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Power",
						["use_percentpower"] = true,
						["custom_hide"] = "timed",
						["subeventSuffix"] = "_CAST_START",
						["spellIds"] = {
							47536, -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"全神贯注", -- [1]
						},
						["use_unit"] = true,
						["percentpower"] = "100",
						["percentpower_operator"] = "<",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 9,
			["authorOptions"] = {
			},
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["backdropInFront"] = false,
			["text"] = false,
			["sparkMirror"] = false,
			["stickyDuration"] = false,
			["config"] = {
			},
			["borderInset"] = 1,
			["auto"] = true,
			["uid"] = "ztxj3(H2sdf",
			["timer"] = false,
			["timerFlags"] = "None",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["height"] = 10,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["width"] = 500,
			["sparkWidth"] = 5,
			["zoom"] = 0,
			["border"] = false,
			["borderEdge"] = "Blizzard Dialog",
			["id"] = "法力值条-戒律",
			["borderSize"] = 5,
			["borderBackdrop"] = "None",
			["icon_side"] = "RIGHT",
			["displayTextRight"] = "%p",
			["textSize"] = 12,
			["sparkHeight"] = 30,
			["backgroundColor"] = {
				0.29803921568628, -- [1]
				0.29803921568628, -- [2]
				0.29803921568628, -- [3]
				1, -- [4]
			},
			["sparkRotation"] = 180,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 12,
			["desaturate"] = false,
			["sparkHidden"] = "NEVER",
			["borderInFront"] = false,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["sparkRotationMode"] = "MANUAL",
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["stacksFont"] = "Friz Quadrata TT",
			["parent"] = "戒律监控",
		},
		["真言术：耀背景材质2"] = {
			["modelIsUnit"] = false,
			["borderBackdrop"] = "Blizzard Tooltip",
			["api"] = false,
			["xOffset"] = -0.5,
			["yOffset"] = 25,
			["anchorPoint"] = "CENTER",
			["model_x"] = 0,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_alwaystrue"] = true,
						["ownOnly"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["duration"] = "1",
						["debuffType"] = "HARMFUL",
						["custom_hide"] = "timed",
						["use_absorbMode"] = true,
						["type"] = "status",
						["use_genericShowOn"] = true,
						["unevent"] = "auto",
						["use_showOn"] = true,
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["custom_type"] = "status",
						["realSpellName"] = "圣言术：静",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 2050,
						["check"] = "update",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"吸血鬼之触", -- [1]
						},
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["unit"] = "player",
						["spellName"] = 2050,
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 9,
			["advance"] = false,
			["model_path"] = "spells/icenuke_missile.m2",
			["model_st_ty"] = 0,
			["desc"] = "Serves as a background and looks pretty sweet.",
			["rotation"] = 0,
			["model_st_tx"] = 0,
			["height"] = 15,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["DRUID"] = true,
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sequence"] = 0,
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "Blizzard Dialog",
			["regionType"] = "model",
			["borderSize"] = 5,
			["model_st_us"] = 40,
			["model_z"] = -3,
			["model_st_rz"] = 0,
			["authorOptions"] = {
			},
			["parent"] = "戒律监控",
			["selfPoint"] = "RIGHT",
			["borderOffset"] = 2,
			["model_st_ry"] = 0,
			["config"] = {
			},
			["id"] = "真言术：耀背景材质2",
			["model_y"] = 1,
			["frameStrata"] = 1,
			["width"] = 124.5,
			["borderInset"] = 11,
			["uid"] = "6lDrWongVK6",
			["anchorFrameType"] = "SCREEN",
			["model_st_rx"] = 270,
			["conditions"] = {
			},
			["model_st_tz"] = 0,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["preset"] = "pulse",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
		},
		["阴暗面之力监视"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["xOffset"] = -270,
			["displayText"] = "%c\n",
			["yOffset"] = 25,
			["foregroundColor"] = {
				0, -- [1]
				0.5921568627451, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sameTexture"] = true,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Accidental Presidency",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["textureWrapMode"] = "CLAMP",
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["useAdjustededMin"] = false,
			["crop"] = 0,
			["blendMode"] = "ADD",
			["slantMode"] = "INSIDE",
			["zoom"] = 0.3,
			["auto"] = true,
			["compress"] = false,
			["alpha"] = 1,
			["uid"] = "UDzXyxrB1RX",
			["displayIcon"] = 458720,
			["stacksPoint"] = "CENTER",
			["backgroundOffset"] = 0,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				0.96470588235294, -- [2]
				0.90980392156863, -- [3]
				1, -- [4]
			},
			["customText"] = "function()\n    return aura_env.c and aura_env.c > 0 and aura_env.c or \"\"\nend\n\n\n\n\n\n",
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "5.4",
						["spellId"] = "198069",
						["ownOnly"] = true,
						["use_specific_unit"] = false,
						["subeventPrefix"] = "SPELL",
						["custom_type"] = "status",
						["debuffType"] = "HELPFUL",
						["remOperator"] = "<=",
						["subeventSuffix"] = "_CAST_START",
						["spellName"] = 527,
						["name"] = "阴暗面之力",
						["type"] = "aura",
						["use_spellId"] = true,
						["unevent"] = "auto",
						["use_showOn"] = true,
						["custom_hide"] = "timed",
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
							"图雷的祝福", -- [1]
						},
						["realSpellName"] = "纯净术",
						["use_spellName"] = true,
						["spellIds"] = {
							196644, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["check"] = "update",
						["use_unit"] = true,
						["unit"] = "player",
						["fullscan"] = true,
					},
					["untrigger"] = {
						["spellName"] = 527,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura",
						["spellId"] = "246519",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["use_spellId"] = true,
						["spellIds"] = {
							246519, -- [1]
						},
						["fullscan"] = true,
						["names"] = {
							"悔悟", -- [1]
						},
						["name"] = "悔悟",
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["endAngle"] = 360,
			["internalVersion"] = 9,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "0",
					["alphaType"] = "custom",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function (progress, start, delta)\n    if aura_env.minCount then\n        return aura_env.minCount / 3\n    end\n    \n    return 1\nend\n\n\n\n\n\n\n\n\n\n\n",
					["use_alpha"] = true,
					["type"] = "none",
					["use_color"] = false,
					["alpha"] = 0,
					["scaley"] = 1,
					["y"] = 0,
					["colorType"] = "custom",
					["x"] = 0,
					["colorA"] = 1,
					["preset"] = "pulse",
					["rotate"] = 0,
					["scalex"] = 1,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["stickyDuration"] = false,
			["version"] = 2,
			["height"] = 45,
			["useAdjustededMax"] = false,
			["fontSize"] = 32,
			["displayStacks"] = "%c",
			["mirror"] = false,
			["anchorFrameFrame"] = "WeakAuras:戒律监控",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["conditions"] = {
			},
			["textColor"] = {
				0.96862745098039, -- [1]
				1, -- [2]
				0.94509803921569, -- [3]
				1, -- [4]
			},
			["actions"] = {
				["start"] = {
					["do_glow"] = false,
					["do_sound"] = true,
					["sound"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Sounds\\cat2.ogg",
					["sound_channel"] = "Dialog",
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["stacksContainment"] = "INSIDE",
			["anchorPoint"] = "CENTER",
			["justify"] = "LEFT",
			["regionType"] = "progresstexture",
			["id"] = "阴暗面之力监视",
			["crop_y"] = 0.41,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["width"] = 45,
			["icon"] = true,
			["inverse"] = false,
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["orientation"] = "CLOCKWISE",
			["crop_x"] = 0.41,
			["startAngle"] = 0,
			["parent"] = "戒律监控",
		},
		["救赎"] = {
			["modelIsUnit"] = false,
			["borderBackdrop"] = "Blizzard Tooltip",
			["api"] = false,
			["xOffset"] = 0,
			["yOffset"] = 70,
			["anchorPoint"] = "CENTER",
			["model_x"] = 0,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["stack_info"] = "count",
						["spellId"] = "198076",
						["ownOnly"] = true,
						["name_info"] = "aura",
						["use_unit"] = true,
						["names"] = {
							"教派分歧", -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["group_count"] = "1",
						["custom_hide"] = "timed",
						["name"] = "诸罪加身",
						["group_countOperator"] = "==",
						["countOperator"] = ">=",
						["type"] = "aura",
						["count"] = "1",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["use_spellId"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["debuffType"] = "HARMFUL",
						["realSpellName"] = "守护之魂",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["spellName"] = 47788,
						["unit"] = "target",
						["use_specific_unit"] = false,
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 47788,
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 9,
			["advance"] = false,
			["model_path"] = "creature/valkiergoldpet/valkiergoldpet.m2",
			["model_st_ty"] = 0,
			["rotation"] = 0,
			["model_st_tx"] = 0,
			["height"] = 100,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = true,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sequence"] = 1,
			["scale"] = 1,
			["border"] = false,
			["borderEdge"] = "None",
			["regionType"] = "model",
			["borderSize"] = 16,
			["model_st_us"] = 40,
			["borderOffset"] = 5,
			["model_st_rz"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "shrink",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["authorOptions"] = {
			},
			["selfPoint"] = "CENTER",
			["model_st_ry"] = 0,
			["model_z"] = 0.050000000000001,
			["config"] = {
			},
			["id"] = "救赎",
			["model_y"] = 0.1,
			["model_st_rx"] = 270,
			["anchorFrameType"] = "SCREEN",
			["uid"] = "y(09ztdZVsm",
			["borderInset"] = 11,
			["width"] = 100,
			["frameStrata"] = 5,
			["conditions"] = {
			},
			["model_st_tz"] = 0,
			["parent"] = "戒律监控",
		},
		["法力值百分比-戒律"] = {
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "%c\n",
			["customText"] = "function ()\n    return string.format(\"%.1f\",UnitPower(\"Player\")/UnitPowerMax(\"Player\")*100)..\"%\"\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["stack_info"] = "count",
						["ownOnly"] = true,
						["name_info"] = "aura",
						["use_unit"] = true,
						["group_count"] = "1",
						["custom_hide"] = "timed",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Power",
						["duration"] = "1",
						["group_countOperator"] = "==",
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
							47788, -- [1]
						},
						["names"] = {
							"守护之魂", -- [1]
						},
						["genericShowOn"] = "showOnActive",
						["unevent"] = "auto",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 9,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["font"] = "Friz Quadrata TT",
			["height"] = 23.3333568572998,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["anchorFrameFrame"] = "WeakAuras:法力值条-戒律",
			["regionType"] = "text",
			["wordWrap"] = "WordWrap",
			["justify"] = "LEFT",
			["width"] = 16.6666297912598,
			["id"] = "法力值百分比-戒律",
			["xOffset"] = 10,
			["frameStrata"] = 4,
			["anchorFrameType"] = "SELECTFRAME",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["conditions"] = {
			},
			["uid"] = "BWnCwkEyHag",
			["fixedWidth"] = 200,
			["parent"] = "戒律监控",
			["selfPoint"] = "CENTER",
		},
		["虚空箭、"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 12,
			["authorOptions"] = {
			},
			["yOffset"] = -24.9998168945313,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = true,
			["actions"] = {
				["start"] = {
				},
				["init"] = {
					["do_custom"] = false,
				},
				["finish"] = {
				},
			},
			["useglowColor"] = false,
			["text1Enabled"] = false,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = false,
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["unevent"] = "auto",
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["use_absorbMode"] = true,
						["realSpellName"] = "虚空爆发",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["subeventPrefix"] = "SPELL",
						["spellName"] = 228260,
						["names"] = {
						},
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
					},
				}, -- [1]
				["activeTriggerMode"] = -10,
			},
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "BOTTOMRIGHT",
			["glow"] = false,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 64,
			["internalVersion"] = 9,
			["load"] = {
				["use_combat"] = true,
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["stickyDuration"] = false,
			["authorMode"] = true,
			["xOffset"] = -165.999816894531,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["text1Containment"] = "INSIDE",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text1Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["text2FontSize"] = 21,
			["text2Enabled"] = false,
			["text1"] = "%p",
			["text2Font"] = "Friz Quadrata TT",
			["auto"] = true,
			["zoom"] = 0,
			["useGlowColor"] = false,
			["text2"] = "%p",
			["id"] = "虚空箭、",
			["alpha"] = 1,
			["frameStrata"] = 1,
			["width"] = 64,
			["cooldownTextEnabled"] = true,
			["config"] = {
			},
			["inverse"] = false,
			["icon"] = true,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "spellUsable",
						["value"] = 1,
					},
					["changes"] = {
						{
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["真言术：慰CD-戒律"] = {
			["glow"] = false,
			["text1FontSize"] = 16,
			["parent"] = "MS技能监控-戒律",
			["customText"] = "function(expirationTime)\n    local remaining = expirationTime - GetTime()\n    if remaining <60 then\n        return math.floor(remaining)\n    else\n        return \"\"\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["alpha"] = 1,
			["progressPrecision"] = 0,
			["stickyDuration"] = false,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["authorOptions"] = {
			},
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["text1Containment"] = "INSIDE",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 9,
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["cooldownTextEnabled"] = false,
			["config"] = {
			},
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				0.694117647058824, -- [1]
				0.396078431372549, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["anchorFrameType"] = "SCREEN",
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Enabled"] = false,
			["xOffset"] = 0,
			["text2FontSize"] = 24,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1"] = "%p",
			["text2Font"] = "Friz Quadrata TT",
			["zoom"] = 0,
			["text2"] = "%p",
			["auto"] = true,
			["internalVersion"] = 9,
			["id"] = "真言术：慰CD-戒律",
			["text2Point"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 40,
			["text1Font"] = "Friz Quadrata TT",
			["uid"] = "JBKL7vlBH6e",
			["inverse"] = true,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 0,
					},
					["changes"] = {
						{
							["value"] = {
								["sound_type"] = "Play",
								["sound"] = " custom",
								["sound_path"] = "Interface\\AddOns\\Media\\Speed of Light.ogg",
								["sound_channel"] = "Dialog",
							},
							["property"] = "sound",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [2]
			},
			["cooldown"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_incombat"] = true,
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["custom_hide"] = "timed",
						["duration"] = "1",
						["type"] = "status",
						["spellName"] = 129250,
						["use_eventtype"] = true,
						["use_showOn"] = true,
						["unevent"] = "auto",
						["event"] = "Cooldown Progress (Spell)",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["realSpellName"] = "真言术：慰",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["eventtype"] = "PLAYER_REGEN_DISABLED",
						["spellName"] = 129250,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "status",
						["use_incombat"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["event"] = "Conditions",
						["subeventPrefix"] = "SPELL",
						["duration"] = "1",
						["unit"] = "player",
						["use_unit"] = true,
						["unevent"] = "auto",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "custom",
				["customTriggerLogic"] = "function(t)   \n    return t[1]    \nend",
				["activeTriggerMode"] = 1,
			},
		},
		["阴暗面之力文字"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["xOffset"] = 62.9999389648438,
			["displayText"] = "苦修+50%",
			["yOffset"] = 45,
			["foregroundColor"] = {
				0, -- [1]
				0.5921568627451, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sameTexture"] = true,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Accidental Presidency",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["crop"] = 0,
			["blendMode"] = "ADD",
			["zoom"] = 0.3,
			["auto"] = true,
			["compress"] = false,
			["alpha"] = 1,
			["uid"] = "fQnQhA68)XX",
			["displayIcon"] = 458720,
			["stacksPoint"] = "CENTER",
			["backgroundOffset"] = 0,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				0.976470588235294, -- [2]
				0.137254901960784, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n",
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "5.4",
						["spellId"] = "198069",
						["ownOnly"] = true,
						["names"] = {
							"图雷的祝福", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["debuffType"] = "HELPFUL",
						["check"] = "update",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["name"] = "阴暗面之力",
						["type"] = "aura",
						["use_spellId"] = true,
						["custom_type"] = "status",
						["use_showOn"] = true,
						["spellName"] = 527,
						["event"] = "Cooldown Progress (Spell)",
						["use_unit"] = true,
						["realSpellName"] = "纯净术",
						["use_spellName"] = true,
						["spellIds"] = {
							196644, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["remOperator"] = "<=",
						["use_specific_unit"] = false,
						["unit"] = "player",
						["fullscan"] = true,
					},
					["untrigger"] = {
						["spellName"] = 527,
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["endAngle"] = 360,
			["internalVersion"] = 9,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "slideright",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "0",
					["alphaType"] = "custom",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function (progress, start, delta)\n    if aura_env.minCount then\n        return aura_env.minCount / 3\n    end\n    \n    return 1\nend\n\n\n\n\n\n\n\n\n\n\n",
					["use_alpha"] = true,
					["type"] = "none",
					["preset"] = "pulse",
					["alpha"] = 0,
					["use_color"] = false,
					["y"] = 0,
					["colorType"] = "custom",
					["scaley"] = 1,
					["x"] = 0,
					["scalex"] = 1,
					["rotate"] = 0,
					["colorB"] = 1,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["stickyDuration"] = false,
			["version"] = 2,
			["height"] = 10.8333606719971,
			["fontSize"] = 11,
			["displayStacks"] = "%c",
			["mirror"] = false,
			["anchorFrameFrame"] = "WeakAuras:阴暗面之力监视",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["crop_x"] = 0.41,
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["regionType"] = "text",
			["icon"] = true,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["stacksContainment"] = "INSIDE",
			["crop_y"] = 0.41,
			["justify"] = "CENTER",
			["anchorFrameType"] = "SELECTFRAME",
			["id"] = "阴暗面之力文字",
			["startAngle"] = 0,
			["frameStrata"] = 1,
			["width"] = 58.3334426879883,
			["textColor"] = {
				0.96862745098039, -- [1]
				1, -- [2]
				0.94509803921569, -- [3]
				1, -- [4]
			},
			["wordWrap"] = "WordWrap",
			["inverse"] = false,
			["anchorPoint"] = "CENTER",
			["orientation"] = "CLOCKWISE",
			["conditions"] = {
			},
			["fixedWidth"] = 200,
			["parent"] = "戒律监控",
		},
		["施法条文字-戒律"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 16,
			["parent"] = "戒律监控",
			["xOffset"] = -130,
			["displayText"] = "%n  —  %p",
			["color"] = {
				0.964705882352941, -- [1]
				0.498039215686275, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["yOffset"] = 50,
			["anchorPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["anchorFrameFrame"] = "WeakAuras:戒律监控",
			["regionType"] = "text",
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Fixed",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["custom_hide"] = "timed",
						["event"] = "Cast",
						["spellIds"] = {
						},
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["conditions"] = {
			},
			["internalVersion"] = 9,
			["justify"] = "LEFT",
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "施法条文字-戒律",
			["config"] = {
			},
			["frameStrata"] = 1,
			["width"] = 97.4998779296875,
			["wordWrap"] = "WordWrap",
			["font"] = "Friz Quadrata TT",
			["selfPoint"] = "CENTER",
			["uid"] = "jqzafMDWAhp",
			["height"] = 15.8333597183228,
			["fixedWidth"] = 200,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["anchorFrameType"] = "SELECTFRAME",
		},
		["全神贯注CD"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["authorOptions"] = {
			},
			["customText"] = "function(expirationTime)\n    local remaining = expirationTime - GetTime()\n    if remaining <60 then\n        return math.floor(remaining)\n    else\n        return \"\"\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = true,
						["custom_hide"] = "timed",
						["type"] = "status",
						["unevent"] = "auto",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["duration"] = "1",
						["realSpellName"] = "全神贯注",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 47536,
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 47536,
					},
				}, -- [1]
				{
					["trigger"] = {
						["debuffType"] = "HELPFUL",
						["type"] = "aura",
						["use_unit"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["ownOnly"] = true,
						["event"] = "Action Usable",
						["subeventPrefix"] = "SPELL",
						["realSpellName"] = "愈合祷言",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["unevent"] = "auto",
						["names"] = {
							"全神贯注", -- [1]
						},
						["spellName"] = 33076,
						["buffShowOn"] = "showOnMissing",
					},
					["untrigger"] = {
						["showOn"] = "showOnReady",
						["spellName"] = 33076,
					},
				}, -- [2]
				["disjunctive"] = "all",
				["customTriggerLogic"] = "\n\n",
				["activeTriggerMode"] = 1,
			},
			["internalVersion"] = 9,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["text1Color"] = {
				0.694117647058824, -- [1]
				0.396078431372549, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["useglowColor"] = false,
			["stickyDuration"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["text2Font"] = "Friz Quadrata TT",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["text1Containment"] = "INSIDE",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 8,
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["cooldownTextEnabled"] = false,
			["config"] = {
			},
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["parent"] = "MS技能监控-戒律",
			["width"] = 40,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["frameStrata"] = 1,
			["text2Enabled"] = false,
			["text2FontSize"] = 24,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text1"] = "%p",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["zoom"] = 0,
			["auto"] = true,
			["glow"] = false,
			["id"] = "全神贯注CD",
			["text1Enabled"] = true,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["desaturate"] = false,
			["uid"] = "KT)zVesQfNp",
			["inverse"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["xOffset"] = 0,
		},
		["分割线-戒律"] = {
			["selfPoint"] = "CENTER",
			["color"] = {
				1, -- [1]
				0.733333333333333, -- [2]
				0.952941176470588, -- [3]
				1, -- [4]
			},
			["parent"] = "戒律监控",
			["regionType"] = "texture",
			["mirror"] = false,
			["yOffset"] = 25,
			["anchorPoint"] = "CENTER",
			["rotate"] = true,
			["blendMode"] = "ADD",
			["authorOptions"] = {
			},
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "34914",
						["use_absorbMode"] = true,
						["genericShowOn"] = "showOnActive",
						["use_unit"] = true,
						["debuffType"] = "HARMFUL",
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["duration"] = "1",
						["names"] = {
						},
						["event"] = "Health",
						["custom_hide"] = "timed",
						["name"] = "吸血鬼之触",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["ownOnly"] = true,
						["unit"] = "player",
						["unevent"] = "auto",
						["subeventPrefix"] = "SPELL",
						["fullscan"] = true,
					},
					["untrigger"] = {
						["unit"] = "player",
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["texture"] = "Interface\\AddOns\\WeakAuras\\Media\\Textures\\Square_White",
			["config"] = {
			},
			["internalVersion"] = 9,
			["discrete_rotation"] = 0,
			["animation"] = {
				["start"] = {
					["type"] = "preset",
					["preset"] = "slidetop",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["preset"] = "slidetop",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "分割线-戒律",
			["desaturate"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["rotation"] = 0,
			["uid"] = "zwLbmIt7G2U",
			["frameStrata"] = 1,
			["width"] = 1.5,
			["height"] = 20,
			["conditions"] = {
			},
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
						["MAGE"] = true,
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[4] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["xOffset"] = 0,
		},
		["真言术：障CD"] = {
			["glow"] = false,
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["customText"] = "function(expirationTime)\n    local remaining = expirationTime - GetTime()\n    if remaining <60 then\n        return math.floor(remaining)\n    else\n        return \"\"\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["text2Font"] = "Friz Quadrata TT",
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["desaturate"] = false,
			["authorOptions"] = {
			},
			["cooldownTextEnabled"] = false,
			["stickyDuration"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 18,
					["multi"] = {
						[17] = true,
						[18] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_name"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["internalVersion"] = 9,
			["config"] = {
			},
			["selfPoint"] = "CENTER",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				0.694117647058824, -- [1]
				0.396078431372549, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["width"] = 40,
			["text2Enabled"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["parent"] = "MS技能监控-戒律",
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = "%p",
			["zoom"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2"] = "%p",
			["auto"] = true,
			["text1Containment"] = "INSIDE",
			["id"] = "真言术：障CD",
			["text1Font"] = "Friz Quadrata TT",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "fCp(LOyuYm4",
			["inverse"] = true,
			["text2Point"] = "CENTER",
			["displayIcon"] = 1060982,
			["cooldown"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["spellId"] = "197030",
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["remaining"] = "170",
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["remaining_operator"] = "<",
						["names"] = {
							"圣洁", -- [1]
						},
						["spellName"] = 62618,
						["use_remaining"] = true,
						["type"] = "status",
						["name"] = "圣洁",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["use_spellName"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["ownOnly"] = true,
						["realSpellName"] = "真言术：障",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["unevent"] = "auto",
						["custom_hide"] = "timed",
						["debuffType"] = "HELPFUL",
						["unit"] = "player",
						["fullscan"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 62618,
					},
				}, -- [1]
				["disjunctive"] = "all",
				["customTriggerLogic"] = "function(t)   \n    return t[1]\nend",
				["activeTriggerMode"] = 1,
			},
		},
		["天堂之羽CD-戒律"] = {
			["glow"] = false,
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["customText"] = "function()\n    local r = WeakAuras.regions[aura_env.id].region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", 4, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["parent"] = "MS技能监控-戒律",
			["internalVersion"] = 9,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["stickyDuration"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "0",
						["variable"] = "charges",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.694117647058824, -- [1]
								0.396078431372549, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "text1Color",
						}, -- [1]
					},
				}, -- [2]
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [3]
				{
					["check"] = {
						["trigger"] = 3,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.694117647058824, -- [1]
								0.396078431372549, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "text1Color",
						}, -- [1]
					},
				}, -- [4]
			},
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["text2Point"] = "CENTER",
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 6,
					["multi"] = {
						[4] = true,
						[5] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["use_petbattle"] = false,
			},
			["text1Containment"] = "INSIDE",
			["config"] = {
			},
			["desaturate"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["width"] = 40,
			["text2Enabled"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["animation"] = {
				["start"] = {
					["preset"] = "grow",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 10,
			["alpha"] = 1,
			["text1"] = "%p",
			["zoom"] = 0,
			["xOffset"] = 0,
			["text2"] = "%c%s",
			["auto"] = true,
			["text1Color"] = {
				1, -- [1]
				0.972549019607843, -- [2]
				0.172549019607843, -- [3]
				1, -- [4]
			},
			["id"] = "天堂之羽CD-戒律",
			["text1Enabled"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Friz Quadrata TT",
			["uid"] = "6V8j7PFmeeq",
			["inverse"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = "609815",
			["cooldown"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_charges"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["duration"] = "1",
						["custom_hide"] = "timed",
						["charges_operator"] = "==",
						["type"] = "status",
						["spellName"] = 121536,
						["unevent"] = "auto",
						["use_showOn"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["debuffType"] = "HELPFUL",
						["realSpellName"] = "天堂之羽",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["charges"] = "0",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 121536,
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["spellName"] = 121536,
						["charges_operator"] = ">",
						["charges"] = "0",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["realSpellName"] = "天堂之羽",
						["use_spellName"] = true,
						["duration"] = "1",
						["type"] = "status",
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["use_charges"] = true,
						["use_unit"] = true,
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 121536,
					},
				}, -- [2]
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["debuffType"] = "HELPFUL",
						["type"] = "status",
						["unevent"] = "auto",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["duration"] = "1",
						["realSpellName"] = "提神愈心",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["spellName"] = 214121,
						["names"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["use_unit"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 214121,
					},
				}, -- [3]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
		},
		["争分夺秒材质1文字"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["xOffset"] = -77,
			["displayText"] = "+%s%施法速度",
			["yOffset"] = 50,
			["foregroundColor"] = {
				0, -- [1]
				0.5921568627451, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sameTexture"] = true,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Accidental Presidency",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = true,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["startAngle"] = 0,
			["crop"] = 0,
			["blendMode"] = "ADD",
			["zoom"] = 0.3,
			["auto"] = true,
			["compress"] = false,
			["alpha"] = 1,
			["uid"] = "4cAx9izH8a)",
			["displayIcon"] = 458720,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				0.96862745098039, -- [1]
				1, -- [2]
				0.94509803921569, -- [3]
				1, -- [4]
			},
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				0.976470588235294, -- [2]
				0.137254901960784, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n",
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "5.4",
						["spellId"] = "197763",
						["ownOnly"] = true,
						["use_unit"] = true,
						["subcount"] = true,
						["subeventPrefix"] = "SPELL",
						["custom_type"] = "status",
						["spellName"] = 527,
						["remOperator"] = "<=",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["name"] = "争分夺秒",
						["type"] = "aura",
						["use_spellId"] = true,
						["unevent"] = "auto",
						["use_showOn"] = true,
						["buffShowOn"] = "showOnActive",
						["event"] = "Cooldown Progress (Spell)",
						["names"] = {
							"图雷的祝福", -- [1]
						},
						["realSpellName"] = "纯净术",
						["use_spellName"] = true,
						["spellIds"] = {
							196644, -- [1]
						},
						["custom_hide"] = "timed",
						["check"] = "update",
						["use_specific_unit"] = false,
						["unit"] = "player",
						["fullscan"] = true,
					},
					["untrigger"] = {
						["spellName"] = 527,
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["endAngle"] = 360,
			["internalVersion"] = 9,
			["animation"] = {
				["start"] = {
					["preset"] = "slideleft",
					["type"] = "preset",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["colorR"] = 1,
					["scalex"] = 1,
					["alphaType"] = "custom",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function (progress, start, delta)\n    if aura_env.minCount then\n        return aura_env.minCount / 3\n    end\n    \n    return 1\nend\n\n\n\n\n\n\n\n\n\n\n",
					["use_alpha"] = true,
					["type"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["use_color"] = false,
					["y"] = 0,
					["colorType"] = "custom",
					["x"] = 0,
					["colorB"] = 1,
					["preset"] = "pulse",
					["rotate"] = 0,
					["duration"] = "0",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["stickyDuration"] = false,
			["version"] = 2,
			["height"] = 9.99999618530274,
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["displayStacks"] = "%c",
			["mirror"] = false,
			["anchorFrameFrame"] = "WeakAuras:争分夺秒监视",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["crop_x"] = 0.41,
			["regionType"] = "text",
			["icon"] = true,
			["wordWrap"] = "WordWrap",
			["fontSize"] = 10,
			["stacksContainment"] = "INSIDE",
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["justify"] = "CENTER",
			["anchorFrameType"] = "SELECTFRAME",
			["id"] = "争分夺秒材质1文字",
			["anchorPoint"] = "CENTER",
			["frameStrata"] = 1,
			["width"] = 79.1664276123047,
			["backgroundOffset"] = 0,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["inverse"] = false,
			["crop_y"] = 0.41,
			["orientation"] = "CLOCKWISE",
			["conditions"] = {
			},
			["fixedWidth"] = 200,
			["parent"] = "戒律监控",
		},
		["空间裂隙CD-戒律"] = {
			["glow"] = false,
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["text2"] = "%p",
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["desaturate"] = false,
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["authorOptions"] = {
			},
			["text2Point"] = "CENTER",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "show",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.694117647058824, -- [1]
								0.396078431372549, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "text1Color",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [2]
			},
			["stickyDuration"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["triggers"] = {
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["duration"] = "1",
						["custom_hide"] = "timed",
						["charges_operator"] = "==",
						["type"] = "status",
						["spellName"] = 256948,
						["unevent"] = "auto",
						["use_showOn"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["debuffType"] = "HELPFUL",
						["realSpellName"] = "空间裂隙",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["charges"] = "0",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 256948,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura",
						["spellId"] = "256948",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["fullscan"] = true,
						["name"] = "空间裂隙",
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnMissing",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["single"] = "VoidElf",
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 3,
					["multi"] = {
						[8] = true,
						[3] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["use_name"] = false,
				["use_race"] = true,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["config"] = {
			},
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["width"] = 40,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				0.694117647058824, -- [1]
				0.396078431372549, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["text2Font"] = "Friz Quadrata TT",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["animation"] = {
				["start"] = {
					["preset"] = "grow",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["useTooltip"] = false,
			["text2FontSize"] = 24,
			["parent"] = "MS技能监控-戒律",
			["text1"] = "%p",
			["internalVersion"] = 9,
			["text1Containment"] = "INSIDE",
			["zoom"] = 0,
			["auto"] = true,
			["text1Font"] = "Friz Quadrata TT",
			["id"] = "空间裂隙CD-戒律",
			["text1FontFlags"] = "OUTLINE",
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text2Enabled"] = false,
			["uid"] = "5hz1EiPeB97",
			["inverse"] = true,
			["cooldownTextEnabled"] = true,
			["displayIcon"] = "609815",
			["cooldown"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
		},
		["绝望祷言CD-戒律"] = {
			["glow"] = false,
			["text1FontSize"] = 16,
			["xOffset"] = 0,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["text1Enabled"] = true,
			["internalVersion"] = 9,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["progressPrecision"] = 0,
			["selfPoint"] = "CENTER",
			["text2Point"] = "CENTER",
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["displayIcon"] = "136096",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["authorOptions"] = {
			},
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 20,
					["multi"] = {
						[21] = true,
						[19] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["text2Font"] = "Friz Quadrata TT",
			["config"] = {
			},
			["parent"] = "MS技能监控-戒律",
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["width"] = 40,
			["text2Enabled"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 24,
			["alpha"] = 1,
			["text1"] = "%p",
			["zoom"] = 0,
			["stickyDuration"] = false,
			["text2"] = "%p",
			["auto"] = true,
			["text1Color"] = {
				0.694117647058824, -- [1]
				0.396078431372549, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "绝望祷言CD-戒律",
			["text1Containment"] = "INSIDE",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["names"] = {
							"奥术飞弹！", -- [1]
						},
						["use_showgcd"] = false,
						["spellName"] = 19236,
						["type"] = "status",
						["duration"] = "1",
						["unevent"] = "auto",
						["use_showOn"] = true,
						["custom_hide"] = "timed",
						["event"] = "Cooldown Progress (Spell)",
						["use_unit"] = true,
						["realSpellName"] = "绝望祷言",
						["use_spellName"] = true,
						["inverse"] = true,
						["debuffType"] = "HELPFUL",
						["spellIds"] = {
						},
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 19236,
					},
				}, -- [1]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["uid"] = "2OVNKfW2MSg",
			["inverse"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["cooldownTextEnabled"] = true,
		},
		["真言术：耀计时1"] = {
			["textFlags"] = "OUTLINE",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["borderColor"] = {
				0, -- [1]
				0.007843137254902, -- [2]
				0.15294117647059, -- [3]
				1, -- [4]
			},
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
					["sound_channel"] = "Dialog",
					["sound"] = " custom",
					["sound_path"] = "Interface\\AddOns\\Media\\Slice n Dice.ogg",
					["do_sound"] = true,
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["model_path"] = "SPELLS/Jinrokh_ThunderTroll_ElectricWater_State.m2",
			["barColor"] = {
				0.11764705882353, -- [1]
				0.11764705882353, -- [2]
				0.11764705882353, -- [3]
				0.96000000089407, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["sparkOffsetY"] = 0,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
						[3] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["sequence"] = 1,
			["timerColor"] = {
				1, -- [1]
				0.87450980392157, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["scale"] = 1,
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = false,
			["texture"] = "Aluminium",
			["textFont"] = "Friz Quadrata TT",
			["model_z"] = 0,
			["spark"] = true,
			["timerFont"] = "Friz Quadrata TT",
			["alpha"] = 1,
			["sparkColor"] = {
				0.635294117647059, -- [1]
				0.556862745098039, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["textColor"] = {
				0.670588235294118, -- [1]
				0.968627450980392, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["sparkOffsetX"] = 0,
			["color"] = {
			},
			["authorOptions"] = {
			},
			["model_x"] = 0,
			["config"] = {
			},
			["selfPoint"] = "CENTER",
			["sparkRotationMode"] = "MANUAL",
			["uid"] = "6FZqn3wClff",
			["displayTextLeft"] = " %p",
			["triggers"] = {
				{
					["trigger"] = {
						["duration"] = "1",
						["itemName"] = 0,
						["use_charges"] = false,
						["unit"] = "target",
						["powertype"] = 0,
						["ownOnly"] = true,
						["genericShowOn"] = "showOnCooldown",
						["names"] = {
							"吸血鬼之触", -- [1]
						},
						["spellName"] = 194509,
						["remaining"] = "60",
						["use_powertype"] = true,
						["custom_hide"] = "timed",
						["use_remaining"] = false,
						["trackcharge"] = "1",
						["use_trackcharge"] = true,
						["debuffType"] = "HARMFUL",
						["charges_operator"] = "<",
						["type"] = "status",
						["use_itemName"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["charges"] = "1",
						["event"] = "Cooldown Progress (Spell)",
						["unevent"] = "auto",
						["realSpellName"] = "真言术：耀",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["remaining_operator"] = "<",
						["subeventPrefix"] = "SPELL",
						["use_genericShowOn"] = true,
						["use_unit"] = true,
						["use_specific_unit"] = false,
					},
					["untrigger"] = {
						["spellName"] = 194509,
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_charges"] = true,
						["genericShowOn"] = "showAlways",
						["subeventPrefix"] = "SPELL",
						["use_powertype"] = true,
						["spellName"] = 194509,
						["charges_operator"] = "<",
						["type"] = "status",
						["unevent"] = "auto",
						["duration"] = "1",
						["event"] = "Cooldown Progress (Spell)",
						["use_trackcharge"] = false,
						["realSpellName"] = "真言术：耀",
						["use_spellName"] = true,
						["use_genericShowOn"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_absorbMode"] = true,
						["charges"] = "1",
						["use_unit"] = true,
						["unit"] = "player",
					},
					["untrigger"] = {
						["genericShowOn"] = "showAlways",
						["spellName"] = 194509,
					},
				}, -- [2]
				["disjunctive"] = "all",
				["customTriggerLogic"] = "\n\n",
				["activeTriggerMode"] = 1,
			},
			["sparkRotation"] = 180,
			["internalVersion"] = 9,
			["advance"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["sparkMirror"] = false,
			["stickyDuration"] = true,
			["auto"] = true,
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["icon"] = true,
			["width"] = 124,
			["height"] = 16,
			["timerFlags"] = "None",
			["customTextUpdate"] = "update",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				0.011764705882353, -- [1]
				0, -- [2]
				0.35686274509804, -- [3]
				1, -- [4]
			},
			["timer"] = false,
			["id"] = "真言术：耀计时1",
			["modelIsUnit"] = false,
			["displayTextRight"] = "%n",
			["textSize"] = 15,
			["border"] = false,
			["borderEdge"] = "Blizzard Party",
			["anchorFrameFrame"] = "WeakAuras:真言术：耀背景材质1",
			["borderSize"] = 7,
			["borderInFront"] = false,
			["icon_side"] = "LEFT",
			["borderInset"] = 13,
			["backgroundColor"] = {
				0.19607843137255, -- [1]
				0.011764705882353, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["sparkHeight"] = 50,
			["sparkWidth"] = 5,
			["useAdjustededMax"] = false,
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["timerSize"] = 50,
			["zoom"] = 0,
			["sparkHidden"] = "NEVER",
			["model_y"] = 0,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["borderOffset"] = 5,
			["borderBackdrop"] = "Solid",
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL_INVERSE",
			["conditions"] = {
			},
			["stacksFont"] = "Friz Quadrata TT",
			["parent"] = "戒律监控",
		},
		["争分夺秒监视"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["xOffset"] = 270,
			["displayText"] = "%c\n",
			["yOffset"] = 25.0003814697266,
			["foregroundColor"] = {
				1, -- [1]
				0.749019607843137, -- [2]
				0.247058823529412, -- [3]
				1, -- [4]
			},
			["sameTexture"] = true,
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Accidental Presidency",
			["crop_y"] = 0.41,
			["textureWrapMode"] = "CLAMP",
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["useAdjustededMin"] = false,
			["regionType"] = "progresstexture",
			["blendMode"] = "ADD",
			["slantMode"] = "INSIDE",
			["zoom"] = 0.3,
			["auto"] = true,
			["compress"] = false,
			["alpha"] = 1,
			["uid"] = "Rz0v72jb8BF",
			["displayIcon"] = 458720,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				0.96862745098039, -- [1]
				1, -- [2]
				0.94509803921569, -- [3]
				1, -- [4]
			},
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				0.96470588235294, -- [2]
				0.90980392156863, -- [3]
				1, -- [4]
			},
			["customText"] = "function()\n    return aura_env.c and aura_env.c > 0 and aura_env.c or \"\"\nend\n\n\n\n\n\n",
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "5.4",
						["spellId"] = "197763",
						["ownOnly"] = true,
						["use_specific_unit"] = false,
						["subeventPrefix"] = "SPELL",
						["names"] = {
							"图雷的祝福", -- [1]
						},
						["debuffType"] = "HELPFUL",
						["remOperator"] = "<=",
						["custom_type"] = "status",
						["custom_hide"] = "timed",
						["name"] = "争分夺秒",
						["type"] = "aura",
						["use_spellId"] = true,
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["spellName"] = 527,
						["event"] = "Cooldown Progress (Spell)",
						["unevent"] = "auto",
						["realSpellName"] = "纯净术",
						["use_spellName"] = true,
						["spellIds"] = {
							196644, -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["check"] = "update",
						["use_unit"] = true,
						["unit"] = "player",
						["fullscan"] = true,
					},
					["untrigger"] = {
						["spellName"] = 527,
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["endAngle"] = 360,
			["internalVersion"] = 9,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "0",
					["alphaType"] = "custom",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function (progress, start, delta)\n    if aura_env.minCount then\n        return aura_env.minCount / 3\n    end\n    \n    return 1\nend\n\n\n\n\n\n\n\n\n\n\n",
					["use_alpha"] = true,
					["type"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["use_color"] = false,
					["y"] = 0,
					["colorType"] = "custom",
					["preset"] = "pulse",
					["x"] = 0,
					["scalex"] = 1,
					["rotate"] = 0,
					["colorA"] = 1,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["stickyDuration"] = false,
			["version"] = 2,
			["height"] = 45,
			["useAdjustededMax"] = false,
			["fontSize"] = 32,
			["displayStacks"] = "%c",
			["mirror"] = false,
			["anchorFrameFrame"] = "WeakAuras:戒律监控",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["conditions"] = {
			},
			["anchorPoint"] = "CENTER",
			["backgroundOffset"] = 0,
			["stacksContainment"] = "INSIDE",
			["crop"] = 0,
			["justify"] = "LEFT",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = true,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["id"] = "争分夺秒监视",
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SELECTFRAME",
			["width"] = 45,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["inverse"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["orientation"] = "CLOCKWISE",
			["crop_x"] = 0.41,
			["startAngle"] = 0,
			["parent"] = "戒律监控",
		},
		["戒律监控"] = {
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["controlledChildren"] = {
				"4T21-戒律", -- [1]
				"教派分歧持续", -- [2]
				"教派分歧持续时间", -- [3]
				"救赎", -- [4]
				"救赎背景", -- [5]
				"暗言术：痛持续", -- [6]
				"施法条-戒律", -- [7]
				"引导条-戒律", -- [8]
				"施法条文字-戒律", -- [9]
				"法力值条-戒律", -- [10]
				"法力值百分比-戒律", -- [11]
				"横向分割线-戒律", -- [12]
				"分割线-戒律", -- [13]
				"分割线2-戒律", -- [14]
				"苦修背景材质", -- [15]
				"苦修计时", -- [16]
				"真言术：耀背景材质1", -- [17]
				"真言术：耀背景材质2", -- [18]
				"真言术：耀计时1", -- [19]
				"真言术：耀计时2", -- [20]
				"纯净术背景材质", -- [21]
				"纯净术计时", -- [22]
				"阴暗面之力材质", -- [23]
				"阴暗面之力文字", -- [24]
				"阴暗面之力监视", -- [25]
				"阴暗面之力计时", -- [26]
				"争分夺秒材质1", -- [27]
				"争分夺秒材质1文字", -- [28]
				"争分夺秒监视", -- [29]
				"争分夺秒监视计时", -- [30]
				"压制声音提示", -- [31]
				"真言术：韧监控-戒律", -- [32]
				"暗影魔/摧心魔持续-戒律", -- [33]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["authorOptions"] = {
			},
			["borderEdge"] = "None",
			["border"] = false,
			["yOffset"] = -360,
			["anchorPoint"] = "CENTER",
			["borderSize"] = 16,
			["regionType"] = "group",
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["anchorFrameFrame"] = "WeakAuras:戒律监控",
			["expanded"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "aura",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["unit"] = "player",
						["spellIds"] = {
						},
						["buffShowOn"] = "showOnActive",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["internalVersion"] = 9,
			["borderOffset"] = 5,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["id"] = "戒律监控",
			["config"] = {
			},
			["frameStrata"] = 2,
			["anchorFrameType"] = "SCREEN",
			["borderInset"] = 11,
			["uid"] = "obAy9l4FkjR",
			["selfPoint"] = "BOTTOMLEFT",
			["xOffset"] = 0,
			["conditions"] = {
			},
			["load"] = {
				["talent2"] = {
					["multi"] = {
					},
				},
				["talent"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_class"] = "true",
				["role"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["scale"] = 1,
		},
		["暗影盟约CD"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["authorOptions"] = {
			},
			["customText"] = "function(expirationTime)\n    local remaining = expirationTime - GetTime()\n    if remaining <60 then\n        return math.floor(remaining)\n    else\n        return \"\"\n    end\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_genericShowOn"] = true,
						["genericShowOn"] = "showAlways",
						["unit"] = "player",
						["use_showgcd"] = true,
						["spellName"] = 204065,
						["type"] = "status",
						["unevent"] = "auto",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["duration"] = "1",
						["realSpellName"] = "暗影盟约",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["custom_hide"] = "timed",
						["debuffType"] = "HELPFUL",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 204065,
					},
				}, -- [1]
				["disjunctive"] = "all",
				["customTriggerLogic"] = "\n\n",
				["activeTriggerMode"] = 1,
			},
			["text1Enabled"] = true,
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["internalVersion"] = 9,
			["useglowColor"] = false,
			["icon"] = true,
			["text1Containment"] = "INSIDE",
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["desaturate"] = false,
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 15,
					["multi"] = {
						true, -- [1]
						true, -- [2]
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						true, -- [1]
					},
				},
				["use_name"] = false,
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
			},
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2Font"] = "Friz Quadrata TT",
			["config"] = {
			},
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["selfPoint"] = "CENTER",
			["width"] = 40,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["text2Enabled"] = false,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 24,
			["stickyDuration"] = false,
			["text1"] = "%p",
			["glow"] = false,
			["text2"] = "%p",
			["zoom"] = 0,
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "暗影盟约CD",
			["xOffset"] = 0,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text1Color"] = {
				0.694117647058824, -- [1]
				0.396078431372549, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["uid"] = "Dj169ChDdlp",
			["inverse"] = true,
			["cooldownTextEnabled"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["parent"] = "MS技能监控-戒律",
		},
		["闪光立场CD-戒律"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["duration"] = "1",
						["spellName"] = 204263,
						["charges_operator"] = "==",
						["charges"] = "0",
						["custom_hide"] = "timed",
						["unevent"] = "auto",
						["use_showOn"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["debuffType"] = "HELPFUL",
						["realSpellName"] = "闪光力场",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 204263,
					},
				}, -- [1]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["text1Containment"] = "INSIDE",
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["preset"] = "grow",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useglowColor"] = false,
			["internalVersion"] = 9,
			["stickyDuration"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["desaturate"] = false,
			["load"] = {
				["ingroup"] = {
					["multi"] = {
					},
				},
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_talent"] = true,
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 12,
					["multi"] = {
						[8] = true,
						[3] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["use_name"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["use_petbattle"] = false,
			},
			["glow"] = false,
			["config"] = {
			},
			["xOffset"] = 0,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["width"] = 40,
			["text2Enabled"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["alpha"] = 1,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 24,
			["text1Enabled"] = true,
			["text1"] = "%p",
			["text2"] = "%p",
			["icon"] = true,
			["zoom"] = 0,
			["auto"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["id"] = "闪光立场CD-戒律",
			["text1Color"] = {
				0.694117647058824, -- [1]
				0.396078431372549, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["selfPoint"] = "CENTER",
			["uid"] = "4815od3BCgH",
			["inverse"] = true,
			["parent"] = "MS技能监控-戒律",
			["displayIcon"] = "609815",
			["cooldown"] = true,
			["authorOptions"] = {
			},
		},
		["渐隐术CD-戒律"] = {
			["text2Point"] = "CENTER",
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["use_charges"] = false,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = false,
						["duration"] = "1",
						["custom_hide"] = "timed",
						["charges_operator"] = "==",
						["type"] = "status",
						["spellName"] = 586,
						["unevent"] = "auto",
						["use_showOn"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["debuffType"] = "HELPFUL",
						["realSpellName"] = "渐隐术",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["charges"] = "0",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 586,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura",
						["spellId"] = "586",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["names"] = {
						},
						["debuffType"] = "HELPFUL",
						["use_spellId"] = true,
						["name"] = "渐隐术",
						["fullscan"] = true,
						["spellIds"] = {
						},
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnMissing",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "all",
				["activeTriggerMode"] = -10,
			},
			["text1Font"] = "Friz Quadrata TT",
			["text2Font"] = "Friz Quadrata TT",
			["keepAspectRatio"] = false,
			["animation"] = {
				["start"] = {
					["preset"] = "grow",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["progressPrecision"] = 0,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["useglowColor"] = false,
			["desaturate"] = false,
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text1Point"] = "CENTER",
			["displayIcon"] = "609815",
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["parent"] = "MS技能监控-戒律",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 3,
					["multi"] = {
						[8] = true,
						[3] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["use_name"] = false,
				["faction"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
			},
			["authorOptions"] = {
			},
			["config"] = {
			},
			["xOffset"] = 0,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Color"] = {
				0.694117647058824, -- [1]
				0.396078431372549, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["width"] = 40,
			["text2Enabled"] = false,
			["text1FontFlags"] = "OUTLINE",
			["regionType"] = "icon",
			["selfPoint"] = "CENTER",
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["text2FontSize"] = 24,
			["text1Containment"] = "INSIDE",
			["text1"] = "%p",
			["text2"] = "%p",
			["icon"] = true,
			["zoom"] = 0,
			["auto"] = true,
			["frameStrata"] = 1,
			["id"] = "渐隐术CD-戒律",
			["glow"] = false,
			["alpha"] = 1,
			["anchorFrameType"] = "SCREEN",
			["internalVersion"] = 9,
			["uid"] = "10Byd05li7X",
			["inverse"] = true,
			["stickyDuration"] = false,
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
			},
			["cooldown"] = true,
			["text1Enabled"] = true,
		},
		["阴暗面之力计时"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["xOffset"] = 0,
			["displayText"] = "%p\n",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sameTexture"] = true,
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Accidental Presidency",
			["crop_y"] = 0.41,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["crop"] = 0,
			["blendMode"] = "ADD",
			["zoom"] = 0.3,
			["auto"] = true,
			["compress"] = false,
			["alpha"] = 1,
			["uid"] = "9mepc3YeRUZ",
			["displayIcon"] = 458720,
			["stacksPoint"] = "CENTER",
			["backgroundOffset"] = 0,
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				0.976470588235294, -- [2]
				0.137254901960784, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n",
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "5.4",
						["spellId"] = "198069",
						["ownOnly"] = true,
						["names"] = {
							"图雷的祝福", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["unevent"] = "auto",
						["buffShowOn"] = "showOnActive",
						["remOperator"] = "<=",
						["subeventSuffix"] = "_CAST_START",
						["custom_hide"] = "timed",
						["name"] = "阴暗面之力",
						["type"] = "aura",
						["use_spellId"] = true,
						["custom_type"] = "status",
						["use_showOn"] = true,
						["spellName"] = 527,
						["event"] = "Cooldown Progress (Spell)",
						["use_specific_unit"] = false,
						["realSpellName"] = "纯净术",
						["use_spellName"] = true,
						["spellIds"] = {
							196644, -- [1]
						},
						["debuffType"] = "HELPFUL",
						["check"] = "update",
						["use_unit"] = true,
						["unit"] = "player",
						["fullscan"] = true,
					},
					["untrigger"] = {
						["spellName"] = 527,
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura",
						["spellId"] = "246519",
						["subeventSuffix"] = "_CAST_START",
						["ownOnly"] = true,
						["event"] = "Health",
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["fullscan"] = true,
						["names"] = {
						},
						["name"] = "悔悟",
						["subeventPrefix"] = "SPELL",
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = 1,
			},
			["endAngle"] = 360,
			["internalVersion"] = 9,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["scalex"] = 1,
					["alphaType"] = "custom",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function (progress, start, delta)\n    if aura_env.minCount then\n        return aura_env.minCount / 3\n    end\n    \n    return 1\nend\n\n\n\n\n\n\n\n\n\n\n",
					["use_alpha"] = true,
					["type"] = "none",
					["scaley"] = 1,
					["alpha"] = 0,
					["preset"] = "pulse",
					["y"] = 0,
					["x"] = 0,
					["use_color"] = false,
					["colorB"] = 1,
					["colorType"] = "custom",
					["rotate"] = 0,
					["duration"] = "0",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["stickyDuration"] = false,
			["version"] = 2,
			["height"] = 23.3333110809326,
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["displayStacks"] = "%c",
			["mirror"] = false,
			["anchorFrameFrame"] = "WeakAuras:阴暗面之力监视",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["crop_x"] = 0.41,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["textColor"] = {
				0.96862745098039, -- [1]
				1, -- [2]
				0.94509803921569, -- [3]
				1, -- [4]
			},
			["wordWrap"] = "WordWrap",
			["foregroundColor"] = {
				0, -- [1]
				0.5921568627451, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["stacksContainment"] = "INSIDE",
			["regionType"] = "text",
			["justify"] = "CENTER",
			["anchorFrameType"] = "SELECTFRAME",
			["id"] = "阴暗面之力计时",
			["startAngle"] = 0,
			["frameStrata"] = 1,
			["width"] = 40.8333511352539,
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["race"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["inverse"] = false,
			["fontSize"] = 12,
			["orientation"] = "CLOCKWISE",
			["conditions"] = {
			},
			["fixedWidth"] = 200,
			["parent"] = "戒律监控",
		},
		["救赎背景"] = {
			["textFlags"] = "None",
			["stacksSize"] = 32,
			["user_x"] = 0,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = 90,
			["foregroundColor"] = {
				0.282352941176471, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["sameTexture"] = true,
			["rotateText"] = "NONE",
			["icon"] = true,
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Friz Quadrata TT",
			["sparkOffsetY"] = 0,
			["crop_y"] = 0.41,
			["startAngle"] = 0,
			["regionType"] = "texture",
			["stacks"] = true,
			["blendMode"] = "ADD",
			["authorOptions"] = {
			},
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["texture"] = "Spells\\AURARUNE_B",
			["textFont"] = "Accidental Presidency",
			["borderOffset"] = 5,
			["auto"] = true,
			["compress"] = false,
			["crop_x"] = 0.41,
			["timerFont"] = "Accidental Presidency",
			["alpha"] = 1,
			["stacksFont"] = "Accidental Presidency",
			["zoom"] = 0.3,
			["config"] = {
			},
			["spark"] = false,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["borderInset"] = 11,
			["displayIcon"] = 458720,
			["stacksPoint"] = "CENTER",
			["backgroundOffset"] = 0,
			["outline"] = "OUTLINE",
			["anchorFrameType"] = "SELECTFRAME",
			["borderBackdrop"] = "Blizzard Tooltip",
			["user_y"] = 0,
			["color"] = {
				1, -- [1]
				0.913725490196078, -- [2]
				0.0235294117647059, -- [3]
				1, -- [4]
			},
			["uid"] = "4d7C7lmapfS",
			["customText"] = "function()\n    return aura_env.c and aura_env.c > 0 and aura_env.c or \"\"\nend\n\n\n\n\n\n",
			["barInFront"] = true,
			["sparkHidden"] = "NEVER",
			["desaturateBackground"] = false,
			["textColor"] = {
				0.96862745098039, -- [1]
				1, -- [2]
				0.94509803921569, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["customTextUpdate"] = "update",
			["displayTextLeft"] = "%n",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "5.4",
						["spellId"] = "198076",
						["ownOnly"] = true,
						["unit"] = "target",
						["use_unit"] = true,
						["use_inverse"] = false,
						["spellName"] = 527,
						["check"] = "update",
						["buffShowOn"] = "showOnActive",
						["name"] = "诸罪加身",
						["custom_hide"] = "timed",
						["use_spellName"] = true,
						["type"] = "aura",
						["unevent"] = "auto",
						["subeventSuffix"] = "_CAST_START",
						["use_showOn"] = true,
						["use_specific_unit"] = false,
						["event"] = "Conditions",
						["custom_type"] = "status",
						["realSpellName"] = "纯净术",
						["use_spellId"] = true,
						["spellIds"] = {
						},
						["debuffType"] = "HARMFUL",
						["remOperator"] = "<=",
						["use_alive"] = true,
						["names"] = {
							"教派分歧", -- [1]
						},
						["subeventPrefix"] = "SPELL",
					},
					["untrigger"] = {
						["spellName"] = 527,
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["endAngle"] = 360,
			["internalVersion"] = 9,
			["textSize"] = 32,
			["animation"] = {
				["start"] = {
					["scaleFunc"] = "    function(progress, startX, startY, scaleX, scaleY)\n      local angle = progress * 2 * math.pi\n      return math.cos(angle) * scaleX, startY + (progress * (scaleY - startY))\n    end\n  ",
					["scalex"] = 10,
					["alphaType"] = "straight",
					["colorB"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["use_alpha"] = true,
					["type"] = "preset",
					["use_scale"] = true,
					["preset"] = "shrink",
					["alpha"] = 0.5,
					["colorA"] = 1,
					["y"] = 0,
					["x"] = 0,
					["duration"] = "1",
					["scaley"] = 10,
					["colorR"] = 1,
					["rotate"] = 0,
					["scaleType"] = "fauxspin",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["scaleFunc"] = "    function(progress, startX, startY, scaleX, scaleY)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      return startX + (((math.sin(angle) + 1)/2) * (scaleX - 1)), startY + (((math.sin(angle) + 1)/2) * (scaleY - 1))\n    end\n  ",
					["use_rotate"] = false,
					["scalex"] = 1.1,
					["rotateType"] = "straight",
					["alphaType"] = "alphaPulse",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "    function(progress, start, delta)\n      local angle = (progress * 2 * math.pi) - (math.pi / 2)\n      return start + (((math.sin(angle) + 1)/2) * delta)\n    end\n  ",
					["colorR"] = 1,
					["rotate"] = 15,
					["use_translate"] = false,
					["use_alpha"] = true,
					["duration"] = "0",
					["type"] = "custom",
					["use_color"] = false,
					["preset"] = "pulse",
					["translateFunc"] = "    function(progress, startX, startY, deltaX, deltaY)\n      return startX + (progress * deltaX), startY + (progress * deltaY)\n    end\n  ",
					["scaley"] = 1.1,
					["alpha"] = 0.5,
					["x"] = 0,
					["y"] = 0,
					["colorType"] = "custom",
					["translateType"] = "straightTranslate",
					["scaleType"] = "pulse",
					["use_scale"] = true,
					["rotateFunc"] = "    function(progress, start, delta)\n      return start + (progress * delta)\n    end\n  ",
					["colorB"] = 1,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["preset"] = "fade",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["timerColor"] = {
				0.96862745098039, -- [1]
				1, -- [2]
				0.94509803921569, -- [3]
				1, -- [4]
			},
			["text"] = true,
			["displayText"] = "%c\n",
			["stickyDuration"] = false,
			["discrete_rotation"] = 0,
			["sparkRotation"] = 0,
			["version"] = 2,
			["sparkRotationMode"] = "AUTO",
			["timer"] = true,
			["timerFlags"] = "None",
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["sparkBlendMode"] = "ADD",
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["fontSize"] = 12,
			["displayStacks"] = "%c",
			["rotate"] = true,
			["sparkWidth"] = 10,
			["border"] = false,
			["mirror"] = false,
			["anchorFrameFrame"] = "WeakAuras:戒律监控",
			["borderEdge"] = "None",
			["borderSize"] = 16,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["icon_side"] = "RIGHT",
			["height"] = 73.9999923706055,
			["sparkOffsetX"] = 0,
			["sparkHeight"] = 30,
			["parent"] = "戒律监控",
			["stacksContainment"] = "INSIDE",
			["stacksColor"] = {
				0.96862745098039, -- [1]
				1, -- [2]
				0.94509803921569, -- [3]
				1, -- [4]
			},
			["justify"] = "LEFT",
			["timerSize"] = 32,
			["id"] = "救赎背景",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = true,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["role"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 3,
					["multi"] = {
						[3] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
						[2] = true,
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["race"] = {
					["multi"] = {
					},
				},
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["frameStrata"] = 2,
			["width"] = 72.0000152587891,
			["crop"] = 0,
			["sparkColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "CLOCKWISE",
			["conditions"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["anchorPoint"] = "CENTER",
		},
		["争分夺秒监视计时"] = {
			["user_y"] = 0,
			["user_x"] = 0,
			["xOffset"] = 0,
			["displayText"] = "%p\n",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["sameTexture"] = true,
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0, -- [4]
			},
			["fontFlags"] = "OUTLINE",
			["selfPoint"] = "CENTER",
			["desaturate"] = false,
			["rotation"] = 0,
			["font"] = "Accidental Presidency",
			["crop_y"] = 0.41,
			["foregroundTexture"] = "Interface\\Addons\\WeakAuras\\PowerAurasMedia\\Auras\\Aura73",
			["regionType"] = "text",
			["blendMode"] = "ADD",
			["zoom"] = 0.3,
			["auto"] = true,
			["compress"] = false,
			["alpha"] = 1,
			["uid"] = "xdol(MizCtK",
			["displayIcon"] = 458720,
			["stacksPoint"] = "CENTER",
			["textColor"] = {
				0.96862745098039, -- [1]
				1, -- [2]
				0.94509803921569, -- [3]
				1, -- [4]
			},
			["outline"] = "OUTLINE",
			["color"] = {
				1, -- [1]
				0.945098039215686, -- [2]
				0.0980392156862745, -- [3]
				1, -- [4]
			},
			["customText"] = "\n\n\n",
			["desaturateBackground"] = false,
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["desaturateForeground"] = false,
			["triggers"] = {
				{
					["trigger"] = {
						["rem"] = "5.4",
						["spellId"] = "197763",
						["ownOnly"] = true,
						["names"] = {
							"图雷的祝福", -- [1]
						},
						["subeventPrefix"] = "SPELL",
						["use_specific_unit"] = false,
						["custom_type"] = "status",
						["check"] = "update",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HELPFUL",
						["name"] = "争分夺秒",
						["type"] = "aura",
						["use_spellName"] = true,
						["unevent"] = "auto",
						["use_showOn"] = true,
						["use_unit"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["buffShowOn"] = "showOnActive",
						["realSpellName"] = "纯净术",
						["use_spellId"] = true,
						["spellIds"] = {
							196644, -- [1]
						},
						["spellName"] = 527,
						["remOperator"] = "<=",
						["custom_hide"] = "timed",
						["unit"] = "player",
						["fullscan"] = true,
					},
					["untrigger"] = {
						["spellName"] = 527,
					},
				}, -- [1]
				["activeTriggerMode"] = 1,
			},
			["endAngle"] = 360,
			["internalVersion"] = 9,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["colorR"] = 1,
					["duration"] = "0",
					["alphaType"] = "custom",
					["colorA"] = 1,
					["colorG"] = 1,
					["alphaFunc"] = "function (progress, start, delta)\n    if aura_env.minCount then\n        return aura_env.minCount / 3\n    end\n    \n    return 1\nend\n\n\n\n\n\n\n\n\n\n\n",
					["use_alpha"] = true,
					["type"] = "none",
					["preset"] = "pulse",
					["alpha"] = 0,
					["use_color"] = false,
					["y"] = 0,
					["colorType"] = "custom",
					["scaley"] = 1,
					["x"] = 0,
					["scalex"] = 1,
					["rotate"] = 0,
					["colorB"] = 1,
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["stickyDuration"] = false,
			["version"] = 2,
			["height"] = 23.3333568572998,
			["backgroundTexture"] = "Textures\\SpellActivationOverlays\\Eclipse_Sun",
			["displayStacks"] = "%c",
			["mirror"] = false,
			["anchorFrameFrame"] = "WeakAuras:争分夺秒监视",
			["authorOptions"] = {
			},
			["config"] = {
			},
			["crop_x"] = 0.41,
			["wordWrap"] = "WordWrap",
			["backgroundOffset"] = 0,
			["foregroundColor"] = {
				0, -- [1]
				0.5921568627451, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["icon"] = true,
			["stacksContainment"] = "INSIDE",
			["crop"] = 0,
			["justify"] = "CENTER",
			["anchorFrameType"] = "SELECTFRAME",
			["id"] = "争分夺秒监视计时",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["frameStrata"] = 1,
			["width"] = 40.8331642150879,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = true,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["fontSize"] = 12,
			["inverse"] = false,
			["startAngle"] = 0,
			["orientation"] = "CLOCKWISE",
			["conditions"] = {
			},
			["fixedWidth"] = 200,
			["parent"] = "戒律监控",
		},
		["New"] = {
			["outline"] = "OUTLINE",
			["fontSize"] = 12,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayText"] = "%p",
			["yOffset"] = 0,
			["regionType"] = "text",
			["animation"] = {
				["start"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["main"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
				["finish"] = {
					["type"] = "none",
					["duration_type"] = "seconds",
				},
			},
			["customTextUpdate"] = "update",
			["automaticWidth"] = "Auto",
			["actions"] = {
				["start"] = {
				},
				["init"] = {
				},
				["finish"] = {
				},
			},
			["triggers"] = {
				{
					["trigger"] = {
						["type"] = "custom",
						["subeventSuffix"] = "_CAST_START",
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["spellIds"] = {
						},
						["useName"] = true,
						["names"] = {
						},
						["unit"] = "player",
						["debuffType"] = "HELPFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				["disjunctive"] = "custom",
				["activeTriggerMode"] = -10,
			},
			["xOffset"] = 0,
			["internalVersion"] = 9,
			["justify"] = "LEFT",
			["selfPoint"] = "BOTTOM",
			["id"] = "New",
			["wordWrap"] = "WordWrap",
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["fixedWidth"] = 200,
			["config"] = {
			},
			["font"] = "Friz Quadrata TT",
			["anchorPoint"] = "CENTER",
			["conditions"] = {
			},
			["load"] = {
				["spec"] = {
					["multi"] = {
					},
				},
				["class"] = {
					["multi"] = {
					},
				},
				["size"] = {
					["multi"] = {
					},
				},
			},
			["authorOptions"] = {
			},
		},
		["真言术：耀CD"] = {
			["glow"] = false,
			["text1FontSize"] = 16,
			["cooldownTextEnabled"] = true,
			["customText"] = "function()\n    local r = WeakAuras.regions[aura_env.id].region\n    r.text2:ClearAllPoints()\n    r.text2:SetPoint(\"BOTTOMRIGHT\", r, \"BOTTOMRIGHT\", 4, 1)\nend",
			["yOffset"] = 0,
			["anchorPoint"] = "CENTER",
			["cooldownSwipe"] = true,
			["customTextUpdate"] = "update",
			["cooldownEdge"] = false,
			["icon"] = true,
			["useglowColor"] = false,
			["parent"] = "MS技能监控-戒律",
			["internalVersion"] = 9,
			["keepAspectRatio"] = false,
			["selfPoint"] = "CENTER",
			["glowColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["authorOptions"] = {
			},
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["stickyDuration"] = false,
			["progressPrecision"] = 0,
			["text1Point"] = "CENTER",
			["conditions"] = {
				{
					["check"] = {
						["trigger"] = 1,
						["op"] = "==",
						["value"] = "0",
						["variable"] = "charges",
					},
					["changes"] = {
						{
							["value"] = true,
							["property"] = "desaturate",
						}, -- [1]
					},
				}, -- [1]
				{
					["check"] = {
						["trigger"] = 1,
						["variable"] = "onCooldown",
						["value"] = 1,
					},
					["changes"] = {
						{
							["value"] = {
								0.694117647058824, -- [1]
								0.396078431372549, -- [2]
								1, -- [3]
								1, -- [4]
							},
							["property"] = "text1Color",
						}, -- [1]
					},
				}, -- [2]
			},
			["text2FontFlags"] = "OUTLINE",
			["height"] = 40,
			["text2Point"] = "CENTER",
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["single"] = 3,
					["multi"] = {
						[8] = true,
						[3] = true,
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["text1Containment"] = "INSIDE",
			["config"] = {
			},
			["desaturate"] = false,
			["text2Containment"] = "INSIDE",
			["glowType"] = "buttonOverlay",
			["text1Font"] = "Friz Quadrata TT",
			["width"] = 40,
			["text2Enabled"] = true,
			["text2Color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["regionType"] = "icon",
			["animation"] = {
				["start"] = {
					["preset"] = "grow",
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["text1FontFlags"] = "OUTLINE",
			["text2FontSize"] = 10,
			["alpha"] = 1,
			["text1"] = "%p",
			["zoom"] = 0,
			["xOffset"] = 0,
			["text2"] = "%c%s",
			["auto"] = true,
			["text1Color"] = {
				1, -- [1]
				0.972549019607843, -- [2]
				0.172549019607843, -- [3]
				1, -- [4]
			},
			["id"] = "真言术：耀CD",
			["text1Enabled"] = true,
			["frameStrata"] = 1,
			["anchorFrameType"] = "SCREEN",
			["text2Font"] = "Friz Quadrata TT",
			["uid"] = "3eGca8rCl5Q",
			["inverse"] = true,
			["color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayIcon"] = "609815",
			["cooldown"] = true,
			["triggers"] = {
				{
					["trigger"] = {
						["use_charges"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["duration"] = "1",
						["custom_hide"] = "timed",
						["charges_operator"] = "==",
						["charges"] = "0",
						["spellName"] = 194509,
						["unevent"] = "auto",
						["use_showOn"] = true,
						["use_genericShowOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["debuffType"] = "HELPFUL",
						["realSpellName"] = "真言术：耀",
						["use_spellName"] = true,
						["spellIds"] = {
						},
						["type"] = "status",
						["subeventSuffix"] = "_CAST_START",
						["unit"] = "player",
						["subeventPrefix"] = "SPELL",
						["names"] = {
						},
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 194509,
					},
				}, -- [1]
				{
					["trigger"] = {
						["use_charges"] = true,
						["genericShowOn"] = "showAlways",
						["use_unit"] = true,
						["use_showgcd"] = true,
						["spellName"] = 194509,
						["charges_operator"] = ">",
						["charges"] = "0",
						["unevent"] = "auto",
						["use_showOn"] = true,
						["event"] = "Cooldown Progress (Spell)",
						["realSpellName"] = "真言术：耀",
						["use_spellName"] = true,
						["duration"] = "1",
						["subeventPrefix"] = "SPELL",
						["subeventSuffix"] = "_CAST_START",
						["use_genericShowOn"] = true,
						["type"] = "status",
						["unit"] = "player",
					},
					["untrigger"] = {
						["showOn"] = "showAlways",
						["spellName"] = 194509,
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
		},
		["暗言术：痛持续"] = {
			["textFlags"] = "OUTLINE",
			["stacksSize"] = 12,
			["xOffset"] = 0,
			["stacksFlags"] = "None",
			["yOffset"] = -52,
			["anchorPoint"] = "CENTER",
			["sparkRotation"] = 0,
			["rotateText"] = "NONE",
			["actions"] = {
				["start"] = {
				},
				["finish"] = {
				},
				["init"] = {
				},
			},
			["fontFlags"] = "OUTLINE",
			["icon_color"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["selfPoint"] = "CENTER",
			["barColor"] = {
				1, -- [1]
				0.976470588235294, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["desaturate"] = false,
			["sparkOffsetY"] = 0,
			["load"] = {
				["use_petbattle"] = false,
				["use_never"] = false,
				["class"] = {
					["single"] = "PRIEST",
					["multi"] = {
					},
				},
				["use_class"] = true,
				["race"] = {
					["multi"] = {
					},
				},
				["use_spec"] = true,
				["size"] = {
					["multi"] = {
					},
				},
				["talent2"] = {
					["multi"] = {
					},
				},
				["use_level"] = false,
				["talent"] = {
					["multi"] = {
					},
				},
				["spec"] = {
					["single"] = 1,
					["multi"] = {
					},
				},
				["difficulty"] = {
					["multi"] = {
					},
				},
				["pvptalent"] = {
					["multi"] = {
					},
				},
				["faction"] = {
					["multi"] = {
					},
				},
				["role"] = {
					["multi"] = {
					},
				},
				["use_name"] = false,
				["ingroup"] = {
					["multi"] = {
					},
				},
			},
			["timerColor"] = {
				1, -- [1]
				0.937254901960784, -- [2]
				0, -- [3]
				1, -- [4]
			},
			["useAdjustededMin"] = false,
			["regionType"] = "aurabar",
			["stacks"] = true,
			["texture"] = "Eui_4",
			["textFont"] = "默认",
			["zoom"] = 0,
			["spark"] = true,
			["timerFont"] = "默认",
			["alpha"] = 1,
			["sparkColor"] = {
				1, -- [1]
				0.96078431372549, -- [2]
				0.254901960784314, -- [3]
				1, -- [4]
			},
			["textColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["borderBackdrop"] = "Blizzard Tooltip",
			["color"] = {
			},
			["sparkRotationMode"] = "AUTO",
			["textSize"] = 12,
			["triggers"] = {
				{
					["trigger"] = {
						["fullscan"] = true,
						["type"] = "aura",
						["spellId"] = "589",
						["subeventSuffix"] = "_CAST_START",
						["subeventPrefix"] = "SPELL",
						["ownOnly"] = true,
						["event"] = "Health",
						["use_specific_unit"] = false,
						["spellIds"] = {
							589, -- [1]
						},
						["use_spellId"] = true,
						["name"] = "暗言术：痛",
						["names"] = {
							"暗言术：痛", -- [1]
						},
						["buffShowOn"] = "showOnActive",
						["custom_hide"] = "timed",
						["unit"] = "target",
						["debuffType"] = "HARMFUL",
					},
					["untrigger"] = {
					},
				}, -- [1]
				{
					["trigger"] = {
						["type"] = "aura",
						["spellId"] = "204213",
						["subeventSuffix"] = "_CAST_START",
						["debuffType"] = "HARMFUL",
						["ownOnly"] = true,
						["event"] = "Health",
						["subeventPrefix"] = "SPELL",
						["fullscan"] = true,
						["use_spellId"] = true,
						["spellIds"] = {
							204197, -- [1]
						},
						["name"] = "净化邪恶",
						["unit"] = "target",
						["names"] = {
							"净化邪恶", -- [1]
						},
						["use_specific_unit"] = false,
						["buffShowOn"] = "showOnActive",
					},
					["untrigger"] = {
					},
				}, -- [2]
				["disjunctive"] = "any",
				["activeTriggerMode"] = -10,
			},
			["internalVersion"] = 9,
			["animation"] = {
				["start"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["main"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
				["finish"] = {
					["duration_type"] = "seconds",
					["type"] = "none",
				},
			},
			["backdropInFront"] = false,
			["text"] = true,
			["authorOptions"] = {
			},
			["stickyDuration"] = false,
			["config"] = {
			},
			["uid"] = "O1C4Wiv5ckB",
			["displayTextLeft"] = "%n",
			["auto"] = true,
			["height"] = 15,
			["timerFlags"] = "OUTLINE",
			["backgroundColor"] = {
				0, -- [1]
				0, -- [2]
				0, -- [3]
				0.5, -- [4]
			},
			["sparkBlendMode"] = "ADD",
			["useAdjustededMax"] = false,
			["borderInset"] = 11,
			["backdropColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["anchorFrameType"] = "SELECTFRAME",
			["sparkWidth"] = 10,
			["borderInFront"] = false,
			["border"] = false,
			["borderEdge"] = "None",
			["sparkHidden"] = "NEVER",
			["borderSize"] = 16,
			["anchorFrameFrame"] = "WeakAuras:戒律监控",
			["icon_side"] = "RIGHT",
			["timerSize"] = 14,
			["sparkOffsetX"] = 0,
			["sparkHeight"] = 30,
			["borderColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				0.5, -- [4]
			},
			["customTextUpdate"] = "update",
			["stacksColor"] = {
				1, -- [1]
				1, -- [2]
				1, -- [3]
				1, -- [4]
			},
			["displayTextRight"] = "%p",
			["borderOffset"] = 5,
			["id"] = "暗言术：痛持续",
			["sparkTexture"] = "Interface\\CastingBar\\UI-CastingBar-Spark",
			["frameStrata"] = 1,
			["width"] = 560,
			["icon"] = false,
			["timer"] = true,
			["inverse"] = false,
			["sparkDesature"] = false,
			["orientation"] = "HORIZONTAL",
			["conditions"] = {
			},
			["stacksFont"] = "Friz Quadrata TT",
			["parent"] = "戒律监控",
		},
	},
	["registered"] = {
	},
	["minimap"] = {
		["hide"] = false,
	},
	["frame"] = {
		["xOffset"] = -415.999633789063,
		["yOffset"] = -301.49853515625,
		["height"] = 665.000122070313,
		["width"] = 750.000061035156,
	},
	["login_squelch_time"] = 10,
	["editor_theme"] = "Monokai",
}
