///GetSprite
var part = argument0
var state = argument1

//show_debug_message(part);
//show_debug_message(state);

if state == HeroStates.Idle then
    return global.possibleIdles[part, global.currentPart[part]]

if state == HeroStates.Walking then
    return global.possibleWalks[part, global.currentPart[part]]

if state == HeroStates.Dancing then
    return global.possibleDances[part, global.currentPart[part]]
