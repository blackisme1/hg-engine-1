.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_132", 0

a030_132:
	if IF_EQUAL, VAR_CURRENT_MOVE, MOVE_MOONLIGHT, _002C
    changehprecoverybasedonweather
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x20000061
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS2, 0x100
    endscript
_002C:
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_xFF, 0x30, VAR_HP_TEMP
    if IF_MASK, VAR_FIELD_EFFECT, WEATHER_SUNNY_ANY, _isSun
    if IF_MASK, VAR_FIELD_EFFECT, WEATHER_RAIN_ANY, _isRain
    damagediv 32, 2
	goto _heal
_isSun:
    damagediv 32, 4
	goto _heal
_isRain:
    damagediv 32, 3
    damagediv 32, -2
	goto _heal
_heal:
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x20000061
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS2, 0x100
    endscript

.close
