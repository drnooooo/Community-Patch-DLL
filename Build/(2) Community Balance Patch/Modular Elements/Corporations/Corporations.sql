DELETE FROM Technology_PrereqTechs
WHERE TechType = 'TECH_RADIO' AND PrereqTech = 'TECH_BIOLOGY';

DELETE FROM Technology_PrereqTechs
WHERE TechType = 'TECH_RADIO' AND PrereqTech = 'TECH_REPLACEABLE_PARTS';

DELETE FROM Technology_PrereqTechs
WHERE TechType = 'TECH_FLIGHT' AND PrereqTech = 'TECH_COMBUSTION';

DELETE FROM Technology_PrereqTechs
WHERE TechType = 'TECH_FLIGHT' AND PrereqTech = 'TECH_ELECTRICITY';

UPDATE Technologies SET Era = 'ERA_MODERN' WHERE Type = 'TECH_BIOLOGY';
UPDATE Technologies SET Era = 'ERA_MODERN' WHERE Type = 'TECH_ELECTRICITY';

UPDATE Technologies SET GridX = '11' WHERE Type = 'TECH_BIOLOGY';
UPDATE Technologies SET GridX = '11' WHERE Type = 'TECH_ELECTRICITY';
UPDATE Technologies SET GridX = '11' WHERE Type = 'TECH_COMBUSTION';

UPDATE Technologies SET GridY = '1' WHERE Type = 'TECH_BIOLOGY';
UPDATE Technologies SET GridY = '3' WHERE Type = 'TECH_ELECTRICITY';
UPDATE Technologies SET GridY = '7' WHERE Type = 'TECH_REPLACEABLE_PARTS';
UPDATE Technologies SET GridY = '9' WHERE Type = 'TECH_COMBUSTION';

INSERT INTO Technologies
	(Type, Cost, Description, Civilopedia, Help, Era, Trade, GridX, GridY, Quote, PortraitIndex, IconAtlas)
VALUES
	('TECH_CORPORATIONS', 3550, 'TXT_KEY_TECH_CORPORATIONS_TITLE', 'TXT_KEY_TECH_CORPORATIONS_DESC', 'TXT_KEY_TECH_CORPORATIONS_HELP', 'ERA_MODERN', 1, 11, 5, 'TXT_KEY_TECH_CORPORATIONS_QUOTE', 0, 'CORP_ATLAS');

INSERT INTO Technology_PrereqTechs
	(PrereqTech, TechType)
VALUES
	('TECH_ARCHAEOLOGY', 'TECH_ELECTRICITY'),
	('TECH_FERTILIZER', 'TECH_CORPORATIONS'),
	('TECH_INDUSTRIALIZATION', 'TECH_CORPORATIONS'),
	('TECH_DYNAMITE', 'TECH_CORPORATIONS'),
	('TECH_CORPORATIONS', 'TECH_FLIGHT'),
	('TECH_CORPORATIONS', 'TECH_RADIO'),
	('TECH_MILITARY_SCIENCE', 'TECH_REPLACEABLE_PARTS');

INSERT INTO Technology_Flavors
	(TechType, FlavorType, Flavor)
VALUES
	('TECH_CORPORATIONS', 'FLAVOR_GOLD', 30),
	('TECH_CORPORATIONS', 'FLAVOR_GROWTH', 30),
	('TECH_CORPORATIONS', 'FLAVOR_PRODUCTION', 30),
	('TECH_CORPORATIONS', 'FLAVOR_SCIENCE', 30),
	('TECH_CORPORATIONS', 'FLAVOR_CULTURE', 30);

INSERT INTO Building_ClassNeededAnywhere
	(BuildingType, BuildingClassType)
VALUES
	('BUILDING_TRADER_SIDS', 'BUILDINGCLASS_TRADER_SIDS_HQ'),
	('BUILDING_LANDSEA_EXTRACTORS', 'BUILDINGCLASS_LANDSEA_EXTRACTORS_HQ'),
	('BUILDING_HEXXON_REFINERY', 'BUILDINGCLASS_HEXXON_REFINERY_HQ'),
	('BUILDING_GIORIO_ARMEIER', 'BUILDINGCLASS_GIORIO_ARMEIER_HQ'),
	('BUILDING_FIRAXITE_MATERIALS', 'BUILDINGCLASS_FIRAXITE_MATERIALS_HQ'),
	('BUILDING_TWOKAY_FOODS', 'BUILDINGCLASS_TWOKAY_FOODS_HQ'),
	('BUILDING_CIVILIZED_JEWELERS', 'BUILDINGCLASS_CIVILIZED_JEWELERS_HQ');

