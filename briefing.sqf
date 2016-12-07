// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: briefing.sqf

if (!hasInterface) exitWith {};

_trimName = { _this select [1, count _this - 2] };
_aKeyName = { _arr = actionKeysNamesArray _this; if (count _arr == 0) exitWith {"<UNDEFINED>"}; _arr select 0 };

#define NKEYNAME(DIK) (keyName DIK call _trimName)
#define AKEYNAME(ACT) (ACT call _aKeyName)

waitUntil {!isNull player};

player createDiarySubject ["serverrules", "Server Rules"];
player createDiarySubject ["infos", "Infos and Help"];
player createDiarySubject ["changelog", "Changelog"];
player createDiarySubject ["admins", "Admin List"];
player createDiarySubject ["credits", "Credits"];

player createDiaryRecord ["serverrules",
[
"Server Rules",
"
<br/> 1.   Hacking or cheating will get you banned.
<br/> 2.   NO Glitching or Combat logging is allowed it will cause punishment up to permanent ban.
<br/> 3.   NO blocking or building around Stores or ATM´s is allowed it will cause punishment up to permanent ban.
<br/> 4.   NO building or staying on spawn island (Xiros) Players found here get BAN.
<br/> 5.   NO VOIP IN GLOBAL. Use the channels or Teamspeak!
<br/> 6.   ONLY ENGLISH or DANISH CHATTING IS ALLOWED IN GLOBAL and SIDE-CHAT.
<br/> 7.   As Independant NO VOIP IN SIDECHAT is allowed (Writing is allowed). Use the group channels or Teamspeak!
<br/> 8.   Using or spamming with loud\long custom sound commands will cause punishment up to permanent ban.
<br/> 9.   Keep bad language to a minimum. If you have a problem with another player, take it to direct.
<br/> 10.  Support your team and its objectives. DONT steal from your team mates.
<br/> 11.  Team killing when you are in BLUFOR or OPFOR is forbidden and punishable. Play as Independent if you want to be free for all.
<br/> 12.  Respect other players.
<br/> 13.  Respect the administrators.
<br/> 14.  Camping stores is allowed. Wasteland is a HARSH survival map. Learn to deal with it and go on your way.
<br/> 15.  Bank Balances/Lost stuff etc. are non-refundable.
<br/> 16.  High builded bases are NOT allowed (Too OP), they will be deleted.
<br/> 17.  NO offending playernames is allowed.
"
]];

