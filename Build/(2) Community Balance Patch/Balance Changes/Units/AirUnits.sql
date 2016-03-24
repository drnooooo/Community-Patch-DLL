-- AIR UNITS
	-- RANGE Changes

	UPDATE Units
	SET Range = '5'
	WHERE Type = 'UNIT_TRIPLANE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units
	SET AirInterceptRange = '5'
	WHERE Type = 'UNIT_TRIPLANE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units
	SET Range = '5'
	WHERE Type = 'UNIT_WWI_BOMBER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units
	SET Range = '6'
	WHERE Type = 'UNIT_FIGHTER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units
	SET AirInterceptRange = '6'
	WHERE Type = 'UNIT_FIGHTER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units
	SET Range = '6'
	WHERE Type = 'UNIT_JAPANESE_ZERO' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units
	SET AirInterceptRange = '6'
	WHERE Type = 'UNIT_JAPANESE_ZERO' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units
	SET Range = '6'
	WHERE Type = 'UNIT_BOMBER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units
	SET Range = '8'
	WHERE Type = 'UNIT_AMERICAN_B17' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units
	SET Range = '8'
	WHERE Type = 'UNIT_JET_FIGHTER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units
	SET AirInterceptRange = '8'
	WHERE Type = 'UNIT_JET_FIGHTER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units
	SET Range = '10'
	WHERE Type = 'UNIT_STEALTH_BOMBER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Atomic Bomb Obsolete at Advanced Ballistics

	UPDATE Units
	SET ObsoleteTech = 'TECH_ADVANCED_BALLISTICS'
	WHERE Type = 'UNIT_ATOMIC_BOMB' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

		-- Move Helicopter
	UPDATE Units
	SET PrereqTech = 'TECH_MOBILE_TACTICS'
	WHERE Type = 'UNIT_HELICOPTER_GUNSHIP' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Move Guided Missile
	UPDATE Units
	SET PrereqTech = 'TECH_ROCKETRY'
	WHERE Type = 'UNIT_GUIDED_MISSILE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Guided Missile range bump

	UPDATE Units
	SET Range = '6'
	WHERE Type = 'UNIT_GUIDED_MISSILE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Unit_Flavors
	SET Flavor = '20'
	WHERE UnitType = 'UNIT_GUIDED_MISSILE';

	INSERT INTO Unit_ResourceQuantityRequirements (UnitType, ResourceType, Cost) SELECT 'UNIT_GUIDED_MISSILE', 'RESOURCE_OIL', '1' WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Maintenance
	UPDATE Units
	SET NoMaintenance = '0'
	WHERE Type = 'UNIT_GUIDED_MISSILE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Fighters should obsolete with Jets, and Bombers with Stealth (helps AI make good late-game choices)

	UPDATE Units
	SET ObsoleteTech = 'TECH_LASERS'
	WHERE Type = 'UNIT_FIGHTER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units
	SET ObsoleteTech = 'TECH_STEALTH'
	WHERE Type = 'UNIT_BOMBER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	-- Tech Stuff

	UPDATE Units SET PrereqTech = 'TECH_RADAR' WHERE Type = 'UNIT_JAPANESE_ZERO' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units SET ObsoleteTech = NULL WHERE Type = 'UNIT_JAPANESE_ZERO' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );


	UPDATE Units SET PrereqTech = 'TECH_RADAR' WHERE Type = 'UNIT_AMERICAN_B17' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

	UPDATE Units SET ObsoleteTech = NULL WHERE Type = 'UNIT_AMERICAN_B17' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );
