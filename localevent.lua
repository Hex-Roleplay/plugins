
-- Feel free to modify and tinker to your needs, but please don't remove the credit. It's not a very epic gamer move.

PLUGIN.name = "Local Event"
PLUGIN.author = "Ice Bear#2034"
PLUGIN.description = "Adds in another event command that is only heard from yelling distance, it appears in yellow rather than orange."

-- Command registration.
ix.command.Add("LocalEvent", {
	description = "Make something perform an action that only those in yelling distance can see.",
	arguments = ix.type.text,
	superAdminOnly = true,
	OnRun = function(self, client, text)
		ix.chat.Send(client, "localevent", text)
	end
})

-- Chat registration.
ix.chat.Register("localevent", {
	CanHear = 560,
	OnChatAdd = function(self, speaker, text)
		chat.AddText(Color(255, 255, 0), text)
	end,
	indicator = "chatPerforming"
})
