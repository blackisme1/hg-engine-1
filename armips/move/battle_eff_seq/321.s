.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_321", 0

a030_321:
	trysuckerpunch noAttack
    changevar VAR_OP_MULT, VAR_ABILITY_TEMP, 2
noAttack:
	critcalc
	damagecalc
	endscript
.close