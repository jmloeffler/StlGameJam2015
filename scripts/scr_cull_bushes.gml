var i;
for(i = 0; i < instance_number(obj_food); i+=1)
{
    var food = instance_find(obj_food, i);
    var distance = distance_to_object(food);
    if(distance > 500) {
        
        var angle = random_range(1, 360);
        var newx = cos(angle) * 500;
        var newy = sin(angle) * 500;
        food.x = newx + self.x;
        food.y = newy + self.y;
    }
}