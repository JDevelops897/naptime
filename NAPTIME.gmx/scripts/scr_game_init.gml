global.debug = false;

randomize();

enum KidState {
    Play,
    TrickOrTreat,
    Hide,
    Follow
}

enum Outfits {
    Clown,
    Ghost,
    Spider,
    Nun,
    Last
}

enum Items {
    None,
    Candy,
    SleepyCandy,
    SleepRag,
    RopeTape
}

enum Directions {
    Right,
    Up,
    Left,
    Down
}
global.outfitScariness[Outfits.Clown] = -.25;
global.outfitScariness[Outfits.Ghost] = .25;
global.outfitScariness[Outfits.Spider] = .5;
global.outfitScariness[Outfits.Nun] = -.5;


//lighting
SL_engine_ini_begin();

sl_tod_active = 0;
global.sl_ambient_light = .1;

SL_add_light(obj_light);

SL_ToD_default();
SL_set_time(0);

SL_engine_ini_end();

