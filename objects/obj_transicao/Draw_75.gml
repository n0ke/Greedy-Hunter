var sprite, width, height, numHeight, numWidth;

sprite = spr_transicao;

width = sprite_get_width(sprite);
height = sprite_get_height(sprite);

numWidth = ceil(480 / width);
numHeight = ceil(display_get_gui_height() / height);

switch(state) {

    case transition.OUT : {

        for (var i = 0; i < numWidth; i++)  {

            for (var j = 0; j < numHeight; j++)  {

                var frame = currentFrame - i - j;
                frame = clamp(frame, 0, sprite_get_number(sprite)-1);
                draw_sprite(sprite, frame, i * width + 32, j * height); 

            }

        }
        currentFrame += frameSpeed;

    }break;

    case transition.IN : {

        for (var i = 0; i < numWidth; i++)  {

            for (var j = 0; j < numHeight; j++)  {

                var frame = currentFrame - i - j;
                frame = clamp(frame, 0, sprite_get_number(sprite)-1);
                draw_sprite(sprite, frame, 1280 - 32 - i * width, 720 - 32 - j * height); 

            }

        }

        currentFrame -= frameSpeed;
        //if (currentFrame <= 0) instance_destroy();

    }break;

}


    
    if (currentFrame >= (width + height)/2) {
       
            state = transition.IN;

            //----------Trocando de room----------\
            room_goto(Room);

        

    }



