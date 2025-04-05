#
# Description:	Display admin options in chat
# Called by:	Player
# Entity @s:	Player
#
tellraw @s \
    [\
        {\
            "text": "Customizable Armor Stands - Admin Options",\
            "color":"yellow",\
            "bold":true\
        }\
    ]
tellraw @s \
    [\
        {\
            "text":"Particle shrine: ",\
            "color":"aqua"\
        },\
        {\
            "text":"Create",\
            "color":"green",\
            "click_event": {\
                "action":"run_command",\
                "command":"/function armor_statues:shrine/create"\
            }\
        },\
        {\
            "text":" / ",\
            "color":"aqua"\
        },\
        {\
            "text":"Remove",\
            "color":"green",\
            "click_event":{\
                "action":"run_command",\
                "command":"/function armor_statues:shrine/remove"\
            }\
        }\
    ]
execute if score #help_craftable as_angle matches 0 run tellraw @s \
    [\
        {\
            "text":"Get book from help: ",\
            "color":"aqua"\
        },\
        {\
            "text": "Disabled",\
            "color":"green", \
            "click_event":{\
                "action":"run_command", \
                "command":"/function armor_statues:admin/book_from_help_toggle"\
            }, \
            "hover_event":{\
                "action":"show_text", \
                "value":{\
                    "text":"Click to toggle", \
                    "color":"yellow"\
                }\
            }\
        }\
    ]
execute if score #help_craftable as_angle matches 1 run tellraw @s \
    [\
        {\
            "text":"Get book from help: ",\
            "color":"aqua"\
        },\
        {\
            "text": "Enabled",\
            "color":"green", \
            "click_event":{\
                "action":"run_command", \
                "command":"/function armor_statues:admin/book_from_help_toggle"\
            }, \
            "hover_event":{\
                "action":"show_text", \
                "value":{\
                    "text":"Click to toggle", \
                    "color":"yellow"\
                }\
            }\
        }\
    ]
execute if score #book_uncraftable as_angle matches 0 run tellraw @s \
    [\
        {\
            "text":"Craftable book by naming \"Statues\": ",\
            "color":"aqua"\
        },\
        {\
            "text": "Enabled",\
            "color":"green", \
            "click_event":{\
                "action":"run_command", \
                "command":"/function armor_statues:admin/craft_book_toggle"\
            }, \
            "hover_event":{\
                "action":"show_text", \
                "value":{\
                    "text":"Click to toggle", \
                    "color":"yellow"\
                }\
            }\
        }\
    ]
execute if score #book_uncraftable as_angle matches 1 run tellraw @s \
    [\
        {\
            "text":"Craftable book by naming \"Statues\": ",\
            "color":"aqua"\
        },\
        {\
            "text": "Disabled",\
            "color":"green", \
            "click_event":{\
                "action":"run_command", \
                "command":"/function armor_statues:admin/craft_book_toggle"\
            }, \
            "hover_event":{\
                "action":"show_text", \
                "value":{\
                    "text":"Click to toggle", \
                    "color":"yellow"\
                }\
            }\
        }\
    ]
#
# pointer_craftable
#
execute if score #pointer_craftable as_angle matches 1 run tellraw @s \
    [\
        {\
            "text":"Pointer Wand by naming \"Statues\": ",\
            "color":"aqua"\
        },\
        {\
            "text": "Enabled",\
            "color":"green", \
            "click_event":{\
                "action":"run_command", \
                "command":"/function armor_statues:admin/pointer_craftable_toggle"\
            }, \
            "hover_event":{\
                "action":"show_text", \
                "value":{\
                    "text":"Click to toggle", \
                    "color":"yellow"\
                }\
            }\
        }\
    ]
