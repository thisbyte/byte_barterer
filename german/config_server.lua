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
