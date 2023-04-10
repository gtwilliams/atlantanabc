/* Copyright (c) 2023 Garry T. Williams */

/*
    Partnership BEFORE Start of NABC
*/

CREATE TABLE requester (
    id           INTEGER      NOT NULL PRIMARY KEY AUTOINCREMENT,
    name         VARCHAR(255) NOT NULL,
    email        VARCHAR(100) NOT NULL,
    cell         INTEGER      NOT NULL,
    masterpoints INTEGER      NOT NULL,
    created      DATETIME     NOT NULL DEFAULT NOW,
    key          VARCHAR(255) NOT NULL,
    validated    BOOLEAN      NOT NULL DEFAULT FALSE
);

CREATE TABLE day (
    id  INTEGER     NOT NULL PRIMARY KEY,
    day VARCHAR(15) NOT NULL
);

CREATE TABLE event (
    id    INTEGER      NOT NULL PRIMARY KEY AUTOINCREMENT,
    day   INTEGER      NOT NULL REFERENCES day(id),
    pairs BOOLEAN      NOT NULL,
    time  VARCHAR(20)  NOT NULL,
    title VARCHAR(255) NOT NULL
);

CREATE TABLE requeter_event (
    requeter INTEGER NOT NULL REFERENCES requeter(id),
    event    INTEGER NOT NULL REFERENCES event(id)
);

INSERT INTO day VALUES( 1, 'Thusday, November 23');
INSERT INTO day VALUES( 2, 'Friday, November 24');
INSERT INTO day VALUES( 3, 'Saturday, November 25');
INSERT INTO day VALUES( 4, 'Sunday, November 26');
INSERT INTO day VALUES( 5, 'Monday, November 27');
INSERT INTO day VALUES( 6, 'Tuesday, November 28');
INSERT INTO day VALUES( 7, 'Wednesday, November 29');
INSERT INTO day VALUES( 8, 'Thusday, November 20');
INSERT INTO day VALUES( 9, 'Friday, December 1');
INSERT INTO day VALUES(10, 'Saturday, December 2');
INSERT INTO day VALUES(11, 'Sunday, December 3');

/* Thursday, November 23 */
INSERT INTO event VALUES(NULL, 1, TRUE, 'Noon', 'International Fund Pairs');
INSERT INTO event VALUES(NULL, 1, FALSE, 'Noon', 'International Fund Swiss Teams');
INSERT INTO event VALUES(NULL, 1, TRUE, 'Noon', 'International Fund 299er Pairs');
INSERT INTO event VALUES(NULL, 1, TRUE, '5 PM', 'Educational Foundation Pairs');
INSERT INTO event VALUES(NULL, 1, FALSE, '5 PM', 'Educational Foundation Swiss Teams');
INSERT INTO event VALUES(NULL, 1, TRUE, '5 PM', 'Educational Foundation 299er Pairs');

/* Friday, November 24 */
INSERT INTO event VALUES(NULL, 2, TRUE, '10 AM', 'Friday Morning Side Pairs');
INSERT INTO event VALUES(NULL, 2, TRUE, '10 AM', '299er Pairs');
INSERT INTO event VALUES(NULL, 2, TRUE, '10 AM', '99er Pairs');
INSERT INTO event VALUES(NULL, 2, TRUE, '10 AM & 3 PM', 'NAIL LIFE MASTER PAIRS');
INSERT INTO event VALUES(NULL, 2, TRUE, '10 AM & 3 PM', 'Open Pairs (unlim./4000/1500)');
INSERT INTO event VALUES(NULL, 2, TRUE, '10 AM & 3 PM', 'Gold Rush Pairs');
INSERT INTO event VALUES(NULL, 2, FALSE, '10 AM & 3 PM', 'Bracketed Round Robin Teams');
INSERT INTO event VALUES(NULL, 2, FALSE, '10 AM & 3:30 PM', 'SOLOWAY KNOCKOUT TEAMS');
INSERT INTO event VALUES(NULL, 2, TRUE, '3 PM', 'Friday Afternoon Side Pairs');
INSERT INTO event VALUES(NULL, 2, TRUE, '3 PM', '299er Pairs');
INSERT INTO event VALUES(NULL, 2, TRUE, '7:30 PM', 'Friday Evening Side Pairs');

