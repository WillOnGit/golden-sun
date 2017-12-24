LOAD DATA INFILE '/Users/Will/GitHub/golden-sun/djinni-db.txt' INTO TABLE djinni
FIELDS TERMINATED BY ','
IGNORE 1 LINES
(game,element,name,HP,PP,ATT,DEF,AGI,LCK);