INSERT INTO Building_ResourceMonopolyOrs
	(BuildingType, ResourceType)
VALUES
	('BUILDING_TRADER_SIDS_HQ', 'RESOURCE_CLOVES'),
	('BUILDING_TRADER_SIDS_HQ', 'RESOURCE_COCOA'),
	('BUILDING_TRADER_SIDS_HQ', 'RESOURCE_NUTMEG'),
	('BUILDING_TRADER_SIDS_HQ', 'RESOURCE_PEPPER'),
	('BUILDING_TRADER_SIDS_HQ', 'RESOURCE_SALT'),
	('BUILDING_TRADER_SIDS_HQ', 'RESOURCE_SPICES'),
	('BUILDING_TRADER_SIDS_HQ', 'RESOURCE_SUGAR'),
	('BUILDING_LANDSEA_EXTRACTORS_HQ', 'RESOURCE_HORSE'),
	('BUILDING_LANDSEA_EXTRACTORS_HQ', 'RESOURCE_WHALE'),
	('BUILDING_LANDSEA_EXTRACTORS_HQ', 'RESOURCE_CRAB'),
	('BUILDING_LANDSEA_EXTRACTORS_HQ', 'RESOURCE_IVORY'),
	('BUILDING_HEXXON_REFINERY_HQ', 'RESOURCE_COAL'),
	('BUILDING_HEXXON_REFINERY_HQ', 'RESOURCE_OIL'),
	('BUILDING_HEXXON_REFINERY_HQ', 'RESOURCE_INCENSE'),
	('BUILDING_HEXXON_REFINERY_HQ', 'RESOURCE_URANIUM'),
	('BUILDING_GIORIO_ARMEIER_HQ', 'RESOURCE_SILK'),
	('BUILDING_GIORIO_ARMEIER_HQ', 'RESOURCE_COTTON'),
	('BUILDING_GIORIO_ARMEIER_HQ', 'RESOURCE_DYE'),
	('BUILDING_GIORIO_ARMEIER_HQ', 'RESOURCE_FUR'),
	('BUILDING_FIRAXITE_MATERIALS_HQ', 'RESOURCE_IRON'),
	('BUILDING_FIRAXITE_MATERIALS_HQ', 'RESOURCE_ALUMINUM'),
	('BUILDING_FIRAXITE_MATERIALS_HQ', 'RESOURCE_MARBLE'),
	('BUILDING_FIRAXITE_MATERIALS_HQ', 'RESOURCE_COPPER'),
	('BUILDING_FIRAXITE_MATERIALS_HQ', 'RESOURCE_PORCELAIN'),
	('BUILDING_TWOKAY_FOODS_HQ', 'RESOURCE_WINE'),
	('BUILDING_TWOKAY_FOODS_HQ', 'RESOURCE_TRUFFLES'),
	('BUILDING_TWOKAY_FOODS_HQ', 'RESOURCE_CITRUS'),
	('BUILDING_CIVILIZED_JEWELERS_HQ', 'RESOURCE_GOLD'),
	('BUILDING_CIVILIZED_JEWELERS_HQ', 'RESOURCE_SILVER'),
	('BUILDING_CIVILIZED_JEWELERS_HQ', 'RESOURCE_GEMS'),
	('BUILDING_CIVILIZED_JEWELERS_HQ', 'RESOURCE_PEARLS'),
	('BUILDING_CIVILIZED_JEWELERS_HQ', 'RESOURCE_JEWELRY');

INSERT INTO Building_ResourceQuantity
	(BuildingType, ResourceType, Quantity)
VALUES
	('BUILDING_HEXXON_REFINERY_HQ', 'RESOURCE_URANIUM', 3),
	('BUILDING_HEXXON_REFINERY_HQ', 'RESOURCE_OIL', 3),
	('BUILDING_HEXXON_REFINERY_HQ', 'RESOURCE_COAL', 3);

INSERT INTO Building_DomainProductionModifiers
	(BuildingType, DomainType, Modifier)
VALUES
	('BUILDING_HEXXON_REFINERY', 'DOMAIN_SEA', 15),
	('BUILDING_HEXXON_REFINERY', 'DOMAIN_LAND', 15),
	('BUILDING_HEXXON_REFINERY', 'DOMAIN_AIR', 15);

INSERT INTO Building_ResourceYieldChanges
	(BuildingType, ResourceType, YieldType, Yield)
