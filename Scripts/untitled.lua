function ThemeFile( file ) return THEME:GetPath( EC_GRAPHICS, '' , file ) end
function DWI_LoadBanner(self)
	if GAMESTATE:GetCurrentSong() then
        if GAMESTATE:GetCurrentSong():GetBannerPath() then
            self:hidden(0)
            self:scaletoclipped(254*1.8,79*1.8);
            self:LoadBanner(GAMESTATE:GetCurrentSong():GetBannerPath());
        else
            self:LoadBanner(ThemeFile('Common fallback banner'))
        end
    else
        self:LoadBanner(ThemeFile('Common fallback banner'))
    end
end