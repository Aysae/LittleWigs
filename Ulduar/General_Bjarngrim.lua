﻿------------------------------
--      Are you local?      --
------------------------------

local boss = BB["General Bjarngrim"]
local L = AceLibrary("AceLocale-2.2"):new("BigWigs"..boss)

----------------------------
--      Localization      --
----------------------------

L:RegisterTranslations("enUS", function() return {
	cmd = "Bjarngrim",
	log = "|cffff0000"..boss.."|r: This boss needs data, please consider turning on your /combatlog or transcriptor and submit the logs.",
} end)

L:RegisterTranslations("deDE", function() return {
} end)

L:RegisterTranslations("frFR", function() return {
} end)

L:RegisterTranslations("koKR", function() return {
	log = "|cffff0000"..boss.."|r: 해당 보스의 데이터가 필요합니다. 채팅창에 /전투기록 , /대화기록 을 입력하여 기록된 데이터를 보내주시기 바랍니다.",
} end)

L:RegisterTranslations("zhCN", function() return {
	log = "|cffff0000"..boss.."|r：缺乏数据，请考虑开启战斗记录（/combatlog）或 Transcriptor 记录并提交战斗记录，谢谢！",
} end)

L:RegisterTranslations("zhTW", function() return {
	log = "|cffff0000"..boss.."|r：缺乏數據，請考慮開啟戰斗記錄（/combatlog）或 Transcriptor 記錄并提交戰斗記錄，謝謝！",
} end)

L:RegisterTranslations("esES", function() return {
} end)

L:RegisterTranslations("ruRU", function() return {
	log = "|cffff0000"..boss.."|r: Для этого босса необходимы правильные данные. Пожалуйста, включите запись логов (команда /combatlog) или установите аддон transcriptor, и пришлите получившийся файл (или оставьте ссылку на файл в комментариях на curse.com).",
} end )

----------------------------------
--      Module Declaration      --
----------------------------------

local mod = BigWigs:NewModule(boss)
mod.partycontent = true
mod.otherMenu = "Ulduar"
mod.zonename = BZ["Halls of Lightning"]
mod.enabletrigger = boss
mod.guid = 28586
mod.toggleoptions = {"bosskill"}
mod.revision = tonumber(("$Revision$"):sub(12, -3))

------------------------------
--      Initialization      --
------------------------------

function mod:OnEnable()
	self:AddCombatListener("UNIT_DIED", "BossDeath")
	BigWigs:Print(L["log"])
end

------------------------------
--      Event Handlers      --
------------------------------