VALUES
	('BUILDING_TRADER_SIDS_HQ', 'RESOURCE_SUGAR', 'YIELD_GOLD', 2),
	('BUILDING_TRADER_SIDS_HQ', 'RESOURCE_SPICES', 'YIELD_GOLD', 2),
	('BUILDING_TRADER_SIDS_HQ', 'RESOURCE_SALT', 'YIELD_GOLD', 2),
	('BUILDING_TRADER_SIDS_HQ', 'RESOURCE_PEPPER', 'YIELD_GOLD', 2),
	('BUILDING_TRADER_SIDS_HQ', 'RESOURCE_NUTMEG', 'YIELD_GOLD', 2),
	('BUILDING_TRADER_SIDS_HQ', 'RESOURCE_COCOA', 'YIELD_GOLD', 2),
	('BUILDING_TRADER_SIDS_HQ', 'RESOURCE_CLOVES', 'YIELD_GOLD', 2),
	('BUILDING_TRADER_SIDS', 'RESOURCE_SUGAR', 'YIELD_GOLD', 2),
	('BUILDING_TRADER_SIDS', 'RESOURCE_SPICES', 'YIELD_GOLD', 2),
	('BUILDING_TRADER_SIDS', 'RESOURCE_SALT', 'YIELD_GOLD', 2),
	('BUILDING_TRADER_SIDS', 'RESOURCE_PEPPER', 'YIELD_GOLD', 2),
	('BUILDING_TRADER_SIDS', 'RESOURCE_NUTMEG', 'YIELD_GOLD', 2),
	('BUILDING_TRADER_SIDS', 'RESOURCE_COCOA', 'YIELD_GOLD', 2),
	('BUILDING_TRADER_SIDS', 'RESOURCE_CLOVES', 'YIELD_GOLD', 2),
	('BUILDING_TRADER_SIDS_FRANCHISE', 'RESOURCE_SUGAR', 'YIELD_GOLD', 1),
	('BUILDING_TRADER_SIDS_FRANCHISE', 'RESOURCE_SPICES', 'YIELD_GOLD', 1),
	('BUILDING_TRADER_SIDS_FRANCHISE', 'RESOURCE_SALT', 'YIELD_GOLD', 1),
	('BUILDING_TRADER_SIDS_FRANCHISE', 'RESOURCE_PEPPER', 'YIELD_GOLD', 1),
	('BUILDING_TRADER_SIDS_FRANCHISE', 'RESOURCE_NUTMEG', 'YIELD_GOLD', 1),
	('BUILDING_TRADER_SIDS_FRANCHISE', 'RESOURCE_COCOA', 'YIELD_GOLD', 1),
	('BUILDING_TRADER_SIDS_FRANCHISE', 'RESOURCE_CLOVES', 'YIELD_GOLD', 1),
	('BUILDING_LANDSEA_EXTRACTORS_HQ', 'RESOURCE_HORSE', 'YIELD_PRODUCTION', 2),
	('BUILDING_LANDSEA_EXTRACTORS_HQ', 'RESOURCE_WHALE', 'YIELD_PRODUCTION', 2),
	('BUILDING_LANDSEA_EXTRACTORS_HQ', 'RESOURCE_CRAB', 'YIELD_PRODUCTION', 2),
	('BUILDING_LANDSEA_EXTRACTORS_HQ', 'RESOURCE_IVORY', 'YIELD_PRODUCTION', 2),
	('BUILDING_LANDSEA_EXTRACTORS', 'RESOURCE_HORSE', 'YIELD_PRODUCTION', 2),
	('BUILDING_LANDSEA_EXTRACTORS', 'RESOURCE_WHALE', 'YIELD_PRODUCTION', 2),
	('BUILDING_LANDSEA_EXTRACTORS', 'RESOURCE_CRAB', 'YIELD_PRODUCTION', 2),
	('BUILDING_LANDSEA_EXTRACTORS', 'RESOURCE_IVORY', 'YIELD_PRODUCTION', 2),
	('BUILDING_LANDSEA_EXTRACTORS_FRANCHISE', 'RESOURCE_HORSE', 'YIELD_GOLD', 1),
	('BUILDING_LANDSEA_EXTRACTORS_FRANCHISE', 'RESOURCE_WHALE', 'YIELD_GOLD', 1),
	('BUILDING_LANDSEA_EXTRACTORS_FRANCHISE', 'RESOURCE_CRAB', 'YIELD_GOLD', 1),
	('BUILDING_LANDSEA_EXTRACTORS_FRANCHISE', 'RESOURCE_IVORY', 'YIELD_GOLD', 1),
	('BUILDING_HEXXON_REFINERY_FRANCHISE', 'RESOURCE_COAL', 'YIELD_GOLD', 1),
	('BUILDING_HEXXON_REFINERY_FRANCHISE', 'RESOURCE_OIL', 'YIELD_GOLD', 1),
	('BUILDING_HEXXON_REFINERY_FRANCHISE', 'RESOURCE_INCENSE', 'YIELD_GOLD', 1),
	('BUILDING_HEXXON_REFINERY_FRANCHISE', 'RESOURCE_URANIUM', 'YIELD_GOLD', 1),
	('BUILDING_GIORIO_ARMEIER_HQ', 'RESOURCE_SILK', 'YIELD_CULTURE', 1),
	('BUILDING_GIORIO_ARMEIER_HQ', 'RESOURCE_COTTON', 'YIELD_CULTURE', 1),
	('BUILDING_GIORIO_ARMEIER_HQ', 'RESOURCE_DYE', 'YIELD_CULTURE', 1),
	('BUILDING_GIORIO_ARMEIER_HQ', 'RESOURCE_FUR', 'YIELD_CULTURE', 1),
	('BUILDING_GIORIO_ARMEIER', 'RESOURCE_SILK', 'YIELD_CULTURE', 2),
	('BUILDING_GIORIO_ARMEIER', 'RESOURCE_COTTON', 'YIELD_CULTURE', 2),
	('BUILDING_GIORIO_ARMEIER', 'RESOURCE_DYE', 'YIELD_CULTURE', 2),
	('BUILDING_GIORIO_ARMEIER', 'RESOURCE_FUR', 'YIELD_CULTURE', 2),
	('BUILDING_GIORIO_ARMEIER_FRANCHISE', 'RESOURCE_SILK', 'YIELD_GOLD', 1),
	('BUILDING_GIORIO_ARMEIER_FRANCHISE', 'RESOURCE_COTTON', 'YIELD_GOLD', 1),
	('BUILDING_GIORIO_ARMEIER_FRANCHISE', 'RESOURCE_DYE', 'YIELD_GOLD', 1),
	('BUILDING_GIORIO_ARMEIER_FRANCHISE', 'RESOURCE_FUR', 'YIELD_GOLD', 1),
	('BUILDING_FIRAXITE_MATERIALS_HQ', 'RESOURCE_IRON', 'YIELD_SCIENCE', 3),
	('BUILDING_FIRAXITE_MATERIALS_HQ', 'RESOURCE_ALUMINUM', 'YIELD_SCIENCE', 3),
	('BUILDING_FIRAXITE_MATERIALS_HQ', 'RESOURCE_MARBLE', 'YIELD_SCIENCE', 3),
	('BUILDING_FIRAXITE_MATERIALS_HQ', 'RESOURCE_COPPER', 'YIELD_SCIENCE', 3),
	('BUILDING_FIRAXITE_MATERIALS_HQ', 'RESOURCE_PORCELAIN', 'YIELD_SCIENCE', 3),
	('BUILDING_FIRAXITE_MATERIALS_FRANCHISE', 'RESOURCE_IRON', 'YIELD_GOLD', 1),
	('BUILDING_FIRAXITE_MATERIALS_FRANCHISE', 'RESOURCE_ALUMINUM', 'YIELD_GOLD', 1),
	('BUILDING_FIRAXITE_MATERIALS_FRANCHISE', 'RESOURCE_MARBLE', 'YIELD_GOLD', 1),
	('BUILDING_FIRAXITE_MATERIALS_FRANCHISE', 'RESOURCE_COPPER', 'YIELD_GOLD', 1),
	('BUILDING_FIRAXITE_MATERIALS_FRANCHISE', 'RESOURCE_PORCELAIN', 'YIELD_GOLD', 1),
	('BUILDING_TWOKAY_FOODS_HQ', 'RESOURCE_WINE', 'YIELD_FOOD', 2),
	('BUILDING_TWOKAY_FOODS_HQ', 'RESOURCE_TRUFFLES', 'YIELD_FOOD', 2),
	('BUILDING_TWOKAY_FOODS_HQ', 'RESOURCE_CITRUS', 'YIELD_FOOD', 2),
	('BUILDING_TWOKAY_FOODS', 'RESOURCE_WINE', 'YIELD_FOOD', 2),
	('BUILDING_TWOKAY_FOODS', 'RESOURCE_TRUFFLES', 'YIELD_FOOD', 2),
	('BUILDING_TWOKAY_FOODS', 'RESOURCE_CITRUS', 'YIELD_FOOD', 2),
	('BUILDING_TWOKAY_FOODS_FRANCHISE', 'RESOURCE_WINE', 'YIELD_GOLD', 1),
	('BUILDING_TWOKAY_FOODS_FRANCHISE', 'RESOURCE_TRUFFLES', 'YIELD_GOLD', 1),
	('BUILDING_TWOKAY_FOODS_FRANCHISE', 'RESOURCE_CITRUS', 'YIELD_GOLD', 1),
	('BUILDING_CIVILIZED_JEWELERS_FRANCHISE', 'RESOURCE_GOLD', 'YIELD_GOLD', 1),
	('BUILDING_CIVILIZED_JEWELERS_FRANCHISE', 'RESOURCE_SILVER', 'YIELD_GOLD', 1),
	('BUILDING_CIVILIZED_JEWELERS_FRANCHISE', 'RESOURCE_GEMS', 'YIELD_GOLD', 1),
	('BUILDING_CIVILIZED_JEWELERS_FRANCHISE', 'RESOURCE_PEARLS', 'YIELD_GOLD', 1),
	('BUILDING_CIVILIZED_JEWELERS_FRANCHISE', 'RESOURCE_JEWELRY', 'YIELD_GOLD', 1);

