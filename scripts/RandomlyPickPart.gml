///RandomlyPickPart

partType = irandom(Parts.last-1);
part = noone;
//show_debug_message("part slot: " + string(partType));
if(partType == Parts.Backs) {
    part = irandom(Backs.last-1);
}
if(partType == Parts.Bodies) {
    part = irandom(Bodies.last-1);
}
if(partType == Parts.Ears) {
    part = irandom(Ears.last-1);
}
if(partType == Parts.Faces) {
    part = irandom(Faces.last-1);
}
if(partType == Parts.Feet) {
    part = irandom(Feet.last-1);
}
if(partType == Parts.Horns) {
    part = irandom(Horns.last-1);
}
if(partType == Parts.Tails) {
    part = irandom(Tails.last-1);
}

return part;
