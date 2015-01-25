///RandomlyPickPart

partType = irandom(Parts.tails);
part = noone;
//show_debug_message("part slot: " + string(partType));
if(partType == Parts.backs) {
    part = choose(brown_back_plates, brown_dorsal_fin, brown_insect_wings, brown_normal_wings);
}
if(partType == Parts.bodies) {
    part = choose(brown_body, fire_body, leopard_body, polkadot_body, purple_body, stormy_body, stripey_body);
}
if(partType == Parts.ears) {
    part = choose(low_brown_floppy_ears, low_brown_fluffy_ears, low_brown_pointy_ears, low_brown_rounded_ears);
}
if(partType == Parts.faces) {
    part = choose(brown_mammal_face, brown_reptile_face, fire_reptile_face);
}
if(partType == Parts.feet) {
    part = choose(brown_blob_feet, brown_fins, brown_six_legs);
}
if(partType == Parts.horns) {
    part = choose(low_brown_antennae);
}
if(partType == Parts.tails) {
    part = choose(brown_insect_tail, brown_fluffy_tail, long_brown_fluffy_tail);
}

return part;