player createDiaryRecord ["changelog",
[
"v1.3",
"
<br/>[Added] Old Hide body back again.
<br/>[Added] Hide body replaced with Bury dead body
<br/>[Added] Cleaning of stores debris optimized heavy
<br/>[Added] Out of bounds warning function added
<br/>[Added] Environment disabled (Rabbits, Snakes etc.)
<br/>[Added] Server restarts annoucements on screen
<br/>[Added] ----------
<br/>[Fixed] Drugrunners vehicle explosion
<br/>[Added] Vehicle actions
<br/>[Changed] Server cleanup optimized. Better FPS.
<br/>[Changed] Spawning in with a Vermin, not just a pistol.
<br/>[Changed] Removed Food, Water and RepairKits at spawn. Better FPS.
<br/>[Changed] Voicechat in sidechannel
<br/>[Added] Lots of mapchanges. New Towns, Spawns, Hospital, buildings, SolarTowers etc.
<br/>[Added] New Gun and Vehicle store
<br/>[Added] Roadblock mission
<br/>[Changed] HvT when carrying more than 50K
<br/>[Added] ----------
<br/>[Changed] Launchers, Navid and SPMG more expensive
<br/>[Changed] Some tanks removed from store
<br/>[Added] New Mission Outpost bases
<br/>[Changed] Max 1 spawnbeacon per player
<br/>[Added] Many new AI missions
<br/>[Added] Airdrop
<br/>[Added] High Value Drugrunner
<br/>[Added] High Value Target show on map, more than 80K
<br/>[Added] Hide Body
<br/>[Added] ----------
<br/>[Added] Ammo truck price raised to 25K
<br/>[Added] Extra HUD removed
<br/>[Added] Some prices have been raised
<br/>[Added] ----------
<br/>[Added] Fog removed
<br/>[Added] Prices adjusted to old prices before Apex update
<br/>[Added] Mortars,GMGs and Planes removed
<br/>[Added] Statusbar added
<br/>[Added] Some map changes + added more ATMs
<br/>[Added] Weapon sway removed
<br/>[Added] Old shortcut keys added. Holster, eject etc.
<br/>[Added] Server rules added again
<br/>[Added] ----------
<br/>[Added] Tanoa version
<br/>[Added] Apex content on dev/preview branches
<br/>[Added] Sticky explosive charges
br/> [Added] Heavy towing and airlifting
<br/>[Added] Load dragged injured friendly in vehicles
<br/>[Added] Eject loaded injured friendly from vehicles
<br/>[Added] Autostabilize when loaded in medical vehicle
<br/>[Added] 'Finish off' action to slay injured enemies
<br/>[Added] Improved injured unit detection
<br/>[Added] Scoreboard persistence option for servers
<br/>[Added] Fatal PvP headshots option for servers
<br/>[Added] Custom death messages option for servers
<br/>[ADded] Auto-center heli turret on manual fire
<br/>[Added] UAV side persistence
<br/>[Added] More textures for some vehicles in store
<br/>[Added] Abandoned quadcopter cleanup
<br/>[Added] More admin menu logging
<br/>[Changed] Reduced heli missile damage
<br/>[Changed] Improved mission crate loot
<br/>[Changed] Vest armor values in general store
<br/>[Changed] Increased Mag Repack flexibility
<br/>[Changed] Toggled off autonomous on static designators
<br/>[Changed] Disabled rain due to weather desync
<br/>[Fixed] Engineer with toolkit can now always repair
<br/>[Fixed] Improved missile lock-on
<br/>[Fixed] Improvements to kill tracking system
<br/>[Fixed] Items and money not dropping on injured logout
<br/>[Fixed] Combat log timer not resetting on death
<br/>[Fixed] Player not always ejected on injury
<br/>[Fixed] Double kill/death count
<br/>[Fixed] Spawn cooldowns resetting on rejoin
<br/>[Fixed] Striders spawning without laser batteries
<br/>[Fixed] Disabled rain due to syncing issues
<br/>[Fixed] Various minor bugfixes and optimizations
"
]];

