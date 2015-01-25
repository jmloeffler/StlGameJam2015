///GetSprite(part, state)
var part = argument0
var state = argument1

if global.currentPart[part] == noone then
    return noone
    
if state == HeroStates.Idle then
    return global.possibleIdles[part, global.currentPart[part]]

if state == HeroStates.Walking then
    return global.possibleWalks[part, global.currentPart[part]]

if state == HeroStates.Dancing then
    return global.possibleDances[part, global.currentPart[part]]