/* Saturday, November 25 */
INSERT INTO event VALUES(NULL, 3, TRUE, '10 AM', 'Saturday Morning Side Pairs');
INSERT INTO event VALUES(NULL, 3, TRUE, '10 AM', '299er Pairs');
INSERT INTO event VALUES(NULL, 3, TRUE, '10 AM', '99er Pairs');
INSERT INTO event VALUES(NULL, 3, TRUE, '10 AM', 'Bridge Plus+');
INSERT INTO event VALUES(NULL, 3, TRUE, '10 AM & 3 PM', 'Top-Flight Pairs (unlim./5000)');
INSERT INTO event VALUES(NULL, 3, TRUE, '10 AM & 3 PM', 'Mid-Flight Pairs (4000/1250)');
INSERT INTO event VALUES(NULL, 3, TRUE, '10 AM & 3 PM', 'Gold Rush Pairs');
INSERT INTO event VALUES(NULL, 3, FALSE, '10 AM & 3 PM', 'Bracketed Round Robin Teams');
INSERT INTO event VALUES(NULL, 3, TRUE, '3 PM', 'Saturday Afternoon Side Pairs');
INSERT INTO event VALUES(NULL, 3, TRUE, '3 PM', '299er Pairs');
INSERT INTO event VALUES(NULL, 3, TRUE, '7:30 PM', 'Saturday Evening Side Pairs');

/* Sunday, November 26 */
INSERT INTO event VALUES(NULL, 4, TRUE, '10 AM', 'Sunday Morning Side Pairs');
INSERT INTO event VALUES(NULL, 4, TRUE, '10 AM', '299er Pairs');
INSERT INTO event VALUES(NULL, 4, TRUE, '10 AM', '99er Pairs');
INSERT INTO event VALUES(NULL, 4, TRUE, '10 AM', 'Bridge Plus+');
INSERT INTO event VALUES(NULL, 4, FALSE, '10 AM & 3 PM', 'MITCHELL OPEN BOARD-A-MATCH TEAMS');
INSERT INTO event VALUES(NULL, 4, TRUE, '10 AM & 3 PM', 'SUPER SENIOR PAIRS');
INSERT INTO event VALUES(NULL, 4, TRUE, '10 AM & 3 PM', 'Open Pairs');
INSERT INTO event VALUES(NULL, 4, TRUE, '10 AM & 3 PM', 'Top-Flight Swiss Teams (unlim./5000)');
INSERT INTO event VALUES(NULL, 4, TRUE, '10 AM & 3 PM', 'Mid-Flight Swiss Teams (4000/1250)');
INSERT INTO event VALUES(NULL, 4, TRUE, '10 AM & 3 PM', 'Gold Rush Swiss Teams');
INSERT INTO event VALUES(NULL, 4, FALSE, '10 AM & 3:30 PM', 'NABC 0-10,000 SWISS TEAMS');
INSERT INTO event VALUES(NULL, 4, TRUE, '3 PM', 'Sunday Afternoon Side Pairs');
INSERT INTO event VALUES(NULL, 4, TRUE, '3 PM', '299er Pairs');
INSERT INTO event VALUES(NULL, 4, TRUE, '7:30 PM', 'Sunday Evening Side Pairs');

/* Monday, November 27 */
INSERT INTO event VALUES(NULL, 5, TRUE, '10 AM', 'Monday Morning Side Pairs');
INSERT INTO event VALUES(NULL, 5, TRUE, '10 AM', '299er Pairs');
INSERT INTO event VALUES(NULL, 5, TRUE, '10 AM', '99er Pairs');
INSERT INTO event VALUES(NULL, 5, TRUE, '10 AM & 3 PM', 'NABC 0-10,000 IMP PAIRS');
INSERT INTO event VALUES(NULL, 5, TRUE, '10 AM & 3 PM', 'Top-Flight Pairs (unlim./5000)');
INSERT INTO event VALUES(NULL, 5, TRUE, '10 AM & 3 PM', 'Mid-Flight Pairs (4000/1250)');
INSERT INTO event VALUES(NULL, 5, TRUE, '10 AM & 3 PM', 'Gold Rush Pairs');
INSERT INTO event VALUES(NULL, 5, FALSE, '10 AM & 3 PM', 'Top-Flight Swiss Teams (unlim/6000/4500)');
INSERT INTO event VALUES(NULL, 5, FALSE, '10 AM & 3 PM', 'Bracketed Round Robin Teams');
INSERT INTO event VALUES(NULL, 5, TRUE, '3 AM', 'Monday Afternoon Side Pairs');
INSERT INTO event VALUES(NULL, 5, TRUE, '3 AM', '299er Pairs');
INSERT INTO event VALUES(NULL, 5, TRUE, '7:30 AM', 'Monday Evening Side Pairs');
INSERT INTO event VALUES(NULL, 5, FALSE, '7:30 AM', 'Mon-Tue Evening Open Swiss Teams (unlim/4000/1500)');
INSERT INTO event VALUES(NULL, 5, FALSE, '7:30 AM', 'Mon-Tue Evening Gold Rush Swiss Teams');

