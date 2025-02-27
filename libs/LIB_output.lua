-- LIB Output
local _, MissingPower = ...

function MissingPower:MSG(str)
	MIPO.name = MIPO.name or "X"
	print("|c0000ffff" .. "[" .. "|cff8888ff" .. MIPO.name .. "|c0000ffff" .. "] " .. str)
end

function MissingPower:DEB(str)
	if MIPO.DEBUG then
		print("[DEB] " .. str)
	end
end

function MissingPower:PTAB(tab)
	print("pTab", tab)

	if type(tab) == "table" then
		for i, v in pairs(tab) do
			if type(v) == "table" then
				pTab(v)
			else
				print(i, v)
			end
		end
	else
		print(tostring(tab) .. " is not a table.")
	end

	print("----------------------------------")
end