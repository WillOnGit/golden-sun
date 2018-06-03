LOAD DATA INFILE '/Users/Will/GitHub/golden-sun/djinni-db.txt' INTO TABLE djinni
FIELDS TERMINATED BY ','
IGNORE 1 LINES
(game,element,name,HP,PP,ATT,DEF,AGI,LCK);

UPDATE class INNER JOIN test ON class.name = test.name SET class.family = test.family;

SELECT * FROM weapon INNER JOIN buffs ON weapon.id = buffs.id;
