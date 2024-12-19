local function load()
  local w = game.Workspace
  local p = game.Players.LocalPlayer
  local r = game.ReplicatedStorage
  local g = p.PlayerGui

  local Configs = {
    ["AutoGrinder3000"] = {
      ["Enabled"] = false,
      ["AttackMode"] = "VirtualInput",
      ["Weapon"] = "Combat",
      ["TweenSpeed"] = 5,
      ["CollectSaber"] = true,
      ["GrindAllFightingStyle"] = true
    },
    ["AutoStatAddition"] = {
      ["Enabled"] = false,
      ["Amount"] = 1
    },
    ["AutoSeaEvents"] = {
      ["Enabled"] = false
    },
    ["GambleMachine300"] = {
      ["Enabled"] = false
    },
  }
  
  local tweening  = false
  local place = {
    ["First sea"] = false,
    ["Second sea"] = false,
    ["Third sea"] = false,
  }
  
  local pid = game.PlaceId
  
  if pid = 2753915549 then
    place["First sea"] = true
  elseif pid = 4442272183 then
    place["Second sea"] = true
  elseif pid = 7449423635 then
    place["Third sea"] = true
  end

  if place["First sea"] = true then
    Moblist = {
			"Bandit",
			"Monkey",
			"Gorilla",
			"Pirate",
			"Brute",
			"Desert Bandit",
			"Desert Officer",
			"Snow Bandit",
			"Snowman",
			"Chief Petty Officer",
			"Sky Bandit",
			"Dark Master",
			"Toga Warrior",
			"Gladiator",
			"Military Soldier",
			"Military Spy",
			"Fishman Warrior",
			"Fishman Commando",
			"God's Guard",
			"Shanda",
			"Royal Squad",
			"Royal Soldier",
			"Galley Pirate",
			"Galley Captain"
    },
    Bosslist = {
			"The Gorilla King",
			"Bobby",
			"Yeti",
			"Mob Leader",
			"Vice Admiral",
			"Warden",
			"Chief Warden",
			"Swan",
			"Magma Admiral",
			"Fishman Lord",
			"Wysper",
			"Thunder God",
			"Cyborg",
			"Saber Expert"
    }
  elseif place["Second sea"] = true then
    Moblist = {
			"Raider",
			"Mercenary",
			"Swan Pirate",
			"Factory Staff",
			"Marine Lieutenant",
			"Marine Captain",
			"Zombie",
			"Vampire",
			"Snow Trooper",
			"Winter Warrior",
			"Lab Subordinate",
			"Horned Warrior",
			"Magma Ninja",
			"Lava Pirate",
			"Ship Deckhand",
			"Ship Engineer",
			"Ship Steward",
			"Ship Officer",
			"Arctic Warrior",
			"Snow Lurker",
			"Sea Soldier",
			"Water Fighter"
    },
    Bosslist = {
    	"Diamond",
			"Jeremy",
			"Fajita",
			"Don Swan",
			"Smoke Admiral",
			"Cursed Captain",
			"Darkbeard",
			"Order",
			"Awakened Ice Admiral",
			"Tide Keeper"
    }
  elseif place["Third sea"] = true then
    Moblist = {
			"Pirate Millionaire",
			"Dragon Crew Warrior",
			"Dragon Crew Archer",
			"Female Islander",
			"Giant Islander",
			"Marine Commodore",
			"Marine Rear Admiral",
			"Fishman Raider",
			"Fishman Captain",
			"Forest Pirate",
			"Mythological Pirate",
			"Jungle Pirate",
			"Musketeer Pirate",
			"Reborn Skeleton",
			"Living Zombie",
			"Demonic Soul",
			"Posessed Mummy",
			"Peanut Scout",
			"Peanut President",
			"Ice Cream Chef",
			"Ice Cream Commander",
			"Cookie Crafter",
			"Cake Guard",
			"Baking Staff",
			"Head Baker",
			"Cocoa Warrior",
			"Chocolate Bar Battler",
			"Sweet Thief",
			"Candy Rebel",
			"Candy Pirate",
			"Snow Demon",
			"Isle Outlaw",
			"Island Boy",
			"Sun-kissed Warrior",
			"Isle Champion"
    },
    Bosslist = {
			"Stone",
			"Island Empress",
			"Kilo Admiral",
			"Captain Elephant",
			"Beautiful Pirate",
			"rip_indra True Form",
			"Longma",
			"Soul Reaper",
			"Cake Queen"
    }
  end
end

return coroutine.wrap(load)()
