Config = {}

--------------------------------------------------------------------------------
---------------------------- GENUTZTES FRAMEWORK -------------------------------
--------------------------------------------------------------------------------

Config.Framework = "vorp" -- Als Framework werden "vorp" für VORP Core oder "rsg" für RSG Core unterstützt

--------------------------------------------------------------------------------
---------------- NPC-UNTERTITEL BEI EINEM ERFOLGREICHEN HANDEL -----------------
--------------------------------------------------------------------------------

Config.TradeSuccessMessages = {
    "Hervorragende Wahl! Dieser Handel ist ein voller Erfolg.",
    "Wir haben einen Deal! Es ist eine Freude, Geschäfte mit Ihnen zu machen.",
    "Ich bin sehr zufrieden mit diesem Geschäft. Sehr gut!",
    "Die Sterne stehen gut für diesen Deal. Eine kluge Entscheidung.",
    "Ich denke das ist fair. Eine Win-Win-Situation.",
    "Ich habe keine Zweifel: dieser Handel bringt uns beiden Vorteile.",
    "Ich denke die Götter stehen da ganz auf unserer Seite.",
    "So wünscht man sich doch ein Geschäft, danke mein Freund!",
    "Klingt gut, lassen Sie uns den Deal besiegeln.",
    "Ich denke das kommt uns beiden zugute, oder?",
    "Ihr Angebot entspricht genau dem, wonach ich gesucht habe.",
    "Dieser Deal war ein Erfolg, lassen Sie uns das Ganze doch feiern.",
    "Alles an diesem Handel fühlt sich genau richtig an.",
    "Ihr Vorschlag ist mehr als fair,ich nehme gerne an!",
    "Ich freue mich, diesen Deal abzuschließen. Bis zum nächsten Mal!"
}

--------------------------------------------------------------------------------
-------------- NPC-UNTERTITEL, WENN GEGENSTÄNDE ZUM HANDELN FEHLEN -------------
--------------------------------------------------------------------------------

Config.TradeFailMessages = {
    "Es tut mir leid, Partner, aber ich kann kein Geschäft machen, es sei denn, Sie haben, wonach ich suche.",
    "Ich fürchte, ein Handel ist ohne die Waren, nach denen ich suche, in Ihrem Besitz nicht möglich, Partner.",
    "Ich würde gerne handeln, aber Sie müssen die richtigen Waren haben, bevor wir über Geschäfte sprechen können.",
    "Ich denke, wir können gerade keinen Deal machen, weil Sie nicht das haben, wonach ich suche.",
    "Es tut mir leid, aber es sieht so aus, als würde etwas fehlen.",
    "Ohne die Dinge die ich suche, wird das hier kein Deal, mein Freund."
}

--------------------------------------------------------------------------------
-------------- NPC-UNTERTITEL, WENN DER BENÖTIGTE JOB FEHLT --------------------
--------------------------------------------------------------------------------

Config.TradeNotAllowed = {
    "Ich habe derzeit kein Interesse daran, Geschäfte zu machen.",
    "Ich behalte meine Waren lieber für mich.",
    "Ich habe gerade keine Lust auf Gelaber.",
    "Ich habe nichts, womit Sie etwas anfangen könnten."
}

--------------------------------------------------------------------------------
------------- NPC-UNTERTITEL, BEI FEHLENDEM PLATZ IM INVENTAR ------------------
--------------------------------------------------------------------------------

Config.TradeNoSpace = {
    "Es scheint, als wäre Ihre Tasche randvoll, Freund.",
    "Ich würde gerne Geschäfte machen, aber es sieht so aus, als wären Ihre Taschen bereits voll.",
    "Kein Platz in Ihren Taschen bedeutet: Kein Handel, mein Freund.",
    "Ihre Tasche ist ziemlich schwer, oder? Vielleicht sollten Sie sie etwas leeren, bevor wir handeln können."
}

--------------------------------------------------------------------------------
--------- NPC-UNTERTITEL, BEI DER MAXIMALEN ANZAHL AN TAUSCHGESCHÄFTEN ---------
--------------------------------------------------------------------------------

Config.TradeQueueFull = {
    "Wait a moment, I have my hands full right now.",
    "You can see that I still have plenty to do. Just wait a moment.",
    "I'm sorry, I can't take on any more right now."
}

--------------------------------------------------------------------------------
------ BEI DEAKTIVIERTEN NPC-UNTERTITELN, WERDEN DIESE MELDUNGEN GENUTZT ------- 
--------------------------------------------------------------------------------

Config.TradeSuccessNotification = "Der Handel war erfolgreich!"
Config.TradeFailNotification = "Dir fehlen die benötigten Gegenstände für diesen Handel!"
Config.TradeNotAllowedNotification = "Du darfst hier nicht handeln!"
Config.TradeNoSpaceNotification = "Du hast nicht genügend Platz in deinem Inventar."
Config.TradeQueueFullNotification = "Die Liste ist voll, warte einen Moment für den nächsten Handel."