player createDiaryRecord ["credits",
[
"Credits",
"
<br/><font size='16' color='#BBBBBB'>Developed by A3Wasteland.com:</font>
<br/>	* AgentRev (TeamPlayerGaming)
<br/>	* JoSchaap (GoT/Tweakers.net)
<br/>	* MercyfulFate
<br/>	* His_Shadow (KoS/KillonSight)
<br/>	* Bewilderbeest (KoS/KillonSight)
<br/>	* Torndeco
<br/>	* Del1te (404Games)
<br/>
<br/><font size='16' color='#BBBBBB'>Original Arma 2 Wasteland missions by:</font>
<br/>	* Tonic
<br/>	* Sa-Matra
<br/>	* MarKeR
<br/>
<br/><font size='16' color='#BBBBBB'>Improved and ported to Arma 3 by 404Games:</font>
<br/>	* Deadbeat
<br/>	* Costlyy
<br/>	* Pulse
<br/>	* Domuk
<br/>
<br/><font size='16' color='#BBBBBB'>Other contributors:</font>
<br/>	* 82ndab-Bravo17 (GitHub)
<br/>	* afroVoodo (Armaholic)
<br/>	* Austerror (GitHub)
<br/>	* AWA (OpenDayZ)
<br/>	* bodybag (Gameaholic.se)
<br/>	* code34 (iniDBI)
<br/>	* Das Attorney (Jump MF)
<br/>	* Ed! (404Games forums)
<br/>	* Farooq (GitHub)
<br/>	* gtoddc (A3W forums)
<br/>	* HatchetHarry (GitHub)
<br/>	* Hub (TeamPlayerGaming)
<br/>	* k4n30 (GitHub)
<br/>	* Killzone_Kid (KillzoneKid.com)
<br/>	* Krunch (GitHub)
<br/>	* Special Thanks to LouDnl (GitHub)
<br/>	* madbull (R3F)
<br/>	* Mainfrezzer (Magnon)
<br/>	* meat147 (GitHub)
<br/>	* micovery (GitHub)
<br/>	* Na_Palm (BIS forums)
<br/>	* Outlawled (Armaholic)
<br/>	* red281gt (GitHub)
<br/>	* RockHound (BierAG)
<br/>	* s3kShUn61 (GitHub)
<br/>	* Sa-Matra (BIS forums)
<br/>	* Sanjo (GitHub)
<br/>	* SCETheFuzz (GitHub)
<br/>	* Shockwave (A3W forums)
<br/>	* SicSemperTyrannis (iniDB)
<br/>	* SPJESTER (404Games forums)
<br/>	* spunFIN (BIS forums)
<br/>	* Tonic (BIS forums)
<br/>	* wiking.at (A3W forums)
<br/>	* xx-LSD-xx (Armaholic)
<br/>	* Zenophon (BIS Forums)
<br/>	* Cael817 (A3W forums)
<br/>	* Micovery (A3W forums)
<br/>	* BadVolt (A3W forums)
<br/>	* CRE4MPIE (A3W forums)
<br/>
<br/><font size='16'>Thanks A LOT to everyone involved for the help and inspiration!</font>
"
]];

_WASD = AKEYNAME("MoveForward") + "," + AKEYNAME("MoveBack") + "," + AKEYNAME("TurnLeft") + "," + AKEYNAME("TurnRight");

player createDiaryRecord ["infos",
[
"Admin Spectate keys",
"
<br/>Admin menu Spectate camera controls:
<br/>
<br/>Shift + " + AKEYNAME("NextChannel") + " (next player)
<br/>Shift + " + AKEYNAME("PrevChannel") + " (previous player)
<br/>Ctrl + " + NKEYNAME(18) + " (exit camera)
<br/>Ctrl + " + AKEYNAME("Chat") + " (attach/detach camera from target)
<br/>Ctrl + " + NKEYNAME(35) + " (toggle target HUD)
<br/>" + AKEYNAME("NightVision") + " (nightvision, thermal)
<br/>" + _WASD + " (move camera around)
<br/>" + NKEYNAME(16) + " (move camera up)
<br/>" + NKEYNAME(44) + " (move camera down)
<br/>Mouse Move (rotate camera)
<br/>Mouse Wheel Up (increase camera speed)
<br/>Mouse Wheel Down (decrease camera speed)
<br/>Shift + " + _WASD + " (move camera around faster)
<br/>" + AKEYNAME("ShowMap") + " (open/close map - click on map to teleport camera)
"
]];

player createDiaryRecord ["infos",
[
"Player hotkeys",
"
<br/>List of player hotkeys and functions:
<br/>
<br/>" + NKEYNAME(41) + " (open player menu)
<br/>" + NKEYNAME(207) + " (toggle earplugs)
<br/>" + NKEYNAME(199) + ", " + NKEYNAME(219) + ", " + NKEYNAME(220) + " (toggle player names)
<br/>Ctrl + " + AKEYNAME("GetOut") + " (emergency eject)
<br/>" + AKEYNAME("GetOver") + " (open parachute)
<br/>Shift + " + NKEYNAME(201) + " / " + NKEYNAME(209) + " (adjust nightvision)
"
]];

