-- League: This table stores all leagues.
CREATE TABLE league (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
);

INSERT INTO league (name)
VALUES
    ('Premier League');

-- Team: This table stores information about each team in the league system, such as name, city, stadium, and manager.
CREATE TABLE team (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    stadium VARCHAR(255) NOT NULL,
    manager VARCHAR(255)
);

INSERT INTO team (name, city, stadium, manager)
VALUES
    ('Hugues Dallosso', 'Xiangride', 'Thunder Field', 'Lusa Pontefract'),
    ('Ashlee Petican', 'Sanbao', 'Arena Stadium', 'Neala Shieber'),
    ('Madlin Rimour', 'Mukun', 'Emerald Park', 'Jerrie Haslegrave'),
    ('Philis Kinrade', 'Zaragoza', 'Wembley', 'Shepard Savell'),
    ('Padraic Harrad', 'Sanbao', 'Sunset Stadium', 'Corabella MacPherson');

-- Find teams with specified location and manager conditions, ordered by team name in descending order.
SELECT name AS team_name, city, manager AS manager_name
    FROM team
    WHERE city != 'Sanbao' OR manager LIKE '%n'
    ORDER BY team_name DESC;

-- Find distinct team cities, concatenating team name and uppercased city, excluding records with NULL city value
SELECT concat(name, ' : ', UPPER(city)) AS team_cities
    FROM team
    WHERE city IN ('Mukun', 'Xiangride');

-- Find teams with stadium name ending with "stadium", limited to the first record and ordered by desc.
SELECT *
    FROM team
    WHERE stadium LIKE '%Stadium'
    ORDER BY stadium DESC
    LIMIT 1;

-- Player: This table stores information about each player who belongs to one or more teams in the league system, such as name, date of birth, nationality, position, and number.
CREATE TABLE player (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    birth_date DATE,
    nationality VARCHAR(255),
    position ENUM('Goalkeeper', 'Defender', 'Midfielder', 'Forward') NOT NULL,
    number INT NOT NULL
);

