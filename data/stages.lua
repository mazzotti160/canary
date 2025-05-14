-- Minlevel and multiplier are MANDATORY
-- Maxlevel is OPTIONAL, but is considered infinite by default
-- Create a stage with minlevel 1 and no maxlevel to disable stages
experienceStages = {
	{
		minlevel = 1,
		maxlevel = 8,
		multiplier = 20,
	},
	{
		minlevel = 9,
		maxlevel = 400,
		multiplier = 500,
	},
	{
		minlevel = 401,
		maxlevel = 700,
		multiplier = 400,
	},	
	{
		minlevel = 701,
		maxlevel = 1000,
		multiplier = 300,
	},	
	{
		minlevel = 1001,
		maxlevel = 1400,
		multiplier = 200,
	},		
	{
		minlevel = 1401,
		maxlevel = 1700,
		multiplier = 100,
	},		
	{
		minlevel = 1701,
		maxlevel = 2000,
		multiplier = 50,
	},	
	{
		minlevel = 2001,
		maxlevel = 2400,
		multiplier = 35,
	},		
	{
		minlevel = 2401,
		maxlevel = 2800,
		multiplier = 25,
	},	
	{
		minlevel = 2801,
		maxlevel = 3200,
		multiplier = 15,
	},	
	{
		minlevel = 3201,
		maxlevel = 3600,
		multiplier = 10,
	},	
	{
		minlevel = 3601,
		maxlevel = 4000,
		multiplier = 7,
	},		
	{
		minlevel = 4001,
		multiplier = 5,
	},		
}

skillsStages = {
	{
		minlevel = 0,
		maxlevel = 100,
		multiplier = 100,  -- 50 * 100
	},
	{
		minlevel = 101,
		maxlevel = 120,
		multiplier = 50,  -- 20 * 100
	},
	{
		minlevel = 121,
		maxlevel = 130,
		multiplier = 20,  -- 20 * 100
	},	
	{
		minlevel = 131,
		maxlevel = 140,		
		multiplier = 8,   -- 4 * 100
	},
	{
		minlevel = 141,
		maxlevel = 160,		
		multiplier = 4,   -- 4 * 100
	},	
	{
		minlevel = 161,	
		multiplier = 3,   -- 2 * 100
	},
}

magicLevelStages = {
	{
		minlevel = 0,
		maxlevel = 100,
		multiplier = 100,  -- 50 * 100
	},
	{
		minlevel = 101,
		maxlevel = 120,
		multiplier = 50,  -- 20 * 100
	},
	{
		minlevel = 121,
		maxlevel = 130,
		multiplier = 20,  -- 20 * 100
	},	
	{
		minlevel = 131,
		maxlevel = 140,		
		multiplier = 8,   -- 4 * 100
	},
	{
		minlevel = 141,
		maxlevel = 160,		
		multiplier = 4,   -- 4 * 100
	},	
	{
		minlevel = 161,	
		multiplier = 3,   -- 2 * 100
	},	
}

ekmagicLevelStages = {
	{
		minlevel = 0,
		maxlevel = 10,
		multiplier = 10,  -- 50 * 100
	},
	{
		minlevel = 11,	
		multiplier = 2,   -- 2 * 100
	},	
}

rpmagicLevelStages = {
	{
		minlevel = 0,
		maxlevel = 20,
		multiplier = 20,  -- 50 * 100
	},
	{
		minlevel = 21,
		maxlevel = 35,
		multiplier = 6,  -- 50 * 100
	},	
	{
		minlevel = 36,	
		multiplier = 2,   -- 2 * 100
	},	
}