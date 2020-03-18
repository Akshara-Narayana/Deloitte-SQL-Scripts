CREATE TABLE configuration (
  [id] int NOT NULL IDENTITY (5,1) PRIMARY KEY,
  [container] int NOT NULL,
  [rule] varchar(max) NOT NULL,
  [priority] int DEFAULT NULL
)


SET IDENTITY_INSERT [configuration] ON
INSERT INTO configuration ([id], [container], [rule], [priority]) VALUES
(1, 2, '', 4),
(2, 1, '{"csv_watcher": 0}', 1),
(3, 3, '{"recon_services": 0}', 3),
(4, 4, '{"recon_services": 0}', 2);
SET IDENTITY_INSERT [configuration] OFF


CREATE TABLE containers (
  [id] int NOT NULL IDENTITY (5,1) PRIMARY KEY,
  [container_name] varchar(100) NOT NULL,
  [display_name] varchar(100) NOT NULL,
  [file_category] int DEFAULT NULL
) ;


SET IDENTITY_INSERT [containers] ON
INSERT INTO containers ([id], [container_name], [display_name], [file_category]) VALUES
(1, 'recon_services', 'Reconciliation', NULL),
(2, 'folder_monitor', 'Folder Monitoring', NULL),
(3, 'service_bridge', 'Service Bridge', NULL),
(4, 'csv_watcher', 'CSV Watcher', NULL);
SET IDENTITY_INSERT [containers] OFF


CREATE TABLE container_status (
  [id] int NOT NULL  IDENTITY (5,1) PRIMARY KEY,
  [container] int NOT NULL,
  [lock] smallint NOT NULL DEFAULT '0',
  [request] smallint NOT NULL DEFAULT '0',
  [error_state] smallint NOT NULL DEFAULT '0'
) ;


SET IDENTITY_INSERT [container_status] ON

INSERT INTO container_status ([id], [container], [lock], [request], [error_state]) VALUES
(1, 1, 0, 0, 0),
(2, 2, 0, 0, 0),
(3, 3, 0, 0, 0),
(4, 4, 0, 0, 0);

SET IDENTITY_INSERT [container_status] OFF


