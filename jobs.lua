--[[---------------------------------------------------------------------------
DarkRP custom jobs
---------------------------------------------------------------------------
This file contains your custom jobs.
This file should also contain jobs from DarkRP that you edited.

Note: If you want to edit a default DarkRP job, first disable it in darkrp_config/disabled_defaults.lua
      Once you've done that, copy and paste the job to this file and edit it.

The default jobs can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/jobrelated.lua

For examples and explanation please visit this wiki page:
https://darkrp.miraheze.org/wiki/DarkRP:CustomJobFields

Add your custom jobs under the following line:
---------------------------------------------------------------------------]]

TEAM_CITIZEN = DarkRP.createJob("Citoyen", {
    color = Color(20, 150, 20, 255),
    model = {"models/player/Group01/male_02.mdl"},
    description = "Un simple habitant de la ville.",
    weapons = {},
    command = "citzen",
    max = 0,
    salary = 50,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Citoyens"
})

TEAM_POLICE = DarkRP.createJob("Policier", {
    color = Color(25, 25, 170, 255),
    model = {"models/player/police.mdl"},
    description = "Maintient l'ordre en ville.",
    weapons = {"weapon_pistol", "arrest_stick", "unarrest_stick", "stunstick"},
    command = "police",
    max = 4,
    salary = 75,
    admin = 0,
    vote = true,
    hasLicense = true,
    category = "Forces de l'ordre"
})

TEAM_MEDIC = DarkRP.createJob("Médecin", {
    color = Color(255, 105, 180, 255),
    model = {"models/player/Group03m/male_05.mdl"},
    description = "Soigne les citoyens contre de l'argent.",
    weapons = {"med_kit"},
    command = "medic",
    max = 2,
    salary = 70,
    admin = 0,
    vote = false,
    hasLicense = false,
    medic = true,
    category = "Citoyens"
})

TEAM_GANGSTER = DarkRP.createJob("Gangster", {
    color = Color(75, 75, 75, 255),
    model = {"models/player/Group03/male_06.mdl"},
    description = "Un criminel de la ville.",
    weapons = {"lockpick", "weapon_pistol"},
    command = "gangster",
    max = 4,
    salary = 55,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Criminels"
})

TEAM_MAYOR = DarkRP.createJob("Maire", {
    color = Color(150, 20, 20, 255),
    model = {"models/player/breen.mdl"},
    description = "Dirige la ville et crée des lois.",
    weapons = {},
    command = "maire",
    max = 1,
    salary = 100,
    admin = 0,
    vote = true,
    hasLicense = false,
    mayor = true,
    category = "Gouvernement"
})

TEAM_HITMAN = DarkRP.createJob("Tueur à gages", {
    color = Color(0, 0, 0, 255),
    model = {"models/player/phoenix.mdl"},
    description = "Accepte des contrats d'assassinat.",
    weapons = {"weapon_pistol", "weapon_knife"},
    command = "hitman",
    max = 2,
    salary = 80,
    admin = 0,
    vote = false,
    hasLicense = false,
    category = "Criminels"
})

TEAM_COOK = DarkRP.createJob("Cuisinier", {
    color = Color(255, 165, 0, 255),
    model = {"models/player/mossman.mdl"},
    description = "Vend de la nourriture aux citoyens.",
    weapons = {},
    command = "cuisinier",
    max = 2,
    salary = 65,
    admin = 0,
    vote = false,
    hasLicense = false,
    cook = true,
    category = "Citoyens"
})


--[[---------------------------------------------------------------------------
Define which team joining players spawn into and what team you change to if demoted
---------------------------------------------------------------------------]]
GAMEMODE.DefaultTeam = TEAM_CITIZEN
--[[---------------------------------------------------------------------------
Define which teams belong to civil protection
Civil protection can set warrants, make people wanted and do some other police related things
---------------------------------------------------------------------------]]
GAMEMODE.CivilProtection = {
    [TEAM_POLICE] = false,
    [TEAM_CHIEF] = false,
    [TEAM_MAYOR] = false,
}
--[[---------------------------------------------------------------------------
Jobs that are hitmen (enables the hitman menu)
---------------------------------------------------------------------------]]
DarkRP.addHitmanTeam(TEAM_MOB)
