CREATE TABLE input_configuration (
  [id] int NOT NULL IDENTITY (10,1) PRIMARY KEY,
  [access_1] varchar(255) NOT NULL,
  [type] varchar(100) NOT NULL,
  [output] int DEFAULT NULL,
  [workflow] int DEFAULT NULL,
  [active] smallint DEFAULT NULL
) ;


SET IDENTITY_INSERT [input_configuration] ON
INSERT INTO input_configuration ([id], [access_1], [type], [output], [workflow], [active]) VALUES
(1, 'deloitte.acelive.ai/test_folder', 'Document', 1, 0, 1),
(2, 'deloitte.acelive.ai/test_folder2', 'Document', 1, 0, 1),
(3, 'deloitte.acelive.ai/IDS', 'Document', 1, 0, 1),
(4, 'deloitte.acelive.ai/Facebook', 'Document', 1, 0, 0),
(5, 'deloitte.acelive.ai/Bloomberg', 'Document', 1, 0, 1),
(6, 'deloitte.acelive.ai/Stratasys', 'Document', 1, 0, 1),
(7, 'deloitte.acelive.ai/RII', 'Document', 1, 0, 1),
(8, 'deloitte.acelive.ai/Netgear', 'Document', 1, 0, 1),
(9, 'deloitte.acelive.ai/Azul', 'Document', 1, 0, 1);
SET IDENTITY_INSERT [input_configuration] OFF

CREATE TABLE output_configuration (
  [id] int NOT NULL IDENTITY (2,1) PRIMARY KEY,
  [access_1] varchar(255) NOT NULL,
  [type] varchar(100) NOT NULL
) ;

SET IDENTITY_INSERT [output_configuration] ON
INSERT INTO output_configuration ([id], [access_1], [type]) VALUES
(1, 'deloitte.acelive.ai', 'Document');
SET IDENTITY_INSERT [output_configuration] OFF