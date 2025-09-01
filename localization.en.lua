--[[

	AtlasQuest, a World of Warcraft addon.
	Email me at mystery8@gmail.com

	This file is part of AtlasQuest.

	AtlasQuest is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.

	AtlasQuest is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with AtlasQuest; if not, write to the Free Software
	Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

--]]


---------------
--- COLOURS ---
---------------

local GREY = "|cff999999";
local RED = "|cffff0000";
local REDA = "|cffcc6666";
local WHITE = "|cffFFFFFF";    -- also priest colour
local GREEN = "|cff1eff00";
local PURPLE = "|cff9F3FFF";
local BLUE = "|cff0070dd";
local ORANGE = "|cffFF8400";
local YELLOW = "|cffFFd200";   -- Ingame Yellow
local PINK = "|cffff80ff";
local EPOCH = "|cffFF4500";    -- for colouring custom stuff

-- CLASS COLOURS --

local warrior = "|cffC69B6D";  -- warrior brown
local warlock = "|cff8788EE";  -- warlock purple
local shaman = "|cff0070DD";   -- shaman blue
local paladin = "|cffF48CBA";  -- paladin pink
local rogue = "|cffFFF468";    -- rogue yellow
local druid = "|cffFF7C0A";    -- druid orange
local mage = "|cff3FC7EB";     -- mage blue
local hunter = "|cffAAD372";   -- hunter green

---------------
--- OPTIONS ---
---------------

AQHelpText = ""..WHITE.."type /aq or atlasquest "..YELLOW.."[command]"..WHITE.."\ncommands: help; option/config; show/hide; left/right; colour; autoshow"..RED.."(only Atlas)"
--
AQOptionsCaptionTEXT = ""..YELLOW.."AtlasQuest Options";
AQ_OK = "OK"

-- Autoshow
AQOptionsAutoshowTEXT = ""..WHITE.."Show AtlasQuest panel with "..RED.."Atlas"..WHITE..".";
AQAtlasAutoON = "The AtlasQuest panel will be automatically displayed when atlas is opened."..GREEN.."(default)"
AQAtlasAutoOFF = "The AtlasQuest panel "..RED.."will not"..WHITE.." be displayed when you open atlas."

-- Right/Left
AQOptionsLEFTTEXT = ""..WHITE.."Show the AtlasQuest panel "..RED.."left"..WHITE..".";
AQOptionsRIGHTTEXT = ""..WHITE.."Show the AtlasQuest panel "..RED.."right"..WHITE..".";
AQShowRight = "Now shows the AtlasQuest Panel on the "..RED.."right"..WHITE.." side.";
AQShowLeft = "Now shows the AtlasQuest Panel on the "..RED.."left"..WHITE.." side "..GREEN.."(default)";

-- Colour Check
AQOptionsCCTEXT = ""..WHITE.."Recolour the quests depending on their levels."
AQCCON = "AtlasQuest will now recolour quests depending on their levels."
AQCCOFF = "AtlasQuest will not recolour quests."

-- QuestLog Colour Check
AQQLColourChange = ""..WHITE.."Colours all quest, you have in your Questlog "..BLUE.."blue."

-- AutoQuery Quest Rewards
AQOptionsAutoQueryTEXT = ""..WHITE.."Automatically query the server for items you haven't seen."

-- Suppress Server Query text
AQOptionsNoQuerySpamTEXT = ""..WHITE.."Suppress Server Query spam."

-- Use Comparison Tooltips
AQOptionsCompareTooltipTEXT = ""..WHITE.."Compare rewards to currently equipped items."


AQAbilities = BLUE .. "Abilities:" .. WHITE;
AQSERVERASKInformation = " Please click right until you see the Item frame."
AQSERVERASKAuto = " Try moving the cursor over the item in a second."
AQSERVERASK = "AtlasQuest is querying the server for: "
AQERRORNOTSHOWN = "This item is not safe!"
AQERRORASKSERVER = "Right-click to query the server for \nthis item. You may be disconnected."
AQOptionB = "Options"
AQStoryB = "Story"
AQNoReward = ""..BLUE.." No Rewards"
AQDiscription_OR = ""..GREY.." or "..WHITE..""
AQDiscription_AND = ""..GREY.." and "..WHITE..""
AQDiscription_REWARD = ""..BLUE.." Reward: "
AQDiscription_ATTAIN = "Attain: "
AQDiscription_LEVEL = "Level: "
AQDiscription_START = "Starts at: \n"
AQDiscription_AIM = "Objective: \n"
AQDiscription_NOTE = "Note: \n"
AQDiscription_PREQUEST= "Prequest: "
AQDiscription_FOLGEQUEST = "Followup: "
AQFinishedTEXT = "Finished: ";


------------------
--- ITEM TYPES ---
------------------

AQITEM_DAGGER = " Dagger"
AQITEM_POLEARM = " Polearm"
AQITEM_SWORD = " Sword"
AQITEM_AXE = " Axe"
AQITEM_WAND = "Wand"
AQITEM_STAFF = "Staff"
AQITEM_MACE = " Mace"
AQITEM_SHIELD = "Shield"
AQITEM_GUN = "Gun"
AQITEM_BOW = "Bow"
AQITEM_CROSSBOW = "Crossbow"
AQITEM_THROWN = "Thrown"

AQITEM_WAIST = "Waist,"
AQITEM_SHOULDER = "Shoulder,"
AQITEM_CHEST = "Chest,"
AQITEM_LEGS = "Legs,"
AQITEM_HANDS = "Hands,"
AQITEM_FEET = "Feet,"
AQITEM_WRIST = "Wrist,"
AQITEM_HEAD = "Head,"
AQITEM_BACK = "Back"
AQITEM_TABARD = "Tabard"

AQITEM_CLOTH = " Cloth"
AQITEM_LEATHER = " Leather"
AQITEM_MAIL = " Mail"
AQITEM_PLATE = " Plate"

AQITEM_OFFHAND = "Offhand"
AQITEM_MAINHAND = "Main Hand,"
AQITEM_ONEHAND = "One-Hand,"
AQITEM_TWOHAND = "Two-Hand,"

AQITEM_ITEM = "Item" -- Use this for those oddball rewards which aren't really anything else.
AQITEM_TRINKET = "Trinket"
AQITEM_RELIC = "Relic"
AQITEM_POTION = "Potion"
AQITEM_OFFHAND = "Held In Hand"
AQITEM_NECK = "Neck"
AQITEM_PATTERN = "Pattern"
AQITEM_BAG = "Bag"
AQITEM_RING = "Ring"
AQITEM_KEY = "Key"
AQITEM_GEM = "Gem"
AQITEM_QUIVER = "Quiver"
AQITEM_AMMOPOUCH = "Ammo Pouch"
AQITEM_ENCHANT = "Enchant"
AQITEM_EMBLEM = "Emblem"



----------------------------------------------
---------------- DUNGEONS --------------------
----------------------------------------------



--------------- INST36 - No Instance ---------------

-- Just to display "No Quests" when the map is set to something AtlasQuest does not support. I'll probably find a better way of doing this later.
Inst36Story = ""
Inst36Caption = "No Information Available"
Inst36QAA = "No Quests"
Inst36QAH = "No Quests"



--------------- INST1 - Deadmines (VC) ---------------

Inst1Story = "Once the greatest gold production center in the human lands, the Dead Mines were abandoned when the Horde razed Stormwind city during the First War. Now the Defias Brotherhood has taken up residence and turned the dark tunnels into their private sanctum. It is rumored that the thieves have conscripted the clever goblins to help them build something terrible at the bottom of the mines - but what that may be is still uncertain. Rumor has it that the way into the Deadmines lies through the quiet, unassuming village of Moonbrook."
Inst1Caption = "Deadmines"
Inst1QAA = "8 Quests" -- how many quests for alliance
Inst1QAH = "2 Quest" -- for horde

--Quest 1 Alliance
Inst1Quest1 = "1. Red Silk Bandanas"
Inst1Quest1_Level = "17"
Inst1Quest1_Attain = "14"
Inst1Quest1_Aim = "Scout Riell at the Sentinel Hill Tower wants you to bring her 10 Red Silk Bandanas."
Inst1Quest1_Location = "Scout Riell (Westfall - Sentinel Hill; "..YELLOW.."56, 47"..WHITE..")"
Inst1Quest1_Note = "You can get the Red Silk Bandanas from miners in the Deadmines or the in the town where the instance is located. The quest becomes available after you complete the The Defias Brotherhood questline up to the part where you have to kill Edwin VanCleef."
Inst1Quest1_Prequest = "Yes (see Note)"
Inst1Quest1_Folgequest = "None"
Inst1Quest1PreQuest = "true"
--
Inst1Quest1name1 = "Solid Shortblade"
Inst1Quest1name2 = "Scrimshaw Dagger"
Inst1Quest1name3 = "Piercing Axe"

--Quest 2 Alliance
Inst1Quest2 = "2. Collecting Memories"
Inst1Quest2_Level = "18"
Inst1Quest2_Attain = "14"
Inst1Quest2_Aim = "Retrieve 4 Miners' Union Cards and return them to Wilder Thistlenettle in Stormwind."
Inst1Quest2_Location = "Wilder Thistlenettle (Stormwind - Dwarven District; "..YELLOW.."70.3, 40.8"..WHITE..")"
Inst1Quest2_Note = "The cards drop off undead mobs outside the instance in the area near "..YELLOW.."[3]"..WHITE.." on the Entrance map."
Inst1Quest2_Prequest = "None"
Inst1Quest2_Folgequest = "None"
--
Inst1Quest2name1 = "Tunneler's Boots"
Inst1Quest2name2 = "Dusty Mining Gloves"

--Quest 3 Alliance
Inst1Quest3 = "3. Oh Brother. . ."
Inst1Quest3_Level = "20"
Inst1Quest3_Attain = "15"
Inst1Quest3_Aim = "Bring Foreman Thistlenettle's Explorers' League Badge to Wilder Thistlenettle in Stormwind."
Inst1Quest3_Location = "Wilder Thistlenettle (Stormwind - Dwarven District; "..YELLOW.."70.3, 40.8"..WHITE..")"
Inst1Quest3_Note = "Foreman Thistlenettle is found outside the instance in the undead area at "..YELLOW.."[3]"..WHITE.." on the Entrance map."
Inst1Quest3_Prequest = "None"
Inst1Quest3_Folgequest = "None"
--
Inst1Quest3name1 = "Miner's Revenge"

--Quest 4 Alliance
Inst1Quest4 = "4. Underground Assault"
Inst1Quest4_Level = "20"
Inst1Quest4_Attain = "15"
Inst1Quest4_Aim = "Retrieve the Gnoam Sprecklesprocket from the Deadmines and return it to Shoni the Shilent in Stormwind."
Inst1Quest4_Location = "Shoni the Silent (Stormwind - Dwarven District; "..YELLOW.."62.6, 34.1"..WHITE..")"
Inst1Quest4_Note = "The prequest can be obtained from Gnoarn (Ironforge - Tinkertown; "..YELLOW.."69,50"..WHITE..").\nSneed's Shredder drops the Sprecklesprocket "..YELLOW.."[3]"..WHITE.."."
Inst1Quest4_Prequest = "Speak with Shoni"
Inst1Quest4_Folgequest = "None"
Inst1Quest4PreQuest = "true"
--
Inst1Quest4name1 = "Polar Gauntlets"
Inst1Quest4name2 = "Sable Wand"

--Quest 5 Alliance
Inst1Quest5 = "5. The Defias Brotherhood"
Inst1Quest5_Level = "22"
Inst1Quest5_Attain = "14"
Inst1Quest5_Aim = "Kill Edwin VanCleef and bring his head to Gryan Stoutmantle."
Inst1Quest5_Location = "Gryan Stoutmantle (Westfall - Sentinel Hill; "..YELLOW.."56,47"..WHITE..")"
Inst1Quest5_Note = "You start this Questline at Gryan Stoutmantle (Westfall - Sentinel Hill; "..YELLOW.."56,47"..WHITE..").\nEdwin VanCleef is the last boss of The Deadmines. You can find him at the top of his ship "..YELLOW.."[6]"..WHITE.."."
Inst1Quest5_Prequest = "The Defias Brotherhood."
Inst1Quest5_Folgequest = "None"
Inst1Quest5PreQuest = "true"
--
Inst1Quest5name1 = "Chausses of Westfall"
Inst1Quest5name2 = "Tunic of Westfall"
Inst1Quest5name3 = "Staff of Westfall"

--Quest 6 Alliance
Inst1Quest6 = "6. The Test of Righteousness "..paladin.."(Paladin)"
Inst1Quest6_Level = "22"
Inst1Quest6_Attain = "20"
Inst1Quest6_Aim = "Using Jordan's Weapon Notes, find some Whitestone Oak Lumber, Bailor's Refined Ore Shipment, Jordan's Smithing Hammer, and a Kor Gem, and return them to Jordan Stilwell in Ironforge."
Inst1Quest6_Location = "Jordan Stilwell (Dun Morogh - Ironforge Entrance; "..YELLOW.."52,36"..WHITE..")"
Inst1Quest6_Note = ""..paladin.."PALADIN "..WHITE.."ONLY!\n\n1. To see the note click on "..YELLOW.."[The Test of Righteousness Information]"..WHITE.."."
Inst1Quest6_Page = {2, ""..paladin.."PALADIN "..WHITE.."ONLY!\n\n1. You get the  Whitestone Oak Lumber from Goblin Woodcarvers in "..YELLOW.."[Deadmines]"..WHITE.." near "..YELLOW.."[3]"..WHITE..".\n\n2. To get the Bailor's Refined Ore Shipment you must talk to Bailor Stonehand (Loch Modan - Thelsamar; "..YELLOW.."35,44"..WHITE.."). He gives you the 'Bailor's Ore Shipment' quest. You find the Jordan's Ore Shipment behind a tree at "..YELLOW.."71,21"..WHITE.."\n\n3. You get Jordan's Smithing Hammer in "..YELLOW.."[Shadowfang Keep]"..WHITE.." at "..YELLOW.."[3]"..WHITE..".\n\n4. To get a Kor Gem you have to go to Thundris Windweaver (Darkshore - Auberdine; "..YELLOW.."37,40"..WHITE..") and do the 'Seeking the Kor Gem' quest. For this quest, you must kill Blackfathom oracles or priestesses before "..YELLOW.."[Blackfathom Deeps]"..WHITE..". They drop a corrupted Kor Gem. Thundris Windweaver will clean it for you.", };
Inst1Quest6_Prequest = "The Tome of Valor -> The Test of Righteousness"
Inst1Quest6_Folgequest = "The Test of Righteousness"
Inst1Quest6PreQuest = "true"
--
Inst1Quest6name1 = "Verigan's Fist"

--Quest 7 Alliance
Inst1Quest7 = "7. The Unsent Letter"
Inst1Quest7_Level = "22"
Inst1Quest7_Attain = "16"
Inst1Quest7_Aim = "Deliver the Letter to the City Architect to Baros Alexston in Stormwind."
Inst1Quest7_Location = "An Unsent Letter (drops from Edwin VanCleef; "..YELLOW.."[6]"..WHITE..")"
Inst1Quest7_Note = "Baros Alexston is in Stormwind City, next to the Cathedral of Light at "..YELLOW.."57.7, 47.9"..WHITE.."."
Inst1Quest7_Prequest = "None"
Inst1Quest7_Folgequest = "Bazil Thredd"
-- No Rewards for this quest

--Quest 8 Alliance
Inst1Quest8 = "8. Defias Ducat "..EPOCH.."(New)"
Inst1Quest8_Level = "60"
Inst1Quest8_Attain = "15"
Inst1Quest8_Aim = "Take the Defias Ducat to Altadena in Booty Bay."
Inst1Quest8_Location = "Defias Ducat (Lies on the floor of the barn in Moonbrook where you enter the cave complex; "..BLUE.."[A]"..WHITE.." of the Deadmines Entrance map)"
Inst1Quest8_Note = "As you enter the barn ("..BLUE.."[A]"..WHITE.." on the entrance map), turn left and follow straight. Before you reach the stairs, turn right twice. The Defias Ducat lies on the floor ("..YELLOW.."40,82"..WHITE..") and is an interactable object. Interact with it and the item that starts the quest will appear in your bags.\n\nDeliver it to Altadena ("..YELLOW.."28,77"..WHITE..") in the store 'Deep South Tannery' in Booty Bay - Stranglethorn Vale."
Inst1Quest8_Prequest = "None"
Inst1Quest8_Folgequest = "None"
-- No Rewards for this quest

--Quest 1 Horde
Inst1Quest1_HORDE = "1. Foreign Techonlogy "..EPOCH.."(New)"
Inst1Quest1_HORDE_Level = "19"
Inst1Quest1_HORDE_Attain = "17"
Inst1Quest1_HORDE_Aim = "Infiltrate The Deadmines and bring the Cognation Reconstructor to Traugh at The Crossroads"
Inst1Quest1_HORDE_Location = "Traugh (The Barrens - The Crossroads; "..YELLOW.."51.28"..WHITE..".)"
Inst1Quest1_HORDE_Note = "Cognation Reconstructor drops from Glinid "..YELLOW.."[5]"..WHITE.."."
Inst1Quest1_HORDE_Prequest = "None"
Inst1Quest1_HORDE_Folgequest = "None"
Inst1Quest1PreQuest_HORDE = "true"
--
Inst1Quest1name1_HORDE = "Boots of the Mine"
Inst1Quest1name2_HORDE = "Spelunker's Chestguard"
Inst1Quest1name3_HORDE = "Extra Sturdy Pauldrons"

--Quest 2 Horde  (same as Quest 8 Alliance)
Inst1Quest2_HORDE = "2. Defias Ducat "..EPOCH.."(New)"
Inst1Quest2_HORDE_Level = Inst1Quest8_Level
Inst1Quest2_HORDE_Attain = Inst1Quest8_Attain
Inst1Quest2_HORDE_Aim = Inst1Quest8_Aim
Inst1Quest2_HORDE_Location = Inst1Quest8_Location
Inst1Quest2_HORDE_Note = Inst1Quest8_Note
Inst1Quest2_HORDE_Prequest = Inst1Quest8_Prequest
Inst1Quest2_HORDE_Folgequest = Inst1Quest8_Folgequest
-- No Rewards for this quest

--------------- INST2 - Wailing Caverns (WC) ---------------

Inst2Story = "Recently, a night elf druid named Naralex discovered a network of underground caverns within the heart of the Barrens. Dubbed the 'Wailing Caverns', these natural caves were filled with steam fissures which produced long, mournful wails as they vented. Naralex believed he could use the caverns' underground springs to restore lushness and fertility to the Barrens - but to do so would require siphoning the energies of the fabled Emerald Dream. Once connected to the Dream however, the druid's vision somehow became a nightmare. Soon the Wailing Caverns began to change - the waters turned foul and the once-docile creatures inside metamorphosed into vicious, deadly predators. It is said that Naralex himself still resides somewhere inside the heart of the labyrinth, trapped beyond the edges of the Emerald Dream. Even his former acolytes have been corrupted by their master's waking nightmare - transformed into the wicked Druids of the Fang."
Inst2Caption = "Wailing Caverns"
Inst2QAA = "5 Quests"
Inst2QAH = "7 Quests"

--Quest 1 Alliance
Inst2Quest1 = "1. Deviate Hides"
Inst2Quest1_Level = "17"
Inst2Quest1_Attain = "13"
Inst2Quest1_Aim = "Nalpak in the Wailing Caverns wants 20 Deviate Hides."
Inst2Quest1_Location = "Nalpak (Barrens - Wailing Caverns; "..YELLOW.."47,36"..WHITE..")"
Inst2Quest1_Note = "All deviate mobs inside of and right before the entrance to the instance can drop hides.\nNalpak can be found in a hidden cave above the actual cave entrance. Easiest way to him seems to be to run up the hill outside and behind the entrance and drop down the slight ledge above the cave entrance."
Inst2Quest1_Prequest = "None"
Inst2Quest1_Folgequest = "None"
--
Inst2Quest1name1 = "Slick Deviate Leggings"
Inst2Quest1name2 = "Deviate Hide Pack"

--Quest 2 Alliance
Inst2Quest2 = "2. Trouble at the Docks"
Inst2Quest2_Level = "18"
Inst2Quest2_Attain = "14"
Inst2Quest2_Aim = "Crane Operator Bigglefuzz in Ratchet wants you to retrieve the bottle of 99-Year-Old Port from Mad Magglish who is hiding in the Wailing Caverns."
Inst2Quest2_Location = "Crane Operator Bigglefuzz (Barrens - Ratchet; "..YELLOW.."63,37"..WHITE..")"
Inst2Quest2_Note = "You get the bottle right before you go into the instance by killing Mad Magglish. When you first enter the cave make an immediate right to find him at the end of the passage. He is stealthed by the wall at "..YELLOW.."[2] on the Entrance Map"..WHITE.."."
Inst2Quest2_Prequest = "None"
Inst2Quest2_Folgequest = "None"
-- No Rewards for this quest

--Quest 3 Alliance
Inst2Quest3 = "3. Smart Drinks"
Inst2Quest3_Level = "18"
Inst2Quest3_Attain = "14"
Inst2Quest3_Aim = "Bring 6 portions of Wailing Essence to Mebok Mizzyrix in Ratchet."
Inst2Quest3_Location = "Mebok Mizzyrix (Barrens - Ratchet; "..YELLOW.."62,37"..WHITE..")"
Inst2Quest3_Note = "The prequest can be obtained from Mebok Mizzyrix too.\nAll Ectoplasm enemies in and before the instance drop the Essence."
Inst2Quest3_Prequest = "Raptor Horns"
Inst2Quest3_Folgequest = "None"
Inst2Quest3PreQuest = "true"
-- No Rewards for this quest

--Quest 4 Alliance
Inst2Quest4 = "4. Deviate Eradication"
Inst2Quest4_Level = "21"
Inst2Quest4_Attain = "15"
Inst2Quest4_Aim = "Ebru in the Wailing Caverns wants you to kill 7 Deviate Ravagers, 7 Deviate Vipers, 7 Deviate Shamblers and 7 Deviate Dreadfangs."
Inst2Quest4_Location = "Ebru (Barrens - Wailing Caverns; "..YELLOW.."47,36"..WHITE..")"
Inst2Quest4_Note = "Ebru is in a hidden cave above the cave entrance. Easiest way to him seems to be to run up the hill outside and behind the entrance and drop down the slight ledge above the cave entrance."
Inst2Quest4_Prequest = "None"
Inst2Quest4_Folgequest = "None"
--
Inst2Quest4name1 = "Pattern: Deviate Scale Belt"
Inst2Quest4name2 = "Sizzle Stick"
Inst2Quest4name3 = "Dagmire Gauntlets"

--Quest 5 Alliance
Inst2Quest5 = "5. The Glowing Shard"
Inst2Quest5_Level = "25"
Inst2Quest5_Attain = "21"
Inst2Quest5_Aim = "Travel to Ratchet to find the meaning behind the Nightmare Shard."
Inst2Quest5_Location = "The Glowing Shard (drops from Mutanus the Devourer; "..YELLOW.."[9]"..WHITE..")"
Inst2Quest5_Note = "Mutanus the Devourer will only appear if you kill the four leader druids of the fang and escort the tauren druid at the entrance.\nWhen you have the Shard, you must bring it to the Bank at Ratchet, and then back to the top of the hill over Wailing Caverns to Falla Sagewind."
Inst2Quest5_Prequest = "None"
Inst2Quest5_Folgequest = "In Nightmares"
--
Inst2Quest5name1 = "Talbar Mantle"
Inst2Quest5name2 = "Quagmire Galoshes"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst2Quest1_HORDE = Inst2Quest1
Inst2Quest1_HORDE_Level = Inst2Quest1_Level
Inst2Quest1_HORDE_Attain = Inst2Quest1_Attain
Inst2Quest1_HORDE_Aim = Inst2Quest1_Aim
Inst2Quest1_HORDE_Location = Inst2Quest1_Location
Inst2Quest1_HORDE_Note = Inst2Quest1_Note
Inst2Quest1_HORDE_Prequest = Inst2Quest1_Prequest
Inst2Quest1_HORDE_Folgequest = Inst2Quest1_Folgequest
--
Inst2Quest1name1_HORDE = Inst2Quest1name1
Inst2Quest1name2_HORDE = Inst2Quest1name2

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst2Quest2_HORDE = Inst2Quest2
Inst2Quest2_HORDE_Level = Inst2Quest2_Level
Inst2Quest2_HORDE_Attain = Inst2Quest2_Attain
Inst2Quest2_HORDE_Aim = Inst2Quest2_Aim
Inst2Quest2_HORDE_Location = Inst2Quest2_Location
Inst2Quest2_HORDE_Note = Inst2Quest2_Note
Inst2Quest2_HORDE_Prequest = Inst2Quest2_Prequest
Inst2Quest2_HORDE_Folgequest = Inst2Quest2_Folgequest
-- No Rewards for this quest

--Quest 3 Horde
Inst2Quest3_HORDE = "3. Serpentbloom"
Inst2Quest3_HORDE_Level = "18"
Inst2Quest3_HORDE_Attain = "14"
Inst2Quest3_HORDE_Aim = "Apothecary Zamah in Thunder Bluff wants you to collect 10 Serpentbloom."
Inst2Quest3_HORDE_Location = "Apothecary Zamah (Thunder Bluff - Spirit Rise; "..YELLOW.."22,20"..WHITE..")"
Inst2Quest3_HORDE_Note = "Apothecary Zamah is in a cave under the Spirit Rise.  You get the prequest from Apothecary Helbrim (Barrens - Crossroads; "..YELLOW.."51,30"..WHITE..").\nYou get the Serpentbloom inside the cave in front of the instance and inside the instance. Players with Herbalism can see the plants on their minimap."
Inst2Quest3_HORDE_Prequest = "Fungal Spores -> Apothecary Zamah"
Inst2Quest3_HORDE_Folgequest = "None"
Inst2Quest3PreQuest_HORDE = "true"
--
Inst2Quest3name1_HORDE = "Apothecary Gloves"

--Quest 4 Horde  (same as Quest 3 Alliance)
Inst2Quest4_HORDE = "4. Smart Drinks"
Inst2Quest4_HORDE_Level = Inst2Quest3_Level
Inst2Quest4_HORDE_Attain = Inst2Quest3_Attain
Inst2Quest4_HORDE_Aim = Inst2Quest3_Aim
Inst2Quest4_HORDE_Location = Inst2Quest3_Location
Inst2Quest4_HORDE_Note = Inst2Quest3_Note
Inst2Quest4_HORDE_Prequest = Inst2Quest3_Prequest
Inst2Quest4_HORDE_Folgequest = Inst2Quest3_Folgequest
Inst2Quest4PreQuest_HORDE = Inst2Quest3PreQuest
-- No Rewards for this quest

--Quest 5 Horde  (same as Quest 4 Alliance)
Inst2Quest5_HORDE = "5. Deviate Eradication"
Inst2Quest5_HORDE_Level = Inst2Quest4_Level
Inst2Quest5_HORDE_Attain = Inst2Quest4_Attain
Inst2Quest5_HORDE_Aim = Inst2Quest4_Aim
Inst2Quest5_HORDE_Location = Inst2Quest4_Location
Inst2Quest5_HORDE_Note = Inst2Quest4_Note
Inst2Quest5_HORDE_Prequest = Inst2Quest4_Prequest
Inst2Quest5_HORDE_Folgequest = Inst2Quest4_Folgequest
--
Inst2Quest5name1_HORDE = Inst2Quest4name1
Inst2Quest5name2_HORDE = Inst2Quest4name2
Inst2Quest5name3_HORDE = Inst2Quest4name3

--Quest 6 Horde
Inst2Quest6_HORDE = "6. Leaders of the Fang"
Inst2Quest6_HORDE_Level = "22"
Inst2Quest6_HORDE_Attain = "18"
Inst2Quest6_HORDE_Aim = "Bring the Gems of Cobrahn, Anacondra, Pythas and Serpentis to Nara Wildmane in Thunder Bluff."
Inst2Quest6_HORDE_Location = "Nara Wildmane (Thunder Bluff - Elder Rise; "..YELLOW.."75,31"..WHITE..")"
Inst2Quest6_HORDE_Note = "The Questline starts at Hamuul Runetotem (Thunderbluff - Elder Rise; "..YELLOW.."78,28"..WHITE..")\nThe 4 druids drop the gems "..YELLOW.."[2]"..WHITE..", "..YELLOW.."[3]"..WHITE..", "..YELLOW.."[5]"..WHITE..", "..YELLOW.."[7]"..WHITE.."."
Inst2Quest6_HORDE_Prequest = "The Barrens Oases -> Nara Wildmane"
Inst2Quest6_HORDE_Folgequest = "None"
Inst2Quest6PreQuest_HORDE = "true"
--
Inst2Quest6name1_HORDE = "Crescent Staff"
Inst2Quest6name2_HORDE = "Wingblade"

--Quest 7 Horde  (same as Quest 5 Alliance)
Inst2Quest7_HORDE = "7. The Glowing Shard"
Inst2Quest7_HORDE_Level = Inst2Quest5_Level
Inst2Quest7_HORDE_Attain = Inst2Quest5_Attain
Inst2Quest7_HORDE_Aim = Inst2Quest5_Aim
Inst2Quest7_HORDE_Location = Inst2Quest5_Location
Inst2Quest7_HORDE_Note = Inst2Quest5_Note
Inst2Quest7_HORDE_Prequest = Inst2Quest5_Prequest
Inst2Quest7_HORDE_Folgequest = Inst2Quest5_Folgequest
--
Inst2Quest7name1_HORDE = Inst2Quest5name1
Inst2Quest7name2_HORDE = Inst2Quest5name2



--------------- INST3 - Ragefire Chasm (RFC) ---------------

Inst3Story = "Ragefire Chasm consists of a network of volcanic caverns that lie below the orcs' new capital city of Orgrimmar. Recently, rumors have spread that a cult loyal to the demonic Shadow Council has taken up residence within the Chasm's fiery depths. This cult, known as the Burning Blade, threatens the very sovereignty of Durotar. Many believe that the orc Warchief, Thrall, is aware of the Blade's existence and has chosen not to destroy it in the hopes that its members might lead him straight to the Shadow Council. Either way, the dark powers emanating from Ragefire Chasm could undo all that the orcs have fought to attain."
Inst3Caption = "Ragefire Chasm"
Inst3QAA = "No Quests"
Inst3QAH = "6 Quests"

--Quest 1 Horde
Inst3Quest1_HORDE = "1. Testing an Enemy's Strength"
Inst3Quest1_HORDE_Level = "15"
Inst3Quest1_HORDE_Attain = "9"
Inst3Quest1_HORDE_Aim = "Search Orgrimmar for Ragefire Chasm, then kill 8 Ragefire Troggs and 8 Ragefire Shaman before returning to Rahauro in Thunder Bluff."
Inst3Quest1_HORDE_Location = "Rahauro (Thunder Bluff - Elder Rise; "..YELLOW.."70,29"..WHITE..")"
Inst3Quest1_HORDE_Note = "You find the troggs at the beginning."
Inst3Quest1_HORDE_Prequest = "None"
Inst3Quest1_HORDE_Folgequest = "None"
-- No Rewards for this quest

--Quest 2 Horde
Inst3Quest2_HORDE = "2. The Power to Destroy..."
Inst3Quest2_HORDE_Level = "16"
Inst3Quest2_HORDE_Attain = "9"
Inst3Quest2_HORDE_Aim = "Bring the books Spells of Shadow and Incantations from the Nether to Varimathras in Undercity."
Inst3Quest2_HORDE_Location = "Varimathras (Undercity - Royal Quarter; "..YELLOW.."56,92"..WHITE..")"
Inst3Quest2_HORDE_Note = "Searing Blade Cultists and Warlocks drop the books"
Inst3Quest2_HORDE_Prequest = "None"
Inst3Quest2_HORDE_Folgequest = "None"
--
Inst3Quest2name1_HORDE = "Ghastly Trousers"
Inst3Quest2name2_HORDE = "Dredgemire Leggings"
Inst3Quest2name3_HORDE = "Gargoyle Leggings"

--Quest 3 Horde
Inst3Quest3_HORDE = "3. Searching for the Lost Satchel"
Inst3Quest3_HORDE_Level = "16"
Inst3Quest3_HORDE_Attain = "9"
Inst3Quest3_HORDE_Aim = "Search Ragefire Chasm for Maur Grimtotem's corpse and search it for any items of interest."
Inst3Quest3_HORDE_Location = "Rahauro (Thunder Bluff - Elder Rise; "..YELLOW.."70,29"..WHITE..")"
Inst3Quest3_HORDE_Note = "You find Maur Grimtotem at "..YELLOW.."[1]"..WHITE..". After getting the satchel you must bring it back to Rahauro in Thunder Bluff"
Inst3Quest3_HORDE_Prequest = "None"
Inst3Quest3_HORDE_Folgequest = "Returning the Lost Satchel"
--
Inst3Quest3name1_HORDE = "Featherbead Bracers"
Inst3Quest3name2_HORDE = "Savannah Bracers"

--Quest 4 Horde
Inst3Quest4_HORDE = "4. Hidden Enemies"
Inst3Quest4_HORDE_Level = "16"
Inst3Quest4_HORDE_Attain = "9"
Inst3Quest4_HORDE_Aim = "Kill Bazzalan and Jergosh the Invoker before returning to Thrall in Orgrimmar."
Inst3Quest4_HORDE_Location = "Thrall (Orgrimmar - Valley of Wisdom; "..YELLOW.."31,37"..WHITE..")"
Inst3Quest4_HORDE_Note = "You find Bazzalan at  "..YELLOW.."[4]"..WHITE.." and Jergosh at "..YELLOW.."[3]"..WHITE..". The questline starts at Warchief Thrall in Orgrimmar."
Inst3Quest4_HORDE_Prequest = "Hidden Enemies"
Inst3Quest4_HORDE_Folgequest = "Hidden Enemies"
Inst3Quest4PreQuest_HORDE = "true"
--
Inst3Quest4name1_HORDE = "Kris of Orgrimmar"
Inst3Quest4name2_HORDE = "Hammer of Orgrimmar"
Inst3Quest4name3_HORDE = "Axe of Orgrimmar"
Inst3Quest4name4_HORDE = "Staff of Orgrimmar"

--Quest 5 Horde
Inst3Quest5_HORDE = "5. Slaying the Beast"
Inst3Quest5_HORDE_Level = "16"
Inst3Quest5_HORDE_Attain = "9"
Inst3Quest5_HORDE_Aim = "Enter Ragefire Chasm and slay Taragaman the Hungerer, then bring his heart back to Neeru Fireblade in Orgrimmar."
Inst3Quest5_HORDE_Location = "Neeru Fireblade (Orgrimmar - Cleft of Shadow; "..YELLOW.."49,50"..WHITE..")"
Inst3Quest5_HORDE_Note = "You find Taragaman at "..YELLOW.."[2]"..WHITE.."."
Inst3Quest5_HORDE_Prequest = "None"
Inst3Quest5_HORDE_Folgequest = "None"
-- No Rewards for this quest

Inst3Quest6_HORDE = "6. Materials of the Light "..paladin.."(Paladin)"
Inst3Quest6_HORDE_Level = "22"
Inst3Quest6_HORDE_Attain = "20"
Inst3Quest6_HORDE_Aim = "Using Aturk's Material List, find some Blessed Ingots, Zelemar's Hammer, a Silver Hand Medallion and a Kor Gem. Bring them to Aturk the Anvil in Orgrimmar."
Inst3Quest6_HORDE_Location = "The Fallen Knight (Undercity - War Quarter; "..YELLOW.."52,31"..WHITE..") ->\n\nAturk the Anvil (Orgrimmar - Valley of Honor; "..YELLOW.."80,23"..WHITE..")"
Inst3Quest6_HORDE_Note = ""..paladin.."PALADIN "..WHITE.."ONLY!\n\n1. To see the list click on "..YELLOW.."[Materials of the Light]"..WHITE.."."
Inst3Quest6_HORDE_Page = {2, ""..paladin.."PALADIN "..WHITE.."ONLY!\n\n1. You get the Springvale's Blessed Ingots from a crate in the same room you fight Commander Springvale in "..YELLOW.."[Shadowfang Keep]"..WHITE.." near "..YELLOW.."[6]"..WHITE..".\n\n2. To get the Silver Hand Medallion Go to Stonetalon Mountains and kill Venture Co. goblins in Windshear Crag.\n\n3. You get Zelemar's Hammer from Zelemar the Wrathful in "..YELLOW.."[Ragefire Chasm]"..WHITE.." at "..YELLOW.."[3]"..WHITE..". Click on the Blood Filled Orb to summon him.\n\n4. To get the last item, kill Blackfathom oracles or priestesses before "..YELLOW.."[Blackfathom Deeps]"..WHITE..". They drop the Corrupted Kor Gem.", };
Inst3Quest6_HORDE_Prequest = "Trial of the Willing -> Materials of the Light (Undercity)"
Inst3Quest6_HORDE_Folgequest = "Materials of the Light"
Inst3Quest6_HORDEPreQuest = "true"
--
Inst3Quest6name1_HORDE = "Admonisher of the Fallen Knight"


--------------- INST4 - Uldaman (Ulda) ---------------

Inst4Story = "Uldaman is an ancient Titan vault that has laid buried deep within the earth since the world's creation. Dwarven excavations have recently penetrated this forgotten city, releasing the Titans' first failed creations: the troggs. Legends say that the Titans created troggs from stone. When they deemed the experiment a failure, the Titans locked the troggs away and tried again - resulting in the creation of the dwarven race. The secrets of the dwarves' creation are recorded on the fabled Discs of Norgannon - massive Titan artifacts that lie at the very bottom of the ancient city. Recently, the Dark Iron dwarves have launched a series of incursions into Uldaman, hoping to claim the discs for their fiery master, Ragnaros. However, protecting the buried city are several guardians - giant constructs of living stone that crush any hapless intruders they find. The Discs themselves are guarded by a massive, sentient Stonekeeper called Archaedas. Some rumors even suggest that the dwarves' stone-skinned ancestors, the earthen, still dwell deep within the city's hidden recesses."
Inst4Caption = "Uldaman"
Inst4QAA = "17 Quests"
Inst4QAH = "11 Quests"

--Quest 1 Alliance
Inst4Quest1 = "1. A Sign of Hope"
Inst4Quest1_Level = "35"
Inst4Quest1_Attain = "35"
Inst4Quest1_Aim = "Find Hammertoe Grez in Uldaman."
Inst4Quest1_Location = "Prospector Ryedol (Badlands; "..YELLOW.."53,43"..WHITE..")"
Inst4Quest1_Note = "The Prequest starts at the Crumpled Map (Badlands; "..YELLOW.."53,33"..WHITE..").\nYou find Hammertoe Grez before you enter the instance, at "..YELLOW.."[1]"..WHITE.." on the Entrance map."
Inst4Quest1_Prequest = "A Sign of Hope"
Inst4Quest1_Folgequest = "Amulet of Secrets"
Inst4Quest1PreQuest = "true"
-- No Rewards for this quest

--Quest 2 Alliance
Inst4Quest2 = "2. Amulet of Secrets"
Inst4Quest2_Level = "40"
Inst4Quest2_Attain = "35"
Inst4Quest2_Aim = "Find Hammertoe's Amulet and return it to him in Uldaman."
Inst4Quest2_Location = "Hammertoe Grez (Uldaman; "..YELLOW.."[1] on Entrance Map"..WHITE..")."
Inst4Quest2_Note = "The Amulet drops from Magregan Deepshadow at "..YELLOW.."[2] on the Entrance Map"..WHITE.."."
Inst4Quest2_Prequest = "A Sign of Hope"
Inst4Quest2_Folgequest = "Prospect of Faith"
Inst4Quest2FQuest = "true"
-- No Rewards for this quest

--Quest 3 Alliance
Inst4Quest3 = "3. The Lost Tablets of Will"
Inst4Quest3_Level = "45"
Inst4Quest3_Attain = "35"
Inst4Quest3_Aim = "Find the Tablet of Will, and return them to Advisor Belgrum in Ironforge."
Inst4Quest3_Location = "Advisor Belgrum (Ironforge - Hall of Explorers; "..YELLOW.."77,10"..WHITE..")"
Inst4Quest3_Note = "The tablet is at "..YELLOW.."[8]"..WHITE.."."
Inst4Quest3_Prequest = "Amulet of Secrets -> An Ambassador of Evil"
Inst4Quest3_Folgequest = "None"
Inst4Quest3FQuest = "true"
--
Inst4Quest3name1 = "Medal of Courage"

--Quest 4 Alliance
Inst4Quest4 = "4. Power Stones"
Inst4Quest4_Level = "36"
Inst4Quest4_Attain = "30"
Inst4Quest4_Aim = "Bring 8 Dentrium Power Stones and 8 An'Alleum Power Stones to Rigglefuzz in the Badlands."
Inst4Quest4_Location = "Rigglefuzz (Badlands; "..YELLOW.."42,52"..WHITE..")"
Inst4Quest4_Note = "The stones can be found on any Shadowforge enemies before and in the instance."
Inst4Quest4_Prequest = "None"
Inst4Quest4_Folgequest = "None"
--
Inst4Quest4name1 = "Energized Stone Circle"
Inst4Quest4name2 = "Duracin Bracers"
Inst4Quest4name3 = "Everlast Boots"

--Quest 5 Alliance
Inst4Quest5 = "5. Agmond's Fate"
Inst4Quest5_Level = "38"
Inst4Quest5_Attain = "30"
Inst4Quest5_Aim = "Bring 4 Carved Stone Urns to Prospector Ironband in Loch Modan."
Inst4Quest5_Location = "Prospector Ironband (Loch Modan - Ironband's Excavation Site; "..YELLOW.."65,65"..WHITE..")"
Inst4Quest5_Note = "The Prequest starts at Prospector Stormpike (Ironforge - Hall of Explorers; "..YELLOW.."74,12"..WHITE..").\nThe Urns are scattered throughout the caves before the instance."
Inst4Quest5_Prequest = "Ironband Wants You! -> Murdaloc"
Inst4Quest5_Folgequest = "None"
Inst4Quest5PreQuest = "true"
--
Inst4Quest5name1 = "Prospector Gloves"

--Quest 6 Alliance
Inst4Quest6 = "6. Solution to Doom"
Inst4Quest6_Level = "40"
Inst4Quest6_Attain = "30"
Inst4Quest6_Aim = "Bring the Tablet of Ryun'eh to Theldurin the Lost."
Inst4Quest6_Location = "Theldurin the Lost (Badlands; "..YELLOW.."51,76"..WHITE..")"
Inst4Quest6_Note = "The tablet is north of the caves, at the east end of a tunnel, before the instance. On the Entrance map, it's at "..YELLOW.."[3]"..WHITE.."."
Inst4Quest6_Prequest = "None"
Inst4Quest6_Folgequest = "To Ironforge for Yagyin's Digest"
--
Inst4Quest6name1 = "Doomsayer's Robe"

--Quest 7 Alliance
Inst4Quest7 = "7. The Lost Dwarves"
Inst4Quest7_Level = "40"
Inst4Quest7_Attain = "35"
Inst4Quest7_Aim = "Find Baelog in Uldaman."
Inst4Quest7_Location = "Prospector Stormpike (Ironforge - Hall of Explorers; "..YELLOW.."75,12"..WHITE..")"
Inst4Quest7_Note = "Baelog is at "..YELLOW.."[1]"..WHITE.."."
Inst4Quest7_Prequest = "None"
Inst4Quest7_Folgequest = "The Hidden Chamber"
-- No Rewards for this quest

--Quest 8 Alliance
Inst4Quest8 = "8. The Hidden Chamber"
Inst4Quest8_Level = "40"
Inst4Quest8_Attain = "35"
Inst4Quest8_Aim = "Read Baelog's Journal, explore the hidden chamber, then report to Prospector Stormpike."
Inst4Quest8_Location = "Baelog (Uldaman; "..YELLOW.."[1]"..WHITE..")"
Inst4Quest8_Note = "The Hidden Chamber is at "..YELLOW.."[4]"..WHITE..". To open the Hidden Chamber you need The Shaft of Tsol from Revelosh "..YELLOW.."[3]"..WHITE.." and the Gni'kiv Medallion from Baelog's Chest "..YELLOW.."[1]"..WHITE..". Combine these two items to form Staff of Prehistoria. The Staff is used in the Map Room between "..YELLOW.."[3] and [4]"..WHITE.." to summon Ironaya. After killing her, run inside the room she came from to get quest credit."
Inst4Quest8_Prequest = "The Lost Dwarves"
Inst4Quest8_Folgequest = "None"
Inst4Quest8FQuest = "true"
--
Inst4Quest8name1 = "Dwarven Charge"
Inst4Quest8name2 = "Explorer's League Lodestar"

--Quest 9 Alliance
Inst4Quest9 = "9. The Shattered Necklace"
Inst4Quest9_Level = "41"
Inst4Quest9_Attain = "37"
Inst4Quest9_Aim = "Search for the original creator of the shattered necklace to learn of its potential value."
Inst4Quest9_Location = "Shattered Necklace (random drop from Uldaman)"
Inst4Quest9_Note = "Bring the necklace to Talvash del Kissel (Ironforge - The Mystic Ward; "..YELLOW.."36,3"..WHITE..")."
Inst4Quest9_Prequest = "None"
Inst4Quest9_Folgequest = "Lore for a Price"
-- No Rewards for this quest

--Quest 10 Alliance
Inst4Quest10 = "10. Back to Uldaman"
Inst4Quest10_Level = "42"
Inst4Quest10_Attain = "37"
Inst4Quest10_Aim = "Search for clues as to the current disposition of Talvash's necklace within Uldaman. The slain paladin he mentioned was the person who has it last."
Inst4Quest10_Location = "Talvash del Kissel (Ironforge - The Mystic Ward; "..YELLOW.."36,3"..WHITE..")"
Inst4Quest10_Note = "The Paladin is at "..YELLOW.."[2]"..WHITE.."."
Inst4Quest10_Prequest = "Lore for a Price"
Inst4Quest10_Folgequest = "Find the Gems"
Inst4Quest10FQuest = "true"
-- No Rewards for this quest

--Quest 11 Alliance
Inst4Quest11 = "11. Find the Gems"
Inst4Quest11_Level = "43"
Inst4Quest11_Attain = "37"
Inst4Quest11_Aim = "Find the ruby, sapphire, and topaz that are scattered throughout Uldaman. Once acquired, contact Talvash del Kissel remotely by using the Phial of Scrying he previously gave you."
Inst4Quest11_Location = "Remains of a Paladin (Uldaman; "..YELLOW.."[2]"..WHITE..")"
Inst4Quest11_Note = "The gems are at "..YELLOW.."[1]"..WHITE.." in a Conspicous Urn, "..YELLOW.."[8]"..WHITE.." from the Shadowforge Cache, and "..YELLOW.."[9]"..WHITE.." off Grimlok. Note that when openning the Shadowforge Cache, a few mobs will spawn an aggro you.\nUse Talvash's Scrying Bowl to turn the quest in and get the followup."
Inst4Quest11_Prequest = "Back to Uldaman"
Inst4Quest11_Folgequest = "Restoring the Necklace"
Inst4Quest11FQuest = "true"
-- No Rewards for this quest

--Quest 12 Alliance
Inst4Quest12 = "12. Restoring the Necklace"
Inst4Quest12_Level = "44"
Inst4Quest12_Attain = "37"
Inst4Quest12_Aim = "Obtain a power source from the most powerful construct you can find in Uldaman, and deliver it to Talvash del Kissel in Ironforge."
Inst4Quest12_Location = "Talvash's Scrying Bowl"
Inst4Quest12_Note = "The Shattered Necklace Power Source drops from Archaedas "..YELLOW.."[10]"..WHITE.."."
Inst4Quest12_Prequest = "Find the Gems."
Inst4Quest12_Folgequest = "None"
--
Inst4Quest12name1 = "Talvash's Enhancing Necklace"
Inst4Quest12FQuest = "true"

--Quest 13 Alliance
Inst4Quest13 = "13. Uldaman Reagent Run"
Inst4Quest13_Level = "42"
Inst4Quest13_Attain = "38"
Inst4Quest13_Aim = "Bring 12 Magenta Fungus Caps to Ghak Healtouch in Thelsamar."
Inst4Quest13_Location = "Ghak Healtouch (Loch Modan - Thelsamar; "..YELLOW.."37,49"..WHITE..")"
Inst4Quest13_Note = "The caps are scattered throughout the instance. Herbalists can see them on their minimap if Track Herbs is on and they have the quest. The prequest is obtained from the same NPC."
Inst4Quest13_Prequest = "Badlands Reagent Run"
Inst4Quest13_Folgequest = "None"
Inst4Quest13PreQuest = "true"
--
Inst4Quest13name1 = "Restorative Potion"

--Quest 14 Alliance
Inst4Quest14 = "14. Reclaimed Treasures"
Inst4Quest14_Level = "43"
Inst4Quest14_Attain = "33"
Inst4Quest14_Aim = "Get Krom Stoutarm's treasured possession from his chest in the North Common Hall of Uldaman, and bring it to him in Ironforge."
Inst4Quest14_Location = "Krom Stoutarm (Ironforge - Hall of Explorers; "..YELLOW.."74,9"..WHITE..")"
Inst4Quest14_Note = "You find the treasure before you enter the instance. It is in the north of the caves, at the southeast end of the first tunnel. On the entrance map, it's at "..YELLOW.."[4]"..WHITE.."."
Inst4Quest14_Prequest = "None"
Inst4Quest14_Folgequest = "None"
-- No Rewards for this quest

--Quest 15 Alliance
Inst4Quest15 = "15. The Platinum Discs"
Inst4Quest15_Level = "47"
Inst4Quest15_Attain = "40"
Inst4Quest15_Aim = "Speak with stone watcher and learn what ancient lore it keeps. Once you have learned what lore it has to offer, activate the Discs of Norgannon. -> Take the miniature version of the Discs of Norgannon to the Explorers' League in Ironforge."
Inst4Quest15_Location = "The Discs of Norgannon (Uldaman; "..YELLOW.."[11]"..WHITE..")"
Inst4Quest15_Note = "After you receive the quest, speak to the stone watcher to the left of the discs.  Then use the platinum discs again to recieve miniature discs, which you'll have to take to High Explorer Magellas in Ironforge - Hall of Explorers ("..YELLOW.."69,18"..WHITE.."). The followup starts another NPC who is nearby."
Inst4Quest15_Prequest = "None"
Inst4Quest15_Folgequest = "Portents of Uldum"
--
Inst4Quest15name1 = "Thawpelt Sack"
Inst4Quest15name2 = "Superior Healing Potion"
Inst4Quest15name3 = "Greater Mana Potion"

--Quest 16 Alliance
Inst4Quest16 = "16. Power in Uldaman "..mage.."(Mage)"
Inst4Quest16_Level = "40"
Inst4Quest16_Attain = "35"
Inst4Quest16_Aim = "Retrieve an Obsidian Power Source and bring it to Tabetha in Dustwallow Marsh."
Inst4Quest16_Location = "Tabetha (Dustwallow Marsh; "..YELLOW.."46,57"..WHITE..")"
Inst4Quest16_Note = ""..mage.."MAGE"..WHITE.." ONLY! \nThe Obsidian Power Source drops from the Obsidian Sentinel at "..YELLOW.."[5]"..WHITE.."."
Inst4Quest16_Prequest = "The Exorcism"
Inst4Quest16_Folgequest = "Mana Surges"
Inst4Quest16PreQuest = "true"
-- No Rewards for this quest

--Quest 17 Alliance
Inst4Quest17 = "17. Indurium Ore"
Inst4Quest17_Level = "42"
Inst4Quest17_Attain = "29"
Inst4Quest17_Aim = "Bring 4 Indurium Ore to Pozzik in Thousand Needles."
Inst4Quest17_Location = "Pozzik (Thousand Needles - Mirage Raceway; "..YELLOW.."80.1, 75.9"..WHITE..")"
Inst4Quest17_Note = "This is a repeatable quest after the prequests are complete. It gives no reputation or experience, just a small amount of money. Indurium Ore can be mined inside Uldaman or purchased from other players."
Inst4Quest17_Prequest = "Keeping Pace -> Rizzle's Schematics"
Inst4Quest17_Folgequest = "None"
Inst4Quest17PreQuest = "true"
-- No Rewards for this quest



--Quest 1 Horde  (same as Quest 4 Alliance)
Inst4Quest1_HORDE = "1. Power Stones"
Inst4Quest1_HORDE_Level = Inst4Quest4_Level
Inst4Quest1_HORDE_Attain = Inst4Quest4_Attain
Inst4Quest1_HORDE_Aim = Inst4Quest4_Aim
Inst4Quest1_HORDE_Location = Inst4Quest4_Location
Inst4Quest1_HORDE_Note = Inst4Quest4_Note
Inst4Quest1_HORDE_Prequest = Inst4Quest4_Prequest
Inst4Quest1_HORDE_Folgequest = Inst4Quest4_Folgequest
--
Inst4Quest1name1_HORDE = Inst4Quest4name1
Inst4Quest1name2_HORDE = Inst4Quest4name2
Inst4Quest1name3_HORDE = Inst4Quest4name3

--Quest 2 Horde  (same as Quest 6 Alliance - different followup)
Inst4Quest2_HORDE = "2. Solution to Doom"
Inst4Quest2_HORDE_Level = Inst4Quest6_Level
Inst4Quest2_HORDE_Attain = Inst4Quest6_Attain
Inst4Quest2_HORDE_Aim = Inst4Quest6_Aim
Inst4Quest2_HORDE_Location = Inst4Quest6_Location
Inst4Quest2_HORDE_Note = Inst4Quest6_Note
Inst4Quest2_HORDE_Prequest = Inst4Quest6_Prequest
Inst4Quest2_HORDE_Folgequest = "To the Undercity for Yagyin's Digest"
--
Inst4Quest2name1_HORDE = Inst4Quest6name1

--Quest 3 Horde
Inst4Quest3_HORDE = "3. Necklace Recovery"
Inst4Quest3_HORDE_Level = "41"
Inst4Quest3_HORDE_Attain = "37"
Inst4Quest3_HORDE_Aim = "Look for a valuable necklace within the Uldaman dig site and bring it back to Dran Droffers in Orgrimmar. The necklace may be damaged."
Inst4Quest3_HORDE_Location = "Dran Droffers (Orgrimmar - The Drag; "..YELLOW.."59,36"..WHITE..")"
Inst4Quest3_HORDE_Note = "The necklace is a random drop in the instance."
Inst4Quest3_HORDE_Prequest = "None"
Inst4Quest3_HORDE_Folgequest = "Necklace Recovery, Take 2"
-- No Rewards for this quest

--Quest 4 Horde
Inst4Quest4_HORDE = "4. Necklace Recovery, Take 2"
Inst4Quest4_HORDE_Level = "41"
Inst4Quest4_HORDE_Attain = "37"
Inst4Quest4_HORDE_Aim = "Find a clue as to the gems' whereabouts in the depths of Uldaman."
Inst4Quest4_HORDE_Location = "Dran Droffers (Orgrimmar - The Drag; "..YELLOW.."59,36"..WHITE..")"
Inst4Quest4_HORDE_Note = "The Paladin is at "..YELLOW.."[2]"..WHITE.."."
Inst4Quest4_HORDE_Prequest = "Necklace Recovery"
Inst4Quest4_HORDE_Folgequest = "Translating the Journal"
Inst4Quest4FQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 5 Horde
Inst4Quest5_HORDE = "5. Translating the Journal"
Inst4Quest5_HORDE_Level = "42"
Inst4Quest5_HORDE_Attain = "37"
Inst4Quest5_HORDE_Aim = "Find someone who can translate the paladin's journal. The closest location that might have someone is Kargath, in the Badlands."
Inst4Quest5_HORDE_Location = "Remains of a Paladin (Uldaman; "..YELLOW.."[2]"..WHITE..")"
Inst4Quest5_HORDE_Note = "The translator Jarkal Mossmeld is in Kargath (Badlands; "..YELLOW.."2,46"..WHITE..")."
Inst4Quest5_HORDE_Prequest = "Necklace Recovery, Take 2"
Inst4Quest5_HORDE_Folgequest = "Find the Gems and Power Source"
Inst4Quest5FQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 6 Horde
Inst4Quest6_HORDE = "6. Find the Gems and Power Source"
Inst4Quest6_HORDE_Level = "44"
Inst4Quest6_HORDE_Attain = "37"
Inst4Quest6_HORDE_Aim = "Recover all three gems and a power source for the necklace from Uldaman, and then bring them to Jarkal Mossmeld in Kargath. Jarkal believes a power source might be found on the strongest construct present in Uldaman."
Inst4Quest6_HORDE_Location = "Jarkal Mossmeld (Badlands - Kargath; "..YELLOW.."2,46"..WHITE..")"
Inst4Quest6_HORDE_Note = "The gems are at "..YELLOW.."[1]"..WHITE.." in a Conspicous Urn, "..YELLOW.."[8]"..WHITE.." from the Shadowforge Cache, and "..YELLOW.."[9]"..WHITE.." off Grimlok. Note that when openning the Shadowforge Cache, a few mobs will spawn an aggro you. The Shattered Necklace Power Source drops from Archaedas "..YELLOW.."[10]"..WHITE.."."
Inst4Quest6_HORDE_Prequest = "Translating the Journal"
Inst4Quest6_HORDE_Folgequest = "Deliver the Gems"
Inst4Quest6FQuest_HORDE = "true"
--
Inst4Quest6name1_HORDE = "Jarkal's Enhancing Necklace"

--Quest 7 Horde
Inst4Quest7_HORDE = "7. Uldaman Reagent Run"
Inst4Quest7_HORDE_Level = "42"
Inst4Quest7_HORDE_Attain = "36"
Inst4Quest7_HORDE_Aim = "Bring 12 Magenta Fungus Caps to Jarkal Mossmeld in Kargath."
Inst4Quest7_HORDE_Location = "Jarkal Mossmeld (Badlands - Kargath; "..YELLOW.."2,69"..WHITE..")"
Inst4Quest7_HORDE_Note = "You get the Prequest from Jarkal Mossmeld, too.\nThe caps are scattered throughout the instance. Herbalists can see them on their minimap if Track Herbs is on and they have the quest. The prequest is obtained from the same NPC."
Inst4Quest7_HORDE_Prequest = "Badlands Reagent Run"
Inst4Quest7_HORDE_Folgequest = "Badlands Reagent Run II"
Inst4Quest7PreQuest_HORDE = "true"
--
Inst4Quest7name1_HORDE = "Restorative Potion"

--Quest 8 Horde
Inst4Quest8_HORDE = "8. Reclaimed Treasures"
Inst4Quest8_HORDE_Level = "43"
Inst4Quest8_HORDE_Attain = "33"
Inst4Quest8_HORDE_Aim = "Get Patrick Garrett's family treasure from their family chest in the South Common Hall of Uldaman, and bring it to him in the Undercity."
Inst4Quest8_HORDE_Location = "Patrick Garrett (Undercity; "..YELLOW.."72,48"..WHITE..")"
Inst4Quest8_HORDE_Note = "You find the treasure before you enter the instance. It is at the end of the south tunnel. On the entrance map, it's at "..YELLOW.."[5]"..WHITE.."."
Inst4Quest8_HORDE_Prequest = "None"
Inst4Quest8_HORDE_Folgequest = "None"
-- No Rewards for this quest

--Quest 9 Horde
Inst4Quest9_HORDE = "9. The Platinum Discs"
Inst4Quest9_HORDE_Level = "47"
Inst4Quest9_HORDE_Attain = "40"
Inst4Quest9_HORDE_Aim = "Speak with stone watcher and learn what ancient lore it keeps. Once you have learned what lore it has to offer, activate the Discs of Norgannon. -> Take the miniature version of the Discs of Norgannon to the one of the sages in Thunder Bluff."
Inst4Quest9_HORDE_Location = "The Discs of Norgannon (Uldaman; "..YELLOW.."[11]"..WHITE..")"
Inst4Quest9_HORDE_Note = "After you receive the quest, speak to the stone watcher to the left of the discs.  Then use the platinum discs again to recieve miniature discs, which you'll have to take to Sage Truthseeker in Thunder Bluff ("..YELLOW.."34,46"..WHITE.."). The followup starts another NPC who is nearby."
Inst4Quest9_HORDE_Prequest = "None"
Inst4Quest9_HORDE_Folgequest = "Portents of Uldum"
--
Inst4Quest9name1_HORDE = "Thawpelt Sack"
Inst4Quest9name2_HORDE = "Superior Healing Potion"
Inst4Quest9name3_HORDE = "Greater Mana Potion"

--Quest 10 Horde  (same as Quest 4 Alliance)
Inst4Quest10_HORDE = "10. Power in Uldaman "..mage.."(Mage)"
Inst4Quest10_HORDE_Level = Inst4Quest16_Level
Inst4Quest10_HORDE_Attain = Inst4Quest16_Attain
Inst4Quest10_HORDE_Aim = Inst4Quest16_Aim
Inst4Quest10_HORDE_Location = Inst4Quest16_Location
Inst4Quest10_HORDE_Note = Inst4Quest16_Note
Inst4Quest10_HORDE_Prequest = Inst4Quest16_Prequest
Inst4Quest10_HORDE_Folgequest = Inst4Quest16_Folgequest
Inst4Quest10PreQuest_HORDE = Inst4Quest16PreQuest
-- No Rewards for this quest

--Quest 11 Horde  (same as Quest 17 Alliance)
Inst4Quest11_HORDE = "11. Indurium Ore"
Inst4Quest11_HORDE_Level = Inst4Quest17_Level
Inst4Quest11_HORDE_Attain = Inst4Quest17_Attain
Inst4Quest11_HORDE_Aim = Inst4Quest17_Aim
Inst4Quest11_HORDE_Location = Inst4Quest17_Location
Inst4Quest11_HORDE_Note = Inst4Quest17_Note
Inst4Quest11_HORDE_Prequest = Inst4Quest17_Prequest
Inst4Quest11_HORDE_Folgequest = Inst4Quest17_Folgequest
Inst4Quest11PreQuest_HORDE = Inst4Quest17PreQuest
-- No Rewards for this quest



--------------- INST5 - Blackrock Depths (BRD) ---------------

Inst5Story = "Once the capital city of the Dark Iron dwarves, this volcanic labyrinth now serves as the seat of power for Ragnaros the Firelord. Ragnaros has uncovered the secret to creating life from stone and plans to build an army of unstoppable golems to aid him in conquering the whole of Blackrock Mountain. Obsessed with defeating Nefarian and his draconic minions, Ragnaros will go to any extreme to achieve final victory."
Inst5Caption = "Blackrock Depths"
Inst5QAA = "15 Quests"
Inst5QAH = "19 Quests"

--Quest 1 Alliance
Inst5Quest1 = "1. Dark Iron Legacy"
Inst5Quest1_Level = "52"
Inst5Quest1_Attain = "48"
Inst5Quest1_Aim = "Slay Fineous Darkvire and recover the great hammer, Ironfel. Take Ironfel to the Shrine of Thaurissan and place it on the statue of Franclorn Forgewright."
Inst5Quest1_Location = "Franclorn Forgewright (Blackrock Mountain; "..YELLOW.."[3] on Entrance map"..WHITE..")"
Inst5Quest1_Note = "Franclorn Forgewright is in the middle of the floating island in Blackrock Mountain, outside the instance near the Summoning Stone. You have to be dead to see him. He also gives you the prequest which just requires you listen to his story.\nFineous Darkvire is at "..YELLOW.."[9]"..WHITE..". The Shrine next to the arena at "..YELLOW.."[7]"..WHITE.."."
Inst5Quest1_Prequest = "Dark Iron Legacy"
Inst5Quest1_Folgequest = "None"
--
Inst5Quest1name1 = "Shadowforge Key"

--Quest 2 Alliance
Inst5Quest2 = "2. Ribbly Screwspigot"
Inst5Quest2_Level = "53"
Inst5Quest2_Attain = "48"
Inst5Quest2_Aim = "Bring Ribbly's Head to Yuka Screwspigot in the Burning Steppes."
Inst5Quest2_Location = "Yuka Screwspigot (Burning Steppes - Flame Crest; "..YELLOW.."65,22"..WHITE..")"
Inst5Quest2_Note = "You get the prequest from Yorba Screwspigot (Tanaris - Steamwheedle Port; "..YELLOW.."67,23"..WHITE..").\nRibbly is at "..YELLOW.."[15]"..WHITE.."."
Inst5Quest2_Prequest = "Yuka Screwspigot"
Inst5Quest2_Folgequest = "None"
Inst5Quest2PreQuest = "true"
--
Inst5Quest2name1 = "Rancor Boots"
Inst5Quest2name2 = "Penance Spaulders"
Inst5Quest2name3 = "Splintsteel Armor"

--Quest 3 Alliance
Inst5Quest3 = "3. The Love Potion"
Inst5Quest3_Level = "54"
Inst5Quest3_Attain = "50"
Inst5Quest3_Aim = "Bring 4 Gromsblood, 10 Giant Silver Veins and Nagmara's Filled Vial to Mistress Nagmara in Blackrock Depths."
Inst5Quest3_Location = "Mistress Nagmara (Blackrock Depths; "..YELLOW.."[15]"..WHITE..")"
Inst5Quest3_Note = "You get the Giant Silver Veins from Giants in Azshara. Gromsblood can be most easily acquired from either an herbalist or at the Auction House. Lastly, the vial can be filled at the Go-Lakka crater (Un'Goro Crater; "..YELLOW.."31,50"..WHITE..").\nAfter completing the quest, you can use the backdoor instead of killing Phalanx."
Inst5Quest3_Prequest = "None"
Inst5Quest3_Folgequest = "None"
--
Inst5Quest3name1 = "Manacle Cuffs"
Inst5Quest3name2 = "Nagmara's Whipping Belt"

--Quest 4 Alliance
Inst5Quest4 = "4. Hurley Blackbreath"
Inst5Quest4_Level = "55"
Inst5Quest4_Attain = "50"
Inst5Quest4_Aim = "Bring the Lost Thunderbrew Recipe to Ragnar Thunderbrew in Kharanos."
Inst5Quest4_Location = "Ragnar Thunderbrew  (Dun Morogh - Kharanos; "..YELLOW.."46,52"..WHITE..")"
Inst5Quest4_Note = "You get the prequest from Enohar Thunderbrew (Blasted Lands - Nethergarde Keep; "..YELLOW.."61,18"..WHITE..").\nYou get the recipe from one of the guards who appear if you destroy the ale "..YELLOW.."[15]"..WHITE.."."
Inst5Quest4_Prequest = "Ragnar Thunderbrew"
Inst5Quest4_Folgequest = "None"
Inst5Quest4PreQuest = "true"
--
Inst5Quest4name1 = "Dark Dwarven Lager"
Inst5Quest4name2 = "Swiftstrike Cudgel"
Inst5Quest4name3 = "Limb Cleaver"

--Quest 5 Alliance  
Inst5Quest5 = "5. Overmaster Pyron"
Inst5Quest5_Level = "52"
Inst5Quest5_Attain = "48"
Inst5Quest5_Aim = "Slay Overmaster Pyron and return to Jalinda Sprig."
Inst5Quest5_Location = "Jalinda Sprig (Burning Steppes - Morgan's Vigil; "..YELLOW.."85,69"..WHITE..")"
Inst5Quest5_Note = "Overmaster Pyron is a fire elemental outside the instance. He's at "..YELLOW.."[24]"..WHITE.." on the Blackrock Depths map and at "..YELLOW.."[1]"..WHITE.." on the Blackrock Mountain entrance map."
Inst5Quest5_Prequest = "None"
Inst5Quest5_Folgequest = "Incendius!"
-- No Rewards for this quest

--Quest 6 Alliance
Inst5Quest6 = "6. Incendius!"
Inst5Quest6_Level = "56"
Inst5Quest6_Attain = "48"
Inst5Quest6_Aim = "Find Lord Incendius in Blackrock Depths and destroy him!"
Inst5Quest6_Location = "Jalinda Sprig (Burning Steppes - Morgan's Vigil; "..YELLOW.."85,69"..WHITE..")"
Inst5Quest6_Note = "You get the prequest from Jalinda Sprig, too. You find Lord Incendius at "..YELLOW.."[10]"..WHITE.."."
Inst5Quest6_Prequest = "Overmaster Pyron"
Inst5Quest6_Folgequest = "None"
Inst5Quest6FQuest = "true"
--
Inst5Quest6name1 = "Sunborne Cape"
Inst5Quest6name2 = "Nightfall Gloves"
Inst5Quest6name3 = "Crypt Demon Bracers"
Inst5Quest6name4 = "Stalwart Clutch"

--Quest 7 Alliance
Inst5Quest7 = "7. The Heart of the Mountain"
Inst5Quest7_Level = "55"
Inst5Quest7_Attain = "50"
Inst5Quest7_Aim = "Bring the Heart of the Mountain to Maxwort Uberglint in the Burning Steppes."
Inst5Quest7_Location = "Maxwort Uberglint (Burning Steppes - Flame Crest; "..YELLOW.."65,23"..WHITE..")"
Inst5Quest7_Note = "You find the Heart at "..YELLOW.."[8]"..WHITE.." in a safe. You get the key for the safe from Warder Stillgiss. He appears after opening all small safes."
Inst5Quest7_Prequest = "None"
Inst5Quest7_Folgequest = "None"
-- No Rewards for this quest

--Quest 8 Alliance
Inst5Quest8 = "8. The Good Stuff"
Inst5Quest8_Level = "56"
Inst5Quest8_Attain = "50"
Inst5Quest8_Aim = "Travel to Blackrock Depths and recover 20 Dark Iron Fanny Packs. Return to Oralius when you have completed this task. You assume that the Dark Iron dwarves inside Blackrock Depths carry these 'fanny pack' contraptions."
Inst5Quest8_Location = "Oralius (Burning Steppes - Morgan's Vigil; "..YELLOW.."84,68"..WHITE..")"
Inst5Quest8_Note = "All dwarves can drop the packs."
Inst5Quest8_Prequest = "None"
Inst5Quest8_Folgequest = "None"
--
Inst5Quest8name1 = "A Dingy Fanny Pack"

--Quest 9 Alliance
Inst5Quest9 = "9. A Taste of Flame"
Inst5Quest9_Level = "58"
Inst5Quest9_Attain = "52"
Inst5Quest9_Aim = "Travel to Blackrock Depths and slay Bael'Gar. "..YELLOW.."[...]"..WHITE.." Return the Encased Fiery Essence to Cyrus Therepentous."
Inst5Quest9_Location = "Cyrus Therepentous (Burning Steppes; "..YELLOW.."95,31"..WHITE..")"
Inst5Quest9_Note = "The questline starts at Kalaran Windblade (Searing Gorge; "..YELLOW.."39,38"..WHITE..").\nBael'Gar is at "..YELLOW.."[11]"..WHITE.."."
Inst5Quest9_Prequest = "The Flawless Flame -> A Taste of Flame"
Inst5Quest9_Folgequest = "None"
Inst5Quest9PreQuest = "true"
--
Inst5Quest9name1 = "Shaleskin Cape"
Inst5Quest9name2 = "Wyrmhide Spaulders"
Inst5Quest9name3 = "Valconian Sash"

--Quest 10 Alliance
Inst5Quest10 = "10. Kharan Mighthammer"
Inst5Quest10_Level = "59"
Inst5Quest10_Attain = "50"
Inst5Quest10_Aim = "Travel to Blackrock Depths and find Kharan Mighthammer.\nThe King mentioned that Kharan was being held prisoner there - perhaps you should try looking for a prison."
Inst5Quest10_Location = "King Magni Bronzebeard (Ironforge; "..YELLOW.."39,55"..WHITE..")"
Inst5Quest10_Note = "The prequest starts at Royal Historian Archesonus (Ironforge; "..YELLOW.."38,55"..WHITE.."). Kharan Mighthammer is at "..YELLOW.."[2]"..WHITE.."."
Inst5Quest10_Prequest = "The Smoldering Ruins of Thaurissan"
Inst5Quest10_Folgequest = "The Bearer of Bad News"
Inst5Quest10PreQuest = "true"
-- No Rewards for this quest

--Quest 11 Alliance
Inst5Quest11 = "11. The Fate of the Kingdom"
Inst5Quest11_Level = "59"
Inst5Quest11_Attain = "51"
Inst5Quest11_Aim = "Return to Blackrock Depths and rescue Princess Moira Bronzebeard from the evil clutches of Emperor Dagran Thaurissan."
Inst5Quest11_Location = "King Magni Bronzebeard (Ironforge; "..YELLOW.."39,55"..WHITE..")"
Inst5Quest11_Note = "Princess Moira Bronzebeard is at "..YELLOW.."[21]"..WHITE..". During the fight she might heal Dagran. Try to interrupt her as often as possible, but hurry as she must not die or you can't complete the quest! After talking to her you have to return to Magni Bronzebeard."
Inst5Quest11_Prequest = "The Bearer of Bad News"
Inst5Quest11_Folgequest = "The Princess's Surprise"
Inst5Quest11FQuest = "true"
--
Inst5Quest11name1 = "Magni's Will"
Inst5Quest11name2 = "Songstone of Ironforge"

--Quest 12 Alliance
Inst5Quest12 = "12. Attunement to the Core"
Inst5Quest12_Level = "60"
Inst5Quest12_Attain = "55"
Inst5Quest12_Aim = "Venture to the Molten Core entry portal in Blackrock Depths and recover a Core Fragment. Return to Lothos Riftwaker in Blackrock Mountain when you have recovered the Core Fragment."
Inst5Quest12_Location = "Lothos Riftwaker (Blackrock Mountain; "..YELLOW.."[2] on Entrance Map"..WHITE..")"
Inst5Quest12_Note = "After comleting this quest, you can use the stone next to Lothos Riftwaker to enter the Molten Core.\nYou find the Core Fragment near "..YELLOW.."[23]"..WHITE..", very close to the Molten Core portal."
Inst5Quest12_Prequest = "None"
Inst5Quest12_Folgequest = "None"
-- No Rewards for this quest

--Quest 13 Alliance
Inst5Quest13 = "13. The Challenge"
Inst5Quest13_Level = "60"
Inst5Quest13_Attain = "60"
Inst5Quest13_Aim = "Travel to the Ring of the Law in Blackrock Depths and place the Banner of Provocation in its center as you are sentenced by High Justice Grimstone. Slay Theldren and his gladiators and return to Anthion Harmon in the Eastern Plaguelands with the first piece of Lord Valthalak's amulet."
Inst5Quest13_Location = "Falrin Treeshaper (Dire Maul West; "..YELLOW.."[1] Library"..WHITE..")"
Inst5Quest13_Note = "Followup quest is different for each class."
Inst5Quest13_Prequest = "None"
Inst5Quest13_Folgequest = "Varies for each class"
-- No Rewards for this quest

--Quest 14 Alliance
Inst5Quest14 = "14. The Spectral Chalice"
Inst5Quest14_Level = "55"
Inst5Quest14_Attain = "55"
Inst5Quest14_Aim = "Place the materials Gloom'Rel wants in the The Spectral Chalice."
Inst5Quest14_Location = "Gloom'Rel (Blackrock Depths; "..YELLOW.."[18]"..WHITE..")"
Inst5Quest14_Note = "Only Miners with skill 230 or higher can get this quest to learn Smelt Dark Iron. Materials for the Chalice: 2 [Star Ruby], 20 [Gold Bar], 10 [Truesilver Bar]. Afterwards, if you have [Dark Iron Ore] you can take it to The Black Forge at "..YELLOW.."[22]"..WHITE.." and Smelt it."
Inst5Quest14_Prequest = "None"
Inst5Quest14_Folgequest = "None"
-- No Rewards for this quest

--Quest 15 Alliance
Inst5Quest15 = "15. Direbrew's Dire Brew"
Inst5Quest15_Level = "80"
Inst5Quest15_Attain = "75"
Inst5Quest15_Aim = "Give Direbrew's Dire Brew to Ipfelkofer Ironkeg at the Brewfest camp near Ironforge."
Inst5Quest15_Location = "Direbrew's Dire Brew (drops from Coren Direbrew at "..YELLOW.."[15]"..WHITE..")"
Inst5Quest15_Note = "Coren Direbrew is only available during the Brewfest seasonal event. This quest item will drop only once per character.\n\nIpfelkofer Ironkeg is at the Brewfest Camp at (Dun Morogh; "..YELLOW.."47,39"..WHITE..")."
Inst5Quest15_Prequest = "None"
Inst5Quest15_Folgequest = "None"
--
Inst5Quest15name1 = "Brewfest Prize Token"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst5Quest1_HORDE = Inst5Quest1
Inst5Quest1_HORDE_Level = Inst5Quest1_Level
Inst5Quest1_HORDE_Attain = Inst5Quest1_Attain
Inst5Quest1_HORDE_Aim = Inst5Quest1_Aim
Inst5Quest1_HORDE_Location = Inst5Quest1_Location
Inst5Quest1_HORDE_Note = Inst5Quest1_Note
Inst5Quest1_HORDE_Prequest = Inst5Quest1_Prequest
Inst5Quest1_HORDE_Folgequest = Inst5Quest1_Folgequest
--
Inst5Quest1name1_HORDE = Inst5Quest1name1

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst5Quest2_HORDE = Inst5Quest2
Inst5Quest2_HORDE_Level = Inst5Quest2_Level
Inst5Quest2_HORDE_Attain = Inst5Quest2_Attain
Inst5Quest2_HORDE_Aim = Inst5Quest2_Aim
Inst5Quest2_HORDE_Location = Inst5Quest2_Location
Inst5Quest2_HORDE_Note = Inst5Quest2_Note
Inst5Quest2_HORDE_Prequest = Inst5Quest2_Prequest
Inst5Quest2_HORDE_Folgequest = Inst5Quest2_Folgequest
Inst5Quest2PreQuest_HORDE = Inst5Quest2PreQuest
--
Inst5Quest2name1_HORDE = Inst5Quest2name1
Inst5Quest2name2_HORDE = Inst5Quest2name2
Inst5Quest2name3_HORDE = Inst5Quest2name3

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst5Quest3_HORDE = Inst5Quest3
Inst5Quest3_HORDE_Level = Inst5Quest3_Level
Inst5Quest3_HORDE_Attain = Inst5Quest3_Attain
Inst5Quest3_HORDE_Aim = Inst5Quest3_Aim
Inst5Quest3_HORDE_Location = Inst5Quest3_Location
Inst5Quest3_HORDE_Note = Inst5Quest3_Note
Inst5Quest3_HORDE_Prequest = Inst5Quest3_Prequest
Inst5Quest3_HORDE_Folgequest = Inst5Quest3_Folgequest
--
Inst5Quest3name1_HORDE = Inst5Quest3name1
Inst5Quest3name2_HORDE = Inst5Quest3name2

--Quest 4 Horde
Inst5Quest4_HORDE = "4. Lost Thunderbrew Recipe"
Inst5Quest4_HORDE_Level = "55"
Inst5Quest4_HORDE_Attain = "50"
Inst5Quest4_HORDE_Aim = "Bring the Lost Thunderbrew Recipe to Vivian Lagrave in Kargath."
Inst5Quest4_HORDE_Location = "Shadowmage Vivian Lagrave (Badlands - Kargath; "..YELLOW.."2,47"..WHITE..")"
Inst5Quest4_HORDE_Note = "You get the prequest from Apothecary Zinge in Undercity - The Apothecarium ("..YELLOW.."50,68"..WHITE..").\nYou get the recipe from one of the guards who appear if you destroy the ale "..YELLOW.."[15]"..WHITE.."."
Inst5Quest4_HORDE_Prequest = "Vivian Lagrave"
Inst5Quest4_HORDE_Folgequest = "None"
Inst5Quest4PreQuest_HORDE = "true"
--
Inst5Quest4name1_HORDE = "Superior Healing Potion"
Inst5Quest4name2_HORDE = "Greater Mana Potion"
Inst5Quest4name3_HORDE = "Swiftstrike Cudgel"
Inst5Quest4name4_HORDE = "Limb Cleaver"

--Quest 5 Horde  (same as Quest 7 Alliance)
Inst5Quest5_HORDE = "5. The Heart of the Mountain"
Inst5Quest5_HORDE_Level = Inst5Quest7_Level
Inst5Quest5_HORDE_Attain = Inst5Quest7_Attain
Inst5Quest5_HORDE_Aim = Inst5Quest7_Aim
Inst5Quest5_HORDE_Location = Inst5Quest7_Location
Inst5Quest5_HORDE_Note = Inst5Quest7_Note
Inst5Quest5_HORDE_Prequest = Inst5Quest7_Prequest
Inst5Quest5_HORDE_Folgequest = Inst5Quest7_Folgequest
-- No Rewards for this quest

--Quest 6 Horde
Inst5Quest6_HORDE = "6. KILL ON SIGHT: Dark Iron Dwarves"
Inst5Quest6_HORDE_Level = "52"
Inst5Quest6_HORDE_Attain = "48"
Inst5Quest6_HORDE_Aim = "Venture to Blackrock Depths and destroy the vile aggressors! Warlord Goretooth wants you to kill 15 Anvilrage Guardsmen, 10 Anvilrage Wardens and 5 Anvilrage Footmen. Return to him once your task is complete."
Inst5Quest6_HORDE_Location = "Sign Post (Badlands - Kargath; "..YELLOW.."3,47"..WHITE..")"
Inst5Quest6_HORDE_Note = "You find the dwarves in the first part of Blackrock Depths.\nYou find Warlord Goretooth in Kargath at the top of the tower (Badlands, "..YELLOW.."5,47"..WHITE..")."
Inst5Quest6_HORDE_Prequest = "None"
Inst5Quest6_HORDE_Folgequest = "KILL ON SIGHT: High Ranking Dark Iron Officials"
-- No Rewards for this quest

--Quest 7 Horde
Inst5Quest7_HORDE = "7. KILL ON SIGHT: High Ranking Dark Iron Officials"
Inst5Quest7_HORDE_Level = "54"
Inst5Quest7_HORDE_Attain = "49"
Inst5Quest7_HORDE_Aim = "Venture to Blackrock Depths and destroy the vile aggressors! Warlord Goretooth wants you to kill 10 Anvilrage Medics, 10 Anvilrage Soldiers and 10 Anvilrage Officers. Return to him once your task is complete."
Inst5Quest7_HORDE_Location = "Sign Post (Badlands - Kargath; "..YELLOW.."3,47"..WHITE..")"
Inst5Quest7_HORDE_Note = "You find the dwarves near Bael'Gar "..YELLOW.."[11]"..WHITE..". You find Warlord Goretooth in Kargath at the top of the tower (Badlands, "..YELLOW.."5,47"..WHITE..").\n The followup quest starts at Lexlort (Badlands - Kargath; "..YELLOW.."5,47"..WHITE.."). You find Grark Lorkrub in the Burning Steppes ("..YELLOW.."38,35"..WHITE.."). You have to reduce his life below 50% to bind him and start a Escort quest."
Inst5Quest7_HORDE_Prequest = "KILL ON SIGHT: Dark Iron Dwarves"
Inst5Quest7_HORDE_Folgequest = "Grark Lorkrub -> Precarious Predicament (Escort quest)"
Inst5Quest7FQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 8 Horde
Inst5Quest8_HORDE = "8. Operation: Death to Angerforge"
Inst5Quest8_HORDE_Level = "58"
Inst5Quest8_HORDE_Attain = "54"
Inst5Quest8_HORDE_Aim = "Travel to Blackrock Depths and slay General Angerforge! Return to Warlord Goretooth when the task is complete."
Inst5Quest8_HORDE_Location = "Warlord Goretooth (Badlands - Kargath; "..YELLOW.."5,47"..WHITE..")"
Inst5Quest8_HORDE_Note = "You find General Angerforge at "..YELLOW.."[13]"..WHITE..". He calls help below 30%!"
Inst5Quest8_HORDE_Prequest = "Precarious Predicament"
Inst5Quest8_HORDE_Folgequest = "None"
Inst5Quest8FQuest_HORDE = "true"
--
Inst5Quest8name1_HORDE = "Conqueror's Medallion"

--Quest 9 Horde
Inst5Quest9_HORDE = "9. The Rise of the Machines"
Inst5Quest9_HORDE_Level = "58"
Inst5Quest9_HORDE_Attain = "52"
Inst5Quest9_HORDE_Aim = "Find and slay Golem Lord Argelmach. Return his head to Lotwil. You will also need to collect 10 Intact Elemental Cores from the Ragereaver Golems and Warbringer Constructs protecting Argelmach. You know this because you are psychic."
Inst5Quest9_HORDE_Location = "Lotwil Veriatus (Badlands; "..YELLOW.."25,44"..WHITE..")"
Inst5Quest9_HORDE_Note = "You get the prequest from Hierophant Theodora Mulvadania (Badlands - Kargath; "..YELLOW.."3,47"..WHITE..").\nYou find Argelmach at "..YELLOW.."[14]"..WHITE.."."
Inst5Quest9_HORDE_Prequest = "The Rise of the Machines"
Inst5Quest9_HORDE_Folgequest = "None"
Inst5Quest9PreQuest_HORDE = "true"
--
Inst5Quest9name1_HORDE = "Azure Moon Amice"
Inst5Quest9name2_HORDE = "Raincaster Drape"
Inst5Quest9name3_HORDE = "Basaltscale Armor"
Inst5Quest9name4_HORDE = "Lavaplate Gauntlets"

--Quest 10 Horde  (same as Quest 9 Alliance)
Inst5Quest10_HORDE = "10. A Taste of Flame"
Inst5Quest10_HORDE_Level = Inst5Quest9_Level
Inst5Quest10_HORDE_Attain = Inst5Quest9_Attain
Inst5Quest10_HORDE_Aim = Inst5Quest9_Aim
Inst5Quest10_HORDE_Location = Inst5Quest9_Location
Inst5Quest10_HORDE_Note = Inst5Quest9_Note
Inst5Quest10_HORDE_Prequest = Inst5Quest9_Prequest
Inst5Quest10_HORDE_Folgequest = Inst5Quest9_Folgequest
Inst5Quest10PreQuest_HORDE = Inst5Quest9PreQuest
--
Inst5Quest10name1_HORDE = Inst5Quest9name1
Inst5Quest10name2_HORDE = Inst5Quest9name2
Inst5Quest10name3_HORDE = Inst5Quest9name3

--Quest 11 Horde
Inst5Quest11_HORDE = "11. Disharmony of Flame"
Inst5Quest11_HORDE_Level = "52"
Inst5Quest11_HORDE_Attain = "48"
Inst5Quest11_HORDE_Aim = "Travel to the quarry in Blackrock Mountain and slay Overmaster Pyron. Return to Thunderheart when you have completed this assignment."
Inst5Quest11_HORDE_Location = "Thunderheart (Badlands - Kargath; "..YELLOW.."3,48"..WHITE..")"
Inst5Quest11_HORDE_Note = "Overmaster Pyron is a fire elemental outside the instance. He's at "..YELLOW.."[24]"..WHITE.." on the Blackrock Depths map and at "..YELLOW.."[1]"..WHITE.." on the Blackrock Mountain entrance map."
Inst5Quest11_HORDE_Prequest = "None"
Inst5Quest11_HORDE_Folgequest = "Disharmony of Fire"
-- No Rewards for this quest

--Quest 12 Horde
Inst5Quest12_HORDE = "12. Disharmony of Fire"
Inst5Quest12_HORDE_Level = "56"
Inst5Quest12_HORDE_Attain = "48"
Inst5Quest12_HORDE_Aim = "Enter Blackrock Depths and track down Lord Incendius. Slay him and return any source of information you may find to Thunderheart."
Inst5Quest12_HORDE_Location = "Thunderheart (Badlands - Kargath; "..YELLOW.."3,48"..WHITE..")"
Inst5Quest12_HORDE_Note = "You get the prequest from Thunderheart, too.\nYou find Lord Incendius at "..YELLOW.."[10]"..WHITE.."."
Inst5Quest12_HORDE_Prequest = "Disharmony of Flame"
Inst5Quest12_HORDE_Folgequest = "None"
Inst5Quest12FQuest_HORDE = "true"
--
Inst5Quest12name1_HORDE = "Sunborne Cape"
Inst5Quest12name2_HORDE = "Nightfall Gloves"
Inst5Quest12name3_HORDE = "Crypt Demon Bracers"
Inst5Quest12name4_HORDE = "Stalwart Clutch"

--Quest 13 Horde
Inst5Quest13_HORDE = "13. The Last Element"
Inst5Quest13_HORDE_Level = "54"
Inst5Quest13_HORDE_Attain = "48"
Inst5Quest13_HORDE_Aim = "Travel to Blackrock Depths and recover 10 Essence of the Elements. Your first inclination is to search the golems and golem makers. You remember Vivian Lagrave also muttering something about elementals."
Inst5Quest13_HORDE_Location = "Shadowmage Vivian Lagrave (Badlands - Kargath; "..YELLOW.."2,47"..WHITE..")"
Inst5Quest13_HORDE_Note = "You get the prequest from Thunderheart (Badlands - Kargath; "..YELLOW.."3,48"..WHITE..").\n Every elemental can drop the Essence"
Inst5Quest13_HORDE_Prequest = "Disharmony of Flame"
Inst5Quest13_HORDE_Folgequest = "None"
Inst5Quest13PreQuest_HORDE = "true"
--
Inst5Quest13name1_HORDE = "Lagrave's Seal"

--Quest 14 Horde
Inst5Quest14_HORDE = "14. Commander Gor'shak"
Inst5Quest14_HORDE_Level = "52"
Inst5Quest14_HORDE_Attain = "48"
Inst5Quest14_HORDE_Aim = "Find Commander Gor'shak in Blackrock Depths.\nYou recall that the crudely drawn picture of the orc included bars drawn over the portrait. Perhaps you should search for a prison of some sort."
Inst5Quest14_HORDE_Location = "Galamav the Marksman (Badlands - Kargath; "..YELLOW.."5,47"..WHITE..")"
Inst5Quest14_HORDE_Note = "You get the prequest from Thunderheart (Badlands - Kargath; "..YELLOW.."3,48"..WHITE..").\nYou find Commander Gor'shak at "..YELLOW.."[3]"..WHITE..". The key to open the prison drops from High Interrogator Gerstahn "..YELLOW.."[5]"..WHITE..". If you talk to him and start the next Quest enemys appears."
Inst5Quest14_HORDE_Prequest = "Disharmony of Flame"
Inst5Quest14_HORDE_Folgequest = "What Is Going On?"
Inst5Quest14PreQuest_HORDE = "true"

--Quest 15 Horde
Inst5Quest15_HORDE = "15. The Royal Rescue"
Inst5Quest15_HORDE_Level = "59"
Inst5Quest15_HORDE_Attain = "50"
Inst5Quest15_HORDE_Aim = "Slay Emperor Dagran Thaurissan and free Princess Moira Bronzebeard from his evil spell."
Inst5Quest15_HORDE_Location = "Thrall (Orgrimmar; "..YELLOW.."31,37"..WHITE..")"
Inst5Quest15_HORDE_Note = "After talking a with Kharan Mighthammer and Thrall you get this quest.\nYou find Emperor Dagran Thaurissan at "..YELLOW.."[21]"..WHITE..". The Princess heals Dagran but you must not kill her to complete the quest! Try to interrupt her healing spells. (Rewards are for The Princess Saved?)"
Inst5Quest15_HORDE_Prequest = "Commander Gor'shak"
Inst5Quest15_HORDE_Folgequest = "The Princess Saved?"
Inst5Quest15FQuest_HORDE = "true"
--
Inst5Quest15name1_HORDE = "Thrall's Resolve"
Inst5Quest15name2_HORDE = "Eye of Orgrimmar"

--Quest 16 Horde  (same as Quest 12 Alliance)
Inst5Quest16_HORDE = "16. Attunement to the Core"
Inst5Quest16_HORDE_Level = Inst5Quest12_Level
Inst5Quest16_HORDE_Attain = Inst5Quest12_Attain
Inst5Quest16_HORDE_Aim = Inst5Quest12_Aim
Inst5Quest16_HORDE_Location = Inst5Quest12_Location
Inst5Quest16_HORDE_Note = Inst5Quest12_Note
Inst5Quest16_HORDE_Prequest = Inst5Quest12_Prequest
Inst5Quest16_HORDE_Folgequest = Inst5Quest12_Folgequest
-- No Rewards for this quest

--Quest 17 Horde  (same as Quest 13 Alliance)
Inst5Quest17_HORDE = "17. The Challenge"
Inst5Quest17_HORDE_Level = Inst5Quest13_Level
Inst5Quest17_HORDE_Attain = Inst5Quest13_Attain
Inst5Quest17_HORDE_Aim = Inst5Quest13_Aim
Inst5Quest17_HORDE_Location = Inst5Quest13_Location
Inst5Quest17_HORDE_Note = Inst5Quest13_Note
Inst5Quest17_HORDE_Prequest = Inst5Quest13_Prequest
Inst5Quest17_HORDE_Folgequest = Inst5Quest13_Folgequest
-- No Rewards for this quest

--Quest 18 Horde  (same as Quest 14 Alliance)
Inst5Quest18_HORDE = "18. The Spectral Chalice"
Inst5Quest18_HORDE_Level = Inst5Quest14_Level
Inst5Quest18_HORDE_Attain = Inst5Quest14_Attain
Inst5Quest18_HORDE_Aim = Inst5Quest14_Aim
Inst5Quest18_HORDE_Location = Inst5Quest14_Location
Inst5Quest18_HORDE_Note = Inst5Quest14_Note
Inst5Quest18_HORDE_Prequest = Inst5Quest14_Prequest
Inst5Quest18_HORDE_Folgequest = Inst5Quest14_Folgequest
-- No Rewards for this quest

--Quest 19 Horde
Inst5Quest19_HORDE = "19. Direbrew's Dire Brew"
Inst5Quest19_HORDE_Level = "80"
Inst5Quest19_HORDE_Attain = "75"
Inst5Quest19_HORDE_Aim = "Give Direbrew's Dire Brew to Tapper Swindlekeg at the Brewfest camp near Orgrimmar."
Inst5Quest19_HORDE_Location = "Direbrew's Dire Brew (drops from Coren Direbrew at "..YELLOW.."[15]"..WHITE..")"
Inst5Quest19_HORDE_Note = "Coren Direbrew is only available during the Brewfest seasonal event. This quest item will drop only once per character.\n\nTapper Swindlekeg is at the Brewfest Camp at (Durotar; "..YELLOW.."45,17"..WHITE..")."
Inst5Quest19_HORDE_Prequest = "None"
Inst5Quest19_HORDE_Folgequest = "None"
--
Inst5Quest19name1_HORDE = "Brewfest Prize Token"



--------------- INST6 - Blackwing Lair (BWL) ---------------

--------------- INST7 - Blackfathom Deeps (BFD) ---------------

Inst7Story = "Situated along the Zoram Strand of Ashenvale, Blackfathom Deeps was once a glorious temple dedicated to the night elves' moon-goddess, Elune. However, the great Sundering shattered the temple - sinking it beneath the waves of the Veiled Sea. There it remained untouched - until, drawn by its ancient power - the naga and satyr emerged to plumb its secrets. Legends hold that the ancient beast, Aku'mai, has taken up residence within the temple's ruins. Aku'mai, a favored pet of the primordial Old Gods, has preyed upon the area ever since. Drawn to Aku'mai's presence, the cult known as the Twilight's Hammer has also come to bask in the Old Gods' evil presence."
Inst7Caption = "Blackfathom Deeps"
Inst7QAA = "9 Quests"
Inst7QAH = "7 Quests"

--Quest 1 Alliance
Inst7Quest1 = "1. Knowledge in the Deeps"
Inst7Quest1_Level = "23"
Inst7Quest1_Attain = "19"
Inst7Quest1_Aim = "Bring the Lorgalis Manuscript to Gerrig Bonegrip in the Forlorn Cavern in Ironforge."
Inst7Quest1_Location = "Gerrig Bonegrip (Ironforge - The Forlorn Cavern; "..YELLOW.."50,5"..WHITE..")"
Inst7Quest1_Note = "You find the Manuscript at "..YELLOW.."[2]"..WHITE.." in the water."
Inst7Quest1_Prequest = "None"
Inst7Quest1_Folgequest = "None"
--
Inst7Quest1name1 = "Sustaining Ring"

--Quest 2 Alliance
Inst7Quest2 = "2. Researching the Corruption"
Inst7Quest2_Level = "24"
Inst7Quest2_Attain = "18"
Inst7Quest2_Aim = "Gershala Nightwhisper in Auberdine wants 8 Corrupt Brain stems."
Inst7Quest2_Location = "Gershala Nightwhisper (Darkshore - Auberdine; "..YELLOW.."38,43"..WHITE..")"
Inst7Quest2_Note = "The prequest is optional. You get it from Argos Nightwhisper at (Stormwind - The Park; "..YELLOW.."35.9, 67.3"..WHITE.."). \n\nAll the Nagas before and in Blackfathom Deeps drop the brains."
Inst7Quest2_Prequest = "The Corruption Abroad"
Inst7Quest2_Folgequest = "None"
Inst7Quest2PreQuest = "true"
--
Inst7Quest2name1 = "Beetle Clasps"
Inst7Quest2name2 = "Prelacy Cape"

--Quest 3 Alliance
Inst7Quest3 = "3. In Search of Thaelrid"
Inst7Quest3_Level = "24"
Inst7Quest3_Attain = "18"
Inst7Quest3_Aim = "Seek out Argent Guard Thaelrid in Blackfathom Deeps."
Inst7Quest3_Location = "Dawnwatcher Shaedlass (Darnassus - Craftsmen's Terrace; "..YELLOW.."55,24"..WHITE..")"
Inst7Quest3_Note = "You find Argent Guard Thaelrid at "..YELLOW.."[4]"..WHITE.."."
Inst7Quest3_Prequest = "None"
Inst7Quest3_Folgequest = "Blackfathom Villainy"
-- No Rewards for this quest

--Quest 4 Alliance
Inst7Quest4 = "4. Blackfathom Villainy"
Inst7Quest4_Level = "27"
Inst7Quest4_Attain = "18"
Inst7Quest4_Aim = "Bring the head of Twilight Lord Kelris to Dawnwatcher Selgorm in Darnassus."
Inst7Quest4_Location = "Argent Guard Thaelrid (Blackfathom Deeps; "..YELLOW.."[4]"..WHITE..")"
Inst7Quest4_Note = "Twilight Lord Kelris is at "..YELLOW.."[8]"..WHITE..". You find Dawnwatcher Selgorm in Darnassus - Craftsmen's Terrace ("..YELLOW.."55,24"..WHITE.."). \n\nATTENTION! If you turn on the flames beside Lord Kelris, enemies appear and attack you."
Inst7Quest4_Prequest = "In Search of Thaelrid"
Inst7Quest4_Folgequest = "None"
Inst7Quest4FQuest = "true"
--
Inst7Quest4name1 = "Gravestone Scepter"
Inst7Quest4name2 = "Arctic Buckler"

--Quest 5 Alliance
Inst7Quest5 = "5. Twilight Falls"
Inst7Quest5_Level = "25"
Inst7Quest5_Attain = "20"
Inst7Quest5_Aim = "Bring 10 Twilight Pendants to Argent Guard Manados in Darnassus."
Inst7Quest5_Location = "Argent Guard Manados (Darnassus - Craftsmen's Terrace; "..YELLOW.."55,23"..WHITE..")"
Inst7Quest5_Note = "Every Twilight mob can drop the pendants."
Inst7Quest5_Prequest = "None"
Inst7Quest5_Folgequest = "None"
--
Inst7Quest5name1 = "Nimbus Boots"
Inst7Quest5name2 = "Heartwood Girdle"

--Quest 6 Alliance
Inst7Quest6 = "6. The Troesta Stone "..EPOCH.."(New)"
Inst7Quest6_Level = "23"
Inst7Quest6_Attain = "16"
Inst7Quest6_Aim = "Collect the Troesta Stone tablet from Twilight Lord Kelris in Blackfathom Depths"
Inst7Quest6_Location = "Archaeologist Hollee (Ashenvale - Auberdine; "..YELLOW.."37,41"..WHITE..")"
Inst7Quest6_Note = "The quest chain stars in Westfall at ("..YELLOW.."29,26"..WHITE..") by opening the Sunken Chest.\n\nTwilight Lord Kelris is at "..YELLOW.."[8]"..WHITE..". You find Archaeologist Hollee in Ashenvale - Auberdine ("..YELLOW.."37,41"..WHITE.."). \n\nATTENTION! If you turn on the flames beside Lord Kelris, enemies appear and attack you."
Inst7Quest6_Prequest = "Sunken Chest > The Ersotta Stone > The Storeta Stone"
Inst7Quest6_Folgequest = "None"
Inst7Quest6PreQuest = "true"
--
Inst7Quest6name1 = "Staff of Serendipity"
Inst7Quest6name2 = "Surveyor's Shield"

--Quest 7 Alliance
Inst7Quest7 = "7. Solarsal Report "..EPOCH.."(New)"
Inst7Quest7_Level = "27"
Inst7Quest7_Attain = "20"
Inst7Quest7_Aim = "Bring the report to someone in Astranaar."
Inst7Quest7_Location = "Solarsal Report (drops from Lady Sarevess; "..YELLOW.."[3]"..WHITE..")"
Inst7Quest7_Note = "The item that starts the quest drops from Lady Sarevess; "..YELLOW.."[3]"..WHITE..". You deliver the scroll to Shindrell Swiftfire ("..YELLOW.."34,48"..WHITE..") in Astranaar, Ashenvale."
Inst7Quest7_Prequest = "None"
Inst7Quest7_Folgequest = "None"
-- No Rewards for this quest

--Quest 8 Alliance
Inst7Quest8 = "8. The Orb of Soran'ruk "..warlock.."(Warlock)"
Inst7Quest8_Level = "25"
Inst7Quest8_Attain = "20"
Inst7Quest8_Aim = "Find 3 Soran'ruk Fragments and 1 Large Soran'ruk Fragment and return them to Doan Karhan in the Barrens."
Inst7Quest8_Location = "Doan Karhan (Barrens; "..YELLOW.."49,57"..WHITE..")"
Inst7Quest8_Note = ""..warlock.."WARLOCK"..WHITE.." ONLY! You get the 3 Soran'ruk Fragments from Twilight Accolytes in "..YELLOW.."[Blackfathom Deeps]"..WHITE..". You get the Large Soran'ruk Fragment in "..YELLOW.."[Shadowfang Keep]"..WHITE.." from Shadowfang Darksouls."
Inst7Quest8_Prequest = "None"
Inst7Quest8_Folgequest = "None"
--
Inst7Quest8name1 = "Orb of Soran'ruk"
Inst7Quest8name2 = "Staff of Soran'ruk"

Inst7Quest9 = "9. The Test of Righteousness "..paladin.."(Paladin)"
Inst7Quest9_Level = "22"
Inst7Quest9_Attain = "20"
Inst7Quest9_Aim = "Using Jordan's Weapon Notes, find some Whitestone Oak Lumber, Bailor's Refined Ore Shipment, Jordan's Smithing Hammer, and a Kor Gem, and return them to Jordan Stilwell in Ironforge."
Inst7Quest9_Location = "Jordan Stilwell (Dun Morogh - Ironforge Entrance; "..YELLOW.."52,36"..WHITE..")"
Inst7Quest9_Note = ""..paladin.."PALADIN "..WHITE.."ONLY!\n\n1. To see the note click on "..YELLOW.."[The Test of Righteousness Information]"..WHITE.."."
Inst7Quest9_Page = {2, ""..paladin.."PALADIN "..WHITE.."ONLY!\n\n1. You get the  Whitestone Oak Lumber from Goblin Woodcarvers in "..YELLOW.."[Deadmines]"..WHITE.." near "..YELLOW.."[3]"..WHITE..".\n\n2. To get the Bailor's Refined Ore Shipment you must talk to Bailor Stonehand (Loch Modan - Thelsamar; "..YELLOW.."35,44"..WHITE.."). He gives you the 'Bailor's Ore Shipment' quest. You find the Jordan's Ore Shipment behind a tree at "..YELLOW.."71,21"..WHITE.."\n\n3. You get Jordan's Smithing Hammer in "..YELLOW.."[Shadowfang Keep]"..WHITE.." at "..YELLOW.."[3]"..WHITE..".\n\n4. To get a Kor Gem you have to go to Thundris Windweaver (Darkshore - Auberdine; "..YELLOW.."37,40"..WHITE..") and do the 'Seeking the Kor Gem' quest. For this quest, you must kill Blackfathom oracles or priestesses before "..YELLOW.."[Blackfathom Deeps]"..WHITE..". They drop a corrupted Kor Gem. Thundris Windweaver will clean it for you.", };
Inst7Quest9_Prequest = "The Tome of Valor -> The Test of Righteousness"
Inst7Quest9_Folgequest = "The Test of Righteousness"
Inst7Quest9PreQuest = "true"
--
Inst7Quest9name1 = "Verigan's Fist"

--Quest 1 Horde
Inst7Quest1_HORDE = "1. The Essence of Aku'Mai"
Inst7Quest1_HORDE_Level = "22"
Inst7Quest1_HORDE_Attain = "17"
Inst7Quest1_HORDE_Aim = "Bring 20 Sapphires of Aku'Mai to Je'neu Sancrea in Ashenvale."
Inst7Quest1_HORDE_Location = "Je'neu Sancrea (Ashenvale - Zoram'gar Outpost; "..YELLOW.."11,33"..WHITE..")"
Inst7Quest1_HORDE_Note = "You get the prequest Trouble in the Deeps from Tsunaman (Stonetalon Mountains - Sun Rock Retreat; "..YELLOW.."47,64"..WHITE.."). The crystals can be found in the tunnels before the instance."
Inst7Quest1_HORDE_Prequest = "Trouble in the Deeps"
Inst7Quest1_HORDE_Folgequest = "None"
Inst7Quest1PreQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 2 Horde
Inst7Quest2_HORDE = "2. Allegiance to the Old Gods"
Inst7Quest2_HORDE_Level = "22"
Inst7Quest2_HORDE_Attain = "17"
Inst7Quest2_HORDE_Aim = "Bring the Damp Note to Je'neu Sancrea in Ashenvale -> Kill Lorgus Jett in Blackfathom Deeps and then return to Je'neu Sancrea in Ashenvale."
Inst7Quest2_HORDE_Location = "Damp Note (drop - see note)"
Inst7Quest2_HORDE_Note = "You get the Damp Note from Blackfathom Tide Priestess (5% drop rate). Then take it to Je'neu Sancrea (Ashenvale - Zoram'gar Outpost; "..YELLOW.."11,33"..WHITE.."). Lorgus Jett is at "..YELLOW.."[6]"..WHITE.."."
Inst7Quest2_HORDE_Prequest = "None"
Inst7Quest2_HORDE_Folgequest = "None"
--
Inst7Quest2name1_HORDE = "Band of the Fist"
Inst7Quest2name2_HORDE = "Chestnut Mantle"

--Quest 3 Horde
Inst7Quest3_HORDE = "3. Amongst the Ruins"
Inst7Quest3_HORDE_Level = "27"
Inst7Quest3_HORDE_Attain = "21"
Inst7Quest3_HORDE_Aim = "Bring the Fathom Core to Je'neu Sancrea at Zoram'gar Outpost, Ashenvale."
Inst7Quest3_HORDE_Location = "Je'neu Sancrea (Ashenvale - Zoram'gar Outpost; "..YELLOW.."11,33"..WHITE..")"
Inst7Quest3_HORDE_Note = "You find the Fathom Core at "..YELLOW.."[7]"..WHITE.." in the water. When you get the core Baron Aquanis appears and attacks you. He drops a quest item which you have to take back to Je'neu Sancrea."
Inst7Quest3_HORDE_Prequest = "None"
Inst7Quest3_HORDE_Folgequest = "None"
-- No Rewards for this quest

--Quest 4 Horde
Inst7Quest4_HORDE = "4. Baron Aquanis"
Inst7Quest4_HORDE_Level = "30"
Inst7Quest4_HORDE_Attain = "21"
Inst7Quest4_HORDE_Aim = "Bring the Strange Water Globe to Je'neu Sancrea at Zoram'gar Outpost, Ashenvale."
Inst7Quest4_HORDE_Location = "Strange Water Globe (Drops from Baron Aquanis; "..YELLOW.."[7]"..WHITE..")"
Inst7Quest4_HORDE_Note = "The globe drops from Baron Aquanis "..YELLOW.."[7]"..WHITE.." in the water. Interact with the Fathom Core to summon Baron Aquanis. Deliver the globe to Je'neu Sancrea (Ashenvale - Zoram'gar Outpost; "..YELLOW.."11,33"..WHITE..")"
Inst7Quest4_HORDE_Prequest = "None"
Inst7Quest4_HORDE_Folgequest = "None"
--
Inst7Quest4name1_HORDE = "Outlaw Sabre"
Inst7Quest4name2_HORDE = "Witch's Finger"

--Quest 5 Horde
Inst7Quest5_HORDE = "5. Blackfathom Villainy"
Inst7Quest5_HORDE_Level = "27"
Inst7Quest5_HORDE_Attain = "18"
Inst7Quest5_HORDE_Aim = "Bring the head of Twilight Lord Kelris to Bashana Runetotem in Thunder Bluff."
Inst7Quest5_HORDE_Location = "Argent guard Thaelrid (Blackfathom Deeps; "..YELLOW.."[4]"..WHITE..")"
Inst7Quest5_HORDE_Note = "Twilight Lord Kelris is at "..YELLOW.."[8]"..WHITE..". You find Bashana Runetotem in Thunderbluff - The Elder Rise ("..YELLOW.."70,33"..WHITE.."). \n\nATTENTION! If you turn on the flames beside Lord Kelris, enemies appear and attack you."
Inst7Quest5_HORDE_Prequest = "None"
Inst7Quest5_HORDE_Folgequest = "None"
--
Inst7Quest5name1_HORDE = "Gravestone Scepter"
Inst7Quest5name2_HORDE = "Arctic Buckler"

--Quest 6 Horde  (same as Quest 8 Alliance)
Inst7Quest6_HORDE = "6. The Orb of Soran'ruk "..warlock.."(Warlock)"
Inst7Quest6_HORDE_Level = Inst7Quest8_Level
Inst7Quest6_HORDE_Attain = Inst7Quest8_Attain
Inst7Quest6_HORDE_Aim = Inst7Quest8_Aim
Inst7Quest6_HORDE_Location = Inst7Quest8_Location
Inst7Quest6_HORDE_Note = Inst7Quest8_Note
Inst7Quest6_HORDE_Prequest = Inst7Quest8_Prequest
Inst7Quest6_HORDE_Folgequest = Inst7Quest8_Folgequest
--
Inst7Quest6name1_HORDE = Inst7Quest8name1
Inst7Quest6name2_HORDE = Inst7Quest8name2

Inst7Quest7_HORDE = "7. Materials of the Light "..paladin.."(Paladin)"
Inst7Quest7_HORDE_Level = Inst3Quest6_HORDE_Level
Inst7Quest7_HORDE_Attain = Inst3Quest6_HORDE_Attain
Inst7Quest7_HORDE_Aim = Inst3Quest6_HORDE_Aim
Inst7Quest7_HORDE_Location = Inst3Quest6_HORDE_Location
Inst7Quest7_HORDE_Note = Inst3Quest6_HORDE_Note
Inst7Quest7_HORDE_Page = Inst3Quest6_HORDE_Page
Inst7Quest7_HORDE_Prequest = Inst3Quest6_HORDE_Prequest
Inst7Quest7_HORDE_Folgequest = Inst3Quest6_HORDE_Folgequest
Inst7Quest7_HORDEPreQuest = "true"
--
Inst7Quest7name1_HORDE = Inst3Quest6name1_HORDE

--------------- INST8 - Lower Blackrock Spire (LBRS) ---------------

Inst8Story = "The mighty fortress carved within the fiery bowels of Blackrock Mountain was designed by the master dwarf-mason, Franclorn Forgewright. Intended to be the symbol of Dark Iron power, the fortress was held by the sinister dwarves for centuries. However, Nefarian - the cunning son of the dragon, Deathwing - had other plans for the great keep. He and his draconic minions took control of the upper Spire and made war on the dwarves' holdings in the mountain's volcanic depths. Realizing that the dwarves were led by the mighty fire elemental, Ragnaros - Nefarian vowed to crush his enemies and claim the whole of Blackrock mountain for himself."
Inst8Caption = "Blackrock Spire (Lower)"
Inst8QAA = "14 Quests"
Inst8QAH = "14 Quests"

--Quest 1 Alliance
Inst8Quest1 = "1. The Final Tablets"
Inst8Quest1_Level = "58"
Inst8Quest1_Attain = "40"
Inst8Quest1_Aim = "Bring the Fifth and Sixth Mosh'aru Tablets to Prospector Ironboot in Tanaris."
Inst8Quest1_Location = "Prospector Ironboot (Tanaris - Steamwheedle Port; "..YELLOW.."66,23"..WHITE..")"
Inst8Quest1_Note = "You find the tablets near "..YELLOW.."[7]"..WHITE.." and "..YELLOW.."[9]"..WHITE..".\nThe Rewards belong to 'Confront Yeh'kinya'. You find Yeh'kinya near Prospector Ironboot."
Inst8Quest1_Prequest = "The Lost Tablets of Mosh'aru"
Inst8Quest1_Folgequest = "Confront Yeh'kinya"
Inst8Quest1PreQuest = "true"
--
Inst8Quest1name1 = "Faded Hakkari Cloak"
Inst8Quest1name2 = "Tattered Hakkari Cape"

--Quest 2 Alliance
Inst8Quest2 = "2. Kibler's Exotic Pets"
Inst8Quest2_Level = "59"
Inst8Quest2_Attain = "55"
Inst8Quest2_Aim = "Travel to Blackrock Spire and find Bloodaxe Worg Pups. Use the cage to carry the ferocious little beasts. Bring back a Caged Worg Pup to Kibler."
Inst8Quest2_Location = "Kibler (Burning Steppes - Flame Crest; "..YELLOW.."65,22"..WHITE..")"
Inst8Quest2_Note = "You find the Worg Pup at "..YELLOW.."[17]"..WHITE.." by Halcyon."
Inst8Quest2_Prequest = "None"
Inst8Quest2_Folgequest = "None"
--
Inst8Quest2name1 = "Worg Carrier"

--Quest 3 Alliance
Inst8Quest3 = "3. En-Ay-Es-Tee-Why"
Inst8Quest3_Level = "59"
Inst8Quest3_Attain = "55"
Inst8Quest3_Aim = "Travel to Blackrock Spire and collect 15 Spire Spider Eggs for Kibler."
Inst8Quest3_Location = "Kibler (Burning Steppes - Flame Crest; "..YELLOW.."65,22"..WHITE..")"
Inst8Quest3_Note = "You find the spider eggs near "..YELLOW.."[13]"..WHITE.."."
Inst8Quest3_Prequest = "None"
Inst8Quest3_Folgequest = "None"
--
Inst8Quest3name1 = "Smolderweb Carrier"

--Quest 4 Alliance
Inst8Quest4 = "4. Mother's Milk"
Inst8Quest4_Level = "60"
Inst8Quest4_Attain = "55"
Inst8Quest4_Aim = "In the heart of Blackrock Spire you will find Mother Smolderweb. Engage her and get her to poison you. Chances are good that you will have to kill her as well. Return to Ragged John when you are poisoned so that he can 'milk' you."
Inst8Quest4_Location = "Ragged John (Burning Steppes - Flame Crest; "..YELLOW.."65,23"..WHITE..")"
Inst8Quest4_Note = "Mother Smolderweb is at "..YELLOW.."[13]"..WHITE..". The poison effect snares nearby players as well. If it is removed or dispelled, you fail the quest."
Inst8Quest4_Prequest = "None"
Inst8Quest4_Folgequest = "None"
--
Inst8Quest4name1 = "Ragged John's Neverending Cup"

--Quest 5 Alliance
Inst8Quest5 = "5. Put Her Down"
Inst8Quest5_Level = "59"
Inst8Quest5_Attain = "55"
Inst8Quest5_Aim = "Travel to Blackrock Spire and destroy the source of the worg menace. As you left Helendis, he shouted a name: Halycon. It is what the orcs refer to in regards to the worg."
Inst8Quest5_Location = "Helendis Riverhorn (Burning Steppes - Morgan's Vigil; "..YELLOW.."5,47"..WHITE..")"
Inst8Quest5_Note = "You find Halycon at "..YELLOW.."[17]"..WHITE.."."
Inst8Quest5_Prequest = "None"
Inst8Quest5_Folgequest = "None"
--
Inst8Quest5name1 = "Astoria Robes"
Inst8Quest5name2 = "Traphook Jerkin"
Inst8Quest5name3 = "Jadescale Breastplate"

--Quest 6 Alliance
Inst8Quest6 = "6. Urok Doomhowl"
Inst8Quest6_Level = "60"
Inst8Quest6_Attain = "55"
Inst8Quest6_Aim = "Read Warosh's Scroll. Bring Warosh's Mojo to Warosh."
Inst8Quest6_Location = "Warosh (Blackrock Spire; "..YELLOW.."[2]"..WHITE..")"
Inst8Quest6_Note = "To get Warosh's Mojo you have to evoke and kill Urok Doomhowl "..YELLOW.."[15]"..WHITE..". For his Evocation you need a Spear and Highlord Omokk's Head "..YELLOW.."[5]"..WHITE..". The Spear is at "..YELLOW.."[3]"..WHITE..". During the Evocation a few waves of ogres appear before Urok Doomhowl attacks you. You can use the Spear during the fight to damage the ogres."
Inst8Quest6_Prequest = "None"
Inst8Quest6_Folgequest = "None"
--
Inst8Quest6name1 = "Prismcharm"

--Quest 7 Alliance
Inst8Quest7 = "7. Bijou's Belongings"
Inst8Quest7_Level = "59"
Inst8Quest7_Attain = "55"
Inst8Quest7_Aim = "Find Bijou's Belongings and return them to her. Good luck!"
Inst8Quest7_Location = "Bijou (Blackrock Spire; "..YELLOW.."[3]"..WHITE..")"
Inst8Quest7_Note = "You find Bijou's Belongings on the way to Mother Smolderweb at "..YELLOW.."[13]"..WHITE..".\nMaxwell is at (Burning Steppes - Morgan's Vigil; "..YELLOW.."84,58"..WHITE..")."
Inst8Quest7_Prequest = "None"
Inst8Quest7_Folgequest = "Message to Maxwell"
-- No Rewards for this quest

--Quest 8 Alliance
Inst8Quest8 = "8. Maxwell's Mission"
Inst8Quest8_Level = "60"
Inst8Quest8_Attain = "55"
Inst8Quest8_Aim = "Travel to Blackrock Spire and destroy War Master Voone, Highlord Omokk, and Overlord Wyrmthalak. Return to Marshal Maxwell when the job is done."
Inst8Quest8_Location = "Marshal Maxwell (Burning Steppes - Morgan's Vigil; "..YELLOW.."84,58"..WHITE..")"
Inst8Quest8_Note = "You find War Master Voone at "..YELLOW.."[9]"..WHITE..", Highlord Omokk at "..YELLOW.."[5]"..WHITE.." and Overlord Wyrmthalak at "..YELLOW.."[19]"..WHITE.."."
Inst8Quest8_Prequest = "Message to Maxwell"
Inst8Quest8_Folgequest = "None"
Inst8Quest8FQuest = "true"
--
Inst8Quest8name1 = "Wyrmthalak's Shackles"
Inst8Quest8name2 = "Omokk's Girth Restrainer"
Inst8Quest8name3 = "Halycon's Muzzle"
Inst8Quest8name4 = "Vosh'gajin's Strand"
Inst8Quest8name5 = "Voone's Vice Grips"

--Quest 9 Alliance
Inst8Quest9 = "9. Seal of Ascension"
Inst8Quest9_Level = "60"
Inst8Quest9_Attain = "57"
Inst8Quest9_Aim = "Find the three gemstones of command: The Gemstone of Smolderthorn, Gemstone of Spirestone, and Gemstone of Bloodaxe. Return them, along with the Unadorned Seal of Ascension, to Vaelan."
Inst8Quest9_Location = "Vaelan (Blackrock Spire; "..YELLOW.."[1]"..WHITE..")"
Inst8Quest9_Note = "You get the Gemstone of Spirestone from Highlord Omokk at "..YELLOW.."[5]"..WHITE..", the Gemstone of Smolderthorn from War Master Voone at "..YELLOW.."[9]"..WHITE.." and the Gemstone of Bloodaxe from Overlord Wyrmthalak at "..YELLOW.."[19]"..WHITE..". The Unadorned Seal of Ascension can drop from near all mobs in Lower Blackrock Spire or outside the instance. The reward for completing this questline is the a Ring which used to be needed to open the doors to Upper Blackrock Spire."
Inst8Quest9_Prequest = "None"
Inst8Quest9_Folgequest = "Seal of Ascension"
-- No Rewards for this quest

--Quest 10 Alliance
Inst8Quest10 = "10. General Drakkisath's Command"
Inst8Quest10_Level = "60"
Inst8Quest10_Attain = "55"
Inst8Quest10_Aim = "Take General Drakkisath's Command to Marshal Maxwell in Burning Steppes."
Inst8Quest10_Location = "General Drakkisath's Command (drops from Overlord Wyrmthalak; "..YELLOW.."[19]"..WHITE..")"
Inst8Quest10_Note = "Marshal Maxwell is in the Burning Steppes - Morgan's Vigil; ("..YELLOW.."84,58"..WHITE..")."
Inst8Quest10_Prequest = "None"
Inst8Quest10_Folgequest = "General Drakkisath's Demise ("..YELLOW.."Upper Blackrock Spire"..WHITE..")"
-- No Rewards for this quest

--Quest 11 Alliance
Inst8Quest11 = "11. The Left Piece of Lord Valthalak's Amulet"
Inst8Quest11_Level = "60"
Inst8Quest11_Attain = "58"
Inst8Quest11_Aim = "Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning."
Inst8Quest11_Location = "Bodley (Blackrock Mountain; "..YELLOW.."[D] on Entrance Map"..WHITE..")"
Inst8Quest11_Note = "Extra-Dimensional Ghost Revealer is needed to see Bodley. You get it from the 'In Search of Anthion' quest.\n\nMor Grayhoof is summoned at "..YELLOW.."[9]"..WHITE.."."
Inst8Quest11_Prequest = "Components of Importance"
Inst8Quest11_Folgequest = "I See Alcaz Island In Your Future..."
Inst8Quest11PreQuest = "true"
-- No Rewards for this quest

--Quest 12 Alliance
Inst8Quest12 = "12. The Right Piece of Lord Valthalak's Amulet"
Inst8Quest12_Level = "60"
Inst8Quest12_Attain = "58"
Inst8Quest12_Aim = "Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning."
Inst8Quest12_Location = "Bodley (Blackrock Mountain; "..YELLOW.."[D] on Entrance Map"..WHITE..")"
Inst8Quest12_Note = "Extra-Dimensional Ghost Revealer is needed to see Bodley. You get it from the 'In Search of Anthion' quest.\n\nMor Grayhoof is summoned at "..YELLOW.."[9]"..WHITE.."."
Inst8Quest12_Prequest = "More Components of Importance"
Inst8Quest12_Folgequest = "Final Preparations ("..YELLOW.."Upper Blackrock Spire"..WHITE..")"
Inst8Quest12PreQuest = "true"
-- No Rewards for this quest

--Quest 13 Alliance
Inst8Quest13 = "13. Snakestone of the Shadow Huntress"
Inst8Quest13_Level = "60"
Inst8Quest13_Attain = "50"
Inst8Quest13_Aim = "Travel to Blackrock Spire and slay Shadow Hunter Vosh'gajin. Recover Vosh'gajin's Snakestone and return to Kilram."
Inst8Quest13_Location = "Kilram (Winterspring - Everlook; "..YELLOW.."61,37"..WHITE..")"
Inst8Quest13_Note = "Blacksmith quest. Shadow Hunter Vosh'gajin is at "..YELLOW.."[7]"..WHITE.."."
Inst8Quest13_Prequest = "None"
Inst8Quest13_Folgequest = "None"
--
Inst8Quest13name1 = "Plans: Dawn's Edge"

--Quest 14 Alliance
Inst8Quest14 = "14. Hot Fiery Death"
Inst8Quest14_Level = "60"
Inst8Quest14_Attain = "56"
Inst8Quest14_Aim = "Someone in this world must know what to do with these gauntlets. Good luck!"
Inst8Quest14_Location = "Human Remains (Lower Blackrock Spire; "..YELLOW.."[9]"..WHITE..")"
Inst8Quest14_Note = "Blacksmith quest. Be sure to pick up the Unfired Plate Gauntlets near the Human Remains at "..YELLOW.."[11]"..WHITE..". Turns in to Malyfous Darkhammer (Winterspring - Everlook; "..YELLOW.."61,39"..WHITE.."). Rewards listed are for the followup."
Inst8Quest14_Prequest = "None"
Inst8Quest14_Folgequest = "Fiery Plate Gauntlets"
--
Inst8Quest14name1 = "Plans: Fiery Plate Gauntlets"
Inst8Quest14name2 = "Fiery Plate Gauntlets"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst8Quest1_HORDE = Inst8Quest1
Inst8Quest1_HORDE_Level = Inst8Quest1_Level
Inst8Quest1_HORDE_Attain = Inst8Quest1_Attain
Inst8Quest1_HORDE_Aim = Inst8Quest1_Aim
Inst8Quest1_HORDE_Location = Inst8Quest1_Location
Inst8Quest1_HORDE_Note = Inst8Quest1_Note
Inst8Quest1_HORDE_Prequest = Inst8Quest1_Prequest
Inst8Quest1_HORDE_Folgequest = Inst8Quest1_Folgequest
Inst8Quest1PreQuest_HORDE = Inst8Quest1PreQuest
--
Inst8Quest1name1_HORDE = Inst8Quest1name1
Inst8Quest1name2_HORDE = Inst8Quest1name2

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst8Quest2_HORDE = Inst8Quest2
Inst8Quest2_HORDE_Level = Inst8Quest2_Level
Inst8Quest2_HORDE_Attain = Inst8Quest2_Attain
Inst8Quest2_HORDE_Aim = Inst8Quest2_Aim
Inst8Quest2_HORDE_Location = Inst8Quest2_Location
Inst8Quest2_HORDE_Note = Inst8Quest2_Note
Inst8Quest2_HORDE_Prequest = Inst8Quest2_Prequest
Inst8Quest2_HORDE_Folgequest = Inst8Quest2_Folgequest
--
Inst8Quest2name1_HORDE = Inst8Quest2name1

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst8Quest3_HORDE = Inst8Quest3
Inst8Quest3_HORDE_Level = Inst8Quest3_Level
Inst8Quest3_HORDE_Attain = Inst8Quest3_Attain
Inst8Quest3_HORDE_Aim = Inst8Quest3_Aim
Inst8Quest3_HORDE_Location = Inst8Quest3_Location
Inst8Quest3_HORDE_Note = Inst8Quest3_Note
Inst8Quest3_HORDE_Prequest = Inst8Quest3_Prequest
Inst8Quest3_HORDE_Folgequest = Inst8Quest3_Folgequest
--
Inst8Quest3name1_HORDE = Inst8Quest3name1

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst8Quest4_HORDE = Inst8Quest4
Inst8Quest4_HORDE_Level = Inst8Quest4_Level
Inst8Quest4_HORDE_Attain = Inst8Quest4_Attain
Inst8Quest4_HORDE_Aim = Inst8Quest4_Aim
Inst8Quest4_HORDE_Location = Inst8Quest4_Location
Inst8Quest4_HORDE_Note = Inst8Quest4_Note
Inst8Quest4_HORDE_Prequest = Inst8Quest4_Prequest
Inst8Quest4_HORDE_Folgequest = Inst8Quest4_Folgequest
--
Inst8Quest4name1_HORDE = Inst8Quest4name1

--Quest 5 Horde
Inst8Quest5_HORDE = "5. The Pack Mistress"
Inst8Quest5_HORDE_Level = "59"
Inst8Quest5_HORDE_Attain = "55"
Inst8Quest5_HORDE_Aim = "Slay Halycon, pack mistress of the Bloodaxe worg."
Inst8Quest5_HORDE_Location = "Galamav the Marksman (Badlands - Kargath; "..YELLOW.."5,47"..WHITE..")"
Inst8Quest5_HORDE_Note = "You find Halycon at "..YELLOW.."[17]"..WHITE.."."
Inst8Quest5_HORDE_Prequest = "None"
Inst8Quest5_HORDE_Folgequest = "None"
--
Inst8Quest5name1_HORDE = "Astoria Robes"
Inst8Quest5name2_HORDE = "Traphook Jerkin"
Inst8Quest5name3_HORDE = "Jadescale Breastplate"

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst8Quest6_HORDE = Inst8Quest6
Inst8Quest6_HORDE_Level = Inst8Quest6_Level
Inst8Quest6_HORDE_Attain = Inst8Quest6_Attain
Inst8Quest6_HORDE_Aim = Inst8Quest6_Aim
Inst8Quest6_HORDE_Location = Inst8Quest6_Location
Inst8Quest6_HORDE_Note = Inst8Quest6_Note
Inst8Quest6_HORDE_Prequest = Inst8Quest6_Prequest
Inst8Quest6_HORDE_Folgequest = Inst8Quest6_Folgequest
--
Inst8Quest6name1_HORDE = Inst8Quest6name1

--Quest 7 Horde
Inst8Quest7_HORDE = "7. Operative Bijou"
Inst8Quest7_HORDE_Level = "59"
Inst8Quest7_HORDE_Attain = "55"
Inst8Quest7_HORDE_Aim = "Travel to Blackrock Spire and find out what happened to Bijou."
Inst8Quest7_HORDE_Location = "Lexlort (Badlands - Kargath; "..YELLOW.."5,47"..WHITE..")"
Inst8Quest7_HORDE_Note = "You find Bijou at "..YELLOW.."[8]"..WHITE.."."
Inst8Quest7_HORDE_Prequest = "None"
Inst8Quest7_HORDE_Folgequest = "Bijou's Belongings"
-- No Rewards for this quest

--Quest 8 Horde
Inst8Quest8_HORDE = "8. Bijou's Belongings"
Inst8Quest8_HORDE_Level = "59"
Inst8Quest8_HORDE_Attain = "55"
Inst8Quest8_HORDE_Aim = "Find Bijou's Belongings and return them to her. You recall her mentioning that she stashed them on the bottom floor of the city."
Inst8Quest8_HORDE_Location = "Bijou (Blackrock Spire; "..YELLOW.."[3]"..WHITE..")"
Inst8Quest8_HORDE_Note = "You find Bijou's Belongings on the way to Mother Smolderweb at "..YELLOW.."[13]"..WHITE..".\nThe Rewards belong to 'Bijou's Reconnaissance Report'."
Inst8Quest8_HORDE_Prequest = "Operative Bijou"
Inst8Quest8_HORDE_Folgequest = "Bijou's Reconnaissance Report"
Inst8Quest8FQuest_HORDE = "true"
--
Inst8Quest8name1_HORDE = "Freewind Gloves"
Inst8Quest8name2_HORDE = "Seapost Girdle"

--Quest 9 Horde  (same as Quest 9 Alliance)
Inst8Quest9_HORDE = Inst8Quest9
Inst8Quest9_HORDE_Level = Inst8Quest9_Level
Inst8Quest9_HORDE_Attain = Inst8Quest9_Attain
Inst8Quest9_HORDE_Aim = Inst8Quest9_Aim
Inst8Quest9_HORDE_Location = Inst8Quest9_Location
Inst8Quest9_HORDE_Note = Inst8Quest9_Note
Inst8Quest9_HORDE_Prequest = Inst8Quest9_Prequest
Inst8Quest9_HORDE_Folgequest = Inst8Quest9_Folgequest
-- No Rewards for this quest

--Quest 10 Horde
Inst8Quest10_HORDE = "10. Warlord's Command"
Inst8Quest10_HORDE_Level = "60"
Inst8Quest10_HORDE_Attain = "55"
Inst8Quest10_HORDE_Aim = "Slay Highlord Omokk, War Master Voone, and Overlord Wyrmthalak. Recover Important Blackrock Documents. Return to Warlord Goretooth in Kargath when the mission has been accomplished."
Inst8Quest10_HORDE_Location = "Warlord Goretooth (Badlands - Kargath; "..YELLOW.."65,22"..WHITE..")"
Inst8Quest10_HORDE_Note = "You find Highlord Omokk at "..YELLOW.."[5]"..WHITE..", War Master Voone at "..YELLOW.."[9]"..WHITE.." and Overlord Wyrmthalak at "..YELLOW.."[19]"..WHITE..". The Blackrock Documents could appear next to one of these 3 bosses."
Inst8Quest10_HORDE_Prequest = "None"
Inst8Quest10_HORDE_Folgequest = "Eitrigg's Wisdom -> For the Horde! ("..YELLOW.."Upper Blackrock Spire"..WHITE..")"
--
Inst8Quest10name1_HORDE = "Wyrmthalak's Shackles"
Inst8Quest10name2_HORDE = "Omokk's Girth Restrainer"
Inst8Quest10name3_HORDE = "Halycon's Muzzle"
Inst8Quest10name4_HORDE = "Vosh'gajin's Strand"
Inst8Quest10name5_HORDE = "Voone's Vice Grips"

--Quest 11 Horde  (same as Quest 11 Alliance)
Inst8Quest11_HORDE = Inst8Quest11
Inst8Quest11_HORDE_Level = Inst8Quest11_Level
Inst8Quest11_HORDE_Attain = Inst8Quest11_Attain
Inst8Quest11_HORDE_Aim = Inst8Quest11_Aim
Inst8Quest11_HORDE_Location = Inst8Quest11_Location
Inst8Quest11_HORDE_Note = Inst8Quest11_Note
Inst8Quest11_HORDE_Prequest = Inst8Quest11_Prequest
Inst8Quest11_HORDE_Folgequest = Inst8Quest11_Folgequest
Inst8Quest11PreQuest_HORDE = Inst8Quest11PreQuest
-- No Rewards for this quest

--Quest 12 Horde  (same as Quest 12 Alliance)
Inst8Quest12_HORDE = Inst8Quest12
Inst8Quest12_HORDE_Level = Inst8Quest12_Level
Inst8Quest12_HORDE_Attain = Inst8Quest12_Attain
Inst8Quest12_HORDE_Aim = Inst8Quest12_Aim
Inst8Quest12_HORDE_Location = Inst8Quest12_Location
Inst8Quest12_HORDE_Note = Inst8Quest12_Note
Inst8Quest12_HORDE_Prequest = Inst8Quest12_Prequest
Inst8Quest12_HORDE_Folgequest = Inst8Quest12_Folgequest
Inst8Quest12PreQuest_HORDE = Inst8Quest12PreQuest
-- No Rewards for this quest

--Quest 13 Horde  (same as Quest 13 Alliance)
Inst8Quest13_HORDE = Inst8Quest13
Inst8Quest13_HORDE_Level = Inst8Quest13_Level
Inst8Quest13_HORDE_Attain = Inst8Quest13_Attain
Inst8Quest13_HORDE_Aim = Inst8Quest13_Aim
Inst8Quest13_HORDE_Location = Inst8Quest13_Location
Inst8Quest13_HORDE_Note = Inst8Quest13_Note
Inst8Quest13_HORDE_Prequest = Inst8Quest13_Prequest
Inst8Quest13_HORDE_Folgequest = Inst8Quest13_Folgequest
--
Inst8Quest13name1_HORDE = Inst8Quest13name1

--Quest 14 Horde  (same as Quest 14 Alliance)
Inst8Quest14_HORDE = Inst8Quest14
Inst8Quest14_HORDE_Level = Inst8Quest14_Level
Inst8Quest14_HORDE_Attain = Inst8Quest14_Attain
Inst8Quest14_HORDE_Aim = Inst8Quest14_Aim
Inst8Quest14_HORDE_Location = Inst8Quest14_Location
Inst8Quest14_HORDE_Note = Inst8Quest14_Note
Inst8Quest14_HORDE_Prequest = Inst8Quest14_Prequest
Inst8Quest14_HORDE_Folgequest = Inst8Quest14_Folgequest
--
Inst8Quest14name1_HORDE = Inst8Quest14name1
Inst8Quest14name2_HORDE = Inst8Quest14name2


--------------- INST9 - Upper Blackrock Spire (UBRS) ---------------

Inst9Story = "The mighty fortress carved within the fiery bowels of Blackrock Mountain was designed by the master dwarf-mason, Franclorn Forgewright. Intended to be the symbol of Dark Iron power, the fortress was held by the sinister dwarves for centuries. However, Nefarian - the cunning son of the dragon, Deathwing - had other plans for the great keep. He and his draconic minions took control of the upper Spire and made war on the dwarves' holdings in the mountain's volcanic depths. Realizing that the dwarves were led by the mighty fire elemental, Ragnaros - Nefarian vowed to crush his enemies and claim the whole of Blackrock mountain for himself."
Inst9Caption = "Blackrock Spire (Upper)"
Inst9QAA = "11 Quests"
Inst9QAH = "13 Quests"

--Quest 1 Alliance
Inst9Quest1 = "1. The Matron Protectorate"
Inst9Quest1_Level = "60"
Inst9Quest1_Attain = "57"
Inst9Quest1_Aim = "Travel to Winterspring and find Haleh. Give her Awbee's scale."
Inst9Quest1_Location = "Awbee (Blackrock Spire; "..YELLOW.."[7]"..WHITE..")"
Inst9Quest1_Note = "You find Awbee in the room after the Arena at "..YELLOW.."[7]"..WHITE..". She stands on a jutty.\nHaleh is in Winterspring ("..YELLOW.."54,51"..WHITE.."). Use the portal-sign in the end of the cave to get to her."
Inst9Quest1_Prequest = "None"
Inst9Quest1_Folgequest = "Wrath of the Blue Flight"
-- No Rewards for this quest

--Quest 2 Alliance
Inst9Quest2 = "2. Finkle Einhorn, At Your Service!"
Inst9Quest2_Level = "60"
Inst9Quest2_Attain = "57"
Inst9Quest2_Aim = "Talk to Malyfous Darkhammer in Everlook."
Inst9Quest2_Location = "Finkle Einhorn (Blackrock Spire; "..YELLOW.."[8]"..WHITE..")"
Inst9Quest2_Note = "Finkle Einhorn spawns after skinning The Beast. You find Malyfous at (Winterspring - Everlook; "..YELLOW.."61,38"..WHITE..")."
Inst9Quest2_Prequest = "None"
Inst9Quest2_Folgequest = "Leggings of Arcana, Cap of the Scarlet Savant, Breastplate of Bloodthirst"
-- No Rewards for this quest

--Quest 3 Alliance
Inst9Quest3 = "3. Egg Freezing"
Inst9Quest3_Level = "60"
Inst9Quest3_Attain = "57"
Inst9Quest3_Aim = "Use the Eggscilloscope Prototype on an egg in the Rookery."
Inst9Quest3_Location = "Tinkee Steamboil (Burning Steppes - Flame Crest; "..YELLOW.."65,24"..WHITE..")"
Inst9Quest3_Note = "You find the eggs in the room of Father Flame at "..YELLOW.."[2]"..WHITE.."."
Inst9Quest3_Prequest = "Broodling Essence -> Tinkee Steamboil"
Inst9Quest3_Folgequest = "Egg Collection"
Inst9Quest3PreQuest = "true"
--
Inst9Quest3name1 = "Eggscilloscope"

--Quest 4 Alliance
Inst9Quest4 = "4. Eye of the Emberseer"
Inst9Quest4_Level = "60"
Inst9Quest4_Attain = "55"
Inst9Quest4_Aim = "Bring the Eye of the Emberseer to Duke Hydraxis in Azshara."
Inst9Quest4_Location = "Duke Hydraxis (Azshara; "..YELLOW.."79,73"..WHITE..")"
Inst9Quest4_Note = "You can find Pyroguard Emberseer at "..YELLOW.."[1]"..WHITE..".\n\nAfter patch 3.0.8, you can no longer start this questline. If you already have the quest though, you can complete it."
Inst9Quest4_Prequest = "Poisoned Water"
Inst9Quest4_Folgequest = "The Molten Core"
Inst9Quest4PreQuest = "true"
-- No Rewards for this quest

--Quest 5 Alliance
Inst9Quest5 = "5. General Drakkisath's Demise"
Inst9Quest5_Level = "60"
Inst9Quest5_Attain = "55"
Inst9Quest5_Aim = "Travel to Blackrock Spire and destroy General Drakkisath. Return to Marshal Maxwell when the job is done."
Inst9Quest5_Location = "Marshal Maxwell (Burning Steppes - Morgan's Vigil; "..YELLOW.."82,68"..WHITE..")"
Inst9Quest5_Note = "You find General Drakkisath at "..YELLOW.."[9]"..WHITE.."."
Inst9Quest5_Prequest = "General Drakkisath's Command ("..YELLOW.."Lower Blackrock Spire"..WHITE..")"
Inst9Quest5_Folgequest = "None"
Inst9Quest5PreQuest = "true"
--
Inst9Quest5name1 = "Mark of Tyranny"
Inst9Quest5name2 = "Eye of the Beast"
Inst9Quest5name3 = "Blackhand's Breadth"

--Quest 6 Alliance
Inst9Quest6 = "6. Doomrigger's Clasp"
Inst9Quest6_Level = "60"
Inst9Quest6_Attain = "57"
Inst9Quest6_Aim = "Bring Doomrigger's Clasp to Mayara Brightwing in the Burning Steppes."
Inst9Quest6_Location = "Mayara Brightwing (Burning Steppes - Morgan's Vigil; "..YELLOW.."84,69"..WHITE..")"
Inst9Quest6_Note = "You get the prequest from Count Remington Ridgewell (Stormwind - Stormwind Keep; "..YELLOW.."76.9, 47.4"..WHITE..").\n\nDoomrigger's Clasp is at "..YELLOW.."[3]"..WHITE.." in a chest."
Inst9Quest6_Prequest = "Mayara Brightwing"
Inst9Quest6_Folgequest = "Delivery to Ridgewell"
Inst9Quest6PreQuest = "true"
--
Inst9Quest6name1 = "Swiftfoot Treads"
Inst9Quest6name2 = "Blinkstrike Armguards"

--Quest 7 Alliance
Inst9Quest7 = "7. Blackhand's Command"
Inst9Quest7_Level = "60"
Inst9Quest7_Attain = "55"
Inst9Quest7_Aim = "The letter indicates that General Drakkisath guards the brand. Perhaps you should investigate."
Inst9Quest7_Location = "Blackhand's Command (drops from Scarshield Quartermaster; "..YELLOW.."[7] on Entrance Map"..WHITE..")"
Inst9Quest7_Note = "Blackwing Lair attunement quest. Scarshield Quartermaster is found if you turn right before the LBRS/UBRS portal.\n\nGeneral Drakkisath is at "..YELLOW.."[9]"..WHITE..". The brand is behind him."
Inst9Quest7_Prequest = "None"
Inst9Quest7_Folgequest = "None"
-- No Rewards for this quest

--Quest 8 Alliance
Inst9Quest8 = "8. Final Preparations"
Inst9Quest8_Level = "60"
Inst9Quest8_Attain = "58"
Inst9Quest8_Aim = "Gather 40 Blackrock Bracers and acquire a Flask of Supreme Power. Return them to Bodley inside Blackrock Mountain."
Inst9Quest8_Location = "Bodley (Blackrock Mountain; "..YELLOW.."[D] on Entrance Map"..WHITE..")"
Inst9Quest8_Note = "Extra-Dimensional Ghost Revealer is needed to see Bodley. You get it from the 'In Search of Anthion' quest. Blackrock Bracers drop off mobs in Upper and Lower Blackrock Spire and outside the instance. Mobs with 'Blackhand' in the name have a higher chance to drop the bracers. The Flask of Supreme Power is made by an Alchemist."
Inst9Quest8_Prequest = "The Right Piece of Lord Valthalak's Amulet ("..YELLOW.."Upper Blackrock Spire"..WHITE..")"
Inst9Quest8_Folgequest = "Mea Culpa, Lord Valthalak"
Inst9Quest8PreQuest = "true"
-- No Rewards for this quest

--Quest 9 Alliance
Inst9Quest9 = "9. Mea Culpa, Lord Valthalak"
Inst9Quest9_Level = "60"
Inst9Quest9_Attain = "58"
Inst9Quest9_Aim = "Use the Brazier of Beckoning to summon Lord Valthalak. Dispatch him, and use Lord Valthalak's Amulet on the corpse. Then, return Lord Valthalak's Amulet to the Spirit of Lord Valthalak."
Inst9Quest9_Location = "Bodley (Blackrock Mountain; "..YELLOW.."[D] on Entrance Map"..WHITE..")"
Inst9Quest9_Note = "Extra-Dimensional Ghost Revealer is needed to see Bodley. You get it from the 'In Search of Anthion' quest. Lord Valthalak is summoned at "..YELLOW.."[8]"..WHITE..". Rewards listed are for Return to Bodley."
Inst9Quest9_Prequest = "Final Preparations"
Inst9Quest9_Folgequest = "Return to Bodley"
Inst9Quest9FQuest = "true"
--
Inst9Quest9name1 = "Brazier of Invocation"
Inst9Quest9name2 = "Brazier of Invocation: User's Manual"

--Quest 10 Alliance
Inst9Quest10 = "10. The Demon Forge (Blacksmith)"
Inst9Quest10_Level = "60"
Inst9Quest10_Attain = "55"
Inst9Quest10_Aim = "Travel to Blackrock Spire and find Goraluk Anvilcrack. Slay him and then use the Blood Stained Pike upon his corpse. After his soul has been siphoned, the pike will be Soul Stained. You must also find the Unforged Rune Covered Breastplate. Return both the Soul Stained Pike and the Unforged Rune Covered Breastplate to Lorax in Winterspring."
Inst9Quest10_Location = "Lorax (Winterspring; "..YELLOW.."64,74"..WHITE..")"
Inst9Quest10_Note = "Blacksmith quest. Goraluk Anvilcrack is at "..YELLOW.."[5]"..WHITE.."."
Inst9Quest10_Prequest = "None"
Inst9Quest10_Folgequest = "None"
--
Inst9Quest10name1 = "Plans: Demon Forged Breastplate"
Inst9Quest10name2 = "Elixir of Demonslaying"
Inst9Quest10name3 = "Demon Kissed Sack"

--Quest 11 Alliance
Inst9Quest11 = "11. Egg Collection"
Inst9Quest11_Level = "60"
Inst9Quest11_Attain = "57"
Inst9Quest11_Aim = "Bring 8 Collected Dragon Eggs and the Collectronic Module to Tinkee Steamboil at Flame Crest in the Burning Steppes."
Inst9Quest11_Location = "Tinkee Steamboil (Burning Steppes - Flame Crest; "..YELLOW.."65,24"..WHITE..")"
Inst9Quest11_Note = "You find the eggs in the room of Father Flame at "..YELLOW.."[2]"..WHITE.."."
Inst9Quest11_Prequest = "Egg Freezing"
Inst9Quest11_Folgequest = "Leonid Barthalomew -> Dawn's Gambit ("..YELLOW.."Scholomance"..WHITE..")"
Inst9Quest11PreQuest = "true"
-- No Rewards for this quest


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst9Quest1_HORDE = Inst9Quest1
Inst9Quest1_HORDE_Level = Inst9Quest1_Level
Inst9Quest1_HORDE_Attain = Inst9Quest1_Attain
Inst9Quest1_HORDE_Aim = Inst9Quest1_Aim
Inst9Quest1_HORDE_Location = Inst9Quest1_Location
Inst9Quest1_HORDE_Note = Inst9Quest1_Note
Inst9Quest1_HORDE_Prequest = Inst9Quest1_Prequest
Inst9Quest1_HORDE_Folgequest = Inst9Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst9Quest2_HORDE = Inst9Quest2
Inst9Quest2_HORDE_Level = Inst9Quest2_Level
Inst9Quest2_HORDE_Attain = Inst9Quest2_Attain
Inst9Quest2_HORDE_Aim = Inst9Quest2_Aim
Inst9Quest2_HORDE_Location = Inst9Quest2_Location
Inst9Quest2_HORDE_Note = Inst9Quest2_Note
Inst9Quest2_HORDE_Prequest = Inst9Quest2_Prequest
Inst9Quest2_HORDE_Folgequest = Inst9Quest2_Folgequest
-- No Rewards for this quest

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst9Quest3_HORDE = Inst9Quest3
Inst9Quest3_HORDE_Level = Inst9Quest3_Level
Inst9Quest3_HORDE_Attain = Inst9Quest3_Attain
Inst9Quest3_HORDE_Aim = Inst9Quest3_Aim
Inst9Quest3_HORDE_Location = Inst9Quest3_Location
Inst9Quest3_HORDE_Note = Inst9Quest3_Note
Inst9Quest3_HORDE_Prequest = Inst9Quest3_Prequest
Inst9Quest3_HORDE_Folgequest = Inst9Quest3_Folgequest
Inst9Quest3PreQuest_HORDE = Inst9Quest3PreQuest
--
Inst9Quest3name1_HORDE = Inst9Quest3name1

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst9Quest4_HORDE = Inst9Quest4
Inst9Quest4_HORDE_Level = Inst9Quest4_Level
Inst9Quest4_HORDE_Attain = Inst9Quest4_Attain
Inst9Quest4_HORDE_Aim = Inst9Quest4_Aim
Inst9Quest4_HORDE_Location = Inst9Quest4_Location
Inst9Quest4_HORDE_Note = Inst9Quest4_Note
Inst9Quest4_HORDE_Prequest = Inst9Quest4_Prequest
Inst9Quest4_HORDE_Folgequest = Inst9Quest4_Folgequest
Inst9Quest4PreQuest_HORDE = Inst9Quest4PreQuest
-- No Rewards for this quest

--Quest 5 Horde
Inst9Quest5_HORDE = "5. The Darkstone Tablet"
Inst9Quest5_HORDE_Level = "60"
Inst9Quest5_HORDE_Attain = "57"
Inst9Quest5_HORDE_Aim = "Bring the Darkstone Tablet to Shadow Mage Vivian Lagrave in Kargath.."
Inst9Quest5_HORDE_Location = "Vivian Lagrave (Badlands - Kargath; "..YELLOW.."2,47"..WHITE..")"
Inst9Quest5_HORDE_Note = "You get the prequest from Apothecary Zinge in Undercity - The Apothecarium ("..YELLOW.."50,68"..WHITE..").\n\nThe Darkstone Tablet is at "..YELLOW.."[3]"..WHITE.." in a chest."
Inst9Quest5_HORDE_Prequest = "Vivian Lagrave and the Darkstone Tablet"
Inst9Quest5_HORDE_Folgequest = "None"
Inst9Quest5PreQuest_HORDE = "true"
--
Inst9Quest5name1_HORDE = "Swiftfoot Treads"
Inst9Quest5name2_HORDE = "Blinkstrike Armguards"

--Quest 6 Horde
Inst9Quest6_HORDE = "6. For The Horde!"
Inst9Quest6_HORDE_Level = "60"
Inst9Quest6_HORDE_Attain = "55"
Inst9Quest6_HORDE_Aim = "Travel to Blackrock Spire and slay Warchief Rend Blackhand. Take his head and return to Orgrimmar."
Inst9Quest6_HORDE_Location = "Thrall (Orgrimmar; "..YELLOW.."31,38"..WHITE..")"
Inst9Quest6_HORDE_Note = "You find Warchief Rend Blackhand at "..YELLOW.."[6]"..WHITE.."."
Inst9Quest6_HORDE_Prequest = "Warlord's Command -> Eitrigg's Wisdom"
Inst9Quest6_HORDE_Folgequest = "What the Wind Carries"
Inst9Quest6PreQuest_HORDE = "true"
--
Inst9Quest6name1_HORDE = "Mark of Tyranny"
Inst9Quest6name2_HORDE = "Eye of the Beast"
Inst9Quest6name3_HORDE = "Blackhand's Breadth"

--Quest 7 Horde
Inst9Quest7_HORDE = "7. Oculus Illusions"
Inst9Quest7_HORDE_Level = "60"
Inst9Quest7_HORDE_Attain = "55"
Inst9Quest7_HORDE_Aim = "Travel to Blackrock Spire and collect 20 Black Dragonspawn Eyes. Return to Myranda the Hag when the task is complete."
Inst9Quest7_HORDE_Location = "Myranda the Hag (Western Plaguelands; "..YELLOW.."50,77"..WHITE..")"
Inst9Quest7_HORDE_Note = "Dragonkin drop the eyes."
Inst9Quest7_HORDE_Prequest = "What the Wind Carries -> Mistress of Deception"
Inst9Quest7_HORDE_Folgequest = "Emberstrife"
Inst9Quest7FQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 8 Horde
Inst9Quest8_HORDE = "8. Blood of the Black Dragon Champion"
Inst9Quest8_HORDE_Level = "60"
Inst9Quest8_HORDE_Attain = "55"
Inst9Quest8_HORDE_Aim = "Travel to Blackrock Spire and slay General Drakkisath. Gather his blood and return it to Rokaro."
Inst9Quest8_HORDE_Location = "Rokaro (Desolace - Shadowprey Village; "..YELLOW.."25,71"..WHITE..")"
Inst9Quest8_HORDE_Note = "Last part of the Onyxia prequest. You find General Drakkisath at "..YELLOW.."[9]"..WHITE.."."
Inst9Quest8_HORDE_Prequest = "Emberstrife -> Ascension..."
Inst9Quest8_HORDE_Folgequest = "None"
Inst9Quest8FQuest_HORDE = "true"
--
Inst9Quest8name1_HORDE = "Drakefire Amulet"

--Quest 9 Horde  (same as Quest 7 Alliance)
Inst9Quest9_HORDE = "9. Blackhand's Command"
Inst9Quest9_HORDE_Level = Inst9Quest7_Level
Inst9Quest9_HORDE_Attain = Inst9Quest7_Attain
Inst9Quest9_HORDE_Aim = Inst9Quest7_Aim
Inst9Quest9_HORDE_Location = Inst9Quest7_Location
Inst9Quest9_HORDE_Note = Inst9Quest7_Note
Inst9Quest9_HORDE_Prequest = Inst9Quest7_Prequest
Inst9Quest9_HORDE_Folgequest = Inst9Quest7_Folgequest
-- No Rewards for this quest

--Quest 10 Horde  (same as Quest 8 Alliance)
Inst9Quest10_HORDE = "10. Final Preparations"
Inst9Quest10_HORDE_Level = Inst9Quest8_Level
Inst9Quest10_HORDE_Attain = Inst9Quest8_Attain
Inst9Quest10_HORDE_Aim = Inst9Quest8_Aim
Inst9Quest10_HORDE_Location = Inst9Quest8_Location
Inst9Quest10_HORDE_Note = Inst9Quest8_Note
Inst9Quest10_HORDE_Prequest = Inst9Quest8_Prequest
Inst9Quest10_HORDE_Folgequest = Inst9Quest8_Folgequest
-- No Rewards for this quest

--Quest 11 Horde  (same as Quest 9 Alliance)
Inst9Quest11_HORDE = "11. Mea Culpa, Lord Valthalak"
Inst9Quest11_HORDE_Level = Inst9Quest9_Level
Inst9Quest11_HORDE_Attain = Inst9Quest9_Attain
Inst9Quest11_HORDE_Aim = Inst9Quest9_Aim
Inst9Quest11_HORDE_Location = Inst9Quest9_Location
Inst9Quest11_HORDE_Note = Inst9Quest9_Note
Inst9Quest11_HORDE_Prequest = Inst9Quest9_Prequest
Inst9Quest11_HORDE_Folgequest = Inst9Quest9_Folgequest
--
Inst9Quest11name1_HORDE = Inst9Quest9name1
Inst9Quest11name2_HORDE = Inst9Quest9name2

--Quest 12 Horde  (same as Quest 10 Alliance)
Inst9Quest12_HORDE = "12. The Demon Forge"
Inst9Quest12_HORDE_Level = Inst9Quest10_Level
Inst9Quest12_HORDE_Attain = Inst9Quest10_Attain
Inst9Quest12_HORDE_Aim = Inst9Quest10_Aim
Inst9Quest12_HORDE_Location = Inst9Quest10_Location
Inst9Quest12_HORDE_Note = Inst9Quest10_Note
Inst9Quest12_HORDE_Prequest = Inst9Quest10_Prequest
Inst9Quest12_HORDE_Folgequest = Inst9Quest10_Folgequest
--
Inst9Quest12name1_HORDE = Inst9Quest10name1
Inst9Quest12name2_HORDE = Inst9Quest10name2
Inst9Quest12name3_HORDE = Inst9Quest10name3

--Quest 13 Horde  (same as Quest 11 Alliance)
Inst9Quest13_HORDE = "13. Egg Collection"
Inst9Quest13_HORDE_Level = Inst9Quest11_Level
Inst9Quest13_HORDE_Attain = Inst9Quest11_Attain
Inst9Quest13_HORDE_Aim = Inst9Quest11_Aim
Inst9Quest13_HORDE_Location = Inst9Quest11_Location
Inst9Quest13_HORDE_Note = Inst9Quest11_Note
Inst9Quest13_HORDE_Prequest = Inst9Quest11_Prequest
Inst9Quest13_HORDE_Folgequest = Inst9Quest11_Folgequest
Inst9Quest13PreQuest_HORDE = Inst9Quest11PreQuest
-- No Rewards for this quest



--------------- INST10 - Dire Maul East (DM) ---------------


--------------- INST11 - Dire Maul North (DM) ---------------


--------------- INST12 - Dire Maul West (DM) ---------------


--------------- INST13 - Maraudon (Mara) ---------------

Inst13Story = "Protected by the fierce Maraudine centaur, Maraudon is one of the most sacred sites within Desolace. The great temple/cavern is the burial place of Zaetar, one of two immortal sons born to the demigod, Cenarius. Legend holds that Zaetar and the earth elemental princess, Theradras, sired the misbegotten centaur race. It is said that upon their emergence, the barbaric centaur turned on their father and killed him. Some believe that Theradras, in her grief, trapped Zaetar's spirit within the winding cavern - used its energies for some malign purpose. The subterranean tunnels are populated by the vicious, long-dead ghosts of the Centaur Khans, as well as Theradras' own raging, elemental minions."
Inst13Caption = "Maraudon"
Inst13QAA = "8 Quests"
Inst13QAH = "8 Quests"

--Quest 1 Alliance
Inst13Quest1 = "1. Shadowshard Fragments"
Inst13Quest1_Level = "42"
Inst13Quest1_Attain = "39"
Inst13Quest1_Aim = "Collect 10 Shadowshard Fragments from Maraudon and return them to Archmage Tervosh in Theramore on the coast of Dustwallow Marsh."
Inst13Quest1_Location = "Archmage Tervosh (Dustwallow Marsh - Theramore Isle; "..YELLOW.."66,49"..WHITE..")"
Inst13Quest1_Note = "You get the Shadowshard Fragments from 'Shadowshard Rumbler' or 'Shadowshard Smasher' outside the instance on the Purple side."
Inst13Quest1_Prequest = "None"
Inst13Quest1_Folgequest = "None"
--
Inst13Quest1name1 = "Zealous Shadowshard Pendant"
Inst13Quest1name2 = "Prodigious Shadowshard Pendant"

--Quest 2 Alliance
Inst13Quest2 = "2. Vyletongue Corruption"
Inst13Quest2_Level = "47"
Inst13Quest2_Attain = "41"
Inst13Quest2_Aim = "Fill the Coated Cerulean Vial at the orange crystal pool in Maraudon.\nUse the Filled Cerulean Vial on the Vylestem Vines to force the corrupted Noxxious Scion to emerge.\nHeal 8 plants by killing these Noxxious Scion, then return to Talendria in Nijel's Point."
Inst13Quest2_Location = "Talendria (Desolace - Nijel's Point; "..YELLOW.."68,8"..WHITE..")"
Inst13Quest2_Note = "You can fill the Vial at any pool outside the instance on the Orange side. The plants are in the orange and purple areas inside the instance."
Inst13Quest2_Prequest = "None"
Inst13Quest2_Folgequest = "None"
--
Inst13Quest2name1 = "Woodseed Hoop"
Inst13Quest2name2 = "Sagebrush Girdle"
Inst13Quest2name3 = "Branchclaw Gauntlets"

--Quest 3 Alliance
Inst13Quest3 = "3. Twisted Evils"
Inst13Quest3_Level = "47"
Inst13Quest3_Attain = "41"
Inst13Quest3_Aim = "Collect 25 Theradric Crystal Carvings for Willow in Desolace."
Inst13Quest3_Location = "Willow (Desolace; "..YELLOW.."62,39"..WHITE..")"
Inst13Quest3_Note = "Most mobs in Maraudon drop the Carvings."
Inst13Quest3_Prequest = "None"
Inst13Quest3_Folgequest = "None"
--
Inst13Quest3name1 = "Acumen Robes"
Inst13Quest3name2 = "Sprightring Helm"
Inst13Quest3name3 = "Relentless Chain"
Inst13Quest3name4 = "Hulkstone Pauldrons"

--Quest 4 Alliance
Inst13Quest4 = "4. The Pariah's Instructions"
Inst13Quest4_Level = "48"
Inst13Quest4_Attain = "39"
Inst13Quest4_Aim = "Read the Pariah's Instructions. Afterwards, obtain the Amulet of Union from Maraudon and return it to the Centaur Pariah in southern Desolace."
Inst13Quest4_Location = "Centaur Pariah (Desolace; "..YELLOW.."45,86"..WHITE..")"
Inst13Quest4_Note = "The 5 Kahns (Description for The Pariah's Instructions)"
Inst13Quest4_Page = {2, "You find the Centaur Pariah in the south of desolace. He walks between "..YELLOW.."44,85"..WHITE.." and "..YELLOW.."50,87"..WHITE..".\nFirst, you have to kill the The Nameless Prophet ("..YELLOW.."[A] on Entrance Map"..WHITE.."). You find him before you enter the instance, before the point where you can choose whether you take the purple or the orange entrance. After killing him you must kill the 5 Kahns. You find the first if you choose the way in the middle ("..YELLOW.."[1] on Entrance Map"..WHITE.."). The second is in the purple part of Maraudon but before you enter the instance ("..YELLOW.."[2] on Entrance Map"..WHITE.."). The third is in the orange part before you enter the instance ("..YELLOW.."[3] on Entrance Map"..WHITE.."). The fourth is near "..YELLOW.."[4]"..WHITE.." and the fifth is near  "..YELLOW.."[1]"..WHITE..".", };
Inst13Quest4_Prequest = "None"
Inst13Quest4_Folgequest = "None"
--
Inst13Quest4name1 = "Mark of the Chosen"

--Quest 5 Alliance
Inst13Quest5 = "5. Legends of Maraudon"
Inst13Quest5_Level = "49"
Inst13Quest5_Attain = "41"
Inst13Quest5_Aim = "Recover the two parts of the Scepter of Celebras: the Celebrian Rod and the Celebrian Diamond.\nFind a way to speak with Celebras."
Inst13Quest5_Location = "Cavindra (Desolace - Maraudon; "..YELLOW.."[4] on Entrance Map"..WHITE..")"
Inst13Quest5_Note = "You find Cavindra at the beginning  of the orange part before you enter the instance.\nYou get the Celebrian Rod from Noxxion at "..YELLOW.."[2]"..WHITE..", the Celebrian Diamond from Lord Vyletongue at  "..YELLOW.."[5]"..WHITE..". Celebras is at "..YELLOW.."[7]"..WHITE..". You have to defeat him to be able to talk to him."
Inst13Quest5_Prequest = "None"
Inst13Quest5_Folgequest = "The Scepter of Celebras"
-- No Rewards for this quest

--Quest 6 Alliance
Inst13Quest6 = "6. The Scepter of Celebras"
Inst13Quest6_Level = "49"
Inst13Quest6_Attain = "41"
Inst13Quest6_Aim = "Assist Celebras the Redeemed while he creates the Scepter of Celebras.\nSpeak with him when the ritual is complete."
Inst13Quest6_Location = "Celebras the Redeemed (Maraudon; "..YELLOW.."[7]"..WHITE..")"
Inst13Quest6_Note = "Celebras creates the Scepter. Speak with him after he is finished."
Inst13Quest6_Prequest = "Legends of Maraudon"
Inst13Quest6_Folgequest = "None"
Inst13Quest6FQuest = "true"
--
Inst13Quest6name1 = "Scepter of Celebras"

--Quest 7 Alliance
Inst13Quest7 = "7. Corruption of Earth and Seed"
Inst13Quest7_Level = "51"
Inst13Quest7_Attain = "45"
Inst13Quest7_Aim = "Slay Princess Theradras and return to Keeper Marandis at Nijel's Point in Desolace."
Inst13Quest7_Location = "Keeper Marandis (Desolace - Nijel's Point; "..YELLOW.."63,10"..WHITE..")"
Inst13Quest7_Note = "You find Princess Theradras at "..YELLOW.."[11]"..WHITE.."."
Inst13Quest7_Prequest = "None"
Inst13Quest7_Folgequest = "Seed of Life"
--
Inst13Quest7name1 = "Thrash Blade"
Inst13Quest7name2 = "Resurgence Rod"
Inst13Quest7name3 = "Verdant Keeper's Aim"

--Quest 8 Alliance
Inst13Quest8 = "8. Seed of Life"
Inst13Quest8_Level = "51"
Inst13Quest8_Attain = "39"
Inst13Quest8_Aim = "Seek out Remulos in Moonglade and give him the Seed of Life."
Inst13Quest8_Location = "Zaetar's Spirit (Maraudon; "..YELLOW.."[11]"..WHITE..")"
Inst13Quest8_Note = "Zaetars Ghost appears after killing Princess Theradras "..YELLOW.."[11]"..WHITE..". You find Keeper Remulos at (Moonglade - Shrine of Remulos; "..YELLOW.."36,41"..WHITE..")."
Inst13Quest8_Prequest = "Corruption of Earth and Seed"
Inst13Quest8_Folgequest = "None"
Inst13Quest8FQuest = "true"
-- No Rewards for this quest


--Quest 1 Horde
Inst13Quest1_HORDE = "1. Shadowshard Fragments"
Inst13Quest1_HORDE_Level = "42"
Inst13Quest1_HORDE_Attain = "39"
Inst13Quest1_HORDE_Aim = "Collect 10 Shadowshard Fragments from Maraudon and return them to Uthel'nay in Orgrimmar"
Inst13Quest1_HORDE_Location = "Uthel'nay (Orgrimmar - Valley of Spirits; "..YELLOW.."39,86"..WHITE..")"
Inst13Quest1_HORDE_Note = "You get the Shadowshard Fragments from 'Shadowshard Rumbler' or 'Shadowshard Smasher' outside the instance on the Purple side."
Inst13Quest1_HORDE_Prequest = "None"
Inst13Quest1_HORDE_Folgequest = "None"
--
Inst13Quest1name1_HORDE = "Zealous Shadowshard Pendant"
Inst13Quest1name2_HORDE = "Prodigious Shadowshard Pendant"

--Quest 2 Horde
Inst13Quest2_HORDE = "2. Vyletongue Corruption"
Inst13Quest2_HORDE_Level = "47"
Inst13Quest2_HORDE_Attain = "41"
Inst13Quest2_HORDE_Aim = "Fill the Coated Cerulean Vial at the orange crystal pool in Maraudon.\nUse the Filled Cerulean Vial on the Vylestem Vines to force the corrupted Noxxious Scion to emerge.\nHeal 8 plants by killing these Noxxious Scion, then return to Vark Battlescar in Shadowprey Village."
Inst13Quest2_HORDE_Location = "Vark Battlescar (Desolace - Shadowprey Village; "..YELLOW.."23,70"..WHITE..")"
Inst13Quest2_HORDE_Note = "You can fill the Vial at any pool outside the instance on the Orange side. The plants are in the orange and purple areas inside the instance."
Inst13Quest2_HORDE_Prequest = "None"
Inst13Quest2_HORDE_Folgequest = "None"
--
Inst13Quest2name1_HORDE = "Woodseed Hoop"
Inst13Quest2name2_HORDE = "Sagebrush Girdle"
Inst13Quest2name3_HORDE = "Branchclaw Gauntlets"

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst13Quest3_HORDE = Inst13Quest3
Inst13Quest3_HORDE_Level = Inst13Quest3_Level
Inst13Quest3_HORDE_Attain = Inst13Quest3_Attain
Inst13Quest3_HORDE_Aim = Inst13Quest3_Aim
Inst13Quest3_HORDE_Location = Inst13Quest3_Location
Inst13Quest3_HORDE_Note = Inst13Quest3_Note
Inst13Quest3_HORDE_Prequest = Inst13Quest3_Prequest
Inst13Quest3_HORDE_Folgequest = Inst13Quest3_Folgequest
--
Inst13Quest3name1_HORDE = Inst13Quest3name1
Inst13Quest3name2_HORDE = Inst13Quest3name2
Inst13Quest3name3_HORDE = Inst13Quest3name3
Inst13Quest3name4_HORDE = Inst13Quest3name4

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst13Quest4_HORDE = Inst13Quest4
Inst13Quest4_HORDE_Level = Inst13Quest4_Level
Inst13Quest4_HORDE_Attain = Inst13Quest4_Attain
Inst13Quest4_HORDE_Aim = Inst13Quest4_Aim
Inst13Quest4_HORDE_Location = Inst13Quest4_Location
Inst13Quest4_HORDE_Note = Inst13Quest4_Note
Inst13Quest4_HORDE_Page = Inst13Quest4_Page
Inst13Quest4_HORDE_Prequest = Inst13Quest4_Prequest
Inst13Quest4_HORDE_Folgequest = Inst13Quest4_Folgequest
--
Inst13Quest4name1_HORDE = Inst13Quest4name1

--Quest 5 Horde  (same as Quest 5 Alliance)
Inst13Quest5_HORDE = Inst13Quest5
Inst13Quest5_HORDE_Level = Inst13Quest5_Level
Inst13Quest5_HORDE_Attain = Inst13Quest5_Attain
Inst13Quest5_HORDE_Aim = Inst13Quest5_Aim
Inst13Quest5_HORDE_Location = Inst13Quest5_Location
Inst13Quest5_HORDE_Note = Inst13Quest5_Note
Inst13Quest5_HORDE_Prequest = Inst13Quest5_Prequest
Inst13Quest5_HORDE_Folgequest = Inst13Quest5_Folgequest
-- No Rewards for this quest

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst13Quest6_HORDE = Inst13Quest6
Inst13Quest6_HORDE_Level = Inst13Quest6_Level
Inst13Quest6_HORDE_Attain = Inst13Quest6_Attain
Inst13Quest6_HORDE_Aim = Inst13Quest6_Aim
Inst13Quest6_HORDE_Location = Inst13Quest6_Location
Inst13Quest6_HORDE_Note = Inst13Quest6_Note
Inst13Quest6_HORDE_Prequest = Inst13Quest6_Prequest
Inst13Quest6_HORDE_Folgequest = Inst13Quest6_Folgequest
Inst13Quest6FQuest_HORDE = Inst13Quest6FQuest
--
Inst13Quest6name1_HORDE = Inst13Quest6name1

--Quest 7 Horde
Inst13Quest7_HORDE = "7. Corruption of Earth and Seed"
Inst13Quest7_HORDE_Level = "51"
Inst13Quest7_HORDE_Attain = "45"
Inst13Quest7_HORDE_Aim = "Slay Princess Theradras and return to Selendra near Shadowprey Village in Desolace."
Inst13Quest7_HORDE_Location = "Selendra (Desolace; "..YELLOW.."27,77"..WHITE..")"
Inst13Quest7_HORDE_Note = "You find Princess Theradras at "..YELLOW.."[11]"..WHITE.."."
Inst13Quest7_HORDE_Prequest = "None"
Inst13Quest7_HORDE_Folgequest = "Seed of Life"
--
Inst13Quest7name1_HORDE = "Thrash Blade"
Inst13Quest7name2_HORDE = "Resurgence Rod"
Inst13Quest7name3_HORDE = "Verdant Keeper's Aim"

--Quest 8 Horde  (same as Quest 8 Alliance)
Inst13Quest8_HORDE = Inst13Quest8
Inst13Quest8_HORDE_Level = Inst13Quest8_Level
Inst13Quest8_HORDE_Attain = Inst13Quest8_Attain
Inst13Quest8_HORDE_Aim = Inst13Quest8_Aim
Inst13Quest8_HORDE_Location = Inst13Quest8_Location
Inst13Quest8_HORDE_Note = Inst13Quest8_Note
Inst13Quest8_HORDE_Prequest = Inst13Quest8_Prequest
Inst13Quest8_HORDE_Folgequest = Inst13Quest8_Folgequest
Inst13Quest8FQuest_HORDE = Inst13Quest8FQuest
-- No Rewards for this quest



--------------- INST14 - Molten Core (MC) ---------------

Inst14Story = "The Molten Core lies at the very bottom of Blackrock Depths. It is the heart of Blackrock Mountain and the exact spot where, long ago in a desperate bid to turn the tide of the dwarven civil war, Emperor Thaurissan summoned the elemental Firelord, Ragnaros, into the world. Though the fire lord is incapable of straying far from the blazing Core, it is believed that his elemental minions command the Dark Iron dwarves, who are in the midst of creating armies out of living stone. The burning lake where Ragnaros lies sleeping acts as a rift connecting to the plane of fire, allowing the malicious elementals to pass through. Chief among Ragnaros' agents is Majordomo Executus - for this cunning elemental is the only one capable of calling the Firelord from his slumber."
Inst14Caption = "Molten Core"
Inst14QAA = "6 Quests"
Inst14QAH = "6 Quests"


--------------- INST15 - Old Naxxramas ---------------

-- Old Naxxramas (Before Wrath of the Lich King)
-- Now using Inst84 for the new one.



--------------- INST16 - Onyxia's Lair (Ony) ---------------

Inst16Story = "Onyxia is the daughter of the mighty dragon Deathwing, and sister of the scheming Nefarion Lord of Blackrock Spire. It is said that Onyxia delights in corrupting the mortal races by meddling in their political affairs. To this end it is believed that she takes on various humanoid forms and uses her charm and power to influence delicate matters between the different races. Some believe that Onyxia has even assumed an alias once used by her father - the title of the royal House Prestor. When not meddling in mortal concerns, Onyxia resides in a fiery cave below the Dragonmurk, a dismal swamp located within Dustwallow Marsh. There she is guarded by her kin, the remaining members of the insidious Black Dragon Flight."
Inst16Caption = "Onyxias Lair"
Inst16QAA = "3 Quests"
Inst16QAH = "3 Quests"

--------------- INST17 - Razorfen Downs (RFD) ---------------

Inst17Story = "Crafted  from the same mighty vines as Razorfen Kraul, Razorfen Downs is the traditional capital city of the quillboar race. The sprawling, thorn-ridden labyrinth houses a veritable army of loyal quillboar as well as their high priests - the Death's Head tribe. Recently, however, a looming shadow has fallen over the crude den. Agents of the undead Scourge - led by the lich, Amnennar the Coldbringer - have taken control over the quillboar race and turned the maze of thorns into a bastion of undead might. Now the quillboar fight a desperate battle to reclaim their beloved city before Amnennar spreads his control across the Barrens."
Inst17Caption = "Razorfen Downs"
Inst17QAA = "3 Quests"
Inst17QAH = "4 Quests"

--Quest 1 Alliance
Inst17Quest1 = "1. A Host of Evil"
Inst17Quest1_Level = "35"
Inst17Quest1_Attain = "28"
Inst17Quest1_Aim = "Kill 8 Razorfen Battleguard, 8 Razorfen Thornweavers, and 8 Death's Head Cultists and return to Myriam Moonsinger near the entrance to Razorfen Downs."
Inst17Quest1_Location = "Myriam Moonsinger (The Barrens; "..YELLOW.."49,94"..WHITE..")"
Inst17Quest1_Note = "You can find the mobs and the quest giver in the area just before the instance entrance."
Inst17Quest1_Prequest = "None"
Inst17Quest1_Folgequest = "None"
-- No Rewards for this quest

--Quest 2 Alliance
Inst17Quest2 = "2. Extinguishing the Idol"
Inst17Quest2_Level = "37"
Inst17Quest2_Attain = "32"
Inst17Quest2_Aim = "Escort Belnistrasz to the Quilboar's idol in Razorfen Downs. Protect Belnistrasz while he performs the ritual to shut down the idol."
Inst17Quest2_Location = "Belnistrasz (Razorfen Downs; "..YELLOW.."[2]"..WHITE..")"
Inst17Quest2_Note = "The prequest is just you agreeing to help him. Several mobs spawn and attack Belnistrasz as he attempts to shut down the idol. After completing the quest, you can turn the quest in at the brazier in front of the idol."
Inst17Quest2_Prequest = "Scourge of the Downs"
Inst17Quest2_Folgequest = "None"
Inst17Quest2PreQuest = "true"
--
Inst17Quest2name1 = "Dragonclaw Ring"

--Quest 3 Alliance
Inst17Quest3 = "3. Bring the Light"
Inst17Quest3_Level = "37"
Inst17Quest3_Attain = "32"
Inst17Quest3_Aim = "Archbishop Benedictus wants you to slay Amnennar the Coldbringer in Razorfen Downs."
Inst17Quest3_Location = "Archbishop Benedictus (Stormwind - Cathedral of Light; "..YELLOW.."50.0, 45.4"..WHITE..")"
Inst17Quest3_Note = "Amnennar the Coldbringer is the last boss in Razorfen Downs. You can find him at "..YELLOW.."[6]"..WHITE.."."
Inst17Quest3_Prequest = "None"
Inst17Quest3_Folgequest = "None"
--
Inst17Quest3name1 = "Vanquisher's Sword"
Inst17Quest3name2 = "Amberglow Talisman"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst17Quest1_HORDE = Inst17Quest1
Inst17Quest1_HORDE_Level = Inst17Quest1_Level
Inst17Quest1_HORDE_Attain = Inst17Quest1_Attain
Inst17Quest1_HORDE_Aim = Inst17Quest1_Aim
Inst17Quest1_HORDE_Location = Inst17Quest1_Location
Inst17Quest1_HORDE_Note = Inst17Quest1_Note
Inst17Quest1_HORDE_Prequest = Inst17Quest1_Prequest
Inst17Quest1_HORDE_Folgequest = Inst17Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde
Inst17Quest2_HORDE = "2. An Unholy Alliance"
Inst17Quest2_HORDE_Level = "36"
Inst17Quest2_HORDE_Attain = "28"
Inst17Quest2_HORDE_Aim = "Bring Ambassador Malcin's Head to Varimathras in the Undercity."
Inst17Quest2_HORDE_Location = "Varimathras (Undercity - Royal Quarter; "..YELLOW.."56,92"..WHITE..")"
Inst17Quest2_HORDE_Note = "The preceding quest can be obtained from the last Boss in Razorfen Kraul. You find Malcin outside (The Barrens; "..YELLOW.."48,92"..WHITE..")."
Inst17Quest2_HORDE_Prequest = "An Unholy Alliance"
Inst17Quest2_HORDE_Folgequest = "None"
Inst17Quest2PreQuest_HORDE = "true"
--
Inst17Quest2name1_HORDE = "Skullbreaker"
Inst17Quest2name2_HORDE = "Nail Spitter"
Inst17Quest2name3_HORDE = "Zealot's Robe"

--Quest 3 Horde  (same as Quest 2 Alliance)
Inst17Quest3_HORDE = "3. Extinguishing the Idol"
Inst17Quest3_HORDE_Level = Inst17Quest2_Level
Inst17Quest3_HORDE_Attain = Inst17Quest2_Attain
Inst17Quest3_HORDE_Aim = Inst17Quest2_Aim
Inst17Quest3_HORDE_Location = Inst17Quest2_Location
Inst17Quest3_HORDE_Note = Inst17Quest2_Note
Inst17Quest3_HORDE_Prequest = Inst17Quest2_Prequest
Inst17Quest3_HORDE_Folgequest = Inst17Quest2_Folgequest
Inst17Quest3PreQuest_HORDE = Inst17Quest2PreQuest
--
Inst17Quest3name1_HORDE = Inst17Quest2name1

--Quest 4 Horde
Inst17Quest4_HORDE = "4. Bring the End"
Inst17Quest4_HORDE_Level = "42"
Inst17Quest4_HORDE_Attain = "37"
Inst17Quest4_HORDE_Aim = "Andrew Brownell wants you to kill Amnennar the Coldbringer and return his skull."
Inst17Quest4_HORDE_Location = "Andrew Brownell (Undercity - The Magic Quarter; "..YELLOW.."72,32"..WHITE..")"
Inst17Quest4_HORDE_Note = "Amnennar the Coldbringer is the last Boss at Razorfen Downs. You can find him at "..YELLOW.."[6]"..WHITE.."."
Inst17Quest4_HORDE_Prequest = "None"
Inst17Quest4_HORDE_Folgequest = "None"
--
Inst17Quest4name1_HORDE = "Vanquisher's Sword"
Inst17Quest4name2_HORDE = "Amberglow Talisman"



--------------- INST18 - Razorfen Kraul (RFK) ---------------

Inst18Story = "Ten thousand years ago - during the War of the Ancients, the mighty demigod, Agamaggan, came forth to battle the Burning Legion. Though the colossal boar fell in combat, his actions helped save Azeroth from ruin. Yet over time, in the areas where his blood fell, massive thorn-ridden vines sprouted from the earth. The quillboar - believed to be the mortal offspring of the mighty god, came to occupy these regions and hold them sacred. The heart of these thorn-colonies was known as the Razorfen. The great mass of Razorfen Kraul was conquered by the old crone, Charlga Razorflank. Under her rule, the shamanistic quillboar stage attacks on rival tribes as well as Horde villages. Some speculate that Charlga has even been negotiating with agents of the Scourge - aligning her unsuspecting tribe with the ranks of the Undead for some insidious purpose."
Inst18Caption = "Razorfen Kraul"
Inst18QAA = "5 Quests"
Inst18QAH = "6 Quests"

--Quest 1 Alliance
Inst18Quest1 = "1. Blueleaf Tubers"
Inst18Quest1_Level = "26"
Inst18Quest1_Attain = "20"
Inst18Quest1_Aim = "In Razorfen Kraul, use the Crate with Holes to summon a Snufflenose Gopher, and use the Command Stick on the gopher to make it search for Tubers. Bring 6 Blueleaf Tubers, the Snufflenose Command Stick and the Crate with Holes to Mebok Mizzyrix in Ratchet."
Inst18Quest1_Location = "Mebok Mizzyrix (The Barrens - Ratchet; "..YELLOW.."62,37"..WHITE..")"
Inst18Quest1_Note = "The Crate, the Stick and the Manual can all be found near Mebok Mizzyrix."
Inst18Quest1_Prequest = "None"
Inst18Quest1_Folgequest = "None"
--
Inst18Quest1name1 = "A Small Container of Gems"

--Quest 2 Alliance
Inst18Quest2 = "2. Mortality Wanes"
Inst18Quest2_Level = "30"
Inst18Quest2_Attain = "25"
Inst18Quest2_Aim = "Find and return Treshala's Pendant to Treshala Fallowbrook in Darnassus."
Inst18Quest2_Location = "Heraltha Fallowbrook (Razorfen Kraul; "..YELLOW.."[8]"..WHITE..")"
Inst18Quest2_Note = "The pendant is a random drop. You must bring back the pendant to Treshala Fallowbrook in Darnassus - Tradesmen Terrace ("..YELLOW.."69,67"..WHITE..")."
Inst18Quest2_Prequest = "None"
Inst18Quest2_Folgequest = "None"
--
Inst18Quest2name1 = "Mourning Shawl"
Inst18Quest2name2 = "Lancer Boots"

--Quest 3 Alliance
Inst18Quest3 = "3. Willix the Importer"
Inst18Quest3_Level = "30"
Inst18Quest3_Attain = "23"
Inst18Quest3_Aim = "Escort Willix the Importer out of Razorfen Kraul."
Inst18Quest3_Location = "Willix the Importer (Razorfen Kraul; "..YELLOW.."[8]"..WHITE..")"
Inst18Quest3_Note = "Willix the Importer must be escorted to the entrance of the instance. The quest is turned in to him when completed."
Inst18Quest3_Prequest = "None"
Inst18Quest3_Folgequest = "None"
--
Inst18Quest3name1 = "Monkey Ring"
Inst18Quest3name2 = "Snake Hoop"
Inst18Quest3name3 = "Tiger Band"

--Quest 4 Alliance
Inst18Quest4 = "4. The Crone of the Kraul"
Inst18Quest4_Level = "27"
Inst18Quest4_Attain = "23"
Inst18Quest4_Aim = "Bring Razorflank's Medallion to Falfindel Waywarder in Thalanaar."
Inst18Quest4_Location = "Falfindel Waywarder (Feralas - Thalanaar; "..YELLOW.."89,46"..WHITE..")"
Inst18Quest4_Note = "Charlga Razorflank "..YELLOW.."[7]"..WHITE.." drops the Medallion required for this quest."
Inst18Quest4_Prequest = "Lonebrow's Journal"
Inst18Quest4_Folgequest = "None"
Inst18Quest4PreQuest = "true"
--
Inst18Quest4name1 = "Falfindel's Blaster"
Inst18Quest4name2 = "Berylline Pads"
Inst18Quest4name3 = "Stonefist Girdle"
Inst18Quest4name4 = "Marbled Buckler"

--Quest 5 Alliance
Inst18Quest5 = "5. Fire Hardened Mail "..warrior.."(Warrior)"
Inst18Quest5_Level = "28"
Inst18Quest5_Attain = "20"
Inst18Quest5_Aim = "Gather the materials Furen Longbeard requires, and bring them to him in Stormwind."
Inst18Quest5_Location = "Furen Longbeard (Stormwind - Dwarven District; "..YELLOW.."64.4, 37.3"..WHITE..")"
Inst18Quest5_Note = ""..warrior.."WARRIOR"..WHITE.." ONLY! You get the Vial of Phlogiston from Roogug at "..YELLOW.."[1]"..WHITE..".\n\nThe followup quest is different for each race. Burning Blood for Humans, Iron Coral for Dwarves and Gnomes and Sunscorched Shells for Night Elves."
Inst18Quest5_Prequest = "The Shieldsmith"
Inst18Quest5_Folgequest = "(See Note)"
Inst18Quest5PreQuest = "true"
-- No Rewards for this quest


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst18Quest1_HORDE = Inst18Quest1
Inst18Quest1_HORDE_Level = Inst18Quest1_Level
Inst18Quest1_HORDE_Attain = Inst18Quest1_Attain
Inst18Quest1_HORDE_Aim = Inst18Quest1_Aim
Inst18Quest1_HORDE_Location = Inst18Quest1_Location
Inst18Quest1_HORDE_Note = Inst18Quest1_Note
Inst18Quest1_HORDE_Prequest = Inst18Quest1_Prequest
Inst18Quest1_HORDE_Folgequest = Inst18Quest1_Folgequest
--
Inst18Quest1name1_HORDE = Inst18Quest1name1

--Quest 2 Horde  (same as Quest 3 Alliance)
Inst18Quest2_HORDE = "2. Willix the Importer"
Inst18Quest2_HORDE_Level = Inst18Quest3_Level
Inst18Quest2_HORDE_Attain = Inst18Quest3_Attain
Inst18Quest2_HORDE_Aim = Inst18Quest3_Aim
Inst18Quest2_HORDE_Location = Inst18Quest3_Location
Inst18Quest2_HORDE_Note = Inst18Quest3_Note
Inst18Quest2_HORDE_Prequest = Inst18Quest3_Prequest
Inst18Quest2_HORDE_Folgequest = Inst18Quest3_Folgequest
--
Inst18Quest2name1_HORDE = Inst18Quest3name1
Inst18Quest2name2_HORDE = Inst18Quest3name2
Inst18Quest2name3_HORDE = Inst18Quest3name3

-- Quest 3 Horde
Inst18Quest3_HORDE = "3. Going, Going, Guano!"
Inst18Quest3_HORDE_Level = "33"
Inst18Quest3_HORDE_Attain = "30"
Inst18Quest3_HORDE_Aim = "Bring 1 pile of Kraul Guano to Master Apothecary Faranell in the Undercity."
Inst18Quest3_HORDE_Location = "Master Apothecary Faranell (Undercity - The Apothecarium; "..YELLOW.."48,69"..WHITE..")"
Inst18Quest3_HORDE_Note = "Kraul Guano is dropped by any of the bats found within the instance."
Inst18Quest3_HORDE_Prequest = "None"
Inst18Quest3_HORDE_Folgequest = "Hearts of Zeal ("..YELLOW.."[Scarlet Monastery]"..WHITE..")"
-- No Rewards for this quest

--Quest 4 Horde
Inst18Quest4_HORDE = "4. A Vengeful Fate"
Inst18Quest4_HORDE_Level = "34"
Inst18Quest4_HORDE_Attain = "29"
Inst18Quest4_HORDE_Aim = "Bring Razorflank's Heart to Auld Stonespire in Thunder Bluff."
Inst18Quest4_HORDE_Location = "Auld Stonespire (Thunderbluff; "..YELLOW.."36,59"..WHITE..")"
Inst18Quest4_HORDE_Note = "You can find Charlga Razorflank at "..YELLOW.."[7]"..WHITE.."."
Inst18Quest4_HORDE_Prequest = "None"
Inst18Quest4_HORDE_Folgequest = "None"
--
Inst18Quest4name1_HORDE = "Berylline Pads"
Inst18Quest4name2_HORDE = "Stonefist Girdle"
Inst18Quest4name3_HORDE = "Marbled Buckler"

-- Quest 5 Horde
Inst18Quest5_HORDE = "5. An Unholy Alliance"
Inst18Quest5_HORDE_Level = "36"
Inst18Quest5_HORDE_Attain = "28"
Inst18Quest5_HORDE_Aim = "Take the Small Scroll to Bragor Bloodfist at the Royal Quarter in the Undercity."
Inst18Quest5_HORDE_Location = "Small Scroll (drops from Charlga Razorflank; "..YELLOW.."[7]"..WHITE..")"
Inst18Quest5_HORDE_Note = "The scroll drops from the last boss of Razorfen Kraul, Charlga Razorflank; "..YELLOW.."[7]"..WHITE..".\n\nThe quest asks you to deliver the scroll to Bragor Bloodfist, but you deliver it to Varimathras ("..YELLOW.."56,92"..WHITE..") at the Royal Quarter in the Undercity. "
Inst18Quest5_HORDE_Prequest = "None"
Inst18Quest5_HORDE_Folgequest = "An Unholy Alliance "..YELLOW.."[Razorfen Downs]"..WHITE..""
-- No Rewards for this quest

--Quest 6 Horde
Inst18Quest6_HORDE = "6. The Triad Scrolls "..EPOCH.."(New)"
Inst18Quest6_HORDE_Level = "30"
Inst18Quest6_HORDE_Attain = "~22"
Inst18Quest6_HORDE_Aim = "Infiltrate the Razorfen Kraul and recover the Triad Scrolls from the quilboar."
Inst18Quest6_HORDE_Location = "Sage Elkhoof (The Barrens - Camp Taurajo; "..YELLOW.."44,58"..WHITE..")"
Inst18Quest6_HORDE_Note = "The Founding of Thunder Bluff drops from Overlord Ramtusk "..YELLOW.."[4]"..WHITE.."; \nthe Founding of Camp Mojache drops from Aggem Thorncurse "..YELLOW.."[2]"..WHITE.."; \nthe Founding of Sun Rock Retreat drops from Death Speaker Jargba "..YELLOW.."[3]"..WHITE..".\n\nReturn the scrolls back to Sage Elkhoof in Camp Taurajo, The Barrens."
Inst18Quest6_HORDE_Prequest = "Yes, Sage Elkhoof (The Barrens - Camp Taurajo)"
Inst18Quest6_HORDE_Folgequest = "None"
Inst18Quest6PreQuest_HORDE = "true"
--
Inst18Quest6name1_HORDE = "Amulet of Memory"
Inst18Quest6name2_HORDE = "Amulet of Vengeance"

--Quest 7 Horde
Inst18Quest7_HORDE = "7. Brutal Armor "..warrior.."(Warrior)"
Inst18Quest7_HORDE_Level = "30"
Inst18Quest7_HORDE_Attain = "20"
Inst18Quest7_HORDE_Aim = "Bring to Thun'grim Firegaze 15 Smoky Iron Ingots, 10 Powdered Azurite, 10 Iron Bars and a Vial of Phlogiston."
Inst18Quest7_HORDE_Location = "Thun'grim Firegaze (The Barrens; "..YELLOW.."57,30"..WHITE..")"
Inst18Quest7_HORDE_Note = ""..warrior.."WARRIOR"..WHITE.." ONLY! You get the Vial of Phlogiston from Roogug at "..YELLOW.."[1]"..WHITE..".\n\nCompleting this quest allows you to start four new quests from the same NPC."
Inst18Quest7_HORDE_Prequest = "Speak with Thun'grim"
Inst18Quest7_HORDE_Folgequest = "(See Note)"
Inst18Quest7PreQuest_HORDE = "true"
-- No Rewards for this quest



--------------- INST19 - SM: Library (SM Lib) ---------------

Inst19Story = "The Monastery was once a proud bastion of Lordaeron's priesthood - a center for learning and enlightenment. With the rise of the undead Scourge during the Third War, the peaceful Monastery was converted into a stronghold of the fanatical Scarlet Crusade. The Crusaders are intolerant of all non-human races, regardless of alliance or affiliation. They believe that any and all outsiders are potential carriers of the undead plague - and must be destroyed. Reports indicate that adventurers who enter the monastery are forced to contend with Scarlet Commander Mograine - who commands a large garrison of fanatically devoted warriors. However, the monastery's true master is High Inquisitor Whitemane - a fearsome priestess who possesses the ability to resurrect fallen warriors to do battle in her name."
Inst19Caption = "SM: Library"
Inst19QAA = "3 Quests"
Inst19QAH = "5 Quests"

--Quest 1 Alliance
Inst19Quest1 = "1. Mythology of the Titans"
Inst19Quest1_Level = "38"
Inst19Quest1_Attain = "28"
Inst19Quest1_Aim = "Retrieve Mythology of the Titans from the Monastery and bring it to Librarian Mae Paledust in Ironforge."
Inst19Quest1_Location = "Librarian Mae Paledust (Ironforge - Hall of Explorers; "..YELLOW.."74,12"..WHITE..")"
Inst19Quest1_Note = "The book is on the floor on the left side of one of the corridors leading to Arcanist Doan ("..YELLOW.."[2]"..WHITE..")."
Inst19Quest1_Prequest = "None"
Inst19Quest1_Folgequest = "None"
--
Inst19Quest1name1 = "Explorers' League Commendation"

--Quest 2 Alliance
Inst19Quest2 = "2. Rituals of Power "..mage.."(Mage)"
Inst19Quest2_Level = "40"
Inst19Quest2_Attain = "30"
Inst19Quest2_Aim = "Bring the book Rituals of Power to Tabetha in Dustwallow Marsh."
Inst19Quest2_Location = "Tabetha (Dustwallow Marsh; "..YELLOW.."43,57"..WHITE..")"
Inst19Quest2_Note = ""..mage.."MAGE "..WHITE.."ONLY! You can find the book in the last corridor leading to Arcanist Doan ("..YELLOW.."[2]"..WHITE..").\n\nThe rewards listed are for the followup."
Inst19Quest2_Prequest = "Journey to the Marsh -> Get the Scoop"
Inst19Quest2_Folgequest = "Mage's Wand"
Inst19Quest2PreQuest = "true"
--
Inst19Quest2name1 = "Icefury Wand"
Inst19Quest2name2 = "Nether Force Wand"
Inst19Quest2name3 = "Ragefire Wand"

--Quest 3 Alliance
Inst19Quest3 = "3. In the Name of the Light"
Inst19Quest3_Level = "40"
Inst19Quest3_Attain = "34"
Inst19Quest3_Aim = "Kill High Inquisitor Whitemane, Scarlet Commander Mograine, Herod, the Scarlet Champion and Houndmaster Loksey and then report back to Raleigh the Devout in Southshore."
Inst19Quest3_Location = "Raleigh the Devout (Hillsbrad Foothills - Southshore; "..YELLOW.."51,58"..WHITE..")"
Inst19Quest3_Note = "This quest line starts at Brother Crowley in Stormwind - Cathedral of Light ("..YELLOW.."52.3, 43.1"..WHITE..").\nYou can find High Inquisitor Whitemane and Scarlet Commander Mograine at "..YELLOW.."SM: Cathedral [2]"..WHITE..", Herod at "..YELLOW.."SM: Armory [1]"..WHITE.." and Houndmaster Loksey at "..YELLOW.."SM: Library [1]"..WHITE.."."
Inst19Quest3_Prequest = "Brother Anton -> Down the Scarlet Path"
Inst19Quest3_Folgequest = "None"
Inst19Quest3PreQuest = "true"
--
Inst19Quest3name1 = "Sword of Serenity"
Inst19Quest3name2 = "Bonebiter"
Inst19Quest3name3 = "Black Menace"
Inst19Quest3name4 = "Orb of Lorica"


--Quest 1 Horde
Inst19Quest1_HORDE = "1. Hearts of Zeal"
Inst19Quest1_HORDE_Level = "33"
Inst19Quest1_HORDE_Attain = "30"
Inst19Quest1_HORDE_Aim = "Master Apothecary Faranell in the Undercity wants 20 Hearts of Zeal."
Inst19Quest1_HORDE_Location = "Master Apothecary Faranell (Undercity - The Apothecarium; "..YELLOW.."48,69"..WHITE..")"
Inst19Quest1_HORDE_Note = "All mobs inside the Scarlet Monastery drop Hearts of Zeal. This includes the mobs outside the instance by the portals."
Inst19Quest1_HORDE_Prequest = "Going, Going, Guano! ("..YELLOW.."[Razorfen Kraul]"..WHITE..")"
Inst19Quest1_HORDE_Folgequest = "None"
Inst19Quest1PreQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 2 Horde
Inst19Quest2_HORDE = "2. Test of Lore"
Inst19Quest2_HORDE_Level = "36"
Inst19Quest2_HORDE_Attain = "25"
Inst19Quest2_HORDE_Aim = "Find The Beginnings of the Undead Threat, and return it to Parqual Fintallas in Undercity."
Inst19Quest2_HORDE_Location = "Parqual Fintallas (Undercity - The Apothecarium; "..YELLOW.."57,65"..WHITE..")"
Inst19Quest2_HORDE_Note = "Questline starts at Dorn Plainstalker (Thousand Needles; "..YELLOW.."53,41"..WHITE.."). You can find the book in the Library of Scarlet Monastary.\n\nThe rewards listed are for the followup, which just involves talking to the NPC."
Inst19Quest2_HORDE_Prequest = "Test of Faith -> Test of Lore"
Inst19Quest2_HORDE_Folgequest = "Test of Lore"
Inst19Quest2PreQuest_HORDE = "true"
--
Inst19Quest2name1_HORDE = "Windstorm Hammer"
Inst19Quest2name2_HORDE = "Dancing Flame"

--Quest 3 Horde
Inst19Quest3_HORDE = "3. Compendium of the Fallen"
Inst19Quest3_HORDE_Level = "38"
Inst19Quest3_HORDE_Attain = "28"
Inst19Quest3_HORDE_Aim = "Retrieve the Compendium of the Fallen from the Monastery in Tirisfal Glades and return to Sage Truthseeker in Thunder Bluff."
Inst19Quest3_HORDE_Location = "Sage Truthseeker (Thunderbluff; "..YELLOW.."34,47"..WHITE..")"
Inst19Quest3_HORDE_Note = "You can find the book in the Library section of the Scarlet Monastery. For lore reasons, Undead cannot do this quest."
Inst19Quest3_HORDE_Prequest = "None"
Inst19Quest3_HORDE_Folgequest = "None"
--
Inst19Quest3name1_HORDE = "Vile Protector"
Inst19Quest3name2_HORDE = "Forcestone Buckler"
Inst19Quest3name3_HORDE = "Omega Orb"

--Quest 4 Horde  (same as Quest 2 Alliance)
Inst19Quest4_HORDE = "4. Rituals of Power "..mage.."(Mage)"
Inst19Quest4_HORDE_Level = Inst19Quest2_Level
Inst19Quest4_HORDE_Attain = Inst19Quest2_Attain
Inst19Quest4_HORDE_Aim = Inst19Quest2_Aim
Inst19Quest4_HORDE_Location = Inst19Quest2_Location
Inst19Quest4_HORDE_Note = Inst19Quest2_Note
Inst19Quest4_HORDE_Prequest = Inst19Quest2_Prequest
Inst19Quest4_HORDE_Folgequest = Inst19Quest2_Folgequest
Inst19Quest4PreQuest_HORDE = Inst19Quest2_PreQuest
--
Inst19Quest4name1_HORDE = Inst19Quest2name1
Inst19Quest4name2_HORDE = Inst19Quest2name2
Inst19Quest4name3_HORDE = Inst19Quest2name3

--Quest 5 Horde
Inst19Quest5_HORDE = "5. Into The Scarlet Monastery"
Inst19Quest5_HORDE_Level = "42"
Inst19Quest5_HORDE_Attain = "33"
Inst19Quest5_HORDE_Aim = "Kill High Inquisitor Whitemane, Scarlet Commander Mograine, Herod, the Scarlet Champion and Houndmaster Loksey and then report back to Varimathras in the Undercity."
Inst19Quest5_HORDE_Location = "Varimathras (Undercity - Royal Quarter; "..YELLOW.."56,92"..WHITE..")"
Inst19Quest5_HORDE_Note = "You can find High Inquisitor Whitemane and Scarlet Commander Mograine at "..YELLOW.."SM: Cathedral [2]"..WHITE..", Herod at "..YELLOW.."SM: Armory [1]"..WHITE.." and Houndmaster Loksey at "..YELLOW.."SM: Library [1]"..WHITE.."."
Inst19Quest5_HORDE_Prequest = "None"
Inst19Quest5_HORDE_Folgequest = "None"
--
Inst19Quest5name1_HORDE = "Sword of Omen"
Inst19Quest5name2_HORDE = "Prophetic Cane"
Inst19Quest5name3_HORDE = "Dragon's Blood Necklace"



--------------- INST57 - SM: Armory (SM Arm) ---------------

Inst57Story = "The Monastery was once a proud bastion of Lordaeron's priesthood - a center for learning and enlightenment. With the rise of the undead Scourge during the Third War, the peaceful Monastery was converted into a stronghold of the fanatical Scarlet Crusade. The Crusaders are intolerant of all non-human races, regardless of alliance or affiliation. They believe that any and all outsiders are potential carriers of the undead plague - and must be destroyed. Reports indicate that adventurers who enter the monastery are forced to contend with Scarlet Commander Mograine - who commands a large garrison of fanatically devoted warriors. However, the monastery's true master is High Inquisitor Whitemane - a fearsome priestess who possesses the ability to resurrect fallen warriors to do battle in her name."
Inst57Caption = "SM: Armory"
Inst57QAA = "1 Quest"
Inst57QAH = "2 Quests"

--Quest 1 Alliance
Inst57Quest1 = "1. In the Name of the Light"
Inst57Quest1_Level = "40"
Inst57Quest1_Attain = "34"
Inst57Quest1_Aim = "Kill High Inquisitor Whitemane, Scarlet Commander Mograine, Herod, the Scarlet Champion and Houndmaster Loksey and then report back to Raleigh the Devout in Southshore."
Inst57Quest1_Location = "Raleigh the Devout (Hillsbrad Foothills - Southshore; "..YELLOW.."51,58"..WHITE..")"
Inst57Quest1_Note = "This quest line starts at Brother Crowley in Stormwind - Cathedral of Light ("..YELLOW.."52.1, 43.1"..WHITE..").\nYou can find High Inquisitor Whitemane and Scarlet Commander Mograine at "..YELLOW.."SM: Cathedral [2]"..WHITE..", Herod at "..YELLOW.."SM: Armory [1]"..WHITE.." and Houndmaster Loksey at "..YELLOW.."SM: Library [1]"..WHITE.."."
Inst57Quest1_Prequest = "Brother Anton -> Down the Scarlet Path"
Inst57Quest1_Folgequest = "None"
Inst57Quest1PreQuest = "true"
--
Inst57Quest1name1 = "Sword of Serenity"
Inst57Quest1name2 = "Bonebiter"
Inst57Quest1name3 = "Black Menace"
Inst57Quest1name4 = "Orb of Lorica"


--Quest 1 Horde
Inst57Quest1_HORDE = "1. Hearts of Zeal"
Inst57Quest1_HORDE_Level = "33"
Inst57Quest1_HORDE_Attain = "30"
Inst57Quest1_HORDE_Aim = "Master Apothecary Faranell in the Undercity wants 20 Hearts of Zeal."
Inst57Quest1_HORDE_Location = "Master Apothecary Faranell (Undercity - The Apothecarium; "..YELLOW.."48,69"..WHITE..")"
Inst57Quest1_HORDE_Note = "All mobs in the Scarlet Monastery drop Hearts of Zeal. This includes the mobs outside the instance by the portals."
Inst57Quest1_HORDE_Prequest = "Going, Going, Guano! ("..YELLOW.."Razorfen Kraul"..WHITE..")"
Inst57Quest1_HORDE_Folgequest = "None"
Inst57Quest1PreQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 2 Horde
Inst57Quest2_HORDE = "2. Into The Scarlet Monastery"
Inst57Quest2_HORDE_Level = "42"
Inst57Quest2_HORDE_Attain = "33"
Inst57Quest2_HORDE_Aim = "Kill High Inquisitor Whitemane, Scarlet Commander Mograine, Herod, the Scarlet Champion and Houndmaster Loksey and then report back to Varimathras in the Undercity."
Inst57Quest2_HORDE_Location = "Varimathras (Undercity - Royal Quarter; "..YELLOW.."56,92"..WHITE..")"
Inst57Quest2_HORDE_Note = "You can find High Inquisitor Whitemane and Scarlet Commander Mograine at "..YELLOW.."SM: Cathedral [2]"..WHITE..", Herod at "..YELLOW.."SM: Armory [1]"..WHITE.." and Houndmaster Loksey at "..YELLOW.."SM: Library [1]"..WHITE.."."
Inst57Quest2_HORDE_Prequest = "None"
Inst57Quest2_HORDE_Folgequest = "None"
--
Inst57Quest2name1_HORDE = "Sword of Omen"
Inst57Quest2name2_HORDE = "Prophetic Cane"
Inst57Quest2name3_HORDE = "Dragon's Blood Necklace"



--------------- INST58 - SM: Cathedral (SM Cath) ---------------

Inst58Story = "The Monastery was once a proud bastion of Lordaeron's priesthood - a center for learning and enlightenment. With the rise of the undead Scourge during the Third War, the peaceful Monastery was converted into a stronghold of the fanatical Scarlet Crusade. The Crusaders are intolerant of all non-human races, regardless of alliance or affiliation. They believe that any and all outsiders are potential carriers of the undead plague - and must be destroyed. Reports indicate that adventurers who enter the monastery are forced to contend with Scarlet Commander Mograine - who commands a large garrison of fanatically devoted warriors. However, the monastery's true master is High Inquisitor Whitemane - a fearsome priestess who possesses the ability to resurrect fallen warriors to do battle in her name."
Inst58Caption = "SM: Cathedral"
Inst58QAA = "1 Quest"
Inst58QAH = "2 Quests"

--Quest 1 Alliance
Inst58Quest1 = "1. In the Name of the Light"
Inst58Quest1_Level = "40"
Inst58Quest1_Attain = "34"
Inst58Quest1_Aim = "Kill High Inquisitor Whitemane, Scarlet Commander Mograine, Herod, the Scarlet Champion and Houndmaster Loksey and then report back to Raleigh the Devout in Southshore."
Inst58Quest1_Location = "Raleigh the Devout (Hillsbrad Foothills - Southshore; "..YELLOW.."51,58"..WHITE..")"
Inst58Quest1_Note = "This quest line starts at Brother Crowley in Stormwind - Cathedral of Light ("..YELLOW.."52.1, 43.1"..WHITE..").\nYou can find High Inquisitor Whitemane and Scarlet Commander Mograine at "..YELLOW.."SM: Cathedral [2]"..WHITE..", Herod at "..YELLOW.."SM: Armory [1]"..WHITE.." and Houndmaster Loksey at "..YELLOW.."SM: Library [1]"..WHITE.."."
Inst58Quest1_Prequest = "Brother Anton -> Down the Scarlet Path"
Inst58Quest1_Folgequest = "None"
Inst58Quest1PreQuest = "true"
--
Inst58Quest1name1 = "Sword of Serenity"
Inst58Quest1name2 = "Bonebiter"
Inst58Quest1name3 = "Black Menace"
Inst58Quest1name4 = "Orb of Lorica"


--Quest 1 Horde
Inst58Quest1_HORDE = "1. Hearts of Zeal"
Inst58Quest1_HORDE_Level = "33"
Inst58Quest1_HORDE_Attain = "30"
Inst58Quest1_HORDE_Aim = "Master Apothecary Faranell in the Undercity wants 20 Hearts of Zeal."
Inst58Quest1_HORDE_Location = "Master Apothecary Faranell (Undercity - The Apothecarium; "..YELLOW.."48,69"..WHITE..")"
Inst58Quest1_HORDE_Note = "All mobs in the Scarlet Monastery drop Hearts of Zeal. This includes the mobs outside the instance by the portals."
Inst58Quest1_HORDE_Prequest = "Going, Going, Guano! ("..YELLOW.."Razorfen Kraul"..WHITE..")"
Inst58Quest1_HORDE_Folgequest = "None"
Inst58Quest1PreQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 2 Horde
Inst58Quest2_HORDE = "2. Into The Scarlet Monastery"
Inst58Quest2_HORDE_Level = "42"
Inst58Quest2_HORDE_Attain = "33"
Inst58Quest2_HORDE_Aim = "Kill High Inquisitor Whitemane, Scarlet Commander Mograine, Herod, the Scarlet Champion and Houndmaster Loksey and then report back to Varimathras in the Undercity."
Inst58Quest2_HORDE_Location = "Varimathras (Undercity - Royal Quarter; "..YELLOW.."56,92"..WHITE..")"
Inst58Quest2_HORDE_Note = "You can find High Inquisitor Whitemane and Scarlet Commander Mograine at "..YELLOW.."SM: Cathedral [2]"..WHITE..", Herod at "..YELLOW.."SM: Armory [1]"..WHITE.." and Houndmaster Loksey at "..YELLOW.."SM: Library [1]"..WHITE.."."
Inst58Quest2_HORDE_Prequest = "None"
Inst58Quest2_HORDE_Folgequest = "None"
--
Inst58Quest2name1_HORDE = "Sword of Omen"
Inst58Quest2name2_HORDE = "Prophetic Cane"
Inst58Quest2name3_HORDE = "Dragon's Blood Necklace"



--------------- INST59 - SM: Graveyard (SM GY) ---------------

Inst59Story = "The Monastery was once a proud bastion of Lordaeron's priesthood - a center for learning and enlightenment. With the rise of the undead Scourge during the Third War, the peaceful Monastery was converted into a stronghold of the fanatical Scarlet Crusade. The Crusaders are intolerant of all non-human races, regardless of alliance or affiliation. They believe that any and all outsiders are potential carriers of the undead plague - and must be destroyed. Reports indicate that adventurers who enter the monastery are forced to contend with Scarlet Commander Mograine - who commands a large garrison of fanatically devoted warriors. However, the monastery's true master is High Inquisitor Whitemane - a fearsome priestess who possesses the ability to resurrect fallen warriors to do battle in her name."
Inst59Caption = "SM: Graveyard"
Inst59QAA = "No Quests"
Inst59QAH = "3 Quests"

--Quest 1 Horde
Inst59Quest1_HORDE = "1. Vorrel's Revenge"
Inst59Quest1_HORDE_Level = "33"
Inst59Quest1_HORDE_Attain = "25"
Inst59Quest1_HORDE_Aim = "Return Vorrel Sengutz's wedding ring to Monika Sengutz in Tarren Mill."
Inst59Quest1_HORDE_Location = "Vorrel Sengutz (Scarlet Monastery - Graveyard; "..YELLOW.."[1]"..WHITE..")"
Inst59Quest1_HORDE_Note = "You can find Vorrel Sengutz at the beginning of the Graveyard section of the Scarlet Monastery. Nancy Vishas, who drops the ring needed for this quest, can be found in a house in the Alterac Mountains ("..YELLOW.."31,32"..WHITE..")."
Inst59Quest1_HORDE_Prequest = "None"
Inst59Quest1_HORDE_Folgequest = "None"
--
Inst59Quest1name1_HORDE = "Vorrel's Boots"
Inst59Quest1name2_HORDE = "Mantle of Woe"
Inst59Quest1name3_HORDE = "Grimsteel Cape"

--Quest 2 Horde
Inst59Quest2_HORDE = "2. Hearts of Zeal"
Inst59Quest2_HORDE_Level = "33"
Inst59Quest2_HORDE_Attain = "30"
Inst59Quest2_HORDE_Aim = "Master Apothecary Faranell in the Undercity wants 20 Hearts of Zeal."
Inst59Quest2_HORDE_Location = "Master Apothecary Faranell (Undercity - The Apothecarium; "..YELLOW.."48,69"..WHITE..")"
Inst59Quest2_HORDE_Note = "All mobs in the Scarlet Monastery drop Hearts of Zeal. This includes the mobs outside the instance by the portals."
Inst59Quest2_HORDE_Prequest = "Going, Going, Guano! ("..YELLOW.."Razorfen Kraul"..WHITE..")"
Inst59Quest2_HORDE_Folgequest = "None"
Inst59Quest2PreQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 3 Horde  (same as Quest 1 Alliance)
Inst59Quest3_HORDE = "3. Call the Headless Horseman (Daily - Seasonal)"
Inst59Quest3_HORDE_Level = Inst59Quest1_Level
Inst59Quest3_HORDE_Attain = Inst59Quest1_Attain
Inst59Quest3_HORDE_Aim = Inst59Quest1_Aim
Inst59Quest3_HORDE_Location = Inst59Quest1_Location
Inst59Quest3_HORDE_Note = Inst59Quest1_Note
Inst59Quest3_HORDE_Prequest = Inst59Quest1_Prequest
Inst59Quest3_HORDE_Folgequest = Inst59Quest1_Folgequest
-- No Rewards for this quest



--------------- INST20 - Scholomance (Scholo) ---------------

Inst20Story = "The Scholomance is housed within a series of crypts that lie beneath the ruined keep of Caer Darrow. Once owned by the noble Barov family, Caer Darrow fell to ruin following the Second War. As the wizard Kel'thuzad enlisted followers for his Cult of the Damned he would often promise immortality in exchange for serving his Lich King. The Barov family fell to Kel'thuzad's charismatic influence and donated the keep and its crypts to the Scourge. The cultists then killed the Barovs and turned the ancient crypts into a school for necromancy known as the Scholomance. Though Kel'thuzad no longer resides in the crypts, devoted cultists and instructors still remain. The powerful lich, Ras Frostwhisper, rules over the site and guards it in the Scourge's name - while the mortal necromancer, Darkmaster Gandling, serves as the school's insidious headmaster."
Inst20Caption = "Scholomance"
Inst20QAA = "11 Quests"
Inst20QAH = "12 Quests"

--Quest 1 Alliance
Inst20Quest1 = "1. Plagued Hatchlings"
Inst20Quest1_Level = "58"
Inst20Quest1_Attain = "55"
Inst20Quest1_Aim = "Kill 20 Plagued Hatchlings, then return to Betina Bigglezink at the Light's Hope Chapel."
Inst20Quest1_Location = "Betina Bigglezink (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."75.6, 53.6"..WHITE..")"
Inst20Quest1_Note = "The Plagued Hatchlings are on the way to Rattlegore in a large room."
Inst20Quest1_Prequest = "None"
Inst20Quest1_Folgequest = "Healthy Dragon Scale"
-- No Rewards for this quest

--Quest 2 Alliance
Inst20Quest2 = "2. Healthy Dragon Scale"
Inst20Quest2_Level = "58"
Inst20Quest2_Attain = "55"
Inst20Quest2_Aim = "Bring the Healthy Dragon Scale to Betina Bigglezink at the Light's Hope Chapel in Eastern Plaguelands."
Inst20Quest2_Location = "Healthy Dragon Scale (random drop in Scholomance)"
Inst20Quest2_Note = "Plagued Hatchlings drop the Healthy Dragon Scales (8% chance to drop). You can find Betina Bigglezink at Eastern Plaguelands - Light's Hope Chapel ("..YELLOW.."75.6, 53.6"..WHITE..")."
Inst20Quest2_Prequest = "Plagued Hatchlings "
Inst20Quest2_Folgequest = "None"
Inst20Quest2FQuest = "true"
-- No Rewards for this quest

--Quest 3 Alliance
Inst20Quest3 = "3. Doctor Theolen Krastinov, the Butcher"
Inst20Quest3_Level = "60"
Inst20Quest3_Attain = "55"
Inst20Quest3_Aim = "Find Doctor Theolen Krastinov inside the Scholomance. Destroy him, then burn the Remains of Eva Sarkhoff and the Remains of Lucien Sarkhoff. Return to Eva Sarkhoff when the task is complete."
Inst20Quest3_Location = "Eva Sarkhoff (Western Plaguelands - Caer Darrow; "..YELLOW.."70,73"..WHITE..")"
Inst20Quest3_Note = "You find Doctor Theolen Krastinov, the remains of Eva Sarkhoff and the remains of Lucien Sarkhoff at "..YELLOW.."[9]"..WHITE.."."
Inst20Quest3_Prequest = "None"
Inst20Quest3_Folgequest = "Krastinov's Bag of Horrors"
-- No Rewards for this quest

--Quest 4 Alliance
Inst20Quest4 = "4. Krastinov's Bag of Horrors"
Inst20Quest4_Level = "60"
Inst20Quest4_Attain = "55"
Inst20Quest4_Aim = "Locate Jandice Barov in the Scholomance and destroy her. From her corpse recover Krastinov's Bag of Horrors. Return the bag to Eva Sarkhoff."
Inst20Quest4_Location = "Eva Sarkhoff (Western Plaguelands - Caer Darrow; "..YELLOW.."70,73"..WHITE..")"
Inst20Quest4_Note = "You can find Jandice Barov at "..YELLOW.."[3]"..WHITE.."."
Inst20Quest4_Prequest = "Doctor Theolen Krastinov, the Butcher"
Inst20Quest4_Folgequest = "Kirtonos the Herald"
Inst20Quest4FQuest = "true"
-- No Rewards for this quest

--Quest 5 Alliance
Inst20Quest5 = "5. Kirtonos the Herald"
Inst20Quest5_Level = "60"
Inst20Quest5_Attain = "55"
Inst20Quest5_Aim = "Return to the Scholomance with the Blood of Innocents. Find the porch and place the Blood of Innocents in the brazier. Kirtonos will come to feast upon your soul. Fight valiantly, do not give an inch! Destroy Kirtonos and return to Eva Sarkhoff."
Inst20Quest5_Location = "Eva Sarkhoff (Western Plaguelands - Caer Darrow; "..YELLOW.."70,73"..WHITE..")"
Inst20Quest5_Note = "The porch is at "..YELLOW.."[2]"..WHITE.."."
Inst20Quest5_Prequest = "Krastinov's Bag of Horrors"
Inst20Quest5_Folgequest = "The Human, Ras Frostwhisper"
Inst20Quest5FQuest = "true"
--
Inst20Quest5name1 = "Spectral Essence"
Inst20Quest5name2 = "Penelope's Rose"
Inst20Quest5name3 = "Mirah's Song"

--Quest 6 Alliance
Inst20Quest6 = "6. The Lich, Ras Frostwhisper"
Inst20Quest6_Level = "60"
Inst20Quest6_Attain = "57"
Inst20Quest6_Aim = "Find Ras Frostwhisper in the Scholomance. When you have found him, use the Soulbound Keepsake on his undead visage. Should you succeed in reverting him to a mortal, strike him down and recover the Human Head of Ras Frostwhisper. Take the head back to Magistrate Marduke."
Inst20Quest6_Location = "Magistrate Marduke (Western Plaguelands - Caer Darrow; "..YELLOW.."70,73"..WHITE..")"
Inst20Quest6_Note = "You can find Ras Frostwhisper at "..YELLOW.."[7]"..WHITE.."."
Inst20Quest6_Prequest = "The Human, Ras Frostwhisper - > Soulbound Keepsake"
Inst20Quest6_Folgequest = "None"
Inst20Quest6PreQuest = "true"
--
Inst20Quest6name1 = "Darrowshire Strongguard"
Inst20Quest6name2 = "Warblade of Caer Darrow"
Inst20Quest6name3 = "Crown of Caer Darrow"
Inst20Quest6name4 = "Darrowspike"

--Quest 7 Alliance
Inst20Quest7 = "7. Barov Family Fortune"
Inst20Quest7_Level = "60"
Inst20Quest7_Attain = "52"
Inst20Quest7_Aim = "Venture to the Scholomance and recover the Barov family fortune. Four deeds make up this fortune: The Deed to Caer Darrow; The Deed to Brill; The Deed to Tarren Mill; and The Deed to Southshore. Return to Weldon Barov when you have completed this task."
Inst20Quest7_Location = "Weldon Barov (Western Plaguelands - Chillwind Camp; "..YELLOW.."43,83"..WHITE..")"
Inst20Quest7_Note = "You can find The Deed to Caer Darrow at "..YELLOW.."[12]"..WHITE..", The Deed to Brill at "..YELLOW.."[7]"..WHITE..", The Deed to Tarren Mill at "..YELLOW.."[4]"..WHITE.." and The Deed to Southshore at "..YELLOW.."[1]"..WHITE..".\nThe reward listed is for the followup."
Inst20Quest7_Prequest = "None"
Inst20Quest7_Folgequest = "The Last Barov"
--
Inst20Quest7name1 = "Barov Peasant Caller"

--Quest 8 Alliance
Inst20Quest8 = "8. Dawn's Gambit"
Inst20Quest8_Level = "60"
Inst20Quest8_Attain = "57"
Inst20Quest8_Aim = "Place Dawn's Gambit in the Viewing Room of the Scholomance. Defeat Vectus, then return to Betina Bigglezink."
Inst20Quest8_Location = "Betina Bigglezink (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."75.6, 53.6"..WHITE..")"
Inst20Quest8_Note = "Broodling Essence begins at Tinkee Steamboil (Burning Steppes - Flame Crest; "..YELLOW.."65,23"..WHITE.."). The Viewing Room is at "..YELLOW.."[6]"..WHITE.."."
Inst20Quest8_Prequest = "Broodling Essence - > Betina Bigglezink"
Inst20Quest8_Folgequest = "None"
Inst20Quest8PreQuest = "true"
--
Inst20Quest8name1 = "Windreaper"
Inst20Quest8name2 = "Dancing Sliver"

--Quest 9 Alliance
Inst20Quest9 = "9. Imp Delivery "..warlock.."(Warlock)"
Inst20Quest9_Level = "60"
Inst20Quest9_Attain = "60"
Inst20Quest9_Aim = "Bring the Imp in a Yesr to the alchemy lab in the Scholomance. After the parchment is created, return the jar to Gorzeeki Wildeyes."
Inst20Quest9_Location = "Gorzeeki Wildeyes (Burning Steppes; "..YELLOW.."12,31"..WHITE..")"
Inst20Quest9_Note = ""..warlock.."WARLOCK"..WHITE.." ONLY! You find the alchemy lab at "..YELLOW.."[7]"..WHITE.."."
Inst20Quest9_Prequest = "Mor'zul Bloodbringer - > Xorothian Stardust"
Inst20Quest9_Folgequest = "Dreadsteed of Xoroth ("..YELLOW.."Dire Maul West"..WHITE..")"
Inst20Quest9PreQuest = "true"
-- No Rewards for this quest

--Quest 10 Alliance
Inst20Quest10 = "10. The Left Piece of Lord Valthalak's Amulet"
Inst20Quest10_Level = "60"
Inst20Quest10_Attain = "58"
Inst20Quest10_Aim = "Use the Brazier of Beckoning to summon forth the spirit of Kormok and slay him. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning."
Inst20Quest10_Location = "Bodley (Blackrock Mountain; "..YELLOW.."[D] on Entrance Map"..WHITE..")"
Inst20Quest10_Note = "Extra-Dimensional Ghost Revealer is needed to see Bodley. You get it from the 'In Search of Anthion' quest.\n\nKormok is summoned at "..YELLOW.."[7]"..WHITE.."."
Inst20Quest10_Prequest = "Components of Importance"
Inst20Quest10_Folgequest = "I See Alcaz Island In Your Future..."
Inst20Quest10PreQuest = "true"
-- No Rewards for this quest

--Quest 11 Alliance
Inst20Quest11 = "11. The Right Piece of Lord Valthalak's Amulet"
Inst20Quest11_Level = "60"
Inst20Quest11_Attain = "58"
Inst20Quest11_Aim = "Use the Brazier of Beckoning to summon forth the spirit of Kormok and slay him. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning."
Inst20Quest11_Location = "Bodley (Blackrock Mountain; "..YELLOW.."[D] on Entrance Map"..WHITE..")"
Inst20Quest11_Note = "Extra-Dimensional Ghost Revealer is needed to see Bodley. You get it from the 'In Search of Anthion' quest.\n\nKormok is summoned at "..YELLOW.."[7]"..WHITE.."."
Inst20Quest11_Prequest = "More Components of Importance"
Inst20Quest11_Folgequest = "Final Preparations ("..YELLOW.."Upper Blackrock Spire"..WHITE..")"
Inst20Quest11PreQuest = "true"
-- No Rewards for this quest


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst20Quest1_HORDE = Inst20Quest1
Inst20Quest1_HORDE_Level = Inst20Quest1_Level
Inst20Quest1_HORDE_Attain = Inst20Quest1_Attain
Inst20Quest1_HORDE_Aim = Inst20Quest1_Aim
Inst20Quest1_HORDE_Location = Inst20Quest1_Location
Inst20Quest1_HORDE_Note = Inst20Quest1_Note
Inst20Quest1_HORDE_Prequest = Inst20Quest1_Prequest
Inst20Quest1_HORDE_Folgequest = Inst20Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst20Quest2_HORDE = Inst20Quest2
Inst20Quest2_HORDE_Level = Inst20Quest2_Level
Inst20Quest2_HORDE_Attain = Inst20Quest2_Attain
Inst20Quest2_HORDE_Aim = Inst20Quest2_Aim
Inst20Quest2_HORDE_Location = Inst20Quest2_Location
Inst20Quest2_HORDE_Note = Inst20Quest2_Note
Inst20Quest2_HORDE_Prequest = Inst20Quest2_Prequest
Inst20Quest2_HORDE_Folgequest = Inst20Quest2_Folgequest
Inst20Quest2FQuest_HORDE = Inst20Quest2FQuest
-- No Rewards for this quest

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst20Quest3_HORDE = Inst20Quest3
Inst20Quest3_HORDE_Level = Inst20Quest3_Level
Inst20Quest3_HORDE_Attain = Inst20Quest3_Attain
Inst20Quest3_HORDE_Aim = Inst20Quest3_Aim
Inst20Quest3_HORDE_Location = Inst20Quest3_Location
Inst20Quest3_HORDE_Note = Inst20Quest3_Note
Inst20Quest3_HORDE_Prequest = Inst20Quest3_Prequest
Inst20Quest3_HORDE_Folgequest = Inst20Quest3_Folgequest
-- No Rewards for this quest

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst20Quest4_HORDE = Inst20Quest4
Inst20Quest4_HORDE_Level = Inst20Quest4_Level
Inst20Quest4_HORDE_Attain = Inst20Quest4_Attain
Inst20Quest4_HORDE_Aim = Inst20Quest4_Aim
Inst20Quest4_HORDE_Location = Inst20Quest4_Location
Inst20Quest4_HORDE_Note = Inst20Quest4_Note
Inst20Quest4_HORDE_Prequest = Inst20Quest4_Prequest
Inst20Quest4_HORDE_Folgequest = Inst20Quest4_Folgequest
Inst20Quest4FQuest_HORDE = Inst20Quest4FQuest
-- No Rewards for this quest

--Quest 5 Horde  (same as Quest 5 Alliance)
Inst20Quest5_HORDE = Inst20Quest5
Inst20Quest5_HORDE_Level = Inst20Quest5_Level
Inst20Quest5_HORDE_Attain = Inst20Quest5_Attain
Inst20Quest5_HORDE_Aim = Inst20Quest5_Aim
Inst20Quest5_HORDE_Location = Inst20Quest5_Location
Inst20Quest5_HORDE_Note = Inst20Quest5_Note
Inst20Quest5_HORDE_Prequest = Inst20Quest5_Prequest
Inst20Quest5_HORDE_Folgequest = Inst20Quest5_Folgequest
Inst20Quest5FQuest_HORDE = Inst20Quest5FQuest
--
Inst20Quest5name1_HORDE = Inst20Quest5name1
Inst20Quest5name2_HORDE = Inst20Quest5name2
Inst20Quest5name3_HORDE = Inst20Quest5name3

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst20Quest6_HORDE = Inst20Quest6
Inst20Quest6_HORDE_Level = Inst20Quest6_Level
Inst20Quest6_HORDE_Attain = Inst20Quest6_Attain
Inst20Quest6_HORDE_Aim = Inst20Quest6_Aim
Inst20Quest6_HORDE_Location = Inst20Quest6_Location
Inst20Quest6_HORDE_Note = Inst20Quest6_Note
Inst20Quest6_HORDE_Prequest = Inst20Quest6_Prequest
Inst20Quest6_HORDE_Folgequest = Inst20Quest6_Folgequest
Inst20Quest6PreQuest_HORDE = Inst20Quest6PreQuest
--
Inst20Quest6name1_HORDE = Inst20Quest6name1
Inst20Quest6name2_HORDE = Inst20Quest6name2
Inst20Quest6name3_HORDE = Inst20Quest6name3
Inst20Quest6name4_HORDE = Inst20Quest6name4

--Quest 7 Horde
Inst20Quest7_HORDE = "7. Barov Family Fortune"
Inst20Quest7_HORDE_Level = "60"
Inst20Quest7_HORDE_Attain = "52"
Inst20Quest7_HORDE_Aim = "Venture to the Scholomance and recover the Barov family fortune. Four deeds make up this fortune: The Deed to Caer Darrow; The Deed to Brill; The Deed to Tarren Mill; and The Deed to Southshore. Return to Alexi Barov when you have completed this task."
Inst20Quest7_HORDE_Location = "Alexi Barov (Tirisfal Glades - The Bulwark; "..YELLOW.."80,73"..WHITE..")"
Inst20Quest7_HORDE_Note = "You can find The Deed to Caer Darrow at "..YELLOW.."[12]"..WHITE..", The Deed to Brill at "..YELLOW.."[7]"..WHITE..", The Deed to Tarren Mill at "..YELLOW.."[4]"..WHITE.." and The Deed to Southshore at "..YELLOW.."[1]"..WHITE..".\nThe reward listed is for the followup."
Inst20Quest7_HORDE_Prequest = "None"
Inst20Quest7_HORDE_Folgequest = "The Last Barov"
--
Inst20Quest7name1_HORDE = "Barov Peasant Caller"

--Quest 8 Horde  (same as Quest 8 Alliance)
Inst20Quest8_HORDE = Inst20Quest8
Inst20Quest8_HORDE_Level = Inst20Quest8_Level
Inst20Quest8_HORDE_Attain = Inst20Quest8_Attain
Inst20Quest8_HORDE_Aim = Inst20Quest8_Aim
Inst20Quest8_HORDE_Location = Inst20Quest8_Location
Inst20Quest8_HORDE_Note = Inst20Quest8_Note
Inst20Quest8_HORDE_Prequest = Inst20Quest8_Prequest
Inst20Quest8_HORDE_Folgequest = Inst20Quest8_Folgequest
Inst20Quest8PreQuest_HORDE = Inst20Quest8PreQuest
--
Inst20Quest8name1_HORDE = Inst20Quest8name1
Inst20Quest8name2_HORDE = Inst20Quest8name2

--Quest 9 Horde  (same as Quest 9 Alliance)
Inst20Quest9_HORDE = Inst20Quest9
Inst20Quest9_HORDE_Level = Inst20Quest9_Level
Inst20Quest9_HORDE_Attain = Inst20Quest9_Attain
Inst20Quest9_HORDE_Aim = Inst20Quest9_Aim
Inst20Quest9_HORDE_Location = Inst20Quest9_Location
Inst20Quest9_HORDE_Note = Inst20Quest9_Note
Inst20Quest9_HORDE_Prequest = Inst20Quest9_Prequest
Inst20Quest9_HORDE_Folgequest = Inst20Quest9_Folgequest
Inst20Quest9PreQuest_HORDE = Inst20Quest9PreQuest
-- No Rewards for this quest

--Quest 10 Horde  (same as Quest 10 Alliance)
Inst20Quest10_HORDE = Inst20Quest10
Inst20Quest10_HORDE_Level = Inst20Quest10_Level
Inst20Quest10_HORDE_Attain = Inst20Quest10_Attain
Inst20Quest10_HORDE_Aim = Inst20Quest10_Aim
Inst20Quest10_HORDE_Location = Inst20Quest10_Location
Inst20Quest10_HORDE_Note = Inst20Quest10_Note
Inst20Quest10_HORDE_Prequest = Inst20Quest10_Prequest
Inst20Quest10_HORDE_Folgequest = Inst20Quest10_Folgequest
Inst20Quest10PreQuest_HORDE = Inst20Quest10PreQuest
-- No Rewards for this quest

--Quest 11 Horde
Inst20Quest11_HORDE = "11. The Darkreaver Menace "..shaman.."(Shaman)"
Inst20Quest11_HORDE_Level = "60"
Inst20Quest11_HORDE_Attain = "58"
Inst20Quest11_HORDE_Aim = "Use the Divination Scryer in the heart of the Great Ossuary's basement in the Scholomance.\n\nBring Darkreaver's Head to Sagorne Creststrider in the Valley of Wisdom, Orgrimmar."
Inst20Quest11_HORDE_Location = "Sagorne Creststrider (Orgrimmar - Valley of Wisdom; "..YELLOW.."38.6, 36.2"..WHITE..")"
Inst20Quest11_HORDE_Note = ""..shaman.."SHAMAN"..WHITE.." ONLY! The prequest is obtained from the same NPC.\n\nDeath Knight Darkreaver is summoned at "..YELLOW.."[5]"..WHITE.."."
Inst20Quest11_HORDE_Prequest = "Material Assistance"
Inst20Quest11_HORDE_Folgequest = "None"
Inst20Quest11PreQuest_HORDE = "true"
--
Inst20Quest11name1_HORDE = "Skyfury Helm"

--Quest 12 Horde  (same as Quest 11 Alliance)
Inst20Quest12_HORDE = "12. The Right Piece of Lord Valthalak's Amulet"
Inst20Quest12_HORDE_Level = Inst20Quest11_Level
Inst20Quest12_HORDE_Attain = Inst20Quest11_Attain
Inst20Quest12_HORDE_Aim = Inst20Quest11_Aim
Inst20Quest12_HORDE_Location = Inst20Quest11_Location
Inst20Quest12_HORDE_Note = Inst20Quest11_Note
Inst20Quest12_HORDE_Prequest = Inst20Quest11_Prequest
Inst20Quest12_HORDE_Folgequest = Inst20Quest11_Folgequest
Inst20Quest12PreQuest_HORDE = Inst20Quest11PreQuest
-- No Rewards for this quest



--------------- INST21 - Shadowfang Keep (SFK) ---------------

Inst21Story = "During the Third War, the wizards of the Kirin Tor battled against the undead armies of the Scourge. When the wizards of Dalaran died in battle, they would rise soon after - adding their former might to the growing Scourge. Frustrated by their lack of progress (and against the advice of his peers) the Archmage, Arugal elected to summon extra-dimensional entities to bolster Dalaran's diminishing ranks. Arugal's summoning brought the ravenous worgen into the world of Azeroth. The feral wolf-men slaughtered not only the Scourge, but quickly turned on the wizards themselves. The worgen laid siege to the keep of the noble, Baron Silverlaine. Situated above the tiny hamlet of Pyrewood, the keep quickly fell into shadow and ruin. Driven mad with guilt, Arugal adopted the worgen as his children and retreated to the newly dubbed 'Shadowfang Keep'. It's said he still resides there, protected by his massive pet, Fenrus - and haunted by the vengeful ghost of Baron Silverlaine."
Inst21Caption = "Shadowfang Keep"
Inst21QAA = "3 Quests"
Inst21QAH = "5 Quests"

--Quest 1 Alliance
Inst21Quest1 = "1. The Test of Righteousness "..paladin.."(Paladin)"
Inst21Quest1_Level = "22"
Inst21Quest1_Attain = "20"
Inst21Quest1_Aim = "Using Jordan's Weapon Notes, find some Whitestone Oak Lumber, Bailor's Refined Ore Shipment, Jordan's Smithing Hammer, and a Kor Gem, and return them to Jordan Stilwell in Ironforge."
Inst21Quest1_Location = "Jordan Stilwell (Dun Morogh - Ironforge Entrance; "..YELLOW.."52,36"..WHITE..")"
Inst21Quest1_Note = ""..paladin.."PALADIN "..WHITE.."ONLY!\n\n1. To see the note click on "..YELLOW.."[The Test of Righteousness Information]"..WHITE.."."
Inst21Quest1_Page = {2, ""..paladin.."PALADIN "..WHITE.."ONLY!\n\n1. You get the  Whitestone Oak Lumber from Goblin Woodcarvers in "..YELLOW.."[Deadmines]"..WHITE.." near "..YELLOW.."[3]"..WHITE..".\n\n2. To get the Bailor's Refined Ore Shipment you must talk to Bailor Stonehand (Loch Modan - Thelsamar; "..YELLOW.."35,44"..WHITE.."). He gives you the 'Bailor's Ore Shipment' quest. You find the Jordan's Ore Shipment behind a tree at "..YELLOW.."71,21"..WHITE.."\n\n3. You get Jordan's Smithing Hammer in "..YELLOW.."[Shadowfang Keep]"..WHITE.." at "..YELLOW.."[3]"..WHITE..".\n\n4. To get a Kor Gem you have to go to Thundris Windweaver (Darkshore - Auberdine; "..YELLOW.."37,40"..WHITE..") and do the 'Seeking the Kor Gem' quest. For this quest, you must kill Blackfathom oracles or priestesses before "..YELLOW.."[Blackfathom Deeps]"..WHITE..". They drop a corrupted Kor Gem. Thundris Windweaver will clean it for you.", };
Inst21Quest1_Prequest = "The Tome of Valor -> The Test of Righteousness"
Inst21Quest1_Folgequest = "The Test of Righteousness"
Inst21Quest1PreQuest = "true"
--
Inst21Quest1name1 = "Verigan's Fist"

--Quest 2 Alliance
Inst21Quest2 = "2. The Orb of Soran'ruk "..warlock.."(Warlock)"
Inst21Quest2_Level = "25"
Inst21Quest2_Attain = "20"
Inst21Quest2_Aim = "Find 3 Soran'ruk Fragments and 1 Large Soran'ruk Fragment and return them to Doan Karhan in the Barrens."
Inst21Quest2_Location = "Doan Karhan (Barrens; "..YELLOW.."49,57"..WHITE..")"
Inst21Quest2_Note = ""..warlock.."WARLOCK"..WHITE.." ONLY! You get the 3 Soran'ruk Fragments from Twilight Accolytes in "..YELLOW.."[Blackfathom Deeps]"..WHITE..". You get the Large Soran'ruk Fragment in "..YELLOW.."[Shadowfang Keep]"..WHITE.." from Shadowfang Darksouls."
Inst21Quest2_Prequest = "None"
Inst21Quest2_Folgequest = "None"
--
Inst21Quest2name1 = "Orb of Soran'ruk"
Inst21Quest2name2 = "Staff of Soran'ruk"

--Quest 3 Alliance
Inst21Quest3 = "3. Something is in the Air (and it Ain't Love)"
Inst21Quest3_Level = "80"
Inst21Quest3_Attain = "75"
Inst21Quest3_Aim = "Bring the Faded Lovely Greeting Card to Inspector Snip Snagglebolt in Stormwind."
Inst21Quest3_Location = "Drops from Apothecary Hummel in Shadowfang Keep once per character."
Inst21Quest3_Note = ""..PINK.."This quest is for the Love is in the Air seasonal event."..WHITE.."\n\nInspector Snip Snagglebolt is at (Stormwind City - Trade District; "..YELLOW.."61.7, 75.5"..WHITE..")."
Inst21Quest3_Prequest = "None"
Inst21Quest3_Folgequest = "None"
-- No Rewards for this quest



--Quest 1 Horde
Inst21Quest1_HORDE = "1. Deathstalkers in Shadowfang"
Inst21Quest1_HORDE_Level = "25"
Inst21Quest1_HORDE_Attain = "18"
Inst21Quest1_HORDE_Aim = "Find the Deathstalker Adamant and Deathstalker Vincent."
Inst21Quest1_HORDE_Location = "High Executor Hadrec (Silverpine Forest - The Sepulcher; "..YELLOW.."43,40"..WHITE..")"
Inst21Quest1_HORDE_Note = "You find Deathstalker Adamant at "..YELLOW.."[1]"..WHITE..". Deathstalker Vincent is on the right side when you go into the courtyard at "..YELLOW.."[3]"..WHITE.."."
Inst21Quest1_HORDE_Prequest = "None"
Inst21Quest1_HORDE_Folgequest = "None"
--
Inst21Quest1name1_HORDE = "Ghostly Mantle"

--Quest 2 Horde
Inst21Quest2_HORDE = "2. The Book of Ur"
Inst21Quest2_HORDE_Level = "26"
Inst21Quest2_HORDE_Attain = "16"
Inst21Quest2_HORDE_Aim = "Bring the Book of Ur to Keeper Bel'dugur at the Apothecarium in the Undercity."
Inst21Quest2_HORDE_Location = "Keeper Bel'dugur (Undercity - The Apothecarium; "..YELLOW.."53,54"..WHITE..")"
Inst21Quest2_HORDE_Note = "You find the book at "..YELLOW.."[11]"..WHITE.." on the left side when you enter the room."
Inst21Quest2_HORDE_Prequest = "None"
Inst21Quest2_HORDE_Folgequest = "None"
--
Inst21Quest2name1_HORDE = "Grizzled Boots"
Inst21Quest2name2_HORDE = "Steel-clasped Bracers"

--Quest 3 Horde
Inst21Quest3_HORDE = "3. Arugal Must Die"
Inst21Quest3_HORDE_Level = "27"
Inst21Quest3_HORDE_Attain = "18"
Inst21Quest3_HORDE_Aim = "Kill Arugal and bring his head to Dalar Dawnweaver at the Sepulcher."
Inst21Quest3_HORDE_Location = "Dalar Dawnweaver (Silverpine Forest - The Sepulcher; "..YELLOW.."44,39"..WHITE..")"
Inst21Quest3_HORDE_Note = "You find Archmage Arugal at "..YELLOW.."[13]"..WHITE.."."
Inst21Quest3_HORDE_Prequest = "None"
Inst21Quest3_HORDE_Folgequest = "None"
--
Inst21Quest3name1_HORDE = "Seal of Sylvanas"

--Quest 4 Horde  (same as Quest 2 Alliance)
Inst21Quest4_HORDE = "4. The Orb of Soran'ruk "..warlock.."(Warlock)"
Inst21Quest4_HORDE_Level = Inst21Quest2_Level
Inst21Quest4_HORDE_Attain = Inst21Quest2_Attain
Inst21Quest4_HORDE_Aim = Inst21Quest2_Aim
Inst21Quest4_HORDE_Location = Inst21Quest2_Location
Inst21Quest4_HORDE_Note = Inst21Quest2_Note
Inst21Quest4_HORDE_Prequest = Inst21Quest2_Prequest
Inst21Quest4_HORDE_Folgequest = Inst21Quest2_Folgequest
--
Inst21Quest4name1_HORDE = Inst21Quest2name1
Inst21Quest4name2_HORDE = Inst21Quest2name1

Inst21Quest5_HORDE = "5. Materials of the Light "..paladin.."(Paladin)"
Inst21Quest5_HORDE_Level = Inst3Quest6_HORDE_Level
Inst21Quest5_HORDE_Attain = Inst3Quest6_HORDE_Attain
Inst21Quest5_HORDE_Aim = Inst3Quest6_HORDE_Aim
Inst21Quest5_HORDE_Location = Inst3Quest6_HORDE_Location
Inst21Quest5_HORDE_Note = Inst3Quest6_HORDE_Note
Inst21Quest5_HORDE_Page = Inst3Quest6_HORDE_Page
Inst21Quest5_HORDE_Prequest = Inst3Quest6_HORDE_Prequest
Inst21Quest5_HORDE_Folgequest = Inst3Quest6_HORDE_Folgequest
Inst21Quest5_HORDEPreQuest = "true"
--
Inst21Quest5name1_HORDE = Inst3Quest6name1_HORDE

--Quest 5 Horde
--Inst21Quest5_HORDE = "5. Something is in the Air (and it Ain't Love)"
--Inst21Quest5_HORDE_Level = "80"
--Inst21Quest5_HORDE_Attain = "75"
--Inst21Quest5_HORDE_Aim = "Bring the Faded Lovely Greeting Card to Detective Snap Snagglebolt in Orgrimmar."
--Inst21Quest5_HORDE_Location = "Drops from Apothecary Hummel in Shadowfang Keep once per character."
--Inst21Quest5_HORDE_Note = ""..PINK.."This quest is for the Love is in the Air seasonal event."..WHITE.."\n\nDetective Snap Snagglebol is at (Orgrimmar - Valley of Strength; "..YELLOW.."50.8, 65.6"..WHITE..")."
--Inst21Quest5_HORDE_Prequest = "None"
--Inst21Quest5_HORDE_Folgequest = "None"
-- No Rewards for this quest



--------------- INST22 - Stratholme (Strat) ---------------

Inst22Story = "Once the jewel of northern Lordaeron, the city of Stratholme is where Prince Arthas turned against his mentor, Uther Lightbringer, and slaughtered hundreds of his own subjects who were believed to have contracted the dreaded plague of undeath. Arthas' downward spiral and ultimate surrender to the Lich King soon followed. The broken city is now inhabited by the undead Scourge - led by the powerful lich, Kel'thuzad. A contingent of Scarlet Crusaders, led by Grand Crusader Dathrohan, also holds a portion of the ravaged city. The two sides are locked in constant, violent combat. Those adventurers brave (or foolish) enough to enter Stratholme will be forced to contend with both factions before long. It is said that the city is guarded by three massive watchtowers, as well as powerful necromancers, banshees and abominations. There have also been reports of a malefic Death Knight riding atop an unholy steed - dispensing indiscriminate wrath on all those who venture within the realm of the Scourge."
Inst22Caption = "Stratholme"
Inst22QAA = "18 Quests"
Inst22QAH = "20 Quests"

--Quest 1 Alliance
Inst22Quest1 = "1. The Flesh Does Not Lie"
Inst22Quest1_Level = "60"
Inst22Quest1_Attain = "55"
Inst22Quest1_Aim = "Recover 10 Plagued Flesh Samples from Stratholme and return them to Betina Bigglezink. You suspect that any creature in Stratholme would have said flesh sample."
Inst22Quest1_Location = "Betina Bigglezink (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."75.6, 53.6"..WHITE..")"
Inst22Quest1_Note = "Most mobs in Stratholme can drop the Plagued Flesh Samples, but the drop rate seems low."
Inst22Quest1_Prequest = "None"
Inst22Quest1_Folgequest = "The Active Agent"
-- No Rewards for this quest

--Quest 2 Alliance
Inst22Quest2 = "2. The Active Agent"
Inst22Quest2_Level = "60"
Inst22Quest2_Attain = "55"
Inst22Quest2_Aim = "Travel to Stratholme and search the ziggurats. Find and return new Scourge Data to Betina Bigglezink."
Inst22Quest2_Location = "Betina Bigglezink (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."75.6, 53.6"..WHITE..")"
Inst22Quest2_Note = "The Scourge Data is in one of the 3 Towers, you find near "..YELLOW.."[15]"..WHITE..", "..YELLOW.."[16]"..WHITE.." and "..YELLOW.."[17]"..WHITE.."."
Inst22Quest2_Prequest = "The Flesh Does Not Lie"
Inst22Quest2_Folgequest = "None"
Inst22Quest2FQuest = "true"
--
Inst22Quest2name1 = "Seal of the Dawn"
Inst22Quest2name2 = "Rune of the Dawn"

--Quest 3 Alliance
Inst22Quest3 = "3. Houses of the Holy"
Inst22Quest3_Level = "60"
Inst22Quest3_Attain = "55"
Inst22Quest3_Aim = "Travel to Stratholme, in the north. Search the supply crates that litter the city and recover 5 Stratholme Holy Water. Return to Leonid Barthalomew the Revered when you have collected enough of the blessed fluid."
Inst22Quest3_Location = "Leonid Barthalomew the Revered (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."75.8, 52.0"..WHITE..")"
Inst22Quest3_Note = "You can find the Holy Water in crates everywhere in Stratholme. Some of the crates will spawn bugs that attack you."
Inst22Quest3_Prequest = "None"
Inst22Quest3_Folgequest = "None"
--
Inst22Quest3name1 = "Superior Healing Potion"
Inst22Quest3name2 = "Greater Mana Potion"
Inst22Quest3name3 = "Crown of the Penitent"
Inst22Quest3name4 = "Band of the Penitent"

--Quest 4 Alliance
Inst22Quest4 = "4. The Great Fras Siabi"
Inst22Quest4_Level = "60"
Inst22Quest4_Attain = "55"
Inst22Quest4_Aim = "Find Fras Siabi's smoke shop in Stratholme and recover a box of Siabi's Premium Tobacco. Return to Smokey LaRue when the job is done."
Inst22Quest4_Location = "Smokey LaRue (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."74.8, 52.0"..WHITE..")"
Inst22Quest4_Note = "You find the smoke shop near "..YELLOW.."[1]"..WHITE..". Fras Siabi spawns when you open box."
Inst22Quest4_Prequest = "None"
Inst22Quest4_Folgequest = "None"
--
Inst22Quest4name1 = "Smokey's Lighter"

--Quest 5 Alliance
Inst22Quest5 = "5. The Restless Souls"
Inst22Quest5_Level = "60"
Inst22Quest5_Attain = "55"
Inst22Quest5_Aim = "Use Egan's Blaster on the ghostly and spectral citizens of Stratholme. When the restless souls break free from their ghostly shells, use the blaster again - freedom will be theirs!\nFree 15 Restless Souls and return to Egan."
Inst22Quest5_Location = "Egan (Eastern Plaguelands; "..YELLOW.."11.3, 28.7"..WHITE..")"
Inst22Quest5_Note = "You get the prequest from Caretaker Alen (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."74,58"..WHITE.."). The Spectral Citizens walk through the streets of Stratholme."
Inst22Quest5_Prequest = "The Restless Souls"
Inst22Quest5_Folgequest = "None"
Inst22Quest5PreQuest = "true"
--
Inst22Quest5name1 = "Testament of Hope"

--Quest 6 Alliance
Inst22Quest6 = "6. Of Love and Family"
Inst22Quest6_Level = "60"
Inst22Quest6_Attain = "52"
Inst22Quest6_Aim = "Travel to Stratholme, in the northern part of the Plaguelands. It is in the Scarlet Bastion that you will find the painting 'Of Love and Family,' hidden behind another painting depicting the twin moons of our world.\nReturn the painting to Tirion Fordring."
Inst22Quest6_Location = "Artist Renfray (Western Plaguelands - Caer Darrow; "..YELLOW.."65,75"..WHITE..")"
Inst22Quest6_Note = "You get the prequest from Tirion Fordring (Western Plaguelands; "..YELLOW.."7,43"..WHITE.."). You can find the picture near "..YELLOW.."[10]"..WHITE.."."
Inst22Quest6_Prequest = "Redemption - > Of Love and Family"
Inst22Quest6_Folgequest = "Find Myranda"
Inst22Quest6PreQuest = "true"
-- No Rewards for this quest

--Quest 7 Alliance
Inst22Quest7 = "7. Menethil's Gift"
Inst22Quest7_Level = "60"
Inst22Quest7_Attain = "57"
Inst22Quest7_Aim = "Travel to Stratholme and find Menethil's Gift. Place the Keepsake of Remembrance upon the unholy ground."
Inst22Quest7_Location = "Leonid Barthalomew the Revered (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."75.8, 52.0"..WHITE..")"
Inst22Quest7_Note = "You get the prequest from Magistrate Marduke (Western Plaguelands - Caer Darrow; "..YELLOW.."70,73"..WHITE.."). You find the sign near "..YELLOW.."[19]"..WHITE..". See also: "..YELLOW.."[The Lich, Ras Frostwhisper]"..WHITE.." in Scholomance."
Inst22Quest7_Prequest = "The Human, Ras Frostwhisper - > The Dying, Ras Frostwhisper"
Inst22Quest7_Folgequest = "Menethil's Gift"
Inst22Quest7PreQuest = "true"
-- No Rewards for this quest

--Quest 8 Alliance
Inst22Quest8 = "8. Aurius' Reckoning"
Inst22Quest8_Level = "60"
Inst22Quest8_Attain = "56"
Inst22Quest8_Aim = "Kill the Baron."
Inst22Quest8_Location = "Aurius (Stratholme; "..YELLOW.."[13]"..WHITE..")"
Inst22Quest8_Note = "You get the Medallion from a chest (Malor's Strongbox "..YELLOW.."[7]"..WHITE..") in the first chamber of the bastion (before the ways split). It is not bound so you can trade it from another player or get it in a separate run.\n\nAfter giving Aurius the Medallion he'll help you when you fight Baron Rivendare "..YELLOW.."[19]"..WHITE..". After the Baron dies, Aurius will also die. Talk to his corpse to receive the reward."
Inst22Quest8_Prequest = "None"
Inst22Quest8_Folgequest = "None"
--
Inst22Quest8name1 = "Will of the Martyr"
Inst22Quest8name2 = "Blood of the Martyr"

--Quest 9 Alliance
Inst22Quest9 = "9. The Archivist"
Inst22Quest9_Level = "60"
Inst22Quest9_Attain = "55"
Inst22Quest9_Aim = "Travel to Stratholme and find Archivist Galford of the Scarlet Crusade. Destroy him and burn down the Scarlet Archive."
Inst22Quest9_Location = "Duke Nicholas Zverenhoff (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."76,52"..WHITE..")"
Inst22Quest9_Note = "You can find the Archive and the Achivist at "..YELLOW.."[10]"..WHITE.."."
Inst22Quest9_Prequest = "None"
Inst22Quest9_Folgequest = "The Truth Comes Crashing Down"
-- No Rewards for this quest

--Quest 10 Alliance
Inst22Quest10 = "10. The Truth Comes Crashing Down"
Inst22Quest10_Level = "60"
Inst22Quest10_Attain = "55"
Inst22Quest10_Aim = "Take the Head of Balnazzar to Duke Nicholas Zverenhoff in the Eastern Plaguelands."
Inst22Quest10_Location = "Balnazzar (Stratholme; "..YELLOW.."[11]"..WHITE..")"
Inst22Quest10_Note = "You find Duke Nicholas Zverenhoff in the Eastern Plaguelands - Light's Hope Chapel ("..YELLOW.."76,52"..WHITE..")."
Inst22Quest10_Prequest = "The Archivist"
Inst22Quest10_Folgequest = "Above and Beyond"
Inst22Quest10FQuest = "true"
-- No Rewards for this quest

--Quest 11 Alliance
Inst22Quest11 = "11. Above and Beyond"
Inst22Quest11_Level = "60"
Inst22Quest11_Attain = "55"
Inst22Quest11_Aim = "Venture to Stratholme and destroy Baron Rivendare. Take his head and return to Duke Nicholas Zverenhoff."
Inst22Quest11_Location = "Duke Nicholas Zverenhoff (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."76,52"..WHITE..")"
Inst22Quest11_Note = "You can find the Baron at "..YELLOW.."[19]"..WHITE..".\n\nThe rewards listed are for the followup."
Inst22Quest11_Prequest = "The Truth Comes Crashing Down"
Inst22Quest11_Folgequest = "Lord Maxwell Tyrosus -> The Argent Hold"
Inst22Quest11FQuest = "true"
--
Inst22Quest11name1 = "Argent Defender"
Inst22Quest11name2 = "Argent Crusader"
Inst22Quest11name3 = "Argent Avenger"

--Quest 12 Alliance
Inst22Quest12 = "12. Dead Man's Plea"
Inst22Quest12_Level = "60"
Inst22Quest12_Attain = "58"
Inst22Quest12_Aim = "Go into Stratholme and rescue Ysida Harmon from Baron Rivendare."
Inst22Quest12_Location = "Anthion Harmon (Eastern Plaguelands - Stratholme)"
Inst22Quest12_Note = "Anthion stands just outside the Stratholme portal. You need the Extra-Dimensional Ghost Revealer to see him. It comes from the pre-quest. The questline starts with Just Compensation. Deliana in Ironforge ("..YELLOW.."43,52"..WHITE..") for Alliance, Mokvar in Orgrimmar ("..YELLOW.."38,37"..WHITE..") for Horde.\nThis is the infamous '45 minute' Baron run."
Inst22Quest12_Prequest = "In Search of Anthion"
Inst22Quest12_Folgequest = "Proof of Life"
Inst22Quest12PreQuest = "true"
-- No Rewards for this quest

--Quest 13 Alliance
Inst22Quest13 = "13. The Left Piece of Lord Valthalak's Amulet"
Inst22Quest13_Level = "60"
Inst22Quest13_Attain = "58"
Inst22Quest13_Aim = "Use the Brazier of Beckoning to summon forth Jarien and Sothos and slay them. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning."
Inst22Quest13_Location = "Bodley (Blackrock Mountain; "..YELLOW.."[D] on Entrance Map"..WHITE..")"
Inst22Quest13_Note = "Extra-Dimensional Ghost Revealer is needed to see Bodley. You get it from the 'In Search of Anthion' quest.\n\nJarien and Sothos are summoned at "..YELLOW.."[11]"..WHITE.."."
Inst22Quest13_Prequest = "Components of Importance"
Inst22Quest13_Folgequest = "I See Alcaz Island In Your Future..."
Inst22Quest13PreQuest = "true"
-- No Rewards for this quest

--Quest 14 Alliance
Inst22Quest14 = "14. The Right Piece of Lord Valthalak's Amulet"
Inst22Quest14_Level = "60"
Inst22Quest14_Attain = "58"
Inst22Quest14_Aim = "Use the Brazier of Beckoning to summon forth Jarien and Sothos and slay them. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning."
Inst22Quest14_Location = "Bodley (Blackrock Mountain; "..YELLOW.."[D] on Entrance Map"..WHITE..")"
Inst22Quest14_Note = "Extra-Dimensional Ghost Revealer is needed to see Bodley. You get it from the 'In Search of Anthion' quest.\n\nJarien and Sothos are summoned at "..YELLOW.."[11]"..WHITE.."."
Inst22Quest14_Prequest = "More Components of Importance"
Inst22Quest14_Folgequest = "Final Preparations ("..YELLOW.."Upper Blackrock Spire"..WHITE..")"
Inst22Quest14PreQuest = "true"
-- No Rewards for this quest

--Quest 15 Alliance
Inst22Quest15 = "15. Atiesh, Greatstaff of the Guardian"
Inst22Quest15_Level = "60"
Inst22Quest15_Attain = "60"
Inst22Quest15_Aim = "Anachronos at the Caverns of Time in Tanaris wants you to take Atiesh, Greatstaff of the Guardian to Stratholme and use it on Consecrated Earth. Defeat the entity that is exorcised from the staff and return to him."
Inst22Quest15_Location = "Anachronos (Tanaris - Caverns of Time; "..YELLOW.."65,49"..WHITE..")"
Inst22Quest15_Note = "Atiesh is summoned at "..YELLOW.."[2]"..WHITE..".\n\nAs of the Wrath of the Lich King expansion, this quest can no longer be obtained. Only those on the last step of the quest, who have the quest item to summon Atiesh can complete it."
Inst22Quest15_Prequest = "Yes"
Inst22Quest15_Folgequest = "None"
Inst22Quest15PreQuest = "true"
--
Inst22Quest15name1 = "Atiesh, Greatstaff of the Guardian"
Inst22Quest15name2 = "Atiesh, Greatstaff of the Guardian"
Inst22Quest15name3 = "Atiesh, Greatstaff of the Guardian"
Inst22Quest15name4 = "Atiesh, Greatstaff of the Guardian"

--Quest 16 Alliance
Inst22Quest16 = "16. Corruption (Blacksmith)"
Inst22Quest16_Level = "60"
Inst22Quest16_Attain = "50"
Inst22Quest16_Aim = "Find the Black Guard Swordsmith in Stratholme and destroy him. Recover the Insignia of the Black Guard and return to Seril Scourgebane."
Inst22Quest16_Location = "Seril Scourgebane (Winterspring - Everlook; "..YELLOW.."61,37"..WHITE..")"
Inst22Quest16_Note = "The Black Guard Swordsmith is summoned near "..YELLOW.."[15]"..WHITE.."."
Inst22Quest16_Prequest = "None"
Inst22Quest16_Folgequest = "None"
--
Inst22Quest16name1 = "Plans: Blazing Rapier"

--Quest 17 Alliance
Inst22Quest17 = "17. Sweet Serenity (Blacksmith)"
Inst22Quest17_Level = "60"
Inst22Quest17_Attain = "50"
Inst22Quest17_Aim = "Travel to Stratholme and kill the Crimson Hammersmith. Recover the Crimson Hammersmith's Apron and return to Lilith."
Inst22Quest17_Location = "Lilith the Lithe (Winterspring - Everlook; "..YELLOW.."61,37"..WHITE..")"
Inst22Quest17_Note = "The Crimson Hammersmith is summoned at "..YELLOW.."[8]"..WHITE.."."
Inst22Quest17_Prequest = "None"
Inst22Quest17_Folgequest = "None"
--
Inst22Quest17name1 = "Plans: Enchanted Battlehammer"

--Quest 18 Alliance
Inst22Quest18 = "18. The Balance of Light and Shadow "..WHITE.."(Priest)"
Inst22Quest18_Level = "60"
Inst22Quest18_Attain = "60"
Inst22Quest18_Aim = "Save 50 Peasants before 15 are slain. Speak with Eris Havenfire should you accomplish this task."
Inst22Quest18_Location = "Eris Havenfire (Eastern Plaguelands; "..YELLOW.."17.6, 14.0"..WHITE..")"
Inst22Quest18_Note = "PRIEST ONLY! In order to see Eris Havenfire and get this quest and the prequest, you need the Eye of Divinity (comes from Cache of the Firelord in "..YELLOW.."[Molten Core]"..WHITE..").\n\nThis quest's reward, when combined with Eye of Divinity and The Eye of Shadow (drops from demons in Winterspring or Blasted Lands) form Benediction, an epic priest's staff."
Inst22Quest18_Prequest = "A Warning"
Inst22Quest18_Folgequest = "None"
Inst22Quest18PreQuest = "true"
--
Inst22Quest18name1 = "Splinter of Nordrassil"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst22Quest1_HORDE = Inst22Quest1
Inst22Quest1_HORDE_Level = Inst22Quest1_Level
Inst22Quest1_HORDE_Attain = Inst22Quest1_Attain
Inst22Quest1_HORDE_Aim = Inst22Quest1_Aim
Inst22Quest1_HORDE_Location = Inst22Quest1_Location
Inst22Quest1_HORDE_Note = Inst22Quest1_Note
Inst22Quest1_HORDE_Prequest = Inst22Quest1_Prequest
Inst22Quest1_HORDE_Folgequest = Inst22Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst22Quest2_HORDE = Inst22Quest2
Inst22Quest2_HORDE_Level = Inst22Quest2_Level
Inst22Quest2_HORDE_Attain = Inst22Quest2_Attain
Inst22Quest2_HORDE_Aim = Inst22Quest2_Aim
Inst22Quest2_HORDE_Location = Inst22Quest2_Location
Inst22Quest2_HORDE_Note = Inst22Quest2_Note
Inst22Quest2_HORDE_Prequest = Inst22Quest2_Prequest
Inst22Quest2_HORDE_Folgequest = Inst22Quest2_Folgequest
Inst22Quest2FQuest_HORDE = Inst22Quest2FQuest
--
Inst22Quest2name1_HORDE = Inst22Quest2name1
Inst22Quest2name2_HORDE = Inst22Quest2name2

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst22Quest3_HORDE = Inst22Quest3
Inst22Quest3_HORDE_Level = Inst22Quest3_Level
Inst22Quest3_HORDE_Attain = Inst22Quest3_Attain
Inst22Quest3_HORDE_Aim = Inst22Quest3_Aim
Inst22Quest3_HORDE_Location = Inst22Quest3_Location
Inst22Quest3_HORDE_Note = Inst22Quest3_Note
Inst22Quest3_HORDE_Prequest = Inst22Quest3_Prequest
Inst22Quest3_HORDE_Folgequest = Inst22Quest3_Folgequest
--
Inst22Quest3name1_HORDE = Inst22Quest3name1
Inst22Quest3name2_HORDE = Inst22Quest3name2
Inst22Quest3name3_HORDE = Inst22Quest3name3
Inst22Quest3name4_HORDE = Inst22Quest3name4

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst22Quest4_HORDE = Inst22Quest4
Inst22Quest4_HORDE_Level = Inst22Quest4_Level
Inst22Quest4_HORDE_Attain = Inst22Quest4_Attain
Inst22Quest4_HORDE_Aim = Inst22Quest4_Aim
Inst22Quest4_HORDE_Location = Inst22Quest4_Location
Inst22Quest4_HORDE_Note = Inst22Quest4_Note
Inst22Quest4_HORDE_Prequest = Inst22Quest4_Prequest
Inst22Quest4_HORDE_Folgequest = Inst22Quest4_Folgequest
--
Inst22Quest4name1_HORDE = Inst22Quest4name1

--Quest 5 Horde  (same as Quest 5 Alliance)
Inst22Quest5_HORDE = Inst22Quest5
Inst22Quest5_HORDE_Level = Inst22Quest5_Level
Inst22Quest5_HORDE_Attain = Inst22Quest5_Attain
Inst22Quest5_HORDE_Aim = Inst22Quest5_Aim
Inst22Quest5_HORDE_Location = Inst22Quest5_Location
Inst22Quest5_HORDE_Note = Inst22Quest5_Note
Inst22Quest5_HORDE_Prequest = Inst22Quest5_Prequest
Inst22Quest5_HORDE_Folgequest = Inst22Quest5_Folgequest
Inst22Quest5PreQuest_HORDE = Inst22Quest5PreQuest
--
Inst22Quest5name1_HORDE = Inst22Quest5name1

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst22Quest6_HORDE = Inst22Quest6
Inst22Quest6_HORDE_Level = Inst22Quest6_Level
Inst22Quest6_HORDE_Attain = Inst22Quest6_Attain
Inst22Quest6_HORDE_Aim = Inst22Quest6_Aim
Inst22Quest6_HORDE_Location = Inst22Quest6_Location
Inst22Quest6_HORDE_Note = Inst22Quest6_Note
Inst22Quest6_HORDE_Prequest = Inst22Quest6_Prequest
Inst22Quest6_HORDE_Folgequest = Inst22Quest6_Folgequest
Inst22Quest6PreQuest_HORDE = Inst22Quest6PreQuest
-- No Rewards for this quest

--Quest 7 Horde  (same as Quest 7 Alliance)
Inst22Quest7_HORDE = Inst22Quest7
Inst22Quest7_HORDE_Level = Inst22Quest7_Level
Inst22Quest7_HORDE_Attain = Inst22Quest7_Attain
Inst22Quest7_HORDE_Aim = Inst22Quest7_Aim
Inst22Quest7_HORDE_Location = Inst22Quest7_Location
Inst22Quest7_HORDE_Note = Inst22Quest7_Note
Inst22Quest7_HORDE_Prequest = Inst22Quest7_Prequest
Inst22Quest7_HORDE_Folgequest = Inst22Quest7_Folgequest
Inst22Quest7PreQuest_HORDE = Inst22Quest7PreQuest
-- No Rewards for this quest

--Quest 8 Horde  (same as Quest 8 Alliance)
Inst22Quest8_HORDE = Inst22Quest8
Inst22Quest8_HORDE_Level = Inst22Quest8_Level
Inst22Quest8_HORDE_Attain = Inst22Quest8_Attain
Inst22Quest8_HORDE_Aim = Inst22Quest8_Aim
Inst22Quest8_HORDE_Location = Inst22Quest8_Location
Inst22Quest8_HORDE_Note = Inst22Quest8_Note
Inst22Quest8_HORDE_Prequest = Inst22Quest8_Prequest
Inst22Quest8_HORDE_Folgequest = Inst22Quest8_Folgequest
--
Inst22Quest8name1_HORDE = Inst22Quest8name1
Inst22Quest8name2_HORDE = Inst22Quest8name2

--Quest 9 Horde  (same as Quest 9 Alliance)
Inst22Quest9_HORDE = Inst22Quest9
Inst22Quest9_HORDE_Level = Inst22Quest9_Level
Inst22Quest9_HORDE_Attain = Inst22Quest9_Attain
Inst22Quest9_HORDE_Aim = Inst22Quest9_Aim
Inst22Quest9_HORDE_Location = Inst22Quest9_Location
Inst22Quest9_HORDE_Note = Inst22Quest9_Note
Inst22Quest9_HORDE_Prequest = Inst22Quest9_Prequest
Inst22Quest9_HORDE_Folgequest = Inst22Quest9_Folgequest
-- No Rewards for this quest

--Quest 10 Horde  (same as Quest 10 Alliance)
Inst22Quest10_HORDE = Inst22Quest10
Inst22Quest10_HORDE_Level = Inst22Quest10_Level
Inst22Quest10_HORDE_Attain = Inst22Quest10_Attain
Inst22Quest10_HORDE_Aim = Inst22Quest10_Aim
Inst22Quest10_HORDE_Location = Inst22Quest10_Location
Inst22Quest10_HORDE_Note = Inst22Quest10_Note
Inst22Quest10_HORDE_Prequest = Inst22Quest10_Prequest
Inst22Quest10_HORDE_Folgequest = Inst22Quest10_Folgequest
Inst22Quest10FQuest_HORDE = Inst22Quest10FQuest
-- No Rewards for this quest

--Quest 11 Horde  (same as Quest 11 Alliance)
Inst22Quest11_HORDE = Inst22Quest11
Inst22Quest11_HORDE_Level = Inst22Quest11_Level
Inst22Quest11_HORDE_Attain = Inst22Quest11_Attain
Inst22Quest11_HORDE_Aim = Inst22Quest11_Aim
Inst22Quest11_HORDE_Location = Inst22Quest11_Location
Inst22Quest11_HORDE_Note = Inst22Quest11_Note
Inst22Quest11_HORDE_Prequest = Inst22Quest11_Prequest
Inst22Quest11_HORDE_Folgequest = Inst22Quest11_Folgequest
Inst22Quest11FQuest_HORDE = Inst22Quest11FQuest
--
Inst22Quest11name1_HORDE = Inst22Quest11name1
Inst22Quest11name2_HORDE = Inst22Quest11name2
Inst22Quest11name3_HORDE = Inst22Quest11name3

--Quest 12 Horde  (same as Quest 12 Alliance)
Inst22Quest12_HORDE = Inst22Quest12
Inst22Quest12_HORDE_Level = Inst22Quest12_Level
Inst22Quest12_HORDE_Attain = Inst22Quest12_Attain
Inst22Quest12_HORDE_Aim = Inst22Quest12_Aim
Inst22Quest12_HORDE_Location = Inst22Quest12_Location
Inst22Quest12_HORDE_Note = Inst22Quest12_Note
Inst22Quest12_HORDE_Prequest = Inst22Quest12_Prequest
Inst22Quest12_HORDE_Folgequest = Inst22Quest12_Folgequest
Inst22Quest12PreQuest_HORDE = Inst22Quest12PreQuest
-- No Rewards for this quest

--Quest 13 Horde  (same as Quest 13 Alliance)
Inst22Quest13_HORDE = Inst22Quest13
Inst22Quest13_HORDE_Level = Inst22Quest13_Level
Inst22Quest13_HORDE_Attain = Inst22Quest13_Attain
Inst22Quest13_HORDE_Aim = Inst22Quest13_Aim
Inst22Quest13_HORDE_Location = Inst22Quest13_Location
Inst22Quest13_HORDE_Note = Inst22Quest13_Note
Inst22Quest13_HORDE_Prequest = Inst22Quest13_Prequest
Inst22Quest13_HORDE_Folgequest = Inst22Quest13_Folgequest
Inst22Quest13PreQuest_HORDE = Inst22Quest13PreQuest
-- No Rewards for this quest

--Quest 14 Horde  (same as Quest 14 Alliance)
Inst22Quest14_HORDE = Inst22Quest14
Inst22Quest14_HORDE_Level = Inst22Quest14_Level
Inst22Quest14_HORDE_Attain = Inst22Quest14_Attain
Inst22Quest14_HORDE_Aim = Inst22Quest14_Aim
Inst22Quest14_HORDE_Location = Inst22Quest14_Location
Inst22Quest14_HORDE_Note = Inst22Quest14_Note
Inst22Quest14_HORDE_Prequest = Inst22Quest14_Prequest
Inst22Quest14_HORDE_Folgequest = Inst22Quest14_Folgequest
Inst22Quest14PreQuest_HORDE = Inst22Quest14PreQuest
-- No Rewards for this quest

--Quest 15 Horde  (same as Quest 15 Alliance)
Inst22Quest15_HORDE = Inst22Quest15
Inst22Quest15_HORDE_Level = Inst22Quest15_Level
Inst22Quest15_HORDE_Attain = Inst22Quest15_Attain
Inst22Quest15_HORDE_Aim = Inst22Quest15_Aim
Inst22Quest15_HORDE_Location = Inst22Quest15_Location
Inst22Quest15_HORDE_Note = Inst22Quest15_Note
Inst22Quest15_HORDE_Prequest = Inst22Quest15_Prequest
Inst22Quest15_HORDE_Folgequest = Inst22Quest15_Folgequest
Inst22Quest15PreQuest_HORDE = Inst22Quest15PreQuest
--
Inst22Quest15name1_HORDE = Inst22Quest15name1
Inst22Quest15name2_HORDE = Inst22Quest15name2
Inst22Quest15name3_HORDE = Inst22Quest15name3
Inst22Quest15name4_HORDE = Inst22Quest15name4

--Quest 16 Horde  (same as Quest 16 Alliance)
Inst22Quest16_HORDE = Inst22Quest16
Inst22Quest16_HORDE_Level = Inst22Quest16_Level
Inst22Quest16_HORDE_Attain = Inst22Quest16_Attain
Inst22Quest16_HORDE_Aim = Inst22Quest16_Aim
Inst22Quest16_HORDE_Location = Inst22Quest16_Location
Inst22Quest16_HORDE_Note = Inst22Quest16_Note
Inst22Quest16_HORDE_Prequest = Inst22Quest16_Prequest
Inst22Quest16_HORDE_Folgequest = Inst22Quest16_Folgequest
--
Inst22Quest16name1_HORDE = Inst22Quest16name1

--Quest 17 Horde  (same as Quest 17 Alliance)
Inst22Quest17_HORDE = Inst22Quest17
Inst22Quest17_HORDE_Level = Inst22Quest17_Level
Inst22Quest17_HORDE_Attain = Inst22Quest17_Attain
Inst22Quest17_HORDE_Aim = Inst22Quest17_Aim
Inst22Quest17_HORDE_Location = Inst22Quest17_Location
Inst22Quest17_HORDE_Note = Inst22Quest17_Note
Inst22Quest17_HORDE_Prequest = Inst22Quest17_Prequest
Inst22Quest17_HORDE_Folgequest = Inst22Quest17_Folgequest
--
Inst22Quest17name1_HORDE = Inst22Quest17name1

--Quest 18 Horde
Inst22Quest18_HORDE = "18. Ramstein"
Inst22Quest18_HORDE_Level = "60"
Inst22Quest18_HORDE_Attain = "56"
Inst22Quest18_HORDE_Aim = "Travel to Stratholme and slay Ramstein the Gorger. Take his head as a souvenir for Nathanos."
Inst22Quest18_HORDE_Location = "Nathanos Blightcaller (Eastern Plaguelands; "..YELLOW.."22.8, 68.0"..WHITE..")"
Inst22Quest18_HORDE_Note = "You get the prequest from Nathanos Blightcaller, too. You can find Ramstein at "..YELLOW.."[18]"..WHITE.."."
Inst22Quest18_HORDE_Prequest = "The Ranger Lord's Behest -> Duskwing, Oh How I Hate Thee..."
Inst22Quest18_HORDE_Folgequest = "None"
Inst22Quest18PreQuest_HORDE = "true"
--
Inst22Quest18name1_HORDE = "Royal Seal of Alexis"
Inst22Quest18name2_HORDE = "Elemental Circle"

--Quest 19 Horde  (same as Quest 18 Alliance)
Inst22Quest19_HORDE = "19. The Balance of Light and Shadow "..WHITE.."(Priest)"
Inst22Quest19_HORDE_Level = Inst22Quest18_Level
Inst22Quest19_HORDE_Attain = Inst22Quest18_Attain
Inst22Quest19_HORDE_Aim = Inst22Quest18_Aim
Inst22Quest19_HORDE_Location = Inst22Quest18_Location
Inst22Quest19_HORDE_Note = Inst22Quest18_Note
Inst22Quest19_HORDE_Prequest = Inst22Quest18_Prequest
Inst22Quest19_HORDE_Folgequest = Inst22Quest18_Folgequest
Inst22Quest19PreQuest_HORDE = Inst22Quest18PreQuest
--
Inst22Quest19name1_HORDE = Inst22Quest18name1

--Quest 20 Horde
Inst22Quest20_HORDE = "20. True Masters of the Light "..paladin.."(Paladin)"
Inst22Quest20_HORDE_Level = "60"
Inst22Quest20_HORDE_Attain = "60"
Inst22Quest20_HORDE_Aim = "Use the Extinguishing Mixture near the eternal flame in the Alonsus Chapel to remove the Light's protection. Be prepared to fight anyone who may attempt to defend the chapel."
Inst22Quest20_HORDE_Location = "Lord Solanar Bloodwrath (Silvermoon City - Farstriders Square; "..YELLOW.."92.2, 38.7"..WHITE..")"
Inst22Quest20_HORDE_Note = ""..paladin.."PALADIN "..WHITE.."ONLY! The Alonsus Chapel is at "..YELLOW.."[13]"..WHITE..". Completing this quest gives you the Paladin Epic mount. You cannot start this quest if you've already obtained the mount from the trainer."
Inst22Quest20_HORDE_Prequest = "A Summons from Lord Solanar -> True Masters of the Light"
Inst22Quest20_HORDE_Folgequest = "None"
Inst22Quest20PreQuest_HORDE = "true"
--
Inst22Quest20name1_HORDE = "Blood Knight Tabard"



--------------- INST23 - The Ruins of Ahn'Qiraj (AQ20) ---------------

--------------- INST24 - The Stockade (Stocks) ---------------

Inst24Story = "The Stockades are a high-security prison complex, hidden beneath the canal district of Stormwind City. Presided over by Warden Thelwater, the Stockades are home to petty crooks, political insurgents, murderers and a score of the most dangerous criminals in the land. Recently, a prisoner-led revolt has resulted in a state of pandemonium within the Stockades - where the guards have been driven out and the convicts roam free. Warden Thelwater has managed to escape the holding area and is currently enlisting brave thrill-seekers to venture into the prison and kill the uprising's mastermind - the cunning felon, Bazil Thredd."
Inst24Caption = "The Stockade"
Inst24QAA = "6 Quests"
Inst24QAH = "No Quests"

--Quest 1 Alliance
Inst24Quest1 = "1. What Comes Around..."
Inst24Quest1_Level = "25"
Inst24Quest1_Attain = "22"
Inst24Quest1_Aim = "Bring the head of Targorr the Dread to Guard Berton in Lakeshire."
Inst24Quest1_Location = "Guard Berton (Redridge Mountains - Lakeshire; "..YELLOW.."26,46"..WHITE..")"
Inst24Quest1_Note = "You can find Targorr at "..YELLOW.."[1]"..WHITE.."."
Inst24Quest1_Prequest = "None"
Inst24Quest1_Folgequest = "None"
--
Inst24Quest1name1 = "Lucine Longsword"
Inst24Quest1name2 = "Hardened Root Staff"

--Quest 2 Alliance
Inst24Quest2 = "2. Crime and Punishment"
Inst24Quest2_Level = "26"
Inst24Quest2_Attain = "22"
Inst24Quest2_Aim = "Councilman Millstipe of Darkshire wants you to bring him the hand of Dextren Ward."
Inst24Quest2_Location = "Millstipe (Duskwood - Darkshire; "..YELLOW.."72,47"..WHITE..")"
Inst24Quest2_Note = "You can find Dextren at "..YELLOW.."[5]"..WHITE.."."
Inst24Quest2_Prequest = "None"
Inst24Quest2_Folgequest = "None"
--
Inst24Quest2name1 = "Ambassador's Boots"
Inst24Quest2name2 = "Darkshire Mail Leggings"

--Quest 3 Alliance
Inst24Quest3 = "3. Quell The Uprising"
Inst24Quest3_Level = "26"
Inst24Quest3_Attain = "22"
Inst24Quest3_Aim = "Warden Thelwater of Stormwind wants you to kill 10 Defias Prisoners, 8 Defias Convicts, and 8 Defias Insurgents in The Stockade."
Inst24Quest3_Location = "Warden Thelwater (Stormwind - The Stockade; "..YELLOW.."51.4, 68.8"..WHITE..")"
Inst24Quest3_Note = ""
Inst24Quest3_Prequest = "None"
Inst24Quest3_Folgequest = "None"
-- No Rewards for this quest

--Quest 4 Alliance
Inst24Quest4 = "4. The Color of Blood"
Inst24Quest4_Level = "26"
Inst24Quest4_Attain = "22"
Inst24Quest4_Aim = "Nikova Raskol of Stormwind wants you to collect 10 Red Wool Bandanas."
Inst24Quest4_Location = "Nikova Raskol (Stormwind - Old Town; "..YELLOW.."75.6, 62.9"..WHITE..")"
Inst24Quest4_Note = "Nikova Raskol walks around Old Town. All mobs found inside the instance drops Red Wool Bandanas."
Inst24Quest4_Prequest = "None"
Inst24Quest4_Folgequest = "None"
-- No Rewards for this quest

--Quest 5 Alliance
Inst24Quest5 = "5. The Fury Runs Deep"
Inst24Quest5_Level = "27"
Inst24Quest5_Attain = "22"
Inst24Quest5_Aim = "Motley Garmason wants Kam Deepfury's head brought to him at Dun Modr."
Inst24Quest5_Location = "Motley Garmason (Wetlands - Dun Modr; "..YELLOW.."49,18"..WHITE..")"
Inst24Quest5_Note = "The preceding quest can be obtained from Motley too. You can find Kam Deepfury at "..YELLOW.."[2]"..WHITE.."."
Inst24Quest5_Prequest = "The Dark Iron War"
Inst24Quest5_Folgequest = "None"
Inst24Quest5PreQuest = "true"
--
Inst24Quest5name1 = "Belt of Vindication"
Inst24Quest5name2 = "Headbasher"

--Quest 6 Alliance
Inst24Quest6 = "6. The Stockade Riots"
Inst24Quest6_Level = "29"
Inst24Quest6_Attain = "16"
Inst24Quest6_Aim = "Kill Bazil Thredd and bring his head back to Warden Thelwater at the Stockade."
Inst24Quest6_Location = "Warden Thelwater (Stormwind - The Stockade; "..YELLOW.."51.4, 68.8"..WHITE..")"
Inst24Quest6_Note = "For more details about the preceding quest see "..YELLOW.."[Deadmines, The Defias Brotherhood]"..WHITE..".\nYou can find Bazil Thredd at "..YELLOW.."[4]"..WHITE.."."
Inst24Quest6_Prequest = "The Defias Brotherhood -> Bazil Thredd"
Inst24Quest6_Folgequest = "The Curious Visitor"
Inst24Quest6PreQuest = "true"
-- No Rewards for this quest



--------------- INST25 - Sunken Temple (ST) ---------------

Inst25Story = "Over a thousand years ago, the powerful Gurubashi Empire was torn apart by a massive civil war. An influential group of troll priests, known as the Atal'ai, attempted to bring back an ancient blood god named Hakkar the Soulflayer. Though the priests were defeated and ultimately exiled, the great troll empire buckled in upon itself. The exiled priests fled far to the north, into the Swamp of Sorrows. There they erected a great temple to Hakkar - where they could prepare for his arrival into the physical world. The great dragon Aspect, Ysera, learned of the Atal'ai's plans and smashed the temple beneath the marshes. To this day, the temple's drowned ruins are guarded by the green dragons who prevent anyone from getting in or out. However, it is believed that some of the fanatical Atal'ai may have survived Ysera's wrath - and recommitted themselves to the dark service of Hakkar."
Inst25Caption = "The Sunken Temple"
Inst25QAA = "17 Quests"
Inst25QAH = "17 Quests"

--Quest 1 Alliance
Inst25Quest1 = "1. Into The Temple of Atal'Hakkar"
Inst25Quest1_Level = "50"
Inst25Quest1_Attain = "38"
Inst25Quest1_Aim = "Gather 10 Atal'ai Tablets for Brohann Caskbelly in Stormwind."
Inst25Quest1_Location = "Brohann Caskbelly (Stormwind - Dwarven District; "..YELLOW.."69.5, 40.4"..WHITE..")"
Inst25Quest1_Note = "The prequest line comes from the same NPC and has quite a few steps.\n\nYou can find the Tablets everywhere in the Temple, both outside and inside the instance."
Inst25Quest1_Prequest = "In Search of The Temple -> Rhapsody's Tale"
Inst25Quest1_Folgequest = "None"
Inst25Quest1PreQuest = "true"
--
Inst25Quest1name1 = "Guardian Talisman"

--Quest 2 Alliance
Inst25Quest2 = "2. The Sunken Temple"
Inst25Quest2_Level = "51"
Inst25Quest2_Attain = "46"
Inst25Quest2_Aim = "Find Marvon Rivetseeker in Tanaris."
Inst25Quest2_Location = "Angelas Moonbreeze (Feralas - Feathermoon Stronghold; "..YELLOW.."31,45"..WHITE..")"
Inst25Quest2_Note = "You find Marvon Rivetseeker at "..YELLOW.."52,45"..WHITE.."."
Inst25Quest2_Prequest = "None"
Inst25Quest2_Folgequest = "The Stone Circle"
-- No Rewards for this quest

--Quest 3 Alliance
Inst25Quest3 = "3. Into the Depths"
Inst25Quest3_Level = "51"
Inst25Quest3_Attain = "46"
Inst25Quest3_Aim = "Find the Altar of Hakkar in the Sunken Temple in Swamp of Sorrows."
Inst25Quest3_Location = "Marvon Rivetseeker (Tanaris; "..YELLOW.."52,45"..WHITE..")"
Inst25Quest3_Note = "The Altar is at "..YELLOW.."[1]"..WHITE.."."
Inst25Quest3_Prequest = "The Stone Circle"
Inst25Quest3_Folgequest = "None"
Inst25Quest3PreQuest = "true"
-- No Rewards for this quest

--Quest 4 Alliance
Inst25Quest4 = "4. Secret of the Circle"
Inst25Quest4_Level = "51"
Inst25Quest4_Attain = "46"
Inst25Quest4_Aim = "Travel into the Sunken Temple and discover the secret hidden in the circle of statues."
Inst25Quest4_Location = "Marvon Rivetseeker (Tanaris; "..YELLOW.."52,45"..WHITE..")"
Inst25Quest4_Note = "You find the statues at "..YELLOW.."[1]"..WHITE..". See map for order to activate them."
Inst25Quest4_Prequest = "The Stone Circle"
Inst25Quest4_Folgequest = "None"
Inst25Quest4PreQuest = "true"
--
Inst25Quest4name1 = "Hakkari Urn"

--Quest 5 Alliance
Inst25Quest5 = "5. Haze of Evil"
Inst25Quest5_Level = "52"
Inst25Quest5_Attain = "47"
Inst25Quest5_Aim = "Collect 5 samples of Atal'ai Haze, then return to Muigin in Un'Goro Crater."
Inst25Quest5_Location = "Gregan Brewspewer (Feralas; "..YELLOW.."45,25"..WHITE..")"
Inst25Quest5_Note = "The Prequest 'Muigin and Larion' starts at Muigin (Un'Goro Crater - Marshal's Refuge; "..YELLOW.."42,9"..WHITE.."). You get the Haze from Deep Lurkers, Murk Worms or Oozes in the Temple."
Inst25Quest5_Prequest = "Muigin and Larion -> A Visit to Gregan "
Inst25Quest5_Folgequest = "None"
Inst25Quest5PreQuest = "true"
-- No Rewards for this quest

--Quest 6 Alliance
Inst25Quest6 = "6. The God Hakkar"
Inst25Quest6_Level = "53"
Inst25Quest6_Attain = "40"
Inst25Quest6_Aim = "Bring the Filled Egg of Hakkar to Yeh'kinya in Tanaris."
Inst25Quest6_Location = "Yeh'kinya (Tanaris - Steamwheedle Port; "..YELLOW.."66,22"..WHITE..")"
Inst25Quest6_Note = "The Questline starts with 'Screecher Spirits' at the same NPC (See "..YELLOW.."[Zul'Farrak]"..WHITE..").\nYou have to use the Egg at "..YELLOW.."[3]"..WHITE.." to start the Event. Once it starts enemies spawn and attack you. Some of them drop the blood of Hakkar. With this blood you can put out the torch around the circle. After this the Avatar of Hakkar spawns. You kill him and loot the 'Essence of Hakkar' which you use to fill the egg."
Inst25Quest6_Prequest = "Screecher Spirits -> The Ancient Egg"
Inst25Quest6_Folgequest = "None"
Inst25Quest6PreQuest = "true"
--
Inst25Quest6name1 = "Avenguard Helm"
Inst25Quest6name2 = "Lifeforce Dirk"
Inst25Quest6name3 = "Gemburst Circlet"

--Quest 7 Alliance
Inst25Quest7 = "7. Jammal'an the Prophet"
Inst25Quest7_Level = "53"
Inst25Quest7_Attain = "38"
Inst25Quest7_Aim = "The Atal'ai Exile in The Hinterlands wants the Head of Jammal'an."
Inst25Quest7_Location = "The Atal'ai Exile (The Hinterlands; "..YELLOW.."33,75"..WHITE..")"
Inst25Quest7_Note = "You find Jammal'an at "..YELLOW.."[4]"..WHITE.."."
Inst25Quest7_Prequest = "None"
Inst25Quest7_Folgequest = "None"
--
Inst25Quest7name1 = "Rainstrider Leggings"
Inst25Quest7name2 = "Helm of Exile"

--Quest 8 Alliance
Inst25Quest8 = "8. The Essence of Eranikus"
Inst25Quest8_Level = "55"
Inst25Quest8_Attain = "48"
Inst25Quest8_Aim = "Place the Essence of Eranikus in the Essence Font located in this lair in the Sunken Temple."
Inst25Quest8_Location = "The Essence of Eranikus (drops from Shade of Eranikus; "..YELLOW.."[6]"..WHITE..")"
Inst25Quest8_Note = "You find the Essence Font next to where Shade of Eranikus is at "..YELLOW.."[6]"..WHITE.."."
Inst25Quest8_Prequest = "None"
Inst25Quest8_Folgequest = "None"
--
Inst25Quest8name1 = "Chained Essence of Eranikus"

--Quest 9 Alliance
Inst25Quest9 = "9. Trolls of a Feather "..warlock.."(Warlock)"
Inst25Quest9_Level = "52"
Inst25Quest9_Attain = "50"
Inst25Quest9_Aim = "Bring a total of 6 Voodoo Feathers from the trolls in sunken temple."
Inst25Quest9_Location = "Impsy (Felwood; "..YELLOW.."42,45"..WHITE..")"
Inst25Quest9_Note = ""..warlock.."Warlock"..WHITE.." quest. 1 Feather drops from each of the named trolls on the ledges overlooking the big room with the hole in the center."
Inst25Quest9_Prequest = "An Imp's Request -> The Wrong Stuff"
Inst25Quest9_Folgequest = "None"
Inst25Quest9PreQuest = "true"
--
Inst25Quest9name1 = "Soul Harvester"
Inst25Quest9name2 = "Abyss Shard"
Inst25Quest9name3 = "Robes of Servitude"

--Quest 10 Alliance
Inst25Quest10 = "10. Voodoo Feathers "..warrior.."(Warrior)"
Inst25Quest10_Level = "52"
Inst25Quest10_Attain = "50"
Inst25Quest10_Aim = "Bring the Voodoo Feathers from the trolls in the Sunken Temple to the Fallen Hero of the Horde."
Inst25Quest10_Location = "Fallen Hero of the Horde (Swamp of Sorrows; "..YELLOW.."34,66"..WHITE..")"
Inst25Quest10_Note = ""..warrior.."Warrior "..WHITE.."quest. 1 Feather drops from each of the named trolls on the ledges overlooking the big room with the hole in the center."
Inst25Quest10_Prequest = "A Troubled Spirit -> War on the Shadowsworn"
Inst25Quest10_Folgequest = "None"
Inst25Quest10PreQuest = "true"
--
Inst25Quest10name1 = "Fury Visor"
Inst25Quest10name2 = "Diamond Flask"
Inst25Quest10name3 = "Razorsteel Shoulders"

--Quest 11 Alliance
Inst25Quest11 = "11. Da Voodoo "..shaman.."(Shaman)"
Inst25Quest11_Level = "52"
Inst25Quest11_Attain = "50"
Inst25Quest11_Aim = "Bring the voodoo feathers to Bath'rah the Windwatcher."
Inst25Quest11_Location = "Bath'rah the Windwatcher (Alterac Mountains; "..YELLOW.."80,67"..WHITE..")"
Inst25Quest11_Note = ""..shaman.."Shaman"..WHITE.." quest. 1 Feather drops from each of the named trolls on the ledges overlooking the big room with the hole in the center."
Inst25Quest11_Prequest = "Spirit Totem"
Inst25Quest11_Folgequest = "None"
Inst25Quest11PreQuest = "true"
--
Inst25Quest11name1 = "Azurite Fists"
Inst25Quest11name2 = "Enamored Water Spirit"
Inst25Quest11name3 = "Wildstaff"

--Quest 12 Alliance
Inst25Quest12 = "12. A Better Ingredient "..druid.."(Druid)"
Inst25Quest12_Level = "52"
Inst25Quest12_Attain = "50"
Inst25Quest12_Aim = "Retrieve a Putrid Vine from the guardian at the bottom of the Sunken Temple and return to Torwa Pathfinder."
Inst25Quest12_Location = "Torwa Pathfinder (Un'Goro Crater; "..YELLOW.."72,76"..WHITE..")"
Inst25Quest12_Note = ""..druid.."Druid "..WHITE.."quest. The Putrid Vine drops from Atal'alarion who is summoned at "..YELLOW.."[1]"..WHITE.." by activating the statues in the order listed on the map."
Inst25Quest12_Prequest = "Torwa Pathfinder -> Toxic Test"
Inst25Quest12_Folgequest = "None"
Inst25Quest12PreQuest = "true"
--
Inst25Quest12name1 = "Grizzled Pelt"
Inst25Quest12name2 = "Forest's Embrace"
Inst25Quest12name3 = "Moonshadow Stave"

--Quest 13 Alliance
Inst25Quest13 = "13. The Green Drake "..hunter.."(Hunter)"
Inst25Quest13_Level = "52"
Inst25Quest13_Attain = "50"
Inst25Quest13_Aim = "Bring the Tooth of Morphaz to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath."
Inst25Quest13_Location = "Ogtinc (Azshara; "..YELLOW.."42,43"..WHITE..")"
Inst25Quest13_Note = ""..hunter.."Hunter "..WHITE.."quest. Morphaz is at "..YELLOW.."[5]"..WHITE.."."
Inst25Quest13_Prequest = "The Hunter's Charm -> Wavethrashing"
Inst25Quest13_Folgequest = "None"
Inst25Quest13PreQuest = "true"
--
Inst25Quest13name1 = "Hunting Spear"
Inst25Quest13name2 = "Devilsaur Eye"
Inst25Quest13name3 = "Devilsaur Tooth"

--Quest 14 Alliance
Inst25Quest14 = "14. Destroy Morphaz "..mage.."(Mage)"
Inst25Quest14_Level = "52"
Inst25Quest14_Attain = "50"
Inst25Quest14_Aim = "Retrieve the Arcane Shard from Morphaz and return to Archmage Xylem."
Inst25Quest14_Location = "Archmage Xylem (Azshara; "..YELLOW.."29,40"..WHITE..")"
Inst25Quest14_Note = ""..mage.."Mage "..WHITE.."quest. Morphaz is at "..YELLOW.."[5]"..WHITE.."."
Inst25Quest14_Prequest = "Magic Dust -> The Siren's Coral"
Inst25Quest14_Folgequest = "None"
Inst25Quest14PreQuest = "true"
--
Inst25Quest14name1 = "Glacial Spike"
Inst25Quest14name2 = "Arcane Crystal Pendant"
Inst25Quest14name3 = "Fire Ruby"

--Quest 15 Alliance
Inst25Quest15 = "15. Blood of Morphaz "..WHITE.."(Priest)"
Inst25Quest15_Level = "52"
Inst25Quest15_Attain = "50"
Inst25Quest15_Aim = "Kill Morphaz in the sunken temple of Atal'Hakkar, and return his blood to Greta Mosshoof in Felwood. The entrance to the sunken temple can be found in the Swamp of Sorrows."
Inst25Quest15_Location = "Ogtinc (Azshara; "..YELLOW.."42,43"..WHITE..")"
Inst25Quest15_Note = "Priest quest. Morphaz is at "..YELLOW.."[5]"..WHITE..". Greta Mosshoof is at Felwood - Emerald Sanctuary ("..YELLOW.."51,82"..WHITE..")."
Inst25Quest15_Prequest = "Cenarion Aid -> The Ichor of Undeath"
Inst25Quest15_Folgequest = "None"
Inst25Quest15PreQuest = "true"
--
Inst25Quest15name1 = "Blessed Prayer Beads"
Inst25Quest15name2 = "Woestave"
Inst25Quest15name3 = "Circle of Hope"

--Quest 16 Alliance
Inst25Quest16 = "16. The Azure Key "..rogue.."(Rogue)"
Inst25Quest16_Level = "52"
Inst25Quest16_Attain = "50"
Inst25Quest16_Aim = "Return the Azure Key to Lord Jorach Ravenholdt."
Inst25Quest16_Location = "Archmage Xylem (Azshara; "..YELLOW.."29,40"..WHITE..")"
Inst25Quest16_Note = ""..rogue.."Rogue "..WHITE.."quest. The Azure Key drops from Morphaz at "..YELLOW.."[5]"..WHITE..". Lord Jorach Ravenholdt is at Alterac Mountains - Ravenholdt ("..YELLOW.."86,79"..WHITE..")."
Inst25Quest16_Prequest = "A Simple Request -> Encoded Fragments"
Inst25Quest16_Folgequest = "None"
Inst25Quest16PreQuest = "true"
--
Inst25Quest16name1 = "Ebon Mask"
Inst25Quest16name2 = "Whisperwalk Boots"
Inst25Quest16name3 = "Duskbat Drape"

--Quest 17 Alliance
Inst25Quest17 = "17. Forging the Mightstone "..paladin.."(Paladin)"
Inst25Quest17_Level = "52"
Inst25Quest17_Attain = "50"
Inst25Quest17_Aim = "Bring the voodoo feathers to Ashlam Valorfist."
Inst25Quest17_Location = "Commander Ashlam Valorfist (Western Plaguelands - Chillwind Camp; "..YELLOW.."43,85"..WHITE..")"
Inst25Quest17_Note = ""..paladin.."Paladin "..WHITE.."quest. 1 Feather drops from each of the named trolls on the ledges overlooking the big room with the hole in the center."
Inst25Quest17_Prequest = "Inert Scourgestones"
Inst25Quest17_Folgequest = "None"
Inst25Quest17PreQuest = "true"
--
Inst25Quest17name1 = "Holy Mightstone"
Inst25Quest17name2 = "Lightforged Blade"
Inst25Quest17name3 = "Sanctified Orb"
Inst25Quest17name4 = "Chivalrous Signet"


--Quest 1 Horde
Inst25Quest1_HORDE = "1. The Temple of Atal'Hakkar"
Inst25Quest1_HORDE_Level = "50"
Inst25Quest1_HORDE_Attain = "38"
Inst25Quest1_HORDE_Aim = "Collect 20 Fetishes of Hakkar and bring them to Fel'Zerul in Stonard."
Inst25Quest1_HORDE_Location = "Fel'Zerul (Swamp of Sorrows - Stonard; "..YELLOW.."47,54"..WHITE..")"
Inst25Quest1_HORDE_Note = "All Enemys in the Temple drop Fetishes."
Inst25Quest1_HORDE_Prequest = "Pool of Tears -> Return to Fel'Zerul"
Inst25Quest1_HORDE_Folgequest = "None"
Inst25Quest1PreQuest_HORDE = "true"
--
Inst25Quest1name1_HORDE = "Guardian Talisman"

--Quest 2 Horde
Inst25Quest2_HORDE = "2. The Sunken Temple"
Inst25Quest2_HORDE_Level = "51"
Inst25Quest2_HORDE_Attain = "46"
Inst25Quest2_HORDE_Aim = "Find Marvon Rivetseeker in Tanaris."
Inst25Quest2_HORDE_Location = "Witch Doctor Uzer'i (Feralas; "..YELLOW.."74,43"..WHITE..")"
Inst25Quest2_HORDE_Note = "You find Marvon Rivetseeker at "..YELLOW.."52,45"..WHITE.."."
Inst25Quest2_HORDE_Prequest = "None"
Inst25Quest2_HORDE_Folgequest = "The Stone Circle"

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst25Quest3_HORDE = Inst25Quest3
Inst25Quest3_HORDE_Level = Inst25Quest3_Level
Inst25Quest3_HORDE_Attain = Inst25Quest3_Attain
Inst25Quest3_HORDE_Aim = Inst25Quest3_Aim
Inst25Quest3_HORDE_Location = Inst25Quest3_Location
Inst25Quest3_HORDE_Note = Inst25Quest3_Note
Inst25Quest3_HORDE_Prequest = Inst25Quest3_Prequest
Inst25Quest3_HORDE_Folgequest = Inst25Quest3_Folgequest
Inst25Quest3PreQuest_HORDE = Inst25Quest3PreQuest
-- No Rewards for this quest

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst25Quest4_HORDE = Inst25Quest4
Inst25Quest4_HORDE_Level = Inst25Quest4_Level
Inst25Quest4_HORDE_Attain = Inst25Quest4_Attain
Inst25Quest4_HORDE_Aim = Inst25Quest4_Aim
Inst25Quest4_HORDE_Location = Inst25Quest4_Location
Inst25Quest4_HORDE_Note = Inst25Quest4_Note
Inst25Quest4_HORDE_Prequest = Inst25Quest4_Prequest
Inst25Quest4_HORDE_Folgequest = Inst25Quest4_Folgequest
Inst25Quest4PreQuest_HORDE = Inst25Quest4PreQuest
--
Inst25Quest4name1_HORDE = Inst25Quest4name1

--Quest 5 Horde
Inst25Quest5_HORDE = "5. Zapper Fuel"
Inst25Quest5_HORDE_Level = "52"
Inst25Quest5_HORDE_Attain = "47"
Inst25Quest5_HORDE_Aim = "Deliver the Unloaded Zapper and 5 samples of Atal'ai Haze to Larion in Marshal's Refuge."
Inst25Quest5_HORDE_Location = "Liv Rizzlefix (Barrens; "..YELLOW.."62,38"..WHITE..")"
Inst25Quest5_HORDE_Note = "The Prequest 'Larion and Muigin' starts at Larion (Un'Goro Crater; "..YELLOW.."45,8"..WHITE.."). You get the Haze from Deep Lurkers, Murk Worms or Oozes in the Temple."
Inst25Quest5_HORDE_Prequest = "Larion and Muigin -> Marvon's Workshop"
Inst25Quest5_HORDE_Folgequest = "None"
Inst25Quest5PreQuest_HORDE = "true"

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst25Quest6_HORDE = Inst25Quest6
Inst25Quest6_HORDE_Level = Inst25Quest6_Level
Inst25Quest6_HORDE_Attain = Inst25Quest6_Attain
Inst25Quest6_HORDE_Aim = Inst25Quest6_Aim
Inst25Quest6_HORDE_Location = Inst25Quest6_Location
Inst25Quest6_HORDE_Note = Inst25Quest6_Note
Inst25Quest6_HORDE_Prequest = Inst25Quest6_Prequest
Inst25Quest6_HORDE_Folgequest = Inst25Quest6_Folgequest
Inst25Quest6PreQuest_HORDE = Inst25Quest6PreQuest
--
Inst25Quest6name1_HORDE = Inst25Quest6name1
Inst25Quest6name2_HORDE = Inst25Quest6name2
Inst25Quest6name3_HORDE = Inst25Quest6name3

--Quest 7 Horde  (same as Quest 7 Alliance)
Inst25Quest7_HORDE = Inst25Quest7
Inst25Quest7_HORDE_Level = Inst25Quest7_Level
Inst25Quest7_HORDE_Attain = Inst25Quest7_Attain
Inst25Quest7_HORDE_Aim = Inst25Quest7_Aim
Inst25Quest7_HORDE_Location = Inst25Quest7_Location
Inst25Quest7_HORDE_Note = Inst25Quest7_Note
Inst25Quest7_HORDE_Prequest = Inst25Quest7_Prequest
Inst25Quest7_HORDE_Folgequest = Inst25Quest7_Folgequest
--
Inst25Quest7name1_HORDE = Inst25Quest7name1
Inst25Quest7name2_HORDE = Inst25Quest7name2

--Quest 8 Horde  (same as Quest 8 Alliance)
Inst25Quest8_HORDE = Inst25Quest8
Inst25Quest8_HORDE_Level = Inst25Quest8_Level
Inst25Quest8_HORDE_Attain = Inst25Quest8_Attain
Inst25Quest8_HORDE_Aim = Inst25Quest8_Aim
Inst25Quest8_HORDE_Location = Inst25Quest8_Location
Inst25Quest8_HORDE_Note = Inst25Quest8_Note
Inst25Quest8_HORDE_Prequest = Inst25Quest8_Prequest
Inst25Quest8_HORDE_Folgequest = Inst25Quest8_Folgequest
--
Inst25Quest8name1_HORDE = Inst25Quest8name1

--Quest 9 Horde  (same as Quest 9 Alliance)
Inst25Quest9_HORDE = Inst25Quest9
Inst25Quest9_HORDE_Level = Inst25Quest9_Level
Inst25Quest9_HORDE_Attain = Inst25Quest9_Attain
Inst25Quest9_HORDE_Aim = Inst25Quest9_Aim
Inst25Quest9_HORDE_Location = Inst25Quest9_Location
Inst25Quest9_HORDE_Note = Inst25Quest9_Note
Inst25Quest9_HORDE_Prequest = Inst25Quest9_Prequest
Inst25Quest9_HORDE_Folgequest = Inst25Quest9_Folgequest
Inst25Quest9PreQuest_HORDE = Inst25Quest9PreQuest
--
Inst25Quest9name1_HORDE = Inst25Quest9name1
Inst25Quest9name2_HORDE = Inst25Quest9name2
Inst25Quest9name3_HORDE = Inst25Quest9name3

--Quest 10 Horde  (same as Quest 10 Alliance)
Inst25Quest10_HORDE = Inst25Quest10
Inst25Quest10_HORDE_Level = Inst25Quest10_Level
Inst25Quest10_HORDE_Attain = Inst25Quest10_Attain
Inst25Quest10_HORDE_Aim = Inst25Quest10_Aim
Inst25Quest10_HORDE_Location = Inst25Quest10_Location
Inst25Quest10_HORDE_Note = Inst25Quest10_Note
Inst25Quest10_HORDE_Prequest = Inst25Quest10_Prequest
Inst25Quest10_HORDE_Folgequest = Inst25Quest10_Folgequest
Inst25Quest10PreQuest_HORDE = Inst25Quest10PreQuest
--
Inst25Quest10name1_HORDE = Inst25Quest10name1
Inst25Quest10name2_HORDE = Inst25Quest10name2
Inst25Quest10name3_HORDE = Inst25Quest10name3

--Quest 11 Horde  (same as Quest 11 Alliance)
Inst25Quest11_HORDE = Inst25Quest11
Inst25Quest11_HORDE_Level = Inst25Quest11_Level
Inst25Quest11_HORDE_Attain = Inst25Quest11_Attain
Inst25Quest11_HORDE_Aim = Inst25Quest11_Aim
Inst25Quest11_HORDE_Location = Inst25Quest11_Location
Inst25Quest11_HORDE_Note = Inst25Quest11_Note
Inst25Quest11_HORDE_Prequest = Inst25Quest11_Prequest
Inst25Quest11_HORDE_Folgequest = Inst25Quest11_Folgequest
Inst25Quest11PreQuest_HORDE = Inst25Quest11PreQuest
--
Inst25Quest11name1_HORDE = Inst25Quest11name1
Inst25Quest11name2_HORDE = Inst25Quest11name2
Inst25Quest11name3_HORDE = Inst25Quest11name3

--Quest 12 Horde  (same as Quest 12 Alliance)
Inst25Quest12_HORDE = Inst25Quest12
Inst25Quest12_HORDE_Level = Inst25Quest12_Level
Inst25Quest12_HORDE_Attain = Inst25Quest12_Attain
Inst25Quest12_HORDE_Aim = Inst25Quest12_Aim
Inst25Quest12_HORDE_Location = Inst25Quest12_Location
Inst25Quest12_HORDE_Note = Inst25Quest12_Note
Inst25Quest12_HORDE_Prequest = Inst25Quest12_Prequest
Inst25Quest12_HORDE_Folgequest = Inst25Quest12_Folgequest
Inst25Quest12PreQuest_HORDE = Inst25Quest12PreQuest
--
Inst25Quest12name1_HORDE = Inst25Quest12name1
Inst25Quest12name2_HORDE = Inst25Quest12name2
Inst25Quest12name3_HORDE = Inst25Quest12name3

--Quest 13 Horde  (same as Quest 13 Alliance)
Inst25Quest13_HORDE = Inst25Quest13
Inst25Quest13_HORDE_Level = Inst25Quest13_Level
Inst25Quest13_HORDE_Attain = Inst25Quest13_Attain
Inst25Quest13_HORDE_Aim = Inst25Quest13_Aim
Inst25Quest13_HORDE_Location = Inst25Quest13_Location
Inst25Quest13_HORDE_Note = Inst25Quest13_Note
Inst25Quest13_HORDE_Prequest = Inst25Quest13_Prequest
Inst25Quest13_HORDE_Folgequest = Inst25Quest13_Folgequest
Inst25Quest13PreQuest_HORDE = Inst25Quest13PreQuest
--
Inst25Quest13name1_HORDE = Inst25Quest13name1
Inst25Quest13name2_HORDE = Inst25Quest13name2
Inst25Quest13name3_HORDE = Inst25Quest13name3

--Quest 14 Horde  (same as Quest 14 Alliance)
Inst25Quest14_HORDE = Inst25Quest14
Inst25Quest14_HORDE_Level = Inst25Quest14_Level
Inst25Quest14_HORDE_Attain = Inst25Quest14_Attain
Inst25Quest14_HORDE_Aim = Inst25Quest14_Aim
Inst25Quest14_HORDE_Location = Inst25Quest14_Location
Inst25Quest14_HORDE_Note = Inst25Quest14_Note
Inst25Quest14_HORDE_Prequest = Inst25Quest14_Prequest
Inst25Quest14_HORDE_Folgequest = Inst25Quest14_Folgequest
Inst25Quest14PreQuest_HORDE = Inst25Quest14PreQuest
--
Inst25Quest14name1_HORDE = Inst25Quest14name1
Inst25Quest14name2_HORDE = Inst25Quest14name2
Inst25Quest14name3_HORDE = Inst25Quest14name3

--Quest 15 Horde  (same as Quest 15 Alliance)
Inst25Quest15_HORDE = Inst25Quest15
Inst25Quest15_HORDE_Level = Inst25Quest15_Level
Inst25Quest15_HORDE_Attain = Inst25Quest15_Attain
Inst25Quest15_HORDE_Aim = Inst25Quest15_Aim
Inst25Quest15_HORDE_Location = Inst25Quest15_Location
Inst25Quest15_HORDE_Note = Inst25Quest15_Note
Inst25Quest15_HORDE_Prequest = Inst25Quest15_Prequest
Inst25Quest15_HORDE_Folgequest = Inst25Quest15_Folgequest
Inst25Quest15PreQuest_HORDE = Inst25Quest15PreQuest
--
Inst25Quest15name1_HORDE = Inst25Quest15name1
Inst25Quest15name2_HORDE = Inst25Quest15name2
Inst25Quest15name3_HORDE = Inst25Quest15name3

--Quest 16 Horde  (same as Quest 16 Alliance)
Inst25Quest16_HORDE = Inst25Quest16
Inst25Quest16_HORDE_Level = Inst25Quest16_Level
Inst25Quest16_HORDE_Attain = Inst25Quest16_Attain
Inst25Quest16_HORDE_Aim = Inst25Quest16_Aim
Inst25Quest16_HORDE_Location = Inst25Quest16_Location
Inst25Quest16_HORDE_Note = Inst25Quest16_Note
Inst25Quest16_HORDE_Prequest = Inst25Quest16_Prequest
Inst25Quest16_HORDE_Folgequest = Inst25Quest16_Folgequest
Inst25Quest16PreQuest_HORDE = Inst25Quest16PreQuest
--
Inst25Quest16name1_HORDE = Inst25Quest16name1
Inst25Quest16name2_HORDE = Inst25Quest16name2
Inst25Quest16name3_HORDE = Inst25Quest16name3

--Quest 17 Horde
Inst25Quest17_HORDE = "17. Ancient Evil "..paladin.."(Paladin)"
Inst25Quest17_HORDE_Level = "52"
Inst25Quest17_HORDE_Attain = "50"
Inst25Quest17_HORDE_Aim = "Unlock the secrets of the Temple of Atal'Hakkar to release Atal'alarion and recover the Putrid Vine from his flesh. Return to Mehlar at the Bulwark when you have done this."
Inst25Quest17_HORDE_Location = "Lady Sylvanas Windrunner (Undercity - Royal Quarter; "..YELLOW.."59,94"..WHITE..")"
Inst25Quest17_HORDE_Note = ""..paladin.."Paladin "..WHITE.."quest. The Putrid Vine drops from Atal'alarion who is summoned at "..YELLOW.."[1]"..WHITE.." by activating the statues in the order listed on the map. Mehlar is at Tirisfal Glades - The Bulwark ("..YELLOW.."83,71"..WHITE..")."
Inst25Quest17_HORDE_Prequest = "To The Bulwark -> Wisdom of the Banshee Queen"
Inst25Quest17_HORDE_Folgequest = "None"
Inst25Quest17PreQuest_HORDE = "true"
--
Inst25Quest17name1_HORDE = "Scourgebane"


--------------- INST26 - The Temple of Ahn'Qiraj (AQ40) ---------------

--------------- INST27 - Zul'Farrak (ZF) ---------------

Inst27Story = "This sun-blasted city is home to the Sandfury trolls, known for their particular ruthlessness and dark mysticism. Troll legends tell of a powerful sword called Sul'thraze the Lasher, a weapon capable of instilling fear and weakness in even the most formidable of foes. Long ago, the weapon was split in half. However, rumors have circulated that the two halves may be found somewhere within Zul'Farrak's walls. Reports have also suggested that a band of mercenaries fleeing Gadgetzan wandered into the city and became trapped. Their fate remains unknown. But perhaps most disturbing of all are the hushed whispers of an ancient creature sleeping within a sacred pool at the city's heart - a mighty demigod who will wreak untold destruction upon any adventurer foolish enough to awaken him."
Inst27Caption = "Zul'Farrak"
Inst27QAA = "7 Quests"
Inst27QAH = "7 Quests"

--Quest 1 Alliance
Inst27Quest1 = "1. Troll Temper"
Inst27Quest1_Level = "45"
Inst27Quest1_Attain = "40"
Inst27Quest1_Aim = "Bring 20 Vials of Troll Temper to Trenton Lighthammer in Gadgetzan."
Inst27Quest1_Location = "Trenton Lighthammer (Tanaris - Gadgetzan; "..YELLOW.."51,28"..WHITE..")"
Inst27Quest1_Note = "Every Troll can drop the Tempers."
Inst27Quest1_Prequest = "None"
Inst27Quest1_Folgequest = "None"
-- No Rewards for this quest

--Quest 2 Alliance
Inst27Quest2 = "2. Scarab Shells"
Inst27Quest2_Level = "45"
Inst27Quest2_Attain = "40"
Inst27Quest2_Aim = "Bring 5 Uncracked Scarab Shells to Tran'rek in Gadgetzan."
Inst27Quest2_Location = "Tran'rek (Tanaris - Gadgetzan; "..YELLOW.."51,26"..WHITE..")"
Inst27Quest2_Note = "The prequest starts at Krazek (Stranglethorn Vale - Booty Bay; "..YELLOW.."25,77"..WHITE..").\nEvery Scarab can drop the Shells. A lot of Scarabs are at "..YELLOW.."[2]"..WHITE.."."
Inst27Quest2_Prequest = "Tran'rek"
Inst27Quest2_Folgequest = "None"
Inst27Quest2PreQuest = "true"
-- No Rewards for this quest

--Quest 3 Alliance
Inst27Quest3 = "3. Tiara of the Deep"
Inst27Quest3_Level = "46"
Inst27Quest3_Attain = "40"
Inst27Quest3_Aim = "Bring the Tiara of the Deep to Tabetha in Dustwallow Marsh."
Inst27Quest3_Location = "Tabetha (Dustwallow Marsh; "..YELLOW.."46,57"..WHITE..")"
Inst27Quest3_Note = "You get the prequest from Bink (Ironforge; "..YELLOW.."25,8"..WHITE..").\nHydromancer Velratha drops the Tiara of the Deep at "..YELLOW.."[6]"..WHITE.."."
Inst27Quest3_Prequest = "Tabetha's Task"
Inst27Quest3_Folgequest = "None"
Inst27Quest3PreQuest = "true"
--
Inst27Quest3name1 = "Spellshifter Rod"
Inst27Quest3name2 = "Gemshale Pauldrons"

--Quest 4 Alliance
Inst27Quest4 = "4. Nekrum's Medallion"
Inst27Quest4_Level = "47"
Inst27Quest4_Attain = "40"
Inst27Quest4_Aim = "Bring Nekrum's Medallion to Thadius Grimshade in the Blasted Lands."
Inst27Quest4_Location = "Thadius Grimshade (The Blasted Lands - Nethergarde Keep; "..YELLOW.."66,19"..WHITE..")"
Inst27Quest4_Note = "The Questline starts at Gryphon Master Talonaxe (The Hinterlands - Wildhammer Stronghold; "..YELLOW.."9,44"..WHITE..").\nNekrum spawns at "..YELLOW.."[4]"..WHITE.." with the final crowd you fight for the Temple event."
Inst27Quest4_Prequest = "Witherbark Cages -> Thadius Grimshade"
Inst27Quest4_Folgequest = "The Divination"
Inst27Quest4PreQuest = "true"
-- No Rewards for this quest

--Quest 5 Alliance
Inst27Quest5 = "5. The Prophecy of Mosh'aru"
Inst27Quest5_Level = "47"
Inst27Quest5_Attain = "40"
Inst27Quest5_Aim = "Bring the First and Second Mosh'aru Tablets to Yeh'kinya in Tanaris."
Inst27Quest5_Location = "Yeh'kinya (Tanaris - Steamwheedle Port; "..YELLOW.."66,22"..WHITE..")"
Inst27Quest5_Note = "You get the prequest from the same NPC.\nThe Tablets drop from Theka the Martyr at "..YELLOW.."[2]"..WHITE.." and Hydromancer Velratha at "..YELLOW.."[6]"..WHITE.."."
Inst27Quest5_Prequest = "Screecher Spirits"
Inst27Quest5_Folgequest = "The Ancient Egg"
Inst27Quest5PreQuest = "true"
-- No Rewards for this quest

--Quest 6 Alliance
Inst27Quest6 = "6. Divino-matic Rod"
Inst27Quest6_Level = "47"
Inst27Quest6_Attain = "40"
Inst27Quest6_Aim = "Bring the Divino-matic Rod to Chief Engineer Bilgewhizzle in Gadgetzan."
Inst27Quest6_Location = "Chief Engineer Bilgewhizzle (Tanaris - Gadgetzan; "..YELLOW.."52,28"..WHITE..")"
Inst27Quest6_Note = "You get the Rod from Sergeant Bly. You can find him at "..YELLOW.."[4]"..WHITE.." after the Temple event."
Inst27Quest6_Prequest = "None"
Inst27Quest6_Folgequest = "None"
--
Inst27Quest6name1 = "Masons Fraternity Ring"
Inst27Quest6name2 = "Engineer's Guild Headpiece"

--Quest 7 Alliance
Inst27Quest7 = "7. Gahz'rilla"
Inst27Quest7_Level = "50"
Inst27Quest7_Attain = "40"
Inst27Quest7_Aim = "Bring Gahz'rilla's Electrified Scale to Wizzle Brassbolts in the Shimmering Flats."
Inst27Quest7_Location = "Wizzle Brassbolts (Thousands Needles - Mirage Raceway; "..YELLOW.."78,77"..WHITE..")"
Inst27Quest7_Note = "You get the prequest from Klockmort Spannerspan (Ironforge - Tinkertown; "..YELLOW.."68,46"..WHITE.."). It is not necessary to have the prequest to get the Gahz'rilla quest.\nYou summon Gahz'rilla at "..YELLOW.."[6]"..WHITE.." by banging the gong. The Mallet of Zul'Farrak is no longer required."
Inst27Quest7_Prequest = "The Brassbolts Brothers"
Inst27Quest7_Folgequest = "None"
Inst27Quest7PreQuest = "true"
--
Inst27Quest7name1 = "Carrot on a Stick"


--Quest 1 Horde
Inst27Quest1_HORDE = "1. The Spider God"
Inst27Quest1_HORDE_Level = "45"
Inst27Quest1_HORDE_Attain = "40"
Inst27Quest1_HORDE_Aim = "Read from the Tablet of Theka to learn the name of the Witherbark spider god, then return to Master Gadrin."
Inst27Quest1_HORDE_Location = "Meister Gadrin (Durotar - Sen'jin Village; "..YELLOW.."55,74"..WHITE..")"
Inst27Quest1_HORDE_Note = "The Questline starts at a Venom Bottle, which is found on tables in Troll Villages in The Hinterlands.\nYou find the Tablet at "..YELLOW.."[2]"..WHITE.."."
Inst27Quest1_HORDE_Prequest = "Venom Bottles -> Consult Master Gadrin"
Inst27Quest1_HORDE_Folgequest = "Summoning Shadra"
Inst27Quest1PreQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 2 Horde  (same as Quest 1 Alliance)
Inst27Quest2_HORDE = "2. Troll Temper"
Inst27Quest2_HORDE_Level = Inst27Quest1_Level
Inst27Quest2_HORDE_Attain = Inst27Quest1_Attain
Inst27Quest2_HORDE_Aim = Inst27Quest1_Aim
Inst27Quest2_HORDE_Location = Inst27Quest1_Location
Inst27Quest2_HORDE_Note = Inst27Quest1_Note
Inst27Quest2_HORDE_Prequest = Inst27Quest1_Prequest
Inst27Quest2_HORDE_Folgequest = Inst27Quest1_Folgequest
-- No Rewards for this quest

--Quest 3 Horde  (same as Quest 2 Alliance)
Inst27Quest3_HORDE = "3. Scarab Shells"
Inst27Quest3_HORDE_Level = Inst27Quest2_Level
Inst27Quest3_HORDE_Attain = Inst27Quest2_Attain
Inst27Quest3_HORDE_Aim = Inst27Quest2_Aim
Inst27Quest3_HORDE_Location = Inst27Quest2_Location
Inst27Quest3_HORDE_Note = Inst27Quest2_Note
Inst27Quest3_HORDE_Prequest = Inst27Quest2_Prequest
Inst27Quest3_HORDE_Folgequest = Inst27Quest2_Folgequest
Inst27Quest3PreQuest_HORDE = Inst27Quest2PreQuest
-- No Rewards for this quest

--Quest 4 Horde  (same as Quest 3 Alliance - no prequest)
Inst27Quest4_HORDE = "4. Tiara of the Deep"
Inst27Quest4_HORDE_Level = Inst27Quest3_Level
Inst27Quest4_HORDE_Attain = Inst27Quest3_Attain
Inst27Quest4_HORDE_Aim = Inst27Quest3_Aim
Inst27Quest4_HORDE_Location = Inst27Quest3_Location
Inst27Quest4_HORDE_Note = "Hydromancer Velratha drops the Tiara of the Deep at "..YELLOW.."[6]"..WHITE.."."
Inst27Quest4_HORDE_Prequest = "None"
Inst27Quest4_HORDE_Folgequest = Inst27Quest3_Folgequest
--
Inst27Quest4name1_HORDE = Inst27Quest3name1
Inst27Quest4name2_HORDE = Inst27Quest3name2

--Quest 5 Horde  (same as Quest 5 Alliance)
Inst27Quest5_HORDE = Inst27Quest5
Inst27Quest5_HORDE_Level = Inst27Quest5_Level
Inst27Quest5_HORDE_Attain = Inst27Quest5_Attain
Inst27Quest5_HORDE_Aim = Inst27Quest5_Aim
Inst27Quest5_HORDE_Location = Inst27Quest5_Location
Inst27Quest5_HORDE_Note = Inst27Quest5_Note
Inst27Quest5_HORDE_Prequest = Inst27Quest5_Prequest
Inst27Quest5_HORDE_Folgequest = Inst27Quest5_Folgequest
Inst27Quest5PreQuest_HORDE = Inst27Quest5Prequest
-- No Rewards for this quest

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst27Quest6_HORDE = Inst27Quest6
Inst27Quest6_HORDE_Level = Inst27Quest6_Level
Inst27Quest6_HORDE_Attain = Inst27Quest6_Attain
Inst27Quest6_HORDE_Aim = Inst27Quest6_Aim
Inst27Quest6_HORDE_Location = Inst27Quest6_Location
Inst27Quest6_HORDE_Note = Inst27Quest6_Note
Inst27Quest6_HORDE_Prequest = Inst27Quest6_Prequest
Inst27Quest6_HORDE_Folgequest = Inst27Quest6_Folgequest
--
Inst27Quest6name1_HORDE = Inst27Quest6name1
Inst27Quest6name2_HORDE = Inst27Quest6name2

--Quest 7 Horde  (same as Quest 7 Alliance - no prequest)
Inst27Quest7_HORDE = Inst27Quest7
Inst27Quest7_HORDE_Level = Inst27Quest7_Level
Inst27Quest7_HORDE_Attain = Inst27Quest7_Attain
Inst27Quest7_HORDE_Aim = Inst27Quest7_Aim
Inst27Quest7_HORDE_Location = Inst27Quest7_Location
Inst27Quest7_HORDE_Note = "You summon Gahz'rilla at "..YELLOW.."[6]"..WHITE.." by banging the gong. The Mallet of Zul'Farrak is no longer required."
Inst27Quest7_HORDE_Prequest = "None"
Inst27Quest7_HORDE_Folgequest = Inst27Quest7_Folgequest
--
Inst27Quest7name1_HORDE = Inst27Quest7name1


--------------- INST28 - Zul'Gurub (ZG) ---------------

--------------- INST29 - Gnomeregan (Gnomer) ---------------

Inst29Story = "Located in Dun Morogh, the technological wonder known as Gnomeregan has been the gnomes' capital city for generations. Recently, a hostile race of mutant troggs infested several regions of Dun Morogh - including the great gnome city. In a desperate attempt to destroy the invading troggs, High Tinker Mekkatorque ordered the emergency venting of the city's radioactive waste tanks. Several gnomes sought shelter from the airborne pollutants as they waited for the troggs to die or flee. Unfortunately, though the troggs became irradiated from the toxic assault - their siege continued, unabated. Those gnomes who were not killed by noxious seepage were forced to flee, seeking refuge in the nearby dwarven city of Ironforge. There, High Tinker Mekkatorque set out to enlist brave souls to help his people reclaim their beloved city. It is rumored that Mekkatorque's once-trusted advisor, Mekgineer Thermaplugg, betrayed his people by allowing the invasion to happen. Now, his sanity shattered, Thermaplug remains in Gnomeregan - furthering his dark schemes and acting as the city's new techno-overlord."
Inst29Caption = "Gnomeregan"
Inst29QAA = "11 Quests"
Inst29QAH = "6 Quests"

--Quest 1 Alliance
Inst29Quest1 = "1. Save Techbot's Brain!"
Inst29Quest1_Level = "26"
Inst29Quest1_Attain = "20"
Inst29Quest1_Aim = "Bring Techbot's Memory Core to Tinkmaster Overspark in Ironforge."
Inst29Quest1_Location = "Tinkmaster Overspark (Ironforge - Tinkertown; "..YELLOW.."69,50"..WHITE..")"
Inst29Quest1_Note = "You get the prequest from Brother Sarno (Stormwind - Cathedral Square; "..YELLOW.."50.9, 47.8"..WHITE..").\nYou find Techbot before you enter the instance near the backdoor, at "..YELLOW.."[4] on Entrance Map"..WHITE.."."
Inst29Quest1_Prequest = "Tinkmaster Overspark"
Inst29Quest1_Folgequest = "None"
Inst29Quest1PreQuest = "true"
-- No Rewards for this quest

--Quest 2 Alliance
Inst29Quest2 = "2. Gnogaine"
Inst29Quest2_Level = "27"
Inst29Quest2_Attain = "20"
Inst29Quest2_Aim = "Use the Empty Leaden Collection Phial on Irradiated Invaders or Irradiated Pillagers to collect radioactive fallout. Once it is full, take it back to Ozzie Togglevolt in Kharanos."
Inst29Quest2_Location = "Ozzie Togglevolt (Dun Morogh - Kharanos; "..YELLOW.."45,49"..WHITE..")"
Inst29Quest2_Note = "You get the prequest from Gnoarn (Ironforge - Tinkertown; "..YELLOW.."69,50"..WHITE..").\nTo get fallout you musst use the Phial on "..RED.."alive"..WHITE.." Irradiated Invaders or Irradiated Pillagers."
Inst29Quest2_Prequest = "The Day After"
Inst29Quest2_Folgequest = "The Only Cure is More Green Glow"
Inst29Quest2PreQuest = "true"
-- No Rewards for this quest

--Quest 3 Alliance
Inst29Quest3 = "3. The Only Cure is More Green Glow"
Inst29Quest3_Level = "30"
Inst29Quest3_Attain = "20"
Inst29Quest3_Aim = "Travel to Gnomeregan and bring back High Potency Radioactive Fallout. Be warned, the fallout is unstable and will collapse rather quickly.\nOzzie will also require your Heavy Leaden Collection Phial when the task is complete."
Inst29Quest3_Location = "Ozzie Togglevolt (Dun Morogh - Kharanos; "..YELLOW.."45,49"..WHITE..")"
Inst29Quest3_Note = "To get fallout you must use the Phial on "..RED.."alive"..WHITE.." Irradiated Slimes or Horrors."
Inst29Quest3_Prequest = "Gnogaine"
Inst29Quest3_Folgequest = "None"
Inst29Quest3FQuest = "true"
-- No Rewards for this quest

--Quest 4 Alliance
Inst29Quest4 = "4. Gyrodrillmatic Excavationators"
Inst29Quest4_Level = "30"
Inst29Quest4_Attain = "20"
Inst29Quest4_Aim = "Bring twenty-four Robo-mechanical Guts to Shoni in Stormwind."
Inst29Quest4_Location = "Shoni the Silent (Stormwind - Dwarven District; "..YELLOW.."62.6, 34.1"..WHITE..")"
Inst29Quest4_Note = "All Robots can drop the Robo-mechanical Guts."
Inst29Quest4_Prequest = "None"
Inst29Quest4_Folgequest = "None"
--
Inst29Quest4name1 = "Shoni's Disarming Tool"
Inst29Quest4name2 = "Shilly Mitts"

--Quest 5 Alliance
Inst29Quest5 = "5. Essential Artificials"
Inst29Quest5_Level = "30"
Inst29Quest5_Attain = "24"
Inst29Quest5_Aim = "Bring 12 Essential Artificials to Klockmort Spannerspan in Ironforge."
Inst29Quest5_Location = "Klockmort Spannerspan (Ironforge - Tinkertown; "..YELLOW.."68,46"..WHITE..")"
Inst29Quest5_Note = "You get the prequest from Mathiel (Darnassus - Warrior's Terrace; "..YELLOW.."59,45"..WHITE.."). The prequest is only a pointer quest and is not required to get this quest.\nThe Essential Artificials come from machines scattered around the instance."
Inst29Quest5_Prequest = "Klockmort's Essentials"
Inst29Quest5_Folgequest = "None"
Inst29Quest5PreQuest = "true"
-- No Rewards for this quest

--Quest 6 Alliance
Inst29Quest6 = "6. Data Rescue"
Inst29Quest6_Level = "30"
Inst29Quest6_Attain = "25"
Inst29Quest6_Aim = "Bring a Prismatic Punch Card to Master Mechanic Castpipe in Ironforge."
Inst29Quest6_Location = "Master Mechanic Castpipe (Ironforge - Tinkertown; "..YELLOW.."69,48"..WHITE..")"
Inst29Quest6_Note = "You get the prequest from Gaxim Rustfizzle (Stonetalon Mountains; "..YELLOW.."59,67"..WHITE.."). The prequest is only a pointer quest and is not required to get this quest.\nThe white card is a random drop. You find the first terminal next to the back entrance before you enter the instance at "..YELLOW.."[3] on Entrance Map"..WHITE..". The 3005-B is at "..YELLOW.."[3]"..WHITE..", the 3005-C at "..YELLOW.."[5]"..WHITE.." and the 3005-D is at "..YELLOW.."[6]"..WHITE.."."
Inst29Quest6_Prequest = "Castpipe's Task"
Inst29Quest6_Folgequest = "None"
Inst29Quest6PreQuest = "true"
--
Inst29Quest6name1 = "Repairman's Cape"
Inst29Quest6name2 = "Mechanic's Pipehammer"

--Quest 7 Alliance
Inst29Quest7 = "7. A Fine Mess"
Inst29Quest7_Level = "30"
Inst29Quest7_Attain = "20"
Inst29Quest7_Aim = "Escort Kernobee to the Clockwerk Run exit and then report to Scooty in Booty Bay."
Inst29Quest7_Location = "Kernobee (Gnomeregan; "..YELLOW.."[3]"..WHITE..")"
Inst29Quest7_Note = "Escort quest! You find Scooty in Stranglethorn Vale - Booty Bay ("..YELLOW.."27,77"..WHITE..")."
Inst29Quest7_Prequest = "None"
Inst29Quest7_Folgequest = "None"
--
Inst29Quest7name1 = "Fire-welded Bracers"
Inst29Quest7name2 = "Fairywing Mantle"

--Quest 8 Alliance
Inst29Quest8 = "8. The Grand Betrayal"
Inst29Quest8_Level = "35"
Inst29Quest8_Attain = "25"
Inst29Quest8_Aim = "Venture to Gnomeregan and kill Mekgineer Thermaplugg. Return to High Tinker Mekkatorque when the task is complete."
Inst29Quest8_Location = "High Tinker Mekkatorque (Ironforge - Tinkertown; "..YELLOW.."68,48"..WHITE..")"
Inst29Quest8_Note = "You find Thermaplugg at "..YELLOW.."[8]"..WHITE..". He is the last boss in Gnomeregan.\nDuring the fight you have to disable the columns through pushing the button on the side."
Inst29Quest8_Prequest = "None"
Inst29Quest8_Folgequest = "None"
--
Inst29Quest8name1 = "Civinad Robes"
Inst29Quest8name2 = "Triprunner Dungarees"
Inst29Quest8name3 = "Dual Reinforced Leggings"

--Quest 9 Alliance
Inst29Quest9 = "9. Grime-Encrusted Ring"
Inst29Quest9_Level = "34"
Inst29Quest9_Attain = "28"
Inst29Quest9_Aim = "Figure out a way to remove the grime from the Grime-Encrusted Ring."
Inst29Quest9_Location = "Grime-Encrusted Ring (random drop from Dark Iron Agents in Gnomeregan)"
Inst29Quest9_Note = "The Ring can be cleaned off at the Sparklematic 5200 in the Clean Room at "..YELLOW.."[2]"..WHITE.."."
Inst29Quest9_Prequest = "None"
Inst29Quest9_Folgequest = "Return of the Ring"
-- No Rewards for this quest

--Quest 10 Alliance
Inst29Quest10 = "10. Return of the Ring"
Inst29Quest10_Level = "34"
Inst29Quest10_Attain = "28"
Inst29Quest10_Aim = "You may either keep the ring, or you may find the person responsible for the imprint and engravings on the inside of the band."
Inst29Quest10_Location = "Brilliant Gold Ring (obtained from Grime-Encrusted Ring quest)"
Inst29Quest10_Note = "Turns in to Talvash del Kissel (Ironforge - Mystic Ward; "..YELLOW.."36,3"..WHITE.."). The followup to enhance the ring is optional."
Inst29Quest10_Prequest = "Grime-Encrusted Ring"
Inst29Quest10_Folgequest = "Gnome Improvement"
Inst29Quest10FQuest = "true"
--
Inst29Quest10name1 = "Brilliant Gold Ring"

--Quest 11 Alliance
Inst29Quest11 = "11. The Sparklematic 5200!"
Inst29Quest11_Level = "30"
Inst29Quest11_Attain = "25"
Inst29Quest11_Aim = "Insert a Grime-Encrusted Item into the Sparklematic 5200, and be sure to have three silver coins to start the machine."
Inst29Quest11_Location = "Sparklematic 5200 (Gnomeregan - The Clean Room; "..YELLOW.."[2]"..WHITE..")"
Inst29Quest11_Note = "You can repeat this quest for all the Grime-Encrusted Items you have."
Inst29Quest11_Prequest = "None"
Inst29Quest11_Folgequest = "None"
--
Inst29Quest11name1 = "Sparklematic-Wrapped Box"


--Quest 1 Horde
Inst29Quest1_HORDE = "1. Gnomer-gooooone!"
Inst29Quest1_HORDE_Level = "35"
Inst29Quest1_HORDE_Attain = "20"
Inst29Quest1_HORDE_Aim = "Wait for Scooty to calibrate the Goblin Transponder."
Inst29Quest1_HORDE_Location = "Scooty (Stranglethorn Vale - Booty Bay; "..YELLOW.."27,77"..WHITE..")"
Inst29Quest1_HORDE_Note = "You get the prequest from Sovik (Orgrimmar - Valley of Honor; "..YELLOW.."75,25"..WHITE..").\nWhen you complete this quest you can use the transponder in Booty Bay."
Inst29Quest1_HORDE_Prequest = "Chief Engineer Scooty"
Inst29Quest1_HORDE_Folgequest = "None"
Inst29Quest1PreQuest_HORDE = "true"
--
Inst29Quest1name1_HORDE = "Goblin Transponder"

--Quest 2 Horde  (same as Quest 7 Alliance)
Inst29Quest2_HORDE = "2. A Fine Mess"
Inst29Quest2_HORDE_Level = Inst29Quest7_Level
Inst29Quest2_HORDE_Attain = Inst29Quest7_Attain
Inst29Quest2_HORDE_Aim = Inst29Quest7_Aim
Inst29Quest2_HORDE_Location = Inst29Quest7_Location
Inst29Quest2_HORDE_Note = Inst29Quest7_Note
Inst29Quest2_HORDE_Prequest = Inst29Quest7_Prequest
Inst29Quest2_HORDE_Folgequest = Inst29Quest7_Folgequest
--
Inst29Quest2name1_HORDE = Inst29Quest7name1
Inst29Quest2name2_HORDE = Inst29Quest7name2

--Quest 3 Horde
Inst29Quest3_HORDE = "3. Rig Wars"
Inst29Quest3_HORDE_Level = "35"
Inst29Quest3_HORDE_Attain = "25"
Inst29Quest3_HORDE_Aim = "Retrieve the Rig Blueprints and Thermaplugg's Safe Combination from Gnomeregan and bring them to Nogg in Orgrimmar."
Inst29Quest3_HORDE_Location = "Nogg (Orgrimmar - Valley of Honor; "..YELLOW.."75,25"..WHITE..")"
Inst29Quest3_HORDE_Note = "You find Thermaplugg at "..YELLOW.."[8]"..WHITE..". He is the last boss in Gnomeregan.\nDuring the fight you have to disable the columns through pushing the button on the side."
Inst29Quest3_HORDE_Prequest = "None"
Inst29Quest3_HORDE_Folgequest = "None"
--
Inst29Quest3name1_HORDE = "Civinad Robes"
Inst29Quest3name2_HORDE = "Triprunner Dungarees"
Inst29Quest3name3_HORDE = "Dual Reinforced Leggings"

--Quest 4 Horde  (same as Quest 9 Alliance)
Inst29Quest4_HORDE = "4. Grime-Encrusted Ring"
Inst29Quest4_HORDE_Level = Inst29Quest9_Level
Inst29Quest4_HORDE_Attain = Inst29Quest9_Attain
Inst29Quest4_HORDE_Aim = Inst29Quest9_Aim
Inst29Quest4_HORDE_Location = Inst29Quest9_Location
Inst29Quest4_HORDE_Note = Inst29Quest9_Note
Inst29Quest4_HORDE_Prequest = Inst29Quest9_Prequest
Inst29Quest4_HORDE_Folgequest = Inst29Quest9_Folgequest
-- No Rewards for this quest

--Quest 5 Horde
Inst29Quest5_HORDE = "5. Return of the Ring"
Inst29Quest5_HORDE_Level = "34"
Inst29Quest5_HORDE_Attain = "28"
Inst29Quest5_HORDE_Aim = "You may either keep the ring, or you may find the person responsible for the imprint and engravings on the inside of the band."
Inst29Quest5_HORDE_Location = "Brilliant Gold Ring (obtained from Grime-Encrusted Ring quest)"
Inst29Quest5_HORDE_Note = "Turns in to Nogg (Orgrimmar - The Valley of Honor; "..YELLOW.."75,25"..WHITE.."). The followup to enhance the ring is optional."
Inst29Quest5_HORDE_Prequest = "Grime-Encrusted Ring"
Inst29Quest5_HORDE_Folgequest = "Nogg's Ring Redo"
Inst29Quest5FQuest_HORDE = "true"
--
Inst29Quest5name1_HORDE = "Brilliant Gold Ring"

--Quest 6 Horde
Inst29Quest6_HORDE = "6. The Sparklematic 5200!"
Inst29Quest6_HORDE_Level = "30"
Inst29Quest6_HORDE_Attain = "25"
Inst29Quest6_HORDE_Aim = "Insert a Grime-Encrusted Item into the Sparklematic 5200, and be sure to have three silver coins to start the machine."
Inst29Quest6_HORDE_Location = "Sparklematic 5200 (Gnomeregan - The Clean Room; "..YELLOW.."[2]"..WHITE..")"
Inst29Quest6_HORDE_Note = "You can repeat this quest for all the Grime-Encrusted Items you have."
Inst29Quest6_HORDE_Prequest = "None"
Inst29Quest6_HORDE_Folgequest = "None"
--
Inst29Quest6name1_HORDE = "Sparklematic-Wrapped Box"


--------------- INST95 - Glittermurk Mines (GMM) ---------------
Inst95Caption = "Glittermurk Mines"
Inst95QAA = "Coming Soon"
Inst95QAH = "Coming Soon"

--------------- INST96 - Baradin Hold (BH) ---------------
Inst96Caption = "Baradin Hold"
Inst96QAA = "Coming Soon"
Inst96QAH = "Coming Soon"

--------------- INST97 - Stonetalon Caverns (STC) ---------------
Inst97Caption = "Stonetalon Caverns"
Inst97QAA = "Coming Soon"
Inst97QAH = "Coming Soon"

---------------------------------------------------
---------------- BATTLEGROUNDS --------------------
---------------------------------------------------



--------------- INST33 - Alterac Valley (AV) ---------------
Inst33Caption = "Alterac Valley"

--------------- INST34 - Arathi Basin (AB) ---------------
Inst34Caption = "Arathi Basin"

--------------- INST35 - Warsong Gulch (WSG) ---------------
Inst35Story = "Nestled in the southern region of Ashenvale forest, Warsong Gulch is near the area where Grom Hellscream and his Orcs chopped away huge swaths of forest during the events of the Third War. Some orcs have remained in the vicinity, continuing their deforestation to fuel the Horde's expansion. They call themselves the Warsong Outriders.\nThe Night Elves, who have begun a massive push to retake the forests of Ashenvale, are now focusing their attention on ridding their land of the Outriders once and for all. And so, the Silverwing Sentinels have answered the call and sworn that they will not rest until every last Orc is defeated and cast out of Warsong Gulch. "
Inst35Caption = "Warsong Gulch"

--------------- INST101 - Gilijim's Isle (GI) ---------------
Inst101Caption = "Gilijim's Isle"


---------------------------------------------------
---------------- OUTDOOR RAIDS --------------------
---------------------------------------------------



--------------- INST30 - Dragons of Nightmare ---------------

--Inst30Story = {
--  ["Page1"] = "There is a disturbance at the Great Trees. A new threat menaces these secluded areas found in Ashenvale, Duskwood, Feralas, and Hinterlands. Four great guardians of the Green Dragonflight have arrived from the Dream, but these once-proud protectors now seek only destruction and death. Take arms with your fellows and march to these hidden groves -- only you can defend Azeroth from the corruption they bring.",
--  ["Page2"] = "Ysera, the great Dreaming dragon Aspect rules over the enigmatic green dragonflight. Her domain is the fantastic, mystical realm of the Emerald Dream - and it is said that from there she guides the evolutionary path of the world itself. She is the protector of nature and imagination, and it is the charge of her flight to guard all of the Great Trees across the world, which only druids use to enter the Dream itself. In recent times, Ysera's most trusted lieutenants have been warped by a dark new power within the Emerald Dream. Now these wayward sentinels have passed through the Great Trees into Azeroth, intending to spread madness and terror throughout the mortal kingdoms. Even the mightiest of adventurers would be well advised to give the dragons a wide berth, or suffer the consequences of their misguided wrath.",
--  ["Page3"] = "Lethon's exposure to the aberration within the Emerald Dream not only darkened the hue of the mighty dragon's scales, but also empowered him with the ability to extract malevolent shades from his enemies. Once joined with their master, the shades imbue the dragon with healing energies. It should come as no surprise, then, that Lethon is considered to be among the most formidable of Ysera's wayward lieutenants",
--  ["Page4"] = "A  mysterious dark power within the Emerald Dream has transformed the once-majestic Emeriss into a rotting, diseased monstrosity. Reports from the few who have survived encounters with the dragon have told horrifying tales of putrid mushrooms erupting from the corpses of their dead companions. Emeriss is truly the most gruesome and appalling of Ysera's estranged green dragons.",
--  ["Page5"] = "Taerar was perhaps the most affected of Ysera's rogue lieutenants. His interaction with the dark force within the Emerald Dream shattered Taerar's sanity as well as his corporeal form. The dragon now exists as a specter with the ability to split into multiple entities, each of which possesses destructive magical powers. Taerar is a cunning and relentless foe who is intent on turning the madness of his existence into reality for the inhabitants of Azeroth.",
--  ["Page6"] = "Once one of Ysera's most trusted lieutenants, Ysondre has now gone rogue, sewing terror and chaos across the land of Azeroth. Her formerly beneficent healing powers have given way to dark magics, enabling her to cast smoldering lightning waves and summon the aid of fiendish druids. Ysondre and her kin also possess the ability to induce sleep, sending her unfortunate mortal foes to the realm of their most terrifying nightmares.",
--  ["MaxPages"] = "6",
--};
--Inst30Caption = "Dragons of Nightmare"
--Inst30Caption2 = "Ysera and the Green Dragonflight"
--Inst30Caption3 = "Lethon"
--Inst30Caption4 = "Emeriss"
--Inst30Caption5 = "Taerar"
--Inst30Caption6 = "Ysondre"
--Inst30QAA = "1 Quest"
--Inst30QAH = "1 Quest"

--Quest 1 Alliance
--Inst30Quest1 = "1. Shrouded in Nightmare"
--Inst30Quest1_Level = "60"
--Inst30Quest1_Attain = "60"
--Inst30Quest1_Aim = "Find someone capable of deciphering the meaning behind the Nightmare Engulfed Object.\n\nPerhaps a druid of great power could assist you."
--Inst30Quest1_Location = "Nightmare Engulfed Object (drops from Emeriss, Taerar, Lethon or Ysondre)"
--Inst30Quest1_Note = "Quest turns in to Keeper Remulos at (Moonglade - Shrine of Remulos; "..YELLOW.."36,41"..WHITE.."). Reward listed is for the followup."
--Inst30Quest1_Prequest = "None"
--Inst30Quest1_Folgequest = "Waking Legends"
----
--Inst30Quest1name1 = "Malfurion's Signet Ring"


--Quest 1 Horde  (same as Quest 1 Alliance)
--Inst30Quest1_HORDE = Inst30Quest1
--Inst30Quest1_HORDE_Level = Inst30Quest1_Level
--Inst30Quest1_HORDE_Attain = Inst30Quest1_Attain
--Inst30Quest1_HORDE_Aim = Inst30Quest1_Aim
--Inst30Quest1_HORDE_Location = Inst30Quest1_Location
--Inst30Quest1_HORDE_Note = Inst30Quest1_Note
--Inst30Quest1_HORDE_Prequest = Inst30Quest1_Prequest
--Inst30Quest1_HORDE_Folgequest = Inst30Quest1_Folgequest
----
--Inst30Quest1name1_HORDE = Inst30Quest1name1



--------------- INST31 - Azuregos ---------------
--Inst31Story = "Before the Great Sundering, the night elf city of Eldarath flourished in the land that is now known as Azshara. It is believed that many ancient and powerful Highborne artifacts may be found among the ruins of the once-mighty stronghold. For countless generations, the Blue Dragon Flight has safeguarded powerful artifacts and magical lore, ensuring that they do not fall into mortal hands. The presence of Azuregos, the blue dragon, seems to suggest that items of extreme significance, perhaps the fabled Vials of Eternity themselves, may be found in the wilderness of Azshara. Whatever Azuregos seeks, one thing is certain: he will fight to the death to defend Azshara's magical treasures."
--Inst31Caption = "Azuregos"
--Inst31QAA = "1 Quest"
--Inst31QAH = "1 Quest"
--
--Quest 1 Alliance
--Inst31Quest1 = "1. Ancient Sinew Wrapped Lamina "..hunter.."(Hunter)"
--Inst31Quest1_Level = "60"
--Inst31Quest1_Attain = "60"
--Inst31Quest1_Aim = "Hastat the Ancient has asked that you bring him a Mature Blue Dragon Sinew. Should you find this sinew, return it to Hastat in Felwood."
--Inst31Quest1_Location = "Hastat the Ancient (Felwood - Irontree Woods; "..YELLOW.."48,24"..WHITE..")"
--Inst31Quest1_Note = "Kill Azuregos to get the Mature Blue Dragon Sinew. He walks around the middle of the southern peninsula in Azshara near "..YELLOW.."[1]"..WHITE.."."
--Inst31Quest1_Prequest = "The Ancient Leaf ("..YELLOW.."Molten Core"..WHITE..")"
--Inst31Quest1_Folgequest = "None"
--Inst31Quest1PreQuest = "true"
----
--Inst31Quest1name1 = "Ancient Sinew Wrapped Lamina"


--Quest 1 Horde  (same as Quest 1 Alliance)
--Inst31Quest1_HORDE = Inst31Quest1
--Inst31Quest1_HORDE_Level = Inst31Quest1_Level
--Inst31Quest1_HORDE_Attain = Inst31Quest1_Attain
--Inst31Quest1_HORDE_Aim = Inst31Quest1_Aim
--Inst31Quest1_HORDE_Location = Inst31Quest1_Location
--Inst31Quest1_HORDE_Note = Inst31Quest1_Note
--Inst31Quest1_HORDE_Prequest = Inst31Quest1_Prequest
--Inst31Quest1_HORDE_Folgequest = Inst31Quest1_Folgequest
--Inst31Quest1PreQuest_HORDE = Inst31Quest1PreQuest
--
--Inst31Quest1name1_HORDE = Inst31Quest1name1



--------------- INST64 - Doom Lord Kazzak ---------------

--
--Inst64Story = {
--  ["Page1"] = "When the Burning Legion began its second invasion of Azeroth, Lord Kazzak served as one of the unholy army's greatest generals. At that time the Legion possessed a powerful weapon called the Glaive of the Aspects. Forged by demons during the War of the Ancients, the glaive was imbued with the forces of earth, time, dream, magic, and life: powers taken from the mighty dragons. Even so, Archimonde and his champions were defeated during the Battle of Mount Hyjal, and the glaive was shattered. Knowing the Third War had been decided, Kazzak was forced to withdraw. In the war's aftermath, the shards of the glaive were hidden away for safekeeping.",
--  ["Page2"] = "Recently Kazzak and his minions reactivated the Dark Portal, and Kazzak went through the portal to take command of the Legion's forces in Outland. In his absence, he entrusted his most powerful lieutenant, Highlord Kruul, with retrieving the Aspect Shards. In time Kruul succeeded, and the mighty glaive was reforged.\n\nWith the Glaive of the Aspects and the raging desire to scour all life from the universe, the Legion may prove unstoppable.",
--  ["MaxPages"] = "2",
--};
--Inst64Caption = "Doom Lord Kazzak"
--Inst64QAA = "No Quests"
--Inst64QAH = "No Quests"



--------------- INST65 - Doomwalker ---------------


---------------------------
--- AQ Instance Numbers ---
---------------------------

-- 1  = Deadmines (VC)
-- 2  = Wailing Caverns (WC)
-- 3  = Ragefire Chasm (RFC)
-- 4  = Uldaman (ULD)
-- 5  = Blackrock Depths (BRD)
-- 6  = Blackwing Lair (BWL)
-- 7  = Blackfathom Deeps (BFD)
-- 8  = Lower Blackrock Spire (LBRS)
-- 9  = Upper Blackrock Spire (UBRS)
-- 10 = Dire Maul East (DM)
-- 11 = Dire Maul North (DM)
-- 12 = Dire Maul West (DM)
-- 13 = Maraudon (Mara)
-- 14 = Molten Core (MC)
-- 15 = Old Naxxramas (removed)
-- 16 = Onyxia's Lair (Ony)
-- 17 = Razorfen Downs (RFD)
-- 18 = Razorfen Kraul (RFK)
-- 19 = SM: Library (SM Lib)
-- 20 = Scholomance (Scholo)
-- 21 = Shadowfang Keep (SFK)
-- 22 = Stratholme (Strat)
-- 24 = The Stockade (Stocks)
-- 25 = Sunken Temple (ST)
-- 27 = Zul'Farrak (ZF)
-- 28 = Zul'Gurub (ZG)
-- 29 = Gnomeregan (Gnomer)
-- 30 = Four Dragons
-- 31 = Azuregos
-- 33 = Alterac Valley (AV)
-- 34 = Arathi Basin (AB)
-- 35 = Warsong Gulch (WSG)
-- 36 =  default "rest"
-- 57 = SM: Armory (SM Arm)
-- 58 = SM: Cathedral (SM Cath)
-- 59 = SM: Graveyard (SM GY)
-- 64 = Doom Lord Kazzak
-- 95 = Glittermurk Mines (GMM)
-- 96 = Baradin Hold (BH)
-- 97 = Stonetalon Caverns (STC)
-- 101 = Gilijim's Isle (GI)
