-- Balance Engineers

UPDATE SpecialistYields
SET Yield = '3'
WHERE SpecialistType = 'SPECIALIST_ENGINEER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- Balance Merchants

UPDATE SpecialistYields
SET Yield = '3'
WHERE SpecialistType = 'SPECIALIST_MERCHANT' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- Balance Scientists

UPDATE SpecialistYields
SET Yield = '3'
WHERE SpecialistType = 'SPECIALIST_SCIENTIST' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- Balance Artists

UPDATE Specialists
SET CulturePerTurn = '3'
WHERE Type = 'SPECIALIST_ARTIST' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- Balance Writers

UPDATE Specialists
SET CulturePerTurn = '3'
WHERE Type = 'SPECIALIST_WRITER' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- Balance Musicians

UPDATE Specialists
SET CulturePerTurn = '5'
WHERE Type = 'SPECIALIST_MUSICIAN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );

-- Balance Citizens

UPDATE SpecialistYields
SET Yield = '1'
WHERE SpecialistType = 'SPECIALIST_CITIZEN' AND EXISTS (SELECT * FROM COMMUNITY WHERE Type='COMMUNITY_CORE_BALANCE_UNITS' AND Value= 1 );