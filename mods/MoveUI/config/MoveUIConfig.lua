local MoveUIConfig = {}

MoveUIConfig.version = "[1.3.0]"
MoveUIConfig.ModName = "[MoveUI]"
MoveUIConfig.HudList = {}

function MoveUIConfig.AddUI(FileName, ForceStartEnabled, ForceRemove, Restriction)
    if FileName ~= nil then
        table.insert(MoveUIConfig.HudList, {
            FileName = FileName,
            ForceStartEnabled = ForceStartEnabled or false,
            ForceRemove = ForceRemove or false,
            Restriction = Restriction or function (player) return true end
        })
    end

end

MoveUIConfig.AddUI("ResourcesUI")
MoveUIConfig.AddUI("DistCore")
--example restrictions use:
--MoveUIConfig.AddUI("DistCoreDisplay",false,false,function (player) return player:getValue('granted_benefits') or false end)
MoveUIConfig.AddUI("CargoNotifier", true)
MoveUIConfig.AddUI("ScrapyardLicenses", true)
MoveUIConfig.AddUI("ObjectDetector", false)

return MoveUIConfig