execute if score #pointer_craftable as_angle matches 0 run tellraw @s \
    [\
        {\
            "text":"Pointer Wand by naming \"Statues\": ",\
            "color":"aqua"\
        },\
        {\
            "text": "Disabled",\
            "color":"green", \
            "click_event":{\
                "action":"run_command", \
                "command":"/function armor_statues:admin/pointer_craftable_toggle"\
            }, \
            "hover_event":{\
                "action":"show_text", \
                "value":{\
                    "text":"Click to toggle", \
                    "color":"yellow"\
                }\
            }\
        }\
    ]
#
# adjustment_craftable
#
execute if score #adjustment_craftable as_angle matches 1 run tellraw @s \
    [\
        {\
            "text":"Adjustment Wand by naming \"Statues\": ",\
            "color":"aqua"\
        },\
        {\
            "text": "Enabled",\
            "color":"green", \
            "click_event":{\
                "action":"run_command", \
                "command":"/function armor_statues:admin/adjustment_craftable_toggle"\
            }, \
            "hover_event":{\
                "action":"show_text", \
                "value":{\
                    "text":"Click to toggle", \
                    "color":"yellow"\
                }\
            }\
        }\
    ]
execute if score #adjustment_craftable as_angle matches 0 run tellraw @s \
    [\
        {\
            "text":"Adjustment Wand by naming \"Statues\": ",\
            "color":"aqua"\
        },\
        {\
            "text": "Disabled",\
            "color":"green", \
            "click_event":{\
                "action":"run_command", \
                "command":"/function armor_statues:admin/adjustment_craftable_toggle"\
            }, \
            "hover_event":{\
                "action":"show_text", \
                "value":{\
                    "text":"Click to toggle", \
                    "color":"yellow"\
                }\
            }\
        }\
    ]
#
# pointer_triggerable
#
execute if score #pointer_triggerable as_angle matches 1 run tellraw @s \
    [\
        {\
            "text":"Pointer Wand using trigger: ",\
            "color":"aqua"\
        },\
        {\
            "text": "Enabled",\
            "color":"green", \
            "click_event":{\
                "action":"run_command", \
                "command":"/function armor_statues:admin/pointer_triggerable_toggle"\
            }, \
            "hover_event":{\
                "action":"show_text", \
                "value":{\
                    "text":"Click to toggle", \
                    "color":"yellow"\
                }\
            }\
        }\
    ]
execute if score #pointer_triggerable as_angle matches 0 run tellraw @s \
    [\
        {\
            "text":"Pointer Wand using trigger: ",\
            "color":"aqua"\
        },\
        {\
            "text": "Disabled",\
            "color":"green", \
            "click_event":{\
                "action":"run_command", \
                "command":"/function armor_statues:admin/pointer_triggerable_toggle"\
            }, \
            "hover_event":{\
                "action":"show_text", \
                "value":{\
                    "text":"Click to toggle", \
                    "color":"yellow"\
                }\
            }\
        }\
    ]
#
# adjustment_triggerable
#
execute if score #adjustment_triggerable as_angle matches 1 run tellraw @s \
    [\
        {\
            "text":"Adjustment Wand using trigger: ",\
            "color":"aqua"\
        },\
        {\
            "text": "Enabled",\
            "color":"green", \
            "click_event":{\
                "action":"run_command", \
                "command":"/function armor_statues:admin/adjustment_triggerable_toggle"\
            }, \
            "hover_event":{\
                "action":"show_text", \
                "value":{\
                    "text":"Click to toggle", \
                    "color":"yellow"\
                }\
            }\
        }\
    ]
execute if score #adjustment_triggerable as_angle matches 0 run tellraw @s \
    [\
        {\
            "text":"Adjustment Wand using trigger: ",\
            "color":"aqua"\
        },\
        {\
            "text": "Disabled",\
            "color":"green", \
            "click_event":{\
                "action":"run_command", \
                "command":"/function armor_statues:admin/adjustment_triggerable_toggle"\
            }, \
            "hover_event":{\
                "action":"show_text", \
                "value":{\
                    "text":"Click to toggle", \
                    "color":"yellow"\
                }\
            }\
        }\
    ]