/* Tuesday, November 28 */
INSERT INTO event VALUES(NULL, 6, TRUE, '10 AM', 'Tuesday Morning Side Pairs');
INSERT INTO event VALUES(NULL, 6, TRUE, '10 AM', '299er Pairs');
INSERT INTO event VALUES(NULL, 6, TRUE, '10 AM', '99er Pairs');
INSERT INTO event VALUES(NULL, 6, TRUE, '10 AM & 3 PM', 'WHITEHEAD WOMEN’S PAIRS');
INSERT INTO event VALUES(NULL, 6, TRUE, '10 AM & 3 PM', '0-6000 BLUE RIBBON PAIRS');
INSERT INTO event VALUES(NULL, 6, TRUE, '10 AM & 3 PM', 'NABC 0-10,000 IMP PAIRS');
INSERT INTO event VALUES(NULL, 6, TRUE, '10 AM & 3 PM', 'Open Pairs (unlim./4000/1500)');
INSERT INTO event VALUES(NULL, 6, TRUE, '10 AM & 3 PM', 'Gold Rush Pairs');
INSERT INTO event VALUES(NULL, 6, FALSE, '10 AM & 3 PM', 'Top-Flight Swiss Teams (unlim/6000/4500)');
INSERT INTO event VALUES(NULL, 6, FALSE, '10 AM & 3 PM', 'Bracketed Round Robin Teams (0-4000)');
INSERT INTO event VALUES(NULL, 6, TRUE, '3 PM', 'Tuesday Afternoon Side Pairs');
INSERT INTO event VALUES(NULL, 6, TRUE, '3 PM', '299er Pairs');
INSERT INTO event VALUES(NULL, 6, TRUE, '7:30 PM', 'Tuesday Evening Side Pairs');

/* Wednesday, November 29 */
INSERT INTO event VALUES(NULL, 7, TRUE, '10 AM', 'Wednesday Morning Side Pairs');
INSERT INTO event VALUES(NULL, 7, TRUE, '10 AM', '299er Pairs');
INSERT INTO event VALUES(NULL, 7, TRUE, '10 AM', '99er Pairs');
INSERT INTO event VALUES(NULL, 7, TRUE, '10 AM & 3 PM', 'Top-Flight Pairs (unlim./5000)');
INSERT INTO event VALUES(NULL, 7, TRUE, '10 AM & 3 PM', 'Mid-Flight Pairs (4000/1250)');
INSERT INTO event VALUES(NULL, 7, TRUE, '10 AM & 3 PM', 'Gold Rush Pairs');
INSERT INTO event VALUES(NULL, 7, FALSE, '10 AM & 3 PM', 'Top-Flight Swiss Teams (unlim./6000/4500)');
INSERT INTO event VALUES(NULL, 7, FALSE, '10 AM & 3 PM', 'Bracketed Round Robin Teams (0-4000)');
INSERT INTO event VALUES(NULL, 7, TRUE, '3 PM', 'Wednesday Afternoon Side Pairs');
INSERT INTO event VALUES(NULL, 7, TRUE, '3 PM', '299er Pairs');
INSERT INTO event VALUES(NULL, 7, TRUE, '7:30 PM', 'Wednesday Evening Side Pairs');

/* Thursday, November 30 */
INSERT INTO event VALUES(NULL, 8, TRUE, '10 AM', 'Thursday Morning Side Pairs');
INSERT INTO event VALUES(NULL, 8, TRUE, '10 AM', '299er Pairs');
INSERT INTO event VALUES(NULL, 8, TRUE, '10 AM', '99er Pairs');
INSERT INTO event VALUES(NULL, 8, TRUE, '10 AM & 1:30 PM', 'NABC 0-10,000 FAST PAIRS');
INSERT INTO event VALUES(NULL, 8, TRUE, '10 AM & 3 PM', 'SENIOR MIXED PAIRS');
INSERT INTO event VALUES(NULL, 8, TRUE, '10 AM & 3 PM', 'Top-Flight Pairs (unlim./5000)');
INSERT INTO event VALUES(NULL, 8, TRUE, '10 AM & 3 PM', 'Mid-Flight Pairs (4000/1250)');
INSERT INTO event VALUES(NULL, 8, TRUE, '10 AM & 3 PM', 'Gold Rush Pairs');
INSERT INTO event VALUES(NULL, 8, FALSE, '10 AM & 3 PM', 'Top-Flight Swiss Teams (unlim./6000/4500)');
INSERT INTO event VALUES(NULL, 8, FALSE, '10 AM & 3 PM', 'Bracketed Round Robin Teams (0-4000)');
INSERT INTO event VALUES(NULL, 8, TRUE, '3 PM', 'Thursday Afternoon Side Pairs');
INSERT INTO event VALUES(NULL, 8, TRUE, '3 PM', '299er Pairs');
INSERT INTO event VALUES(NULL, 8, TRUE, '7:30 PM', 'Thursday Evening Side Pairs');