INSERT INTO player (name, birth_date, nationality, position, number)
VALUES
    ('Alice Anderson', '1999-03-15', 'American', 'Forward', 2),
    ('Bob Brown', '1996-08-22', 'British', 'Midfielder', 3),
    ('Charlie Clark', '2001-02-10', 'Spanish', 'Defender', 11),
    ('David Davis', '1991-11-18', 'Brazilian', 'Goalkeeper', 7),
    ('Eva Evans', '1998-04-05', 'French', 'Midfielder', 4),
    ('Frank Foster', '1996-07-30', 'Italian', 'Forward', 8),
    ('Grace Green', '2000-12-14', 'German', 'Defender', 5),
    ('Harry Harris', '1995-09-08', 'Portuguese', 'Midfielder', 1),
    ('Ivy Irwin', '1999-01-25', 'Dutch', 'Forward', 6),
    ('Jack Johnson', '1993-06-18', 'Argentinian', 'Midfielder', 9),
    ('Kate King', '1998-10-03', 'Canadian', 'Defender', 10),
    ('Leo Lee', '1996-03-22', 'Chinese', 'Forward', 10),
    ('Mia Miller', '1999-09-14', 'Australian', 'Midfielder', 6),
    ('Noah Nelson', '1994-07-01', 'Swedish', 'Defender', 7),
    ('Olivia Owens', '1991-12-30', 'American', 'Goalkeeper', 4),
    ('Peter Parker', '1995-04-18', 'Italian', 'Midfielder', 5),
    ('Ryan Ross', '1994-11-08', 'Canadian', 'Defender', 8),
    ('Sara Simmons', '2000-02-25', 'French', 'Midfielder', 2),
    ('Tom Turner', '1993-07-29', 'Argentinian', 'Forward', 9),
    ('Victor Vaughn', '1998-11-12', 'Swedish', 'Defender', 3),
    ('Wendy White', '1998-05-14', 'German', 'Forward', 11),
    ('Xander Xavier', '1996-10-22', 'Dutch', 'Midfielder', 1),
    ('Yara Young', '2001-04-10', 'Brazilian', 'Defender', 2),
    ('Zack Zane', '1993-11-29', 'Australian', 'Goalkeeper', 9),
    ('Ava Adams', '1997-02-25', 'Italian', 'Midfielder', 5),
    ('Chloe Carter', '1999-11-08', 'Canadian', 'Defender', 4),
    ('Daniel Davis', '1994-08-27', 'American', 'Midfielder', 7),
    ('Emily Evans', '1996-03-15', 'British', 'Forward', 1),
    ('Finn Foster', '1992-06-29', 'German', 'Midfielder', 3),
    ('George Green', '1998-01-25', 'Brazilian', 'Defender', 6),
    ('Holly Harris', '1991-08-12', 'Dutch', 'Goalkeeper', 10),
    ('Isaac Irwin', '1993-11-18', 'Canadian', 'Midfielder', 8),
    ('Jackie Johnson', '1995-09-22', 'Argentinian', 'Forward', 11),

    ('Katie King', '1999-05-03', 'British', 'Midfielder', 4),
    ('Liam Lee', '1998-10-20', 'Italian', 'Defender', 3),
    ('Molly Miller', '1994-12-27', 'American', 'Goalkeeper', 7),
    ('Nathan Nelson', '1996-05-15', 'Swedish', 'Midfielder', 5),
    ('Olivia Owens', '1993-08-28', 'Canadian', 'Defender', 8),
    ('Parker Parker', '2000-03-22', 'Dutch', 'Forward', 2),
    ('Quinn Queen', '1992-09-29', 'French', 'Midfielder', 9),
    ('Riley Ross', '1998-04-24', 'German', 'Defender', 11),
    ('Sophie Simmons', '1991-11-30', 'Brazilian', 'Goalkeeper', 10),
    ('Tom Turner', '1996-02-15', 'British', 'Midfielder', 6),
    ('Uma Irwin', '1994-09-12', 'Dutch', 'Forward', 1),

    ('Victor Vaughn', '1999-04-18', 'Swedish', 'Midfielder', 6),
    ('Willa White', '1998-11-23', 'Canadian', 'Defender', 3),
    ('Xander Xavier', '1993-06-08', 'American', 'Goalkeeper', 8),
    ('Yara Young', '1999-03-24', 'Italian', 'Midfielder', 4),
    ('Zara Zane', '1997-09-15', 'Australian', 'Forward', 7),
    ('Adam Adams', '1992-04-10', 'German', 'Midfielder', 5),
    ('Bella Brown', '1996-11-29', 'Brazilian', 'Defender', 2),
    ('Cameron Carter', '1998-07-14', 'British', 'Goalkeeper', 1),
    ('Dylan Davis', '1995-02-18', 'Canadian', 'Midfielder', 9),
    ('Ella Evans', '1999-05-03', 'Swedish', 'Defender', 11),
    ('Felix Foster', '1994-12-20', 'Italian', 'Forward', 10);

-- Find number of players grouped by their playing positions.
SELECT position, COUNT(*) AS players_number
    FROM player
    GROUP BY position
    HAVING players_number BETWEEN 6 AND 10;

-- Find the minimum age among goalkeepers or players with names starting with 'A'.
SELECT MIN(YEAR(CURRENT_DATE()) - YEAR(birth_date)) AS minimum_age
    FROM player
    WHERE position = 'Goalkeeper' OR name LIKE '__a%';

-- Find players number by position with names starting from A to D.
SELECT position, COUNT(*) AS number_of_players
    FROM player
    WHERE name REGEXP '^[A-D]'
    GROUP BY position
    ORDER BY number_of_players;

CREATE TABLE player_teams (
    id_player INTEGER,
    id_team INTEGER,
    FOREIGN KEY (id_player) REFERENCES player(id),
    FOREIGN KEY (id_team) REFERENCES team(id),
    PRIMARY KEY (id_player, id_team)
);

INSERT INTO player_teams (id_player, id_team)
VALUES
    (1, 1), (2, 1), (3, 1), (4, 1), (5, 1), (6, 1), (7, 1), (8, 1), (9, 1), (10, 1), (11, 1),
    (12, 2), (13, 2), (14, 2), (15, 2), (16, 2), (17, 2), (18, 2), (19, 2), (20, 2), (21, 2), (22, 2),
    (23, 3), (24, 3), (25, 3), (26, 3), (27, 3), (28, 3), (29, 3), (30, 3), (31, 3), (32, 3), (33, 3),
    (34, 4), (35, 4), (36, 4), (37, 4), (38, 4), (39, 4), (40, 4), (41, 4), (42, 4), (43, 4), (44, 4),
    (45, 5), (46, 5), (47, 5), (48, 5), (49, 5), (50, 5), (51, 5), (52, 5), (53, 5), (54, 5), (55, 5);

