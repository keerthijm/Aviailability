CREATE TABLE Users (      
UserID int IDENTITY(1,1) NOT NULL PRIMARY KEY,      
Name varchar(200) NOT NULL ,      
City varchar(20) NOT NULL ,      
Department varchar(20) NOT NULL ,      
Gender varchar(6) NOT NULL       
)      
GO      


CREATE TABLE Sports (      
SportID int IDENTITY(1,1) NOT NULL PRIMARY KEY,      
Name varchar(200) NOT NULL       
)      
GO


CREATE TABLE Cities (      
CityID int IDENTITY(1,1) NOT NULL PRIMARY KEY,      
CityName varchar(200) NOT NULL       
)      
GO

CREATE TABLE Club (      
ClubID int IDENTITY(1,1) NOT NULL PRIMARY KEY,      
Name varchar(200) NOT NULL       
)      
GO


INSERT INTO Cities VALUES('Chippenham');      
INSERT INTO Cities VALUES('Bath');      
INSERT INTO Cities VALUES('Swindon');      
INSERT INTO Cities VALUES('Bristol');      
INSERT INTO Cities VALUES('Bengaluru');