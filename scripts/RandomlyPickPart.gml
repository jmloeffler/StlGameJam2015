///RandomlyPickPart

partType = irandom(Parts.tails);
part = noone;
show_debug_message("part slot: " + string(partType));
if(partType == Parts.backs) {
    //part = choose(brown_back_plates, brown_dorsal_fin);
    part = choose("brown_back_plates", "brown_dorsal_fin");
}
if(partType == Parts.backs) {
    //part = choose(brown_back_plates, brown_dorsal_fin);
    part = choose("brown_back_plates", "brown_dorsal_fin");
}
if(partType == Parts.bodies) {
    //part = choose(brown_back_plates, brown_dorsal_fin);
    part = choose("brown_back_plates", "brown_dorsal_fin");
}
if(partType == Parts.ears) {
    //part = choose(brown_back_plates, brown_dorsal_fin);
    part = choose("brown_back_plates", "brown_dorsal_fin");
}
if(partType == Parts.faces) {
    //part = choose(brown_back_plates, brown_dorsal_fin);
    part = choose("brown_back_plates", "brown_dorsal_fin");
}
if(partType == Parts.feet) {
    //part = choose(brown_back_plates, brown_dorsal_fin);
    part = choose("brown_back_plates", "brown_dorsal_fin");
}
if(partType == Parts.horns) {
    //part = choose(brown_back_plates, brown_dorsal_fin);
    part = choose("brown_back_plates", "brown_dorsal_fin");
}
if(partType == Parts.tails) {
    //part = choose(brown_back_plates, brown_dorsal_fin);
    part = choose("brown_back_plates", "brown_dorsal_fin");
}

return part;