#
# uuid_locking
#
execute if score #uuid_locking as_angle matches 0 run tellraw @s [\
    {\
        "text":"UUID locked Armor Stands: ",\
        "color":"aqua"\
    },\
    {\
        "text": "Disabled",\
        "color":"green", \
        "click_event":{\
            "action":"run_command", \
            "command":"/function armor_statues:admin/uuid_lock_toggle"\
        }, \
        "hover_event":{\
            "action":"show_text", \
            "value":{\
                "text":"Makes locked armor stands only unlockable by the player who locked them or creative players.\\n\\nClick to toggle", \
                "color":"yellow"\
            }\
        }\
    }\
]
execute if score #uuid_locking as_angle matches 1 run tellraw @s [\
    {\
        "text":"UUID locked Armor Stands: ",\
        "color":"aqua"\
    },\
    {\
        "text": "Enabled",\
        "color":"green", \
        "click_event":{\
            "action":"run_command", \
            "command":"/function armor_statues:admin/uuid_lock_toggle"\
        }, \
        "hover_event":{\
            "action":"show_text", \
            "value":{\
                "text":"Makes locked armor stands only unlockable by the player who locked them or creative players.\\n\\nClick to toggle", \
                "color":"yellow"\
            }\
        }\
    }\
]
execute if score #fixing_enabled as_angle matches 0 run tellraw @s [\
    {\
        "text":"Enable Item Frame Fixing: ",\
        "color":"aqua"\
    },\
    {\
        "text": "Disabled",\
        "color":"green", \
        "click_event":{\
            "action":"run_command", \
            "command":"/function armor_statues:admin/fixed_item_frame_toggle"\
        }, \
        "hover_event":{\
            "action":"show_text", \
            "value":{\
                "text":"Click to toggle", \
                "color":"yellow"\
            }\
        }\
    }\
]
execute if score #fixing_enabled as_angle matches 1 run tellraw @s [\
    {\
        "text":"Enable Item Frame Fixing: ",\
        "color":"aqua"\
    },\
    {\
        "text": "Enabled",\
        "color":"green", \
        "click_event":{\
            "action":"run_command", \
            "command":"/function armor_statues:admin/fixed_item_frame_toggle"\
        }, \
        "hover_event":{\
            "action":"show_text", \
            "value":{\
                "text":"Click to toggle", \
                "color":"yellow"\
            }\
        }\
    }\
]
execute if score #wands_disabled as_angle matches 0 run tellraw @s [\
    {\
        "text":"Enable pointer and adjustment wands: ",\
        "color":"aqua"\
    },\
    {\
        "text": "Enabled",\
        "color":"green", \
        "click_event":{\
            "action":"run_command", \
            "command":"/function armor_statues:admin/wands_disabled_toggle"\
        }, \
        "hover_event":{\
            "action":"show_text", \
            "value":{\
                "text":"Click to toggle", \
                "color":"yellow"\
            }\
        }\
    }\
]
execute if score #wands_disabled as_angle matches 1 run tellraw @s [\
    {\
        "text":"Enable pointer and adjustment wands: ",\
        "color":"aqua"\
    },\
    {\
        "text": "Disabled",\
        "color":"green", \
        "click_event":{\
            "action":"run_command", \
            "command":"/function armor_statues:admin/wands_disabled_toggle"\
        }, \
        "hover_event":{\
            "action":"show_text", \
            "value":{\
                "text":"Click to toggle", \
                "color":"yellow"\
            }\
        }\
    }\
]
#
# Save CustomNameVisible with copy/paste
#
execute if score #cnv_enabled as_angle matches 0 run tellraw @s [\
    {\
        "text":"Enable copy/paste value of CustomNameVisible: ",\
        "color":"aqua"\
    },\
    {\
        "text": "Disabled",\
        "color":"green", \
        "click_event":{\
            "action":"run_command", \
            "command":"/function armor_statues:admin/customnamevisible_enabled_toggle"\
        }, \
        "hover_event":{\
            "action":"show_text", \
            "value":{\
                "text":"Click to toggle", \
                "color":"yellow"\
            }\
        }\
    }\
]
execute if score #cnv_enabled as_angle matches 1 run tellraw @s [\
    {\
        "text":"Enable copy/paste value of CustomNameVisible: ",\
        "color":"aqua"\
    },\
    {\
        "text": "Enabled",\
        "color":"green", \
        "click_event":{\
            "action":"run_command", \
            "command":"/function armor_statues:admin/customnamevisible_enabled_toggle"\
        }, \
        "hover_event":{\
            "action":"show_text", \
            "value":{\
                "text":"Click to toggle", \
                "color":"yellow"\
            }\
        }\
    }\
]
# Save Name with copy/paste
execute if score #name_enabled as_angle matches 0 run tellraw @s [\
    {\
        "text":"Enable copy/paste for armor stand Name: ",\
        "color":"aqua"\
    },\
    {\
        "text": "Disabled",\
        "color":"green", \
        "click_event":{\
            "action":"run_command", \
            "command":"/function armor_statues:admin/name_enabled_toggle"\
        }, \
        "hover_event":{\
            "action":"show_text", \
            "value":{\
                "text":"Click to toggle", \
                "color":"yellow"\
            }\
        }\
    }\
]
execute if score #name_enabled as_angle matches 1 run tellraw @s [\
    {\
        "text":"Enable copy/paste for armor stand Name: ",\
        "color":"aqua"\
    },\
    {\
        "text": "Enabled",\
        "color":"green", \
        "click_event":{\
            "action":"run_command", \
            "command":"/function armor_statues:admin/name_enabled_toggle"\
        }, \
        "hover_event":{\
            "action":"show_text", \
            "value":{\
                "text":"Click to toggle", \
                "color":"yellow"\
            }\
        }\
    }\
]
# Disable auto visible name
execute if score #auto_name_visible as_angle matches 0 run tellraw @s [\
    {\
        "text":"Auto name visibility: ",\
        "color":"aqua"\
    },\
    {\
        "text": "Disabled",\
        "color":"green", \
        "click_event":{\
            "action":"run_command", \
            "command":"/function armor_statues:admin/auto_name_visible_toggle"\
        }, \
        "hover_event":{\
            "action":"show_text", \
            "value":{\
                "text":"Click to toggle", \
                "color":"yellow"\
            }\
        }\
    }\
]
execute if score #auto_name_visible as_angle matches 1 run tellraw @s [\
    {\
        "text":"Auto name visibility: ",\
        "color":"aqua"\
    },\
    {\
        "text": "Enabled",\
        "color":"green", \
        "click_event":{\
            "action":"run_command", \
            "command":"/function armor_statues:admin/auto_name_visible_toggle"\
        }, \
        "hover_event":{\
            "action":"show_text", \
            "value":{\
                "text":"Click to toggle", \
                "color":"yellow"\
            }\
        }\
    }\
]
#
tellraw @s [\
    {\
        "text":"Delete unused invisible stands",\
        "color":"green",\
        "hover_event":{\
            "action":"show_text",\
            "value":[\
                {\
                    "text":"Deletes any invisible armor stands in loaded chunks that are not holding or wearing any items.",\
                    "color":"yellow"\
                }\
            ]\
        },\
        "click_event":{\
            "action":"run_command",\
            "command":"/function armor_statues:admin/unused"\
        }\
    }\
]
tellraw @s [\
    {\
        "text":"Highlight all stands",\
        "color":"green",\
        "hover_event":{\
            "action":"show_text",\
            "value":[\
                {\
                    "text":"Gives all stands within 64 blocks the glowing effect for 15 seconds",\
                    "color":"yellow"\
                }\
            ]\
        },\
        "click_event":{\
            "action":"run_command",\
            "command":"/effect give @e[type=armor_stand,distance=..64] minecraft:glowing 15 1 true"\
        }\
    }\
]
#
tellraw @s [\
    {\
        "text":"Max Undo States: ",\
        "color":"aqua",\
        "hover_event":{\
            "action":"show_text",\
            "value":[\
                {\
                    "text":"Sets the maximum number of undo states savable to the Armor Statues book.\nSet to 0 to disable undo states.",\
                    "color":"yellow"\
                }\
            ]\
        },\
        "click_event":{\
            "action":"suggest_command",\
            "command":"/scoreboard players set #undo_states as_angle <time>"\
        }\
    },\
    {\
        "score":{\
            "name":"#undo_states",\
            "objective":"as_angle"\
        },\
        "color":"green"\
    }\
]
#
tellraw @s [\
    {\
        "text":"Item Frame animation time: ",\
        "color":"aqua",\
        "hover_event":{\
            "action":"show_text",\
            "value":[\
                {\
                    "text":"Enables Armor Stand animations by placing a book with a saved pose into an item frame with redstone dust on the block.  Requires an Armor Stand to be 8 blocks from the item frame.  Sets the number of game ticks between animation time of the item frames.\n(16 is recommended for most mid-sized servers.)\nSet to 0 to disable animations.",\
                    "color":"yellow"\
                }\
            ]\
        },\
        "click_event":{\
            "action":"suggest_command",\
            "command":"/scoreboard players set #animate_trigger as_angle <time>"\
        }\
    },\
    {\
        "score":{\
            "name":"#animate_trigger",\
            "objective":"as_angle"\
        },\
        "color":"green"\
    }\
]
#
# Scale
#
execute store result storage armor_statues:admin scale.scale_min float 0.001 run scoreboard players get #scale_min as_angle
execute store result storage armor_statues:admin scale.scale_max float 0.001 run scoreboard players get #scale_max as_angle
tellraw @s [\
    {\
        "text":"Scale limits- ",\
        "color":"aqua",\
        "hover_event":{\
            "action":"show_text",\
            "value":[\
                {\
                    "text":"Sets the min and max values to allow using Scale.\nWARNING: setting these values too low/high may result in some settings not working properly.\n(0.25 is recommended for scale_min.\n3.0 is recommended for scale_max.)\nPhysical game limits are - min: 0.063 and max: 16.",\
                    "color":"yellow"\
                }\
            ]\
        },\
        "click_event":{\
            "action":"suggest_command",\
            "command":"/function armor_statues:admin/scale { scale_min: 0.25f, scale_max: 3.0f }"\
        }\
    },\
    {\
        "text": "Min: "\
    },\
    {\
        "storage":"armor_statues:admin",\
        "nbt":"scale.scale_min",\
        "color":"green"\
    },\
    {\
        "text":" Max: "\
    },\
    {\
        "storage":"armor_statues:admin",\
        "nbt":"scale.scale_max",\
        "color":"green"\
    }\
]
#
# REDO this at some point!
#tellraw @s [{"text":"Reduce local server load","color":"green","hover_event":{"action":"show_text","value":[{"text":"Sets the Marker tag on all locked armor stands within 128 blocks. This reduces the load on the server from ticking the entities but makes the stands unaffected by entity updates such as being pushed by pistons. The Marker tag can be reset for individual stands by unlocking them.","color":"yellow"}]},"click_event":{"action":"run_command","value":"/function armor_statues:admin/marker"}}]
tellraw @s [\
    {\
        "text":"--------------------------",\
        "color":"yellow",\
        "bold":true\
    }\
]
#
# The "Reduce local server load" option has the unfortunate side effect of moving the stands' eye line to their base.
# If this puts it inside a block, the items held and worn by the stand turn black.
# Commented out for the time being whilst options are investigated.
#
