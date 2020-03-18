

SET IDENTITY_INSERT [reports_queue] ON
INSERT INTO reports_queue ([id], [reference_id], [requested_by], [source], [filename], [status], [requested_date], [start_date], [end_date]) VALUES
(1, '9028B82C58', 'admin', 'Facebook', '902-11022020095809', 'Download', '2020-02-11 09:58:09', '2020-02-01', '2020-02-11'),
(2, '4B4A64D391', 'admin', 'Facebook', '4B4-11022020095820', 'Download', '2020-02-11 09:58:20', '2020-02-01', '2020-02-11'),
(3, '5A7D8646FD', 'admin', 'Facebook', '5A7-11022020095832', 'Download', '2020-02-11 09:58:32', '2020-02-01', '2020-02-11'),
(4, '3CB95F6E81', 'admin', 'IDS', '3CB-11022020095952', 'Download', '2020-02-11 09:59:52', '2020-02-01', '2020-02-11'),
(5, '017BB951EF', 'admin', 'IDS', '017-11022020100015', 'Download', '2020-02-11 10:00:15', '2020-02-01', '2020-02-11'),
(6, '4760694E7D', 'admin', 'IDS', '476-11022020100054', 'Download', '2020-02-11 10:00:54', '2020-02-01', '2020-02-11'),
(7, 'CDBBA94A9C', 'admin', 'Bloomberg', 'CDB-11022020100117', 'Download', '2020-02-11 10:01:17', '2020-02-01', '2020-02-11'),
(8, '866B7BD9C8', 'admin', 'Bloomberg', '866-11022020100136', 'Download', '2020-02-11 10:01:36', '2020-02-01', '2020-02-11'),
(9, 'C22B7F1F02', 'admin', 'Bloomberg', 'C22-11022020100157', 'Download', '2020-02-11 10:01:57', '2020-02-01', '2020-02-11'),
(10, 'EBA49B51C9', 'admin', 'Stratasys', 'EBA-11022020100215', 'Download', '2020-02-11 10:02:15', '2020-02-01', '2020-02-11'),
(11, '63BD18DBD4', 'admin', 'Stratasys', '63B-11022020100231', 'Download', '2020-02-11 10:02:31', '2020-02-01', '2020-02-11'),
(12, 'E762E52495', 'admin', 'Stratasys', 'E76-11022020100245', 'Download', '2020-02-11 10:02:45', '2020-02-01', '2020-02-11'),
(13, 'E77B43CC8F', 'admin', 'RII', 'E77-11022020100300', 'Download', '2020-02-11 10:03:00', '2020-02-01', '2020-02-11'),
(14, '0AD46DA06C', 'admin', 'RII', '0AD-11022020100314', 'Download', '2020-02-11 10:03:14', '2020-02-01', '2020-02-11'),
(15, '0FCA94AC08', 'admin', 'RII', '0FC-11022020100330', 'Download', '2020-02-11 10:03:30', '2020-02-01', '2020-02-11'),
(16, '611984E43E', 'admin', 'Netgear', '611-11022020100352', 'Download', '2020-02-11 10:03:53', '2020-02-01', '2020-02-11'),
(17, '86EC560EB9', 'admin', 'Netgear', '86E-11022020100410', 'Download', '2020-02-11 10:04:10', '2020-02-01', '2020-02-11'),
(18, '2EDDCCEBAD', 'admin', 'Netgear', '2ED-11022020100429', 'Download', '2020-02-11 10:04:29', '2020-02-01', '2020-02-11'),
(19, '53257F1AC9', 'admin', 'Azul', '532-11022020100448', 'Download', '2020-02-11 10:04:48', '2020-02-01', '2020-02-11'),
(20, 'A45C6AA426', 'admin', 'Azul', 'A45-11022020100508', 'Download', '2020-02-11 10:05:08', '2020-02-01', '2020-02-11'),
(21, '457C37989E', 'admin', 'Azul', '457-11022020100522', 'Download', '2020-02-11 10:05:22', '2020-02-01', '2020-02-11'),
(22, 'A80382BE93', 'admin', 'IDS', 'A80-13022020061337', 'Download', '2020-02-13 06:13:37', '2020-02-05', '2020-02-07'),
(23, '94AEB82BAD', 'admin', 'Netgear', '94A-14022020104110', 'Download', '2020-02-14 10:41:10', '2020-02-12', '2020-02-14'),
(24, 'E1D29AE4C7', 'admin', 'Netgear', 'E1D-14022020105429', 'Download', '2020-02-14 10:54:29', '2020-02-01', '2020-02-14'),
(25, '8028BFAB07', 'admin', 'Facebook', '802-17022020122144', 'Download', '2020-02-17 12:21:45', '2020-02-01', '2020-02-17'),
(26, 'A3D51135AA', 'admin', 'Facebook', 'A3D-18022020081055', 'Download', '2020-02-18 08:10:55', '2020-02-10', '2020-02-12');
SET IDENTITY_INSERT [reports_queue] OFF


CREATE TABLE reports_queue_28_01 (
  [id] int NOT NULL IDENTITY PRIMARY KEY,
  [reference_id] varchar(10) NOT NULL,
  [requested_by] varchar(100) NOT NULL,
  [filename] varchar(100) NOT NULL,
  [status] varchar(100) NOT NULL,
  [requested_date] datetime2(0) NOT NULL DEFAULT GETDATE(),
  [start_date] date DEFAULT NULL,
  [end_date] date DEFAULT NULL
) ;


CREATE TABLE report_types (
  [id] int NOT NULL IDENTITY(55,1) PRIMARY KEY,
  [report_type] varchar(255) NOT NULL,
  [query] varchar(max),
  [db] varchar(100) DEFAULT NULL,
  [function] varchar(255) DEFAULT NULL,
  [tran_date_col_name] char(50) DEFAULT NULL,
  [source] varchar(255) DEFAULT NULL
) ;


CREATE TABLE report_types_28_01 (
  [id] int NOT NULL IDENTITY(57,1) PRIMARY KEY,
  [report_type] varchar(255) NOT NULL,
  [query] varchar(max),
  [db] varchar(100) DEFAULT NULL,
  [function] varchar(255) DEFAULT NULL,
  [tran_date_col_name] char(50) DEFAULT NULL
) ;




CREATE TABLE report_types_config (
  [id] int NOT NULL IDENTITY(55,1) PRIMARY KEY,
  [report_type] varchar(255) NOT NULL,
  [report_fname] varchar(max),
  [report_fname_map] varchar(max),
  [query] varchar(max),
  [db] varchar(100) DEFAULT NULL,
  [function] varchar(255) DEFAULT NULL,
  [tran_date_col_name] char(50) DEFAULT NULL,
  [source] varchar(255) DEFAULT NULL
) ;