--------------------------------------------------------------------------------
----------- ÜBERSETZUNGEN, WELCHE INNERHALB DES MENÜS GENUTZT WERDEN ----------- 
--------------------------------------------------------------------------------

Config.Translations = {
    ["needed"] = "wird benötigt.",
    ["receive"] = "Du erhältst",
}

--------------------------------------------------------------------------------
------------------------------- DISCORD WEBHOOKS ------------------------------- 
--------------------------------------------------------------------------------

Config.UseWebhook = false
Config.WebhookData = {
    WebhookUrl = "",
    WebhookTitle = "",
    WebhookColor = 16711680,
    WebhookName = "Barterer",
    WebhookLogo = "https://via.placeholder.com/30x30",
    WebhookLogo2 = "https://via.placeholder.com/30x30",
    WebhookAvatar = "https://via.placeholder.com/30x30"
}

--[[ In den Discord-Nachrichten können Platzhalter verwendet werden, folgende Platzhalter sind verfügbar:

[character_name] - Fügt den Charakternamen im Format "Vorname Nachname" ein
[needed] - Eine Liste der Gegenstände die eingetauscht wurden
[got] - Eine Liste der Gegenstände, welche der Spieler nach dem Tausch erhalten hat
[trader_name] - Fügt den Namen des Händlers ein
[trader_position] - Fügt die Koordinaten des Händlers zum Zeitpunkt des Handels im Format "x, y, z" ein

]]

Config.WebhookTranslation = {
    ["tradeSuccess"] = "[character_name] hat [needed] für [got] eingetauscht."
}

--------------------------------------------------------------------------------
----------------------------------- HÄNDLER ------------------------------------ 
--------------------------------------------------------------------------------
-- FÜGE GERN EIGENE HINZU, NUTZE DEN VORGEFERTIGTEN HÄNDLER ALS ORIENTIERUNG ---
--------------------------------------------------------------------------------

Config.Traders = {
    {
        id = "cottoneye", -- Eine einzigartige ID, welche intern vom Script genutzt wird
        name = "Cottoneye Joe", -- Der Name des Händlers (bzw. des NPC), welcher ebenso bei Interaktion angezeigt wird
		randomizePosition = false, -- Wenn die Position dieses Händlers zufällig ausgewählt werden soll (Die Position wird aus den unten aufgeführten Listen gewählt) setze dies auf true, andernfalls auf false
        enableBlip = true, -- Möchtest du eine Markierung auf der Karte? Dann setze diesen Wert auf true, andernfalls auf false
        blipData = {
            icon = "blip_ambient_secret", -- Das Icon, welches für die Markierung genutzt wird
            name = "Cottoneye Joe", -- Der Name der Markierung auf der Karte
            position = vector3(2336.84, -1519.23, 46.06), -- Die Position der Markierung
			positionList = { -- Liste der möglichen Positionen, aus denen das Script eine auswählt (nur wenn randomizePosition aktiv ist)
                vector3(2336.84, -1519.23, 46.06),
                vector3(2346.9980, -1549.0118, 46.06),
            },
        },
        enableNPC = true, -- Möchtest du einen NPC nutzen, setze diesen Wert auf true, andernfalls auf false
        npcData = {
            spawnDistance = 100.0, -- Ab welcher Entfernung der NPC despawned
            model = "MP_U_M_M_TRADER_01", -- Das Ped-Model des NPC
            position = vector4(2336.84, -1519.23, 46.06, 115.71), -- Die Position des NPC
			positionList = { -- Liste der möglichen Positionen, aus denen das Script eine auswählt (nur wenn randomizePosition aktiv ist)
                vector4(2336.84, -1519.23, 46.06, 115.71),
                vector4(2346.9980, -1549.0118, 46.06, 353.2121),
            },
        },
        promptData = {
            position = vector3(2336.84, -1519.23, 46.06), -- Die Position an welcher das Interaktionsmenü angezeigt wird
			positionList = { -- Liste der möglichen Positionen, aus denen das Script eine auswählt (nur wenn randomizePosition aktiv ist)
                vector3(2336.84, -1519.23, 46.06),
                vector3(2346.9980, -1549.0118, 46.06),
            },
            distance = 2.0, -- Die Distanz zur oben genannten Position, ab welcher das Interaktionsmenü genutzt werden kann
            key = 0x760A9C6F, -- Die Taste, um mit diesem Händler zu interagieren
            text = "Ansprechen" -- Der Text, welcher zum Interagieren angezeigt wird
        },
        useShopHours = false, -- Soll der Händler nur zu speziellen Zeiten erscheinen? Setze diesen Wert auf true!
        shopOpen = 0, -- Die Stunde, in welcher der Händler erscheint / geöffnet hat (24-Stunden-System)
        shopClose = 8, -- Die Stunde, in welcher der Händler verschwindet / geschlossen hat (24-Stunden-System)
        jobLocked = false, -- Soll der Händler nur für spezielle Jobs zugänglich sein? Nutze eine Aufzählung im Format {"doctor","police"} mit den gewünschten Jobs andernfalls trage false ein
        jobGradeNeeded = 0, -- Der Rang in den jeweiligen oben genannten Jobs, welcher zum Handeln benötigt wird
        messagesName = "Joe", -- Der Name, welcher in den NPC-Untertiteln angezeigt wird, zum Beispiel "Fremder"
        enableWelcomeMessage = true, -- Möchtest du, dass der Händler die Spieler willkommen heißt, wenn sie das Menü öffnen?
        welcomeMessage = "Was kann ich für dich tun?", -- Wie soll diese Willkommensnachricht aussehen?
        enableTradingMessages = true, -- Möchtest du die zufällig ausgewählten Nachrichten, welche einen Handel begleiten (siehe ganz oben), nutzen?
        trades = { -- Verfügbare Handelsangebote
            {
                name = "Joe's Moonshine", -- Name des Angebots
				tradingTime = 0, -- Zeit welche der Tausch in Anspruch nehmen soll (in Sekunden)
                image = "moonshine.png", -- Das Bild, das im Menü genutzt wird. Platziere es in /html/img/
                demand = {
                    { name = "water", image = "water.png", label = "Water", amount = 2 } -- Name des Items in der Datenbank, platziere das zugehörige Bild in /html/img/items/, der Anzeigetext im Menü, die benötigte Anzahl
                },
                offer = {
                    { name = "moonshine", label = "Moonshine", amount = 1 } -- Name des Items in der Datenbank, platziere das zugehörige Bild in /html/img/items/, der Anzeigetext im Menü, die Anzahl, welche der Spieler erhält
                }
            }
        }
    }
}

