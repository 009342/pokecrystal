CianwoodCityPhotoStudio_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

FishingGuruScript_0x9e0e0:
	faceplayer
	loadfont
	writetext UnknownText_0x9e0f9
	yesorno
	iffalse UnknownScript_0x9e0f3
	writetext UnknownText_0x9e142
	closetext
	special Function16dc7
	closetext
	loadmovesprites
	end

UnknownScript_0x9e0f3:
	writetext UnknownText_0x9e156
	closetext
	loadmovesprites
	end

UnknownText_0x9e0f9:
	text "You have magnifi-"
	line "cent #MON with"
	cont "you."

	para "How about a photo"
	line "for a souvenir?"
	done

UnknownText_0x9e142:
	text "OK! Big smile now!"
	done

UnknownText_0x9e156:
	text "Oh, that's too"
	line "bad. I thought it"

	para "would be a great"
	line "memento…"
	done

CianwoodCityPhotoStudio_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $7, $2, 5, GROUP_CIANWOOD_CITY, MAP_CIANWOOD_CITY
	warp_def $7, $3, 5, GROUP_CIANWOOD_CITY, MAP_CIANWOOD_CITY

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 1
	person_event SPRITE_FISHING_GURU, 7, 6, OW_UP | $2, $0, -1, -1, (PAL_OW_RED << 4) | $80, 0, FishingGuruScript_0x9e0e0, -1
