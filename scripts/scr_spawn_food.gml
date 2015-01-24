var iter;
for(iter = 0; iter <= 5; iter+=1)
{
    self.bushes[iter] = instance_create(random(room_width),random(room_height),obj_food);
}