-----------------------------------------------------------------------------------------------
									--KEYBINDS LIST--
-----------------------------------------------------------------------------------------------

--   -- Letters
--   ["A"] = 0x7065027D,
--   ["B"] = 0x4CC0E2FE,
--   ["C"] = 0x9959A6F0,
--   ["D"] = 0xB4E465B4,
--   ["E"] = 0xCEFD9220,
--   ["F"] = 0xB2F377E8,
--   ["G"] = 0x760A9C6F,
--   ["H"] = 0x24978A28,
--   ["I"] = 0xC1989F95,
--   ["J"] = 0xF3830D8E,
--   -- Missing K
--   ["L"] = 0x80F28E95,
--   ["M"] = 0xE31C6A41,
--   ["N"] = 0x4BC9DABB,
--   ["O"] = 0xF1301666,
--   ["P"] = 0xD82E0BD2,
--   ["Q"] = 0xDE794E3E,
--   ["R"] = 0xE30CD707,
--   ["S"] = 0xD27782E3,
--   -- Missing T
--   ["U"] = 0xD8F73058,
--   ["V"] = 0x7F8D09B8,
--   ["W"] = 0x8FD015D8,
--   ["X"] = 0x8CC9CD42,
--   -- Missing Y
--   ["Z"] = 0x26E9DC00,
--   -- Symbol Keys
--   ["RIGHTBRACKET"] = 0xA5BDCD3C,
--   ["LEFTBRACKET"] = 0x430593AA,
--   -- Mouse buttons
--   ["MOUSE1"] = 0x07CE1E61,
--   ["MOUSE2"] = 0xF84FA74F,
--   ["MOUSE3"] = 0xCEE12B50,
--   ["MWUP"] = 0x3076E97C,
--   -- Modifier Keys
--   ["CTRL"] = 0xDB096B85,
--   ["TAB"] = 0xB238FE0B,
--   ["SHIFT"] = 0x8FFC75D6,
--   ["SPACEBAR"] = 0xD9D0E1C0,
--   ["ENTER"] = 0xC7B5340A,
--   ["BACKSPACE"] = 0x156F7119,
--   ["LALT"] = 0x8AAA0AD4,
--   ["DEL"] = 0x4AF4D473,
--   ["PGUP"] = 0x446258B6,
--   ["PGDN"] = 0x3C3DD371,
--   -- Function Keys
--   ["F1"] = 0xA8E3F467,
--   ["F4"] = 0x1F6D95E5,
--   ["F6"] = 0x3C0A40F2,
--   -- Number Keys
--   ["1"] = 0xE6F612E4,
--   ["2"] = 0x1CE6D9EB,
--   ["3"] = 0x4F49CC4C,
--   ["4"] = 0x8F9F9E58,
--   ["5"] = 0xAB62E997,
--   ["6"] = 0xA1FDE2A6,
--   ["7"] = 0xB03A913B,
--   ["8"] = 0x42385422,
--   -- Arrow Keys
--   ["DOWN"] = 0x05CA7C52,
--   ["UP"] = 0x6319DB71,
--   ["LEFT"] = 0xA65EBAB4,
--   ["RIGHT"] = 0xDEB34313