/* Friday, December 1 */
INSERT INTO event VALUES(NULL, 9, FALSE, '9:30 AM & 3:30 PM', 'REISINGER BOARD-A-MATCH TEAMS');
INSERT INTO event VALUES(NULL, 9, TRUE, '10 AM', 'Friday Morning Side Pairs');
INSERT INTO event VALUES(NULL, 9, TRUE, '10 AM', '299er Pairs');
INSERT INTO event VALUES(NULL, 9, TRUE, '10 AM', '99er Pairs');
INSERT INTO event VALUES(NULL, 9, TRUE, '10 AM & 1 PM', 'Fast Pairs');
INSERT INTO event VALUES(NULL, 9, TRUE, '10 AM & 3 PM', 'Top-Flight Pairs (unlim./5000)');
INSERT INTO event VALUES(NULL, 9, TRUE, '10 AM & 3 PM', 'Mid-Flight Pairs (4000/1250)');
INSERT INTO event VALUES(NULL, 9, TRUE, '10 AM & 3 PM', 'Gold Rush Pairs');
INSERT INTO event VALUES(NULL, 9, FALSE, '10 AM & 3 PM', 'Bracketed Round Robin Teams (0-4000)');
INSERT INTO event VALUES(NULL, 9, FALSE, '10 AM & 3:30 PM', 'KEOHANE NORTH AMERICAN SWISS TEAMS');
INSERT INTO event VALUES(NULL, 9, TRUE, '3 PM', 'Friday Afternoon Side Pairs');
INSERT INTO event VALUES(NULL, 9, TRUE, '3 PM', '299er Pairs');
INSERT INTO event VALUES(NULL, 9, TRUE, '7:30 PM', 'Friday Evening Side Pairs');

/* Saturday, December 2 */
INSERT INTO event VALUES(NULL, 10, TRUE, '10 AM', 'Saturday Morning Side Pairs');
INSERT INTO event VALUES(NULL, 10, TRUE, '10 AM', '299er Pairs');
INSERT INTO event VALUES(NULL, 10, TRUE, '10 AM & 1 PM', 'Fast Pairs');
INSERT INTO event VALUES(NULL, 10, TRUE, '10 AM & 3 PM', 'NABC 0-6000 PAIRS');
INSERT INTO event VALUES(NULL, 10, TRUE, '10 AM & 3 PM', 'Open Pairs (unlim./4000/1500)');
INSERT INTO event VALUES(NULL, 10, TRUE, '10 AM & 3 PM', 'Gold Rush Pairs');
INSERT INTO event VALUES(NULL, 10, FALSE, '10 AM & 3 PM', 'Top-Flight Swiss Teams (unlim/6000/4500)');
INSERT INTO event VALUES(NULL, 10, FALSE, '10 AM & 3 PM', 'Bracketed Round Robin Teams (0-4000)');
INSERT INTO event VALUES(NULL, 10, FALSE, '10 AM & 3:30 PM', 'NABC+ MIXED SWISS TEAMS');
INSERT INTO event VALUES(NULL, 10, TRUE, '3 PM', 'Saturday Afternoon Side Pairs');
INSERT INTO event VALUES(NULL, 10, TRUE, '3 PM', '299er Pairs');


/* Sunday, December 3 */
INSERT INTO event VALUES(NULL, 11, TRUE, '10 AM', 'Sunday Morning Side Pairs');
INSERT INTO event VALUES(NULL, 11, TRUE, '10 AM', '299er Pairs');
INSERT INTO event VALUES(NULL, 11, TRUE, '10 AM & 1 PM', 'Fast Pairs');
INSERT INTO event VALUES(NULL, 11, FALSE, '10 AM & TBA', 'Top-Flight Swiss Teams (unlim/6000/4500)');
INSERT INTO event VALUES(NULL, 11, FALSE, '10 AM & TBA', 'Bracketed Round Robin Teams (0-4000)');
INSERT INTO event VALUES(NULL, 11, TRUE, '2 PM', 'Saturday Afternoon Side Pairs');
INSERT INTO event VALUES(NULL, 11, TRUE, '2 PM', '299er Pairs');

/* vim: set sw=4 ts=8 sts=4 et ai columns=130: */