player createDiaryRecord ["infos",
[
"Hints and Tips",
"
<br/><font size='18'>A3Wasteland</font>
<br/>
<br/>* At the start of the game, spread out and find supplies before worrying about where to establish a meeting place or a base, supplies are important and very valuable.
<br/>
<br/>* When picking a base location, it is best advised to pick a place that is out of the way and not so obvious such as airports, cities, map-bound bases, etc. remember, players randomly spawn in and around towns and could even spawn inside your base should you set it up in a town.
<br/>
<br/>* If you spawn in an area with no vehicles or supplies in the immediate area, DO NOT just click respawn from the pause menu, chances are if you search an area of a few hundred meters, you will find something.
<br/>
<br/>* Always be on the lookout for nightvision. they are located in the ammo crates, and there are pairs scattered throughout vehicles. You can also purchase them from the gunstores. Nighttime without them SUCKS, and if you have them, you can conduct stealth raids on enemy bases under the cover of complete darkness.
<br/>
<br/>* When you set up a base, never leave your supplies unguarded, one guard will suffice, but it is recommended you have at least 2, maybe 3 guards at base at all times.
<br/>
<br/>* There are very aggressive AI characters that spawn with most missions and will protect the mission objectives with deadly force, be aware of them.
"
]];

player createDiaryRecord ["infos",
[
"About Wasteland",
"
<br/>Wasteland is a team versus team versus team sandbox survival experience. The objective of this mission is to rally your faction, scavenge supplies, weapons, and vehicles, and destroy the other factions. It is survival at its best! Keep in mind this is a work in progress, please direct your reports to http://forums.a3wasteland.com/
<br/>
<br/>FAQ:
<br/>
<br/>Q. What am I supposed to do here?
<br/>A. See the above description
<br/>
<br/>Q. Where can I get a gun?
<br/>A. Weapons are found in one of three places, first in ammo crates that come as rewards from missions, inside and outside buildings, and second, in the gear section of the vehicles, which also randomly spawn around the map. The last place to find a gun would be at the gunshops located throughout the map. You can also find them on dead players whose bodies have not yet been looted.
<br/>
<br/>Q. What are the blue circles on the map?
<br/>A. The circles represent town limits. If friendly soldiers are in a town, you can spawn there from the re-spawn menu; however if there is an enemy presence, you will not be able to spawn there.
<br/>
<br/>Q. Why is it so dark, I cant see.
<br/>A. The server has a day/night cycle just like in the real world, and as such, night time is a factor in your survival. It is recommended that you find sources of light or use your Nightvision Goggles as the darkness sets in.
<br/>
<br/>Q. Is it ok for me to shoot my team mates?
<br/>A. If you are member of BLUFOR or OPFOR teams, then you are NOT allowed to shoot or steal items and vehicles from other players. If you play as Independent, you are free to engage anyone as well as team up with anyone you want.
<br/>
<br/>Q. Whats with the canisters, baskets and big bags?
<br/>A. This game has a food and water system that you must stay on top of if you hope to survive. You can collect food and water from food sacks and wells, or baskets and plastic canisters dropped by dead players. Food and water will also randomly spawn around the map.
<br/>
<br/>Q. I saw someone breaking a rule, what do I do?
<br/>A. Simply go into global chat and get the attention of one of the admins or visit our forums, and make a report if the offense is serious.
"
]];

player createDiaryRecord ["admins",
[
"Admin List",
"
<br/><font color='#00FFEF' size='18'>Super Admins</font>
<br/><font color='#00FFEF' size='12'>All Functions Activated</font>
<br/> * Jes

<br/><font color='#0066FF' size='18'>High Admins</font>
<br/><font color='#00FFEF' size='12'>Teleport, Spectate, Slay Delete Hacked objects</font>

<br/><font color='#002FFF' size='18'>Low Admins</font>
<br/><font color='#00FFEF' size='12'>Spectate, Slay, Delete Hacked Objects</font>
<br/> * VukDK
<br/> * Jakob SIM
<br/> * Rambo_BD
<br/> * Skovbyy
<br/> * Nessius
<br/> * Martin
"
]];