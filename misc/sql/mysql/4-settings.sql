CREATE TABLE GlobalSettings (
	parameter varchar(60) PRIMARY KEY NOT NULL,
	value varchar(255)
);

INSERT INTO GlobalSettings VALUES ('G_DVR_NAME', 'Bluecherry DVR v2');
INSERT INTO GlobalSettings VALUES ('G_DVR_EMAIL', 'root@localhost');
INSERT INTO GlobalSettings VALUES ('G_DEV_SCED', 'CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC');
INSERT INTO GlobalSettings VALUES ('G_DEV_NOTES', '');
INSERT INTO GlobalSettings VALUES ('G_IPCAMLIST_VERSION', '1.0');
INSERT INTO GlobalSettings VALUES ('G_LAST_SOFTWARE_VERSION_CHECK', 0);
INSERT INTO GlobalSettings VALUES ('G_DISABLE_VERSION_CHECK', '0');
INSERT INTO GlobalSettings VALUES ('G_DISABLE_IP_C_CHECK', '1');
INSERT INTO GlobalSettings VALUES ('G_DISABLE_WEB_STATS', '0');


CREATE TABLE Storage (
	priority integer PRIMARY KEY NOT NULL,
	path varchar(512) NOT NULL,
	max_thresh decimal(5,2) NOT NULL,
	min_thresh decimal(5,2) NOT NULL,
	UNIQUE (path)
);

INSERT INTO Storage VALUES (1, '/var/lib/bluecherry/recordings', 95.00, 90.00);


CREATE TABLE ServerStatus (
	pid integer NOT NULL,
	timestamp integer NOT NULL,
	message text
);

CREATE TABLE Licenses (
	`license` varchar(64) NOT NULL,
	`authorization` varchar(64) NOT NULL,
	`added` int(11) NOT NULL,
	PRIMARY KEY (`license`)
);

