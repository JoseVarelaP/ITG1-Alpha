function ThemeFile( file ) return THEME:GetPath( EC_GRAPHICS, '' , file ) end

function LifebarDoublesCheck(pn)
    if pn == PLAYER_1 then
        if GAMESTATE:PlayerUsingBothSides() then
            return SCREEN_CENTER_X
        else
            return SCREEN_CENTER_X+(160-320)
        end
    end
    if pn == PLAYER_2 then
        if GAMESTATE:PlayerUsingBothSides() then
            return SCREEN_CENTER_X
        else
            return SCREEN_CENTER_X+(478-320)
        end
    end
end