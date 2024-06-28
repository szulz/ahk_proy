PickRandomX(posX){
    ;tile to step to start burning logs
    Random, numbX , 4, 20
    TileX := posX + numbX
    Return TileX
}

PickRandomY(posY){
    ;tile to step to start burning logs
    Random, numbY , 4, 20
    TileY := posY + numbY
    Return TileY
}

RunToTile(){
    ;time that takes to run to the tile after being tel to varrock
    Random, runDelay, 4000, 4500
    Return runDelay
}

ItemSquareSelectX(x){
    ;randomize log selecction on X 
    Random, OutputVar , 0 , 35
    squareX := x +OutputVar
    Return squareX
}
ItemSquareSelecty(y){
    ;randomize log selecction on Y
    Random, OutputVar , 0 , 31
    squareY := y + OutputVar
    Return squareY
}

RandomDelay(){
    Random, rDelay , 300, 800
    return rDelay
}

TinderBoxClick(){
    MouseMove, ItemSquareSelectX(722), ItemSquareSelecty(414)
    Sleep, RandomDelay()
    Click
    Return
}

BurningLogs(x, y){
    TinderBoxClick() ;Click tinderbox
    MouseMove, ItemSquareSelectX(x), ItemSquareSelecty(y) ;Move to log
    RandomDelay()
    Click ;burn log
    Sleep, 5000 ;sleep till burnt

    Return
}

F1::
    /*
    ---------------------TILE ROJA---------------------------------
    PixelSearch, FoundX, FoundY, 0, 0, /MONITOR1600/, /MONITOR900/, 0xFF0000, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, RandomDelay()
        MouseMove, PickRandomX(FoundX), PickRandomY(FoundY)
        Sleep, RandomDelay()
        Click
        Sleep, RunToTile()
    }
    */
    ;36px Y 42px X cada punta 
    ;-------------------------------------------
    ;1st row
    BurningLogs(680, 414)
    BurningLogs(638, 414)
    BurningLogs(596, 414)
    ;-------------------------------------------
    ;2nd 
    BurningLogs(722, 378)
    BurningLogs(680, 378)
    BurningLogs(638, 378)
    BurningLogs(596, 378)
    ;-------------------------------------------
    3th
    BurningLogs(722, 342)
    BurningLogs(680, 342)
    BurningLogs(638, 342)
    BurningLogs(596, 342)
    ;-------------------------------------------
    4th
    BurningLogs(722, 306)
    BurningLogs(680, 306)
    BurningLogs(638, 306)
    BurningLogs(596, 306)
    ;-------------------------------------------
    5th
    BurningLogs(722, 270)
    BurningLogs(680, 270)
    BurningLogs(638, 270)
    BurningLogs(596, 270)
    ;-------------------------------------------
    6th
    BurningLogs(722, 234)
    BurningLogs(680, 234)
    BurningLogs(638, 234)
    BurningLogs(596, 234)
    ;-------------------------------------------
    7th
    BurningLogs(722, 218)
    BurningLogs(680, 218)
    BurningLogs(638, 218)

    ;------------------------------------------
    /*  
    banco, refill, teleport to varrock
    */
    ;-------------TILE AMARILLA---------------
    /*
    PixelSearch, FoundX, FoundY, 0, 0, 1600, 900, 0xFFFF00, 0, Fast RGB
    If (ErrorLevel = 0)
    {
        Sleep, RandomDelay()
        MouseMove, PickRandomX(FoundX), PickRandomY(FoundY)
        Sleep, RandomDelay()
        Click
        Sleep, RunToTile()
    }
    */

F2::
    Reload
Return