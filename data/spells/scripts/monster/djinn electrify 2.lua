local combat = Combat()
combat:setParameter(COMBAT_PARAM_TYPE, COMBAT_ENERGYDAMAGE)
combat:setParameter(COMBAT_PARAM_EFFECT, CONST_ME_ENERGYHIT)

local condition = Condition(CONDITION_ENERGY)
condition:setParameter(CONDITION_PARAM_DELAYED, 1)
condition:addDamage(3, 10000, -25)
combat:addCondition(condition)

local area = createCombatArea(AREA_SQUARE1X1)
combat:setArea(area)

function onCastSpell(creature, var)
	return combat:execute(creature, var)
end
