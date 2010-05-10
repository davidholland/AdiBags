--[[
AdiBags - Adirelle's bag addon.
Copyright 2010 Adirelle (adirelle@tagada-team.net)
All rights reserved.
--]]

local addonName, addon = ...

--------------------------------------------------------------------------------
-- Fancy locale table
--------------------------------------------------------------------------------

local L = setmetatable({}, {
	__index = function(self, key)
		if key ~= nil then
			self[key] = tostring(key)
		end
		return tostring(key)
	end,
	__newindex = function(self, key, value)
		if value == true then value = key end
		rawset(self, tostring(key), tostring(value))
	end
})
addon.L = L

--------------------------------------------------------------------------------
-- Fetch some locales directly from the client
--------------------------------------------------------------------------------

L["Soul shards"] = GetItemInfo(6265)

do
	-- Little trick to get localized item classes and subclasses: use the values returned by GetItemInfo for some chosen items.
	-- Drawbacks:
	--  * If Blizzard changes some items, we are screwed.
	--  * This may fail at first login when the item cache is empty.

	local function GetClasses(item)
		local name, _, _, _, _, class, subClass = GetItemInfo(item)
		if class and subClass then
			return class, subClass
		else
			geterrorhandler()(addonName..": missing item class and subclass of "..tostring(name or item))
		end
	end

	-- Just get what is needed
	L["Consumable"], L["Food & Drinks"] = GetClasses(35953) -- Mead Basted Caribou
	L["Miscellaneous"], L["Junk"] = GetClasses(6948) -- Hearth Stone
	L["Gem"], L["Simple"] = GetClasses(774) -- Malachite
	L["Trade Goods"], L["Cloth"] = GetClasses(2589) -- Linen Cloth
end

--------------------------------------------------------------------------------
-- English strings
--------------------------------------------------------------------------------

L["New"] = true
L["Equipment"] = true

L["Backpack"] = true
L["Bank"] = true
L["Equipped bags"] = true
L["Search:"] = true
L["Set: %s"] = true
L["Free space"] = true

L["QUIVER_TAG"] = "Qu"
L["AMMO_TAG"] = "Am"
L["SOUL_BAG_TAG"] = "So"
L["LEATHERWORKING_BAG_TAG"] = "Le"
L["INSCRIPTION_BAG_TAG"] = "In"
L["HERB_BAG_TAG"] = "He"
L["ENCHANTING_BAG_TAG"] = "En"
L["ENGINEERING_BAG_TAG"] = "Eg"
L["KEYRING_TAG"] = "Ke"
L["GEM_BAG_TAG"] = "Ge"
L["MINING_BAG_TAG"] = "Mi"

--------------------------------------------------------------------------------
-- Other locales
--------------------------------------------------------------------------------

if GetLocale() == "frFR" then
	L["New"] = "Nouveau"
	L["Equipment"] = "Equipement"

	L["Backpack"] = "Sac à dos"
	L["Bank"] = "Banque"
	L["Equipped bags"] = "Sacs équipés"
	L["Search:"] = "Recherche :"
	L["Free space"] = "Espace libre"

	L["QUIVER_TAG"] = "Fl"
	L["AMMO_TAG"] = "Ba"
	L["SOUL_BAG_TAG"] = "Âm"
	L["LEATHERWORKING_BAG_TAG"] = "Cu"
	L["INSCRIPTION_BAG_TAG"] = "Ca"
	L["HERB_BAG_TAG"] = "He"
	L["ENCHANTING_BAG_TAG"] = "En"
	L["ENGINEERING_BAG_TAG"] = "In"
	L["KEYRING_TAG"] = "Cl"
	L["GEM_BAG_TAG"] = "Jo"
	L["MINING_BAG_TAG"] = "Mi"
end

--[[
		["Armor"] = "Armure",
			["Cloth"] = "Tissu",
			["Idols"] = "Idoles",
			["Leather"] = "Cuir",
			["Librams"] = "Librams",
			["Mail"] = "Mailles",
			["Miscellaneous"] = "Divers",
			["Shields"] = "Boucliers",
			["Totems"] = "Totems",
			["Plate"] = "Plaques",
		["Consumable"] = "Consommables",
		["Container"] = "Conteneur",
			["Bag"] = "Conteneur",
			["Enchanting Bag"] = "Sac d'enchanteur",
			["Engineering Bag"] = "Sac d'ing\195\169nieur",
			["Herb Bag"] = "Sac d'herbes",
			["Soul Bag"] = "Sac d'\195\162me",
		["Key"] = "Cl\195\169",
		["Miscellaneous"] = "Divers",
			["Junk"] = "Camelote",
		["Reagent"] = "Composant",
		["Recipe"] = "Recette",
			["Alchemy"] = "Alchimie",
			["Blacksmithing"] = "Forge",
      ["Book"] = "Livre",
			["Cooking"] = "Cuisine",
			["Enchanting"] = "Enchantement",
			["Engineering"] = "Ing\195\169nierie",
			["First Aid"] = "Secourisme",
			["Leatherworking"] = "Travail du cuir",
			["Tailoring"] = "Couture",
		["Projectile"] = "Projectile",
			["Arrow"] = "Fl\195\168che",
			["Bullet"] = "Balle",
		["Quest"] = "Qu\195\170te",
		["Quiver"] = "Carquois",
			["Ammo Pouch"] = "Giberne",
			["Quiver"] = "Carquois",
		["Trade Goods"] = "Artisanat",
			["Devices"] = "Appareils",
			["Explosives"] = "Explosifs",
			["Parts"] = "El\195\169ments",
--]]

--------------------------------------------------------------------------------
-- Locales from localization system (not yet)
--------------------------------------------------------------------------------

-- %Localization: adibags
-- AUTOMATICALLY GENERATED BY UpdateLocalization.lua
-- ANY CHANGE BELOW THIS LINE WILL BE LOST ON NEXT UPDATE
-- CHANGES SHOULD BE MADE USING http://www.wowace.com/addons/adibags/localization/