INSERT INTO Building_SpecialistYieldChanges
	(BuildingType, SpecialistType, YieldType, Yield)
VALUES
	('BUILDING_GIORIO_ARMEIER_HQ', 'SPECIALIST_CITIZEN', 'YIELD_CULTURE', 1),
	('BUILDING_GIORIO_ARMEIER_HQ', 'SPECIALIST_ARTIST', 'YIELD_CULTURE', 1),
	('BUILDING_GIORIO_ARMEIER_HQ', 'SPECIALIST_SCIENTIST', 'YIELD_CULTURE', 1),
	('BUILDING_GIORIO_ARMEIER_HQ', 'SPECIALIST_MERCHANT', 'YIELD_CULTURE', 1),
	('BUILDING_GIORIO_ARMEIER_HQ', 'SPECIALIST_ENGINEER', 'YIELD_CULTURE', 1),
	('BUILDING_GIORIO_ARMEIER_HQ', 'SPECIALIST_WRITER', 'YIELD_CULTURE', 1),
	('BUILDING_GIORIO_ARMEIER_HQ', 'SPECIALIST_MUSICIAN', 'YIELD_CULTURE', 1);

INSERT INTO Building_CorporationResourceQuantity
	(BuildingType, ResourceType, Quantity)
VALUES
	('BUILDING_HEXXON_REFINERY', 'RESOURCE_OIL', 3),
	('BUILDING_HEXXON_REFINERY', 'RESOURCE_OIL', 3);