-- Matches: This table stores information about each match that is played between two teams in the league system, such as match, date, time, venue, home team, away team, home score, and away score.
CREATE TABLE matches (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    date_time DATETIME NOT NULL,
    venue VARCHAR(255) NOT NULL,
    home_team_id INTEGER,
    away_team_id INTEGER,
    home_score INT NOT NULL,
    away_score INT NOT NULL,
    FOREIGN KEY (home_team_id) REFERENCES team(id),
    FOREIGN KEY (away_team_id) REFERENCES team(id)
);

INSERT INTO matches (date_time, venue, home_team_id, away_team_id, home_score, away_score)
VALUES
    ('2024-03-01 15:00:00', 'Thunder Field', 1, 2, 2, 1),
    ('2024-03-02 16:30:00', 'Arena Stadium', 1, 3, 3, 0),
    ('2024-03-03 14:45:00', 'Emerald Park', 1, 4, 1, 2),
    ('2024-03-04 18:00:00', 'Wembley', 1, 5, 2, 2),

    ('2024-03-05 17:15:00', 'Arena Stadium', 2, 3, 1, 3),
    ('2024-03-06 15:30:00', 'Emerald Park', 2, 4, 0, 2),
    ('2024-03-07 16:45:00', 'Wembley', 2, 5, 2, 1),

    ('2024-03-08 19:00:00', 'Emerald Park', 3, 4, 3, 1),
    ('2024-03-09 16:15:00', 'Wembley', 3, 5, 1, 1),

    ('2024-03-10 14:30:00', 'Wembley', 4, 5, 2, 0);

-- Find the names of matches and their total home scores, filtering matches played between the 4th and 14th days of the month. Results are ordered by the sum of home scores and limited to 8 records, starting from the 3rd record.
SELECT CONCAT(id, ' — ', SUM(home_score)) AS home_team_score
    FROM matches
    WHERE EXTRACT(DAY FROM date_time) BETWEEN 4 AND 8
    GROUP BY id
    ORDER BY SUM(home_score)
    LIMIT 5
    OFFSET 2;

-- Find the rounded average home and away scores for each venue, excluding venues where either average is zero.
SELECT venue, ROUND(AVG(home_score)) AS average_home_score, ROUND(AVG(away_score)) AS average_away_score
    FROM matches
    GROUP BY venue
    HAVING average_home_score > 0 AND average_away_score > 0
    ORDER BY venue;

-- Find information about the latest home match of Madlin Rimour, including match number, date, and time.
SELECT matches.id AS `match`, date_time
    FROM matches
             INNER JOIN team
                        ON matches.home_team_id = team.id
    WHERE team.name = 'Madlin Rimour'
    ORDER BY DATE(date_time) DESC
    LIMIT 1;

-- Goal: This table stores information about each goal that is scored in a match (match, player, team, and time).
CREATE TABLE goal (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    match_id INTEGER,
    player_id INTEGER,
    team_id INTEGER,
    goal_time TIME NOT NULL,
    FOREIGN KEY (match_id) REFERENCES matches(id),
    FOREIGN KEY (player_id) REFERENCES player(id),
    FOREIGN KEY (team_id) REFERENCES team(id)
);

