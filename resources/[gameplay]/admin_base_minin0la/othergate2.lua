col  = createColTube (-1860.8000488281, -3110.8999023438, 58.700000762939, 10, 3) -- enter your cooderates here for your colshape please note 10 and 3 is to do with the size of the shape.
root = getRootElement ()
 
othergate2 = createObject ( 2951, -1860.8000488281, -3110.8999023438, 58.700000762939, 0, 0, 319.5) -- enter the ID of the object followed by the coordinates
                                 -- note the rotx y and z may not be required so you just remove these. x y and z is where you would put your cordinates.
 
 
function Open ( pla )
    if getElementType ( pla ) == "player" then
        if isObjectInACLGroup ( "user."..getAccountName(getPlayerAccount(pla)), aclGetGroup ( "Admin" ) ) then
            moveObject (othergate2, 2500, -1860.8000488281,-3110.8999023438, 60.900001525879)    -- here is where you enter the coordinatess of the new location of the object, 2200 = the speed of the movent.
        end
    end
end  
addEventHandler ( "onColShapeHit", col, Open)
 
function Close ( pla )
    if getElementType ( pla ) == "player" then
        if isObjectInACLGroup ( "user."..getAccountName(getPlayerAccount(pla)), aclGetGroup ( "Admin" ) ) then
            moveObject (othergate2, 2500,-1860.8000488281, -3110.8999023438, 58.700000762939) -- here is where you copy the coordinates of the orginal location of the object, 2951 = the timer of movent.
        end
    end
end
addEventHandler ( "onColShapeLeave", col, Close )