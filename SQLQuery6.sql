USE selectPrac;
GO

SELECT points FROM myTournament;

SELECT * FROM myTournament;

SELECT * FROM myTournament WHERE points = 20;

SELECT DISTINCT teamName, points FROM myTournament;

SELECT goals FROM myTournament WHERE goals = 1;

--DELETE

DELETE TOP (1) FROM myTournament;