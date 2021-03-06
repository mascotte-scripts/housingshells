-- Client Side
-- Below function is an example of how I'm spawning the shell and loading the furnished objects
function CreateTrailer(spawn)
    local objects = {}
    local POIOffsets = {}
    POIOffsets.exit = json.decode('{"z":2.5,"y":-2.0157,"x":-0.62,"h":2.2633972168}') -- Where you will spawn inside the shell
    local shell = CreateObject(`trailershell`, spawn.x, spawn.y, spawn.z, false, false, false)
    FreezeEntityPosition(shell, true)
    table.insert(objects, shell)
	-- props --
		-- bed --
		local bedTIDY = CreateObject(`V_26_BedTIDY`,spawn.x + -4.30269842,spawn.y + -0.00506639,spawn.z + 1.85076500,false,false,false)
		FreezeEntityPosition(bedTIDY, true)
		table.insert(objects, bedTIDY)

		-- Shell detail
		local dt = CreateObject(`v_26_windframes`,spawn.x + 1.12,spawn.y + -0.026 ,spawn.z + 1.875,false,false,false)
		FreezeEntityPosition(dt, true)
		table.insert(objects, dt)

		-- Cupboard --
		local Cupboard = CreateObject(`v_26_cupboardstidy`,spawn.x + 3.5550269842,spawn.y ,spawn.z + 1.83,false,false,false)
		FreezeEntityPosition(Cupboard, true)
		table.insert(objects, Cupboard)

		local sofa = CreateObject(`prop_couch_03`,spawn.x + 1.8550262,spawn.y + 1.83 ,spawn.z + 1.80,false,false,false)
		FreezeEntityPosition(sofa, true)
		table.insert(objects, sofa)

		local fridge = CreateObject(`v_res_tre_fridge`,spawn.x + 0.7150262,spawn.y + 1.83 ,spawn.z + 1.80,false,false,false)
		FreezeEntityPosition(fridge, true)
		table.insert(objects, fridge)

		-- glass --
		local glass1 = CreateObject(`v_26_glass005`,spawn.x + 6.7350269842,spawn.y ,spawn.z + 3.055,false,false,false)
		FreezeEntityPosition(glass1, true)
		table.insert(objects, glass1)

		local glass2 = CreateObject(`v_26_glass006`,spawn.x + 1.7350269842,spawn.y + -2.42 ,spawn.z + 3.4555,false,false,false)
		FreezeEntityPosition(glass2, true)
		SetEntityHeading(glass2,GetEntityHeading(glass2)+180)
		table.insert(objects, glass2)

		-- Kitchen -- 
		local Kitchen = CreateObject(`v_26_kitchenTIDY`,spawn.x + 1.9300269842,spawn.y + -1.42 ,spawn.z + 1.8555,false,false,false)
		FreezeEntityPosition(Kitchen, true)
		table.insert(objects, Kitchen)
		
		-- toilet -- 
		local toilet = CreateObject(`v_26_toilettidy`,spawn.x + -1.33, spawn.y + 1.60,spawn.z + 1.8155,false,false,false)
		FreezeEntityPosition(toilet, true)
		table.insert(objects, toilet)

		-- hall -- 
		local hall = CreateObject(`v_26_halloverlaytidy`,spawn.x + -1.33, spawn.y + -0.62,spawn.z + 1.8155,false,false,false)
		FreezeEntityPosition(hall, true)
		table.insert(objects, hall)

		-- wardrobe -- 
		local wardrobe = CreateObject(`v_26_wardrobetidy`,spawn.x + -5.5, spawn.y + -1.625,spawn.z + 1.8155,false,false,false)
		FreezeEntityPosition(wardrobe, true)
		table.insert(objects, wardrobe)

		-- DINING TABLE -- 
		local dining = CreateObject(`v_26_couchtidy`,spawn.x + 3.3850269842,spawn.y + 0.0 ,spawn.z + 1.83155,false,false,false)
		FreezeEntityPosition(dining, true)
		table.insert(objects, dining)

		-- DECALS -- 
		local DECALS = CreateObject(`v_26_overlaystidy`,spawn.x + 3.3810200,spawn.y + 0.0 ,spawn.z + 1.755,false,false,false)
		FreezeEntityPosition(DECALS, true)
		table.insert(objects, DECALS)

        TeleportToInterior(spawn.x + POIOffsets.exit.x, spawn.y + POIOffsets.exit.y, spawn.z + 1.5, POIOffsets.exit.h)
		
    return { objects, POIOffsets }
end