INSERT INTO goal (match_id, player_id, team_id, goal_time)
VALUES
    (1, 1, 1, '00:15:00'),
    (1, 3, 1, '00:30:00'),
    (1, 15, 2, '00:34:00'),

    (2, 10, 1, '00:10:00'),
    (2, 42, 1, '00:25:00'),
    (2, 35, 1, '00:05:00'),
    (2, 30, 3, '00:15:00'),

    (3, 2, 1, '00:40:00'),
    (3, 37, 4, '00:05:00'),
    (3, 43, 4, '00:20:00'),

    (4, 1, 1, '00:35:00'),
    (4, 7, 1, '00:05:00'),
    (4, 52, 5, '00:08:00'),
    (4, 48, 5, '00:18:00'),

    (5, 16, 2, '00:12:00'),
    (5, 28, 3, '00:28:00'),
    (5, 28, 3, '00:02:00'),
    (5, 30, 3, '00:29:00'),

    (6, 37, 4, '00:08:00'),
    (6, 37, 4, '00:32:00'),

    (7, 20, 2, '00:42:00'),
    (7, 18, 2, '00:02:00'),
    (7, 45, 5, '00:15:00'),

    (8, 29, 3, '00:01:00'),
    (8, 29, 3, '00:27:00'),
    (8, 28, 3, '00:39:00'),
    (8, 38, 4, '00:07:00'),

    (9, 33, 3, '00:19:00'),
    (9, 53, 5, '00:27:00'),

    (10, 41, 4, '00:14:00'),
    (10, 43, 4, '00:30:00');

-- Find matches where goals were scored before 25th minute.
SELECT match_id AS `match`, UPPER(team.name) AS team_name, goal_time
    FROM goal
             INNER JOIN team
                        ON goal.team_id = team.id
    WHERE (TIME_TO_SEC(goal_time) / 60) < 25
    ORDER BY goal_time, match_id;

-- Find teams which scored less than 2 goals during league.
SELECT team.name AS team, COUNT(*) AS goals_scored
    FROM goal
             INNER JOIN team
                        ON goal.team_id = team.id
    GROUP BY team.id
    HAVING goals_scored < 8
    ORDER BY goals_scored DESC;

-- Find goals scored by teams in a specific venue:
SELECT team.name AS team, COUNT(*) AS goals_scored
    FROM goal
             INNER JOIN team
                        ON goal.team_id = team.id
             INNER JOIN matches
                        ON goal.match_id = matches.id
    WHERE venue LIKE 'Em%'
    GROUP BY team.id
    ORDER BY goals_scored DESC;

-- Standing: This table stores information about the current ranking of each team in each league, team, position, points, played, won, drawn, lost, goals for, goals against, and goal difference.
CREATE TABLE standing (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    team_id INTEGER,
    league_id INTEGER NOT NULL,
    position INT NOT NULL,
    points INT NOT NULL,
    played INT NOT NULL,
    won INT NOT NULL,
    drawn INT NOT NULL,
    lost INT NOT NULL,
    goals_for INT NOT NULL,
    goals_against INT NOT NULL,
    FOREIGN KEY (team_id) REFERENCES team(id),
    FOREIGN KEY (league_id) REFERENCES league(id)
);


INSERT INTO standing (team_id, league_id, position, points, played, won, drawn, lost, goals_for, goals_against)
VALUES
    (1, 1, 3, 4, 4, 2, 1, 1, 8, 7),
    (2, 1, 4, 3, 4, 1, 0, 3, 4, 8),
    (3, 1, 2, 7, 4, 2, 1, 1, 8, 7),
    (4, 1, 1, 9, 4, 3, 0, 1, 7, 4),
    (5, 1, 5, 1, 4, 0, 1, 3, 4, 7);

-- Find teams with a second position in Premier Ligue:
SELECT team.name AS team, league.name AS league, position
    FROM standing
             INNER JOIN team
                        ON standing.team_id = team.id
             INNER JOIN league
                        ON standing.league_id = league.id
    WHERE league.name = 'Premier League'
      AND team.name IN (
        SELECT team.name
        FROM standing
                 INNER JOIN team
                            ON standing.team_id = team.id
        WHERE league.name = 'Premier League' AND position = 2
    );

-- Find teams' goal differences and order by them:
SELECT team.name AS team, league.name AS league, ABS(goals_against - goals_for) AS goal_difference
    FROM standing
             INNER JOIN team ON standing.team_id = team.id
             INNER JOIN league ON standing.league_id = league.id
    WHERE league.name = 'Premier League'
    ORDER BY goal_difference;

-- Find teams with the most wins in the league:
SELECT team.name AS team, won AS wins
    FROM standing
             INNER JOIN league
                        ON standing.league_id = league.id
             INNER JOIN team
                        ON standing.team_id = team.id
    WHERE won = (
        SELECT MAX(won)
        FROM standing
    ) and league.name = 'Premier League';
