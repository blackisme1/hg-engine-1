.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_327", 0

// Scary Face

a030_327:
    changevar VAR_OP_SET, VAR_ADD_STATUS1, ADD_STATUS_SCARY_FACE | ADD_STATUS_DEFENDER
	endscript
.close