INSERT INTO Building_BuildingClassYieldChanges
	(BuildingType, BuildingClassType, YieldType, YieldChange)
VALUES
	('BUILDING_TRADER_SIDS_HQ', 'BUILDINGCLASS_CARAVANSARY', 'YIELD_GOLD', 2),
	('BUILDING_TRADER_SIDS_HQ', 'BUILDINGCLASS_CARAVANSARY', 'YIELD_FOOD', 2),
	('BUILDING_LANDSEA_EXTRACTORS_HQ', 'BUILDINGCLASS_HARBOR', 'YIELD_FOOD', 2),
	('BUILDING_LANDSEA_EXTRACTORS_HQ', 'BUILDINGCLASS_HARBOR', 'YIELD_SCIENCE', 2),
	('BUILDING_LANDSEA_EXTRACTORS_HQ', 'BUILDINGCLASS_SEAPORT', 'YIELD_SCIENCE', 2),
	('BUILDING_LANDSEA_EXTRACTORS_HQ', 'BUILDINGCLASS_SEAPORT', 'YIELD_FOOD', 2),
	('BUILDING_FIRAXITE_MATERIALS_HQ', 'BUILDINGCLASS_FACTORY', 'YIELD_PRODUCTION', 2),
	('BUILDING_FIRAXITE_MATERIALS_HQ', 'BUILDINGCLASS_FACTORY', 'YIELD_SCIENCE', 2),
	('BUILDING_TWOKAY_FOODS_HQ', 'BUILDINGCLASS_GROCER', 'YIELD_GOLD', 2),
	('BUILDING_TWOKAY_FOODS_HQ', 'BUILDINGCLASS_GROCER', 'YIELD_FOOD', 2),
	('BUILDING_CIVILIZED_JEWELERS_HQ', 'BUILDINGCLASS_MARKET', 'YIELD_GOLD', 1),
	('BUILDING_CIVILIZED_JEWELERS_HQ', 'BUILDINGCLASS_BANK', 'YIELD_GOLD', 1),
	('BUILDING_CIVILIZED_JEWELERS_HQ', 'BUILDINGCLASS_MINT', 'YIELD_GOLD', 1),
	('BUILDING_CIVILIZED_JEWELERS_HQ', 'BUILDINGCLASS_STOCK_EXCHANGE', 'YIELD_GOLD', 1);

