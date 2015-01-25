///RandomlyPickPart

partType = irandom(Parts.Tails);
part = noone;
//show_debug_message("part slot: " + string(partType));
if(partType == Parts.Backs) {
    part = choose(brown_back_plates, brown_dorsal_fin, brown_insect_wings, brown_normal_wings);
}
if(partType == Parts.Bodies) {
    part = choose(brown_body, fire_body, leopard_body, polkadot_body, purple_body, stormy_body, stripey_body);
}
if(partType == Parts.Ears) {
    part = choose(low_brown_floppy_ears, low_brown_fluffy_ears, low_brown_pointy_ears, low_brown_rounded_ears);
}
if(partType == Parts.Faces) {
    part = choose(brown_mammal_face, brown_reptile_face, fire_reptile_face);
}
if(partType == Parts.Feet) {
    part = choose(brown_blob_feet, brown_fins, brown_six_legs);
}
if(partType == Parts.Horns) {
    part = choose(low_brown_antennae);
}
if(partType == Parts.Tails) {
    part = choose(brown_insect_tail, brown_fluffy_tail, long_brown_fluffy_tail);
}

return part;
