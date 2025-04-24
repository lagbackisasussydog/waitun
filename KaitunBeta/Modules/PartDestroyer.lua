local mod = {
	BATCH_SIZE = 500,
	DELAY = .1
}

local w = workspace

function mod:Destroy()
	local parts = w:GetDescendants()
	local count = 0
	
	local baseParts = {}
	
	for _,item in ipairs(parts) do
		if item:IsA("BasePart") then
			table.insert(baseParts,item)
			count += 1
		end
	end
	
	local current = 1
	
	local function process()
		local endIndex = math.min(current + mod.BATCH_SIZE - 1,#baseParts)
		
		for _ = current,endIndex do
			local part = baseParts[_]
			if part and part.Parent ~= nil then
				part:Destroy()
			end
		end
		
		current = endIndex + 1
		
		if current  <= #baseParts then
			task.wait(mod.DELAY)
			return process()
		else
			print("All parts destroyed")
		end
	end
	
	process()
end

return mod
