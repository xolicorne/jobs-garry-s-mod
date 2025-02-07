# Jobs pour Garry's Mod DarkRP

### Il ne reste plus qu'à changer les modèles de joueurs (Player Models)  
Exemple :
maps = {"rp_downtown_v2", "gm_construct"},,

```
TAM_SCP = DarkRP.createJob("Guard", {
    color = Color(255, 255, 255, 255),
    model = {
        "models/player/Group03/Female_01.mdl",
        "models/player/Group03/Female_02.mdl"
    },
    description = [[Tu es un poisson.]],
    weapons = {"weapon_fists","tfa_famas","tfa_glock","stunstick"},
    command = "example",
    max = 1, -- Au maximum 70 % des joueurs peuvent avoir ce métier. Définissez un nombre entier pour fixer une limite absolue.
    salary = 99999999,
    admin = 0,
    vote = false,
    hasLicense = false,

   Les champs suivants sont OPTIONNELS. Si vous n'en avez pas besoin ou si vous ne souhaitez pas les modifier par rapport à leurs valeurs par défaut, SUPPRIMEZ-les.
    NeedToChangeFrom = TEAM_CITIZEN,
    customCheck = function(ply) return ply:getDarkRPVar("money") > 10000 end,
    CustomCheckFailMsg = "You don't have enough money!", -- alternative: CustomCheckFailMsg = function(ply, jobTable) return ply:getDarkRPVar("money") < 5000 and "You're piss poor" or "You don't have enough money!" end,
    modelScale = 1.2,
    maxpocket = 20,
    maps = {"rp_downtown_v2", "gm_construct"},
    candemote = true,
    mayor = false,
    chief = false,
    medic = false,
    cook = false,
    hobo = false,
    ammo = {
        ["pistol"] = 60,
    },
    category = "Other", -- Le nom de la catégorie à laquelle il appartient. Remarque : la catégorie doit être créée !
    sortOrder = 100, -- La position de cet élément dans sa catégorie. Un nombre plus bas signifie une position plus haute.
    buttonColor = Color(255, 255, 255, 255), -- La couleur du bouton dans le menu F4
    label = "Super job", -- Optionnel : le texte sur le bouton dans le menu F4"

    playerClass = "player_darkrp",
    CanPlayerSuicide = function(ply) return false end,
    PlayerCanPickupWeapon = function(ply, weapon) return true end,
    PlayerDeath = function(ply, weapon, killer) end,
    PlayerLoadout = function(ply) return true end,
    PlayerSelectSpawn = function(ply, spawn) end,
    PlayerSetModel = function(ply) return "models/player/Group03/Female_02.mdl" end,
    PlayerSpawn = function(ply) end,
    PlayerSpawnProp = function(ply, model) end,
    RequiresVote = function(ply, job) for k,v in pairs(player.GetAll()) do if IsValid(v) and v:IsAdmin() then return false end end return true end, -- Les joueurs doivent voter lorsqu'aucun administrateur n'est présent
    ShowSpare1 = function(ply) end,
    ShowSpare2 = function(ply) end,
    OnPlayerChangedTeam = function(ply, oldTeam, newTeam) end,
    canStartVote = function(ply) return ply:Distance(SomeNPC) < 200 end,
    canStartVoteReason = "You must be close to some NPC", -- Alternative : canStartVoteReason = function(ply, jobTable) 
return ply:Distance(SomeNPC) > 5000 and "Vous êtes à des kilomètres de cet NPC" or "Vous devez être proche de cet NPC" end,

})
```

[🎯 Serveurs Discord Support](https://discord.gg/AdP4dGtR)
