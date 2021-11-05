_mine = createMine ["UnderwaterMine", [_pos select 0,_pos select 1], [], 0];
_mine setPosATL [_pos select 0,_pos select 1,(getPosATL _mine select 2) - 2];