INSERT INTO Building_CorporationYield
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_TRADER_SIDS', 'YIELD_GOLD', 4),
	('BUILDING_LANDSEA_EXTRACTORS', 'YIELD_PRODUCTION', 3),
	('BUILDING_GIORIO_ARMEIER', 'YIELD_CULTURE', 3),
	('BUILDING_FIRAXITE_MATERIALS', 'YIELD_SCIENCE', 3),
	('BUILDING_TWOKAY_FOODS', 'YIELD_FOOD', 3);

INSERT INTO Building_CorporationYieldModTrade
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_LANDSEA_EXTRACTORS', 'YIELD_SCIENCE', 10),
	('BUILDING_HEXXON_REFINERY', 'YIELD_PRODUCTION', 10),
	('BUILDING_GIORIO_ARMEIER', 'YIELD_CULTURE', 10),
	('BUILDING_TWOKAY_FOODS', 'YIELD_FOOD', 10),
	('BUILDING_CIVILIZED_JEWELERS', 'YIELD_GOLD', 10);

INSERT INTO Building_CorporationTradeRouteMod
	(BuildingType, YieldType, Yield)
VALUES
	('BUILDING_TRADER_SIDS', 'YIELD_GOLD', 50),
	('BUILDING_FIRAXITE_MATERIALS', 'YIELD_SCIENCE', 100);

INSERT INTO Building_Flavors
	(BuildingType, FlavorType, Flavor)
VALUES
	('BUILDING_TRADER_SIDS_HQ', 'FLAVOR_GOLD', 100),
	('BUILDING_TRADER_SIDS', 'FLAVOR_GOLD', 50),
	('BUILDING_LANDSEA_EXTRACTORS_HQ', 'FLAVOR_PRODUCTION', 50),
	('BUILDING_LANDSEA_EXTRACTORS_HQ', 'FLAVOR_SCIENCE', 50),
	('BUILDING_LANDSEA_EXTRACTORS', 'FLAVOR_PRODUCTION', 30),
	('BUILDING_LANDSEA_EXTRACTORS', 'FLAVOR_SCIENCE', 30),
	('BUILDING_HEXXON_REFINERY_HQ', 'FLAVOR_PRODUCTION', 100),
	('BUILDING_HEXXON_REFINERY', 'FLAVOR_PRODUCTION', 50),
	('BUILDING_GIORIO_ARMEIER_HQ', 'FLAVOR_CULTURE', 100),
	('BUILDING_GIORIO_ARMEIER', 'FLAVOR_CULTURE', 50),
	('BUILDING_FIRAXITE_MATERIALS_HQ', 'FLAVOR_SCIENCE', 100),
	('BUILDING_FIRAXITE_MATERIALS', 'FLAVOR_SCIENCE', 50),
	('BUILDING_TWOKAY_FOODS_HQ', 'FLAVOR_GROWTH', 100),
	('BUILDING_TWOKAY_FOODS', 'FLAVOR_GROWTH', 50),
	('BUILDING_CIVILIZED_JEWELERS_HQ', 'FLAVOR_GOLD', 50),
	('BUILDING_CIVILIZED_JEWELERS_HQ', 'FLAVOR_GREAT_PEOPLE', 50),
	('BUILDING_CIVILIZED_JEWELERS', 'FLAVOR_GOLD', 40),
	('BUILDING_CIVILIZED_JEWELERS', 'FLAVOR_GREAT_PEOPLE', 40);

INSERT INTO Policies
	(Type, Description, Civilopedia, Help, PolicyBranchType, CultureCost, OrderCorporation, Level, PortraitIndex, IconAtlas, IconAtlasAchieved)
VALUES
	('POLICY_NATIONALIZATION', 'TXT_KEY_POLICY_NATIONALIZATION', 'TXT_KEY_POLICY_NATIONALIZATION_TEXT', 'TXT_KEY_POLICY_NATIONALIZATION_HELP', 'POLICY_BRANCH_ORDER', 10, 1, 2, 11, 'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2');

INSERT INTO Policies
	(Type, Description, Civilopedia, Help, PolicyBranchType, CultureCost, FreedomCorporation, Level, PortraitIndex, IconAtlas, IconAtlasAchieved)
VALUES
	('POLICY_GLOBALIZATION', 'TXT_KEY_POLICY_GLOBALIZATION', 'TXT_KEY_POLICY_GLOBALIZATION_TEXT', 'TXT_KEY_POLICY_GLOBALIZATION_HELP', 'POLICY_BRANCH_FREEDOM', 10, 1, 2, 25, 'POLICY_ATLAS', 'POLICY_A_ATLAS');

INSERT INTO Policies
	(Type, Description, Civilopedia, Help, PolicyBranchType, CultureCost, AutocracyCorporation, Level, PortraitIndex, IconAtlas, IconAtlasAchieved)
VALUES
	('POLICY_INFILTRATION', 'TXT_KEY_POLICY_INFILTRATION', 'TXT_KEY_POLICY_INFILTRATION_TEXT', 'TXT_KEY_POLICY_INFILTRATION_HELP', 'POLICY_BRANCH_AUTOCRACY', 10, 1, 2, 10, 'POLICY_ATLAS_EXP2', 'POLICY_A_ATLAS_EXP2');
	
INSERT INTO Policy_Flavors
	(PolicyType, FlavorType, Flavor)
VALUES
	('POLICY_NATIONALIZATION', 'FLAVOR_EXPANSION', 60),
	('POLICY_GLOBALIZATION', 'FLAVOR_GOLD', 60),
	('POLICY_INFILTRATION', 'FLAVOR_CULTURE', 60);

INSERT INTO Building_ClassNeededNowhere
	(BuildingType, BuildingClassType)
VALUES
	('BUILDING_TRADER_SIDS_HQ', 'BUILDINGCLASS_FIRAXITE_MATERIALS_HQ'),
	('BUILDING_TRADER_SIDS_HQ', 'BUILDINGCLASS_GIORIO_ARMEIER_HQ'),
	('BUILDING_TRADER_SIDS_HQ', 'BUILDINGCLASS_HEXXON_REFINERY_HQ'),
	('BUILDING_TRADER_SIDS_HQ', 'BUILDINGCLASS_LANDSEA_EXTRACTORS_HQ'),
	('BUILDING_TRADER_SIDS_HQ', 'BUILDINGCLASS_TWOKAY_FOODS_HQ'),
	('BUILDING_TRADER_SIDS_HQ', 'BUILDINGCLASS_CIVILIZED_JEWELERS_HQ'),
	('BUILDING_FIRAXITE_MATERIALS_HQ', 'BUILDINGCLASS_TRADER_SIDS_HQ'),
	('BUILDING_FIRAXITE_MATERIALS_HQ', 'BUILDINGCLASS_GIORIO_ARMEIER_HQ'),
	('BUILDING_FIRAXITE_MATERIALS_HQ', 'BUILDINGCLASS_HEXXON_REFINERY_HQ'),
	('BUILDING_FIRAXITE_MATERIALS_HQ', 'BUILDINGCLASS_LANDSEA_EXTRACTORS_HQ'),
	('BUILDING_FIRAXITE_MATERIALS_HQ', 'BUILDINGCLASS_TWOKAY_FOODS_HQ'),
	('BUILDING_FIRAXITE_MATERIALS_HQ', 'BUILDINGCLASS_CIVILIZED_JEWELERS_HQ'),
	('BUILDING_GIORIO_ARMEIER_HQ', 'BUILDINGCLASS_TRADER_SIDS_HQ'),
	('BUILDING_GIORIO_ARMEIER_HQ', 'BUILDINGCLASS_FIRAXITE_MATERIALS_HQ'),
	('BUILDING_GIORIO_ARMEIER_HQ', 'BUILDINGCLASS_HEXXON_REFINERY_HQ'),
	('BUILDING_GIORIO_ARMEIER_HQ', 'BUILDINGCLASS_LANDSEA_EXTRACTORS_HQ'),
	('BUILDING_GIORIO_ARMEIER_HQ', 'BUILDINGCLASS_TWOKAY_FOODS_HQ'),
	('BUILDING_GIORIO_ARMEIER_HQ', 'BUILDINGCLASS_CIVILIZED_JEWELERS_HQ'),
	('BUILDING_HEXXON_REFINERY_HQ', 'BUILDINGCLASS_TRADER_SIDS_HQ'),
	('BUILDING_HEXXON_REFINERY_HQ', 'BUILDINGCLASS_FIRAXITE_MATERIALS_HQ'),
	('BUILDING_HEXXON_REFINERY_HQ', 'BUILDINGCLASS_GIORIO_ARMEIER_HQ'),
	('BUILDING_HEXXON_REFINERY_HQ', 'BUILDINGCLASS_LANDSEA_EXTRACTORS_HQ'),
	('BUILDING_HEXXON_REFINERY_HQ', 'BUILDINGCLASS_TWOKAY_FOODS_HQ'),
	('BUILDING_HEXXON_REFINERY_HQ', 'BUILDINGCLASS_CIVILIZED_JEWELERS_HQ'),
	('BUILDING_LANDSEA_EXTRACTORS_HQ', 'BUILDINGCLASS_TRADER_SIDS_HQ'),
	('BUILDING_LANDSEA_EXTRACTORS_HQ', 'BUILDINGCLASS_FIRAXITE_MATERIALS_HQ'),
	('BUILDING_LANDSEA_EXTRACTORS_HQ', 'BUILDINGCLASS_GIORIO_ARMEIER_HQ'),
	('BUILDING_LANDSEA_EXTRACTORS_HQ', 'BUILDINGCLASS_HEXXON_REFINERY_HQ'),
	('BUILDING_LANDSEA_EXTRACTORS_HQ', 'BUILDINGCLASS_TWOKAY_FOODS_HQ'),
	('BUILDING_LANDSEA_EXTRACTORS_HQ', 'BUILDINGCLASS_CIVILIZED_JEWELERS_HQ'),
	('BUILDING_TWOKAY_FOODS_HQ', 'BUILDINGCLASS_TRADER_SIDS_HQ'),
	('BUILDING_TWOKAY_FOODS_HQ', 'BUILDINGCLASS_FIRAXITE_MATERIALS_HQ'),
	('BUILDING_TWOKAY_FOODS_HQ', 'BUILDINGCLASS_GIORIO_ARMEIER_HQ'),
	('BUILDING_TWOKAY_FOODS_HQ', 'BUILDINGCLASS_HEXXON_REFINERY_HQ'),
	('BUILDING_TWOKAY_FOODS_HQ', 'BUILDINGCLASS_LANDSEA_EXTRACTORS_HQ'),
	('BUILDING_TWOKAY_FOODS_HQ', 'BUILDINGCLASS_CIVILIZED_JEWELERS_HQ'),
	('BUILDING_CIVILIZED_JEWELERS_HQ', 'BUILDINGCLASS_TRADER_SIDS_HQ'),
	('BUILDING_CIVILIZED_JEWELERS_HQ', 'BUILDINGCLASS_FIRAXITE_MATERIALS_HQ'),
	('BUILDING_CIVILIZED_JEWELERS_HQ', 'BUILDINGCLASS_GIORIO_ARMEIER_HQ'),
	('BUILDING_CIVILIZED_JEWELERS_HQ', 'BUILDINGCLASS_HEXXON_REFINERY_HQ'),
	('BUILDING_CIVILIZED_JEWELERS_HQ', 'BUILDINGCLASS_LANDSEA_EXTRACTORS_HQ'),
	('BUILDING_CIVILIZED_JEWELERS_HQ', 'BUILDINGCLASS_TWOKAY_FOODS_HQ');

INSERT INTO Civilization_BuildingClassOverrides
	(CivilizationType, BuildingClassType, BuildingType)
VALUES
	('CIVILIZATION_BARBARIAN', 'BUILDINGCLASS_TWOKAY_FOODS_HQ', NULL),
	('CIVILIZATION_BARBARIAN', 'BUILDINGCLASS_LANDSEA_EXTRACTORS_HQ', NULL),
	('CIVILIZATION_BARBARIAN', 'BUILDINGCLASS_HEXXON_REFINERY_HQ', NULL),
	('CIVILIZATION_BARBARIAN', 'BUILDINGCLASS_GIORIO_ARMEIER_HQ', NULL),
	('CIVILIZATION_BARBARIAN', 'BUILDINGCLASS_FIRAXITE_MATERIALS_HQ', NULL),
	('CIVILIZATION_BARBARIAN', 'BUILDINGCLASS_TRADER_SIDS_HQ', NULL),
	('CIVILIZATION_BARBARIAN', 'BUILDINGCLASS_CIVILIZED_JEWELERS_HQ', NULL),
	('CIVILIZATION_MINOR', 'BUILDINGCLASS_TWOKAY_FOODS_HQ', NULL),
	('CIVILIZATION_MINOR', 'BUILDINGCLASS_LANDSEA_EXTRACTORS_HQ', NULL),
	('CIVILIZATION_MINOR', 'BUILDINGCLASS_HEXXON_REFINERY_HQ', NULL),
	('CIVILIZATION_MINOR', 'BUILDINGCLASS_GIORIO_ARMEIER_HQ', NULL),
	('CIVILIZATION_MINOR', 'BUILDINGCLASS_FIRAXITE_MATERIALS_HQ', NULL),
	('CIVILIZATION_MINOR', 'BUILDINGCLASS_TRADER_SIDS_HQ', NULL),
	('CIVILIZATION_MINOR', 'BUILDINGCLASS_CIVILIZED_JEWELERS_HQ', NULL);