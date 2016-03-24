-- Unlock Time
UPDATE PolicyBranchTypes
SET EraPrereq = 'ERA_MEDIEVAL'
WHERE Type = 'POLICY_BRANCH_PIETY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Update Piety Shape

UPDATE Policies
SET GridX = '3'
WHERE Type = 'POLICY_ORGANIZED_RELIGION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET GridY = '2'
WHERE Type = 'POLICY_MANDATE_OF_HEAVEN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Great Artists come from Piety

INSERT INTO Policy_FaithPurchaseUnitClasses (PolicyType, UnitClassType)
SELECT 'POLICY_PIETY_FINISHER' , 'UNITCLASS_ARTIST'
WHERE EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Piety Opener
UPDATE Policy_BuildingClassProductionModifiers
SET ProductionModifier = '0'
WHERE PolicyType = 'POLICY_PIETY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET PressureMod = '100'
WHERE Type = 'POLICY_PIETY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET ReligionDistance = '50'
WHERE Type = 'POLICY_PIETY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Organized Religion
UPDATE Policies
SET FaithCostModifier = '-25'
WHERE Type = 'POLICY_ORGANIZED_RELIGION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policy_BuildingClassYieldChanges
SET YieldChange = '0'
WHERE PolicyType = 'POLICY_ORGANIZED_RELIGION' AND BuildingClassType = 'BUILDINGCLASS_SHRINE' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Mandate of Heaven (Now Trade Fairs)
UPDATE Policies
SET TradeReligionModifier = '50'
WHERE Type = 'POLICY_MANDATE_OF_HEAVEN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET FaithCostModifier = '0'
WHERE Type = 'POLICY_MANDATE_OF_HEAVEN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Theocracy (Now Divine Right)
UPDATE Policies
SET DoubleBorderGA = '1'
WHERE Type = 'POLICY_THEOCRACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policy_BuildingClassYieldModifiers
SET YieldMod = '0'
WHERE PolicyType = 'POLICY_THEOCRACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Reformation (Now Monasticism)
UPDATE Policies
SET AddReformationBelief = '0'
WHERE Type = 'POLICY_REFORMATION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Buildings
SET PolicyType = 'POLICY_REFORMATION'
WHERE Type = 'BUILDING_MONASTERY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Buildings
SET UnlockedByBelief = '0'
WHERE Type = 'BUILDING_MONASTERY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Buildings
SET FaithCost = '200'
WHERE Type = 'BUILDING_MONASTERY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Buildings
SET SpecialistType = 'SPECIALIST_SCIENTIST'
WHERE Type = 'BUILDING_MONASTERY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Buildings
SET SpecialistCount = '1'
WHERE Type = 'BUILDING_MONASTERY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

DELETE FROM Building_ResourceYieldChanges
WHERE BuildingType = 'BUILDING_MONASTERY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

DELETE FROM Building_YieldChanges
WHERE BuildingType = 'BUILDING_MONASTERY' AND YieldType = 'YIELD_CULTURE' and EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Building_YieldChanges
SET Yield = '2'
WHERE BuildingType = 'BUILDING_MONASTERY' AND YieldType = 'YIELD_FAITH' and EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET PortraitIndex = '47'
WHERE Type = 'POLICY_REFORMATION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Free Religion (Now Iconography)
UPDATE Policies
SET SecondReligionPantheon = '0'
WHERE Type = 'POLICY_FREE_RELIGION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET IncludesOneShotFreeUnits = '1'
WHERE Type = 'POLICY_FREE_RELIGION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET PortraitIndex = '46'
WHERE Type = 'POLICY_FREE_RELIGION' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Finisher
UPDATE Policies
SET InternalTradeRouteYieldModifierCapital = '33'
WHERE Type = 'POLICY_PIETY_FINISHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

DELETE FROM Policy_FreeUnitClasses
WHERE PolicyType = 'POLICY_PIETY_FINISHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

DELETE FROM Policy_ImprovementYieldChanges
WHERE PolicyType = 'POLICY_PIETY_FINISHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

DELETE FROM Policy_ImprovementCultureChanges
WHERE PolicyType = 'POLICY_PIETY_FINISHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

DELETE FROM Policy_ImprovementYieldChanges
WHERE PolicyType = 'POLICY_THEOCRACY' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

UPDATE Policies
SET UnlocksPolicyBranchEra = 'ERA_RENAISSANCE'
WHERE Type = 'POLICY_PIETY_FINISHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- Finisher
UPDATE Policies
SET IdeologyPoint = '1'
WHERE Type = 'POLICY_PIETY_FINISHER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_POLICIES' AND Value= 1 );

-- New Data

INSERT INTO Policy_PrereqPolicies
	(PolicyType, PrereqPolicy)
VALUES
	('POLICY_MANDATE_OF_HEAVEN', 'POLICY_ORGANIZED_RELIGION');

INSERT INTO Policy_BuildingClassCultureChanges
	(PolicyType, BuildingClassType, CultureChange)
VALUES
	('POLICY_ORGANIZED_RELIGION', 'BUILDINGCLASS_TEMPLE', 1);

INSERT INTO Policy_ReligionBuildingYieldMod
	(PolicyType, BuildingClassType, YieldType, YieldMod)
VALUES
	('POLICY_MANDATE_OF_HEAVEN', 'BUILDINGCLASS_MARKET', 'YIELD_PRODUCTION', 2),
	('POLICY_MANDATE_OF_HEAVEN', 'BUILDINGCLASS_HARBOR', 'YIELD_PRODUCTION', 2),
	('POLICY_MANDATE_OF_HEAVEN', 'BUILDINGCLASS_CARAVANSARY', 'YIELD_PRODUCTION', 2),
	('POLICY_MANDATE_OF_HEAVEN', 'BUILDINGCLASS_MARKET', 'YIELD_SCIENCE', 2),
	('POLICY_MANDATE_OF_HEAVEN', 'BUILDINGCLASS_HARBOR', 'YIELD_SCIENCE', 2),
	('POLICY_MANDATE_OF_HEAVEN', 'BUILDINGCLASS_CARAVANSARY', 'YIELD_SCIENCE', 2);

INSERT INTO Policy_BuildingClassHappiness
	(PolicyType, BuildingClassType, Happiness)
VALUES
	('POLICY_THEOCRACY', 'BUILDINGCLASS_TEMPLE', 1);

INSERT INTO Policy_SpecialistExtraYields
	(PolicyType, YieldType, Yield)
VALUES
	('POLICY_FREE_RELIGION', 'YIELD_FAITH', 1);

INSERT INTO Building_YieldChanges
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_MONASTERY', 'YIELD_SCIENCE', 2),
	('BUILDING_MONASTERY', 'YIELD_FOOD', 2);

INSERT INTO Policy_FreeUnitClasses
	(PolicyType, UnitClassType, Count)
VALUES
	('POLICY_FREE_RELIGION', 'UNITCLASS_ARTIST', 1);

INSERT INTO Policy_ReligionYieldMod
	(PolicyType, YieldType, Yield)
VALUES
	('POLICY_PIETY_FINISHER', 'YIELD_FAITH', 2),
	('POLICY_PIETY_FINISHER', 'YIELD_PRODUCTION', 2),
	('POLICY_PIETY_FINISHER', 'YIELD_FOOD', 2),
	('POLICY_PIETY_FINISHER', 'YIELD_GOLD', 2),
	('POLICY_PIETY_FINISHER', 'YIELD_SCIENCE', 2),
	('POLICY_PIETY_FINISHER', 'YIELD_CULTURE', 2);

INSERT INTO Policy_BuildingClassYieldModifiers
	(PolicyType, BuildingClassType, YieldType, YieldMod)
VALUES
	('POLICY_MANDATE_OF_HEAVEN', 'BUILDINGCLASS_TEMPLE', 'YIELD_GOLD', 3),
	('POLICY_THEOCRACY', 'BUILDINGCLASS_TEMPLE', 'YIELD_GOLD', 3),
	('POLICY_ORGANIZED_RELIGION', 'BUILDINGCLASS_TEMPLE', 'YIELD_GOLD', 3),
	('POLICY_REFORMATION', 'BUILDINGCLASS_TEMPLE', 'YIELD_GOLD', 3),
	('POLICY_FREE_RELIGION', 'BUILDINGCLASS_TEMPLE', 'YIELD_GOLD', 3);