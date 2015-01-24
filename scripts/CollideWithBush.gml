///CollideWithBush(bush)
var bush = argument0

if (bush != noone) {
    if (bush).nudge_state == nudge_states.idle {
        (bush).alarm[1] = 20;
        (bush).nudge_state = nudge_states.shaking;
    }
}
