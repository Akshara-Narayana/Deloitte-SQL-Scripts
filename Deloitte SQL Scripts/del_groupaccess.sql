CREATE TABLE active_directory (
  [id] int NOT NULL IDENTITY(54,1) PRIMARY KEY,
  [First Name] varchar(255) DEFAULT NULL,
  [Last Name] varchar(255) NOT NULL,
  [User Email] varchar(255) DEFAULT NULL,
  [role] varchar(255) NOT NULL,
  [username] varchar(255) DEFAULT NULL,
  [password] varchar(max),
  [status] smallint NOT NULL DEFAULT '1'
)

SET IDENTITY_INSERT [active_directory] ON
INSERT INTO active_directory ([id], [First Name], [Last Name], [User Email], [role], [username], [password], [status]) VALUES
(36, 'Admin', '', 'mahendra.vankadara@algonox.com', '', 'admin', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1),
(37, 'Invoice Processor', '', 'mahendra.vankadara@algonox.com', '', 'invoice_processor', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1),
(38, 'Invoice Auditor', '', 'mahendra.vankadara@algonox.com', '', 'invoice_auditor', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1),
(40, 'Checker1', ' ', 'testing_team@algonox.com ', '', 'Checker1', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1),
(46, 'Invoice Processor 2', '', 'mahendra.vankadara@algonox.com', '', 'invoice_processor_2', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1),
(47, 'Invoice_Processor', 'Proc', 'abc@gmail.com', '', 'inv_proc', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1),
(48, 'S', 't', 'a', '', 'test2', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1),
(49, 'S', 't', 'a', '', 'test2', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1),
(50, 'test1', 'test1', 'test1', '', 'test1', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1),
(51, 'jl', 'h', 'hj', '', 'g', '6b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b', 1),
(52, 'anurag', 'anurag', 'anurag123@gmail.com', '', 'anurag123', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1),
(53, 'Amith', 'Lakkakula', 'amith.lakkakula@algnonox.com', '', 'amith531', '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4', 1);
SET IDENTITY_INSERT [active_directory] OFF

CREATE TABLE app_access (
  [id] int NOT NULL IDENTITY(4,1) PRIMARY KEY,
  [app_id] int NOT NULL,
  [group_id] int NOT NULL
) ;

SET IDENTITY_INSERT [app_access] ON
INSERT INTO app_access ([id], [app_id], [group_id]) VALUES
(2, 2, 3),
(3, 1, 3);
SET IDENTITY_INSERT [app_access] OFF


CREATE TABLE app_definition (
  [id] int NOT NULL IDENTITY(3,1) PRIMARY KEY,
  [display_name] varchar(255) NOT NULL,
  [unique_name] varchar(255) NOT NULL,
  [icon] varchar(255) NOT NULL,
  [redirect_url] varchar(255) NOT NULL,
  [app_order] varchar(255) NOT NULL,
  [external] smallint NOT NULL,
  [parameters] varchar(255) DEFAULT NULL
) ;

SET IDENTITY_INSERT [app_definition] ON
INSERT INTO app_definition ([id], [display_name], [unique_name], [icon], [redirect_url], [app_order], [external], [parameters]) VALUES
(1, 'User Management', 'user_management', '', 'usermanagement', '1', 0, NULL),
(2, 'Master Data', 'master_upload', '', 'masterdata', '2', 0, NULL);
SET IDENTITY_INSERT [app_definition] OFF


CREATE TABLE attribute_dropdown_definition (
  [id] int NOT NULL IDENTITY(10,1) PRIMARY KEY,
  [attribute_id] int NOT NULL,
  [parent_attribute_value] varchar(255) DEFAULT NULL,
  [value] varchar(255) NOT NULL
) ;

SET IDENTITY_INSERT [attribute_dropdown_definition] ON
INSERT INTO attribute_dropdown_definition ([id], [attribute_id], [parent_attribute_value], [value]) VALUES
(1, 1, NULL, 'Maker'),
(2, 1, NULL, 'Checker'),
(3, 1, NULL, 'Master'),
(4, 2, NULL, 'Facebook'),
(5, 2, NULL, 'Bloomberg'),
(6, 2, NULL, 'Stratasys'),
(7, 2, NULL, 'RII'),
(8, 2, NULL, 'Netgear'),
(9, 2, NULL, 'Azul');
SET IDENTITY_INSERT [attribute_dropdown_definition] OFF


CREATE TABLE field_definition (
  [id] int NOT NULL IDENTITY(8,1) PRIMARY KEY,
  [display_name] varchar(255) NOT NULL,
  [unique_name] varchar(70) NOT NULL,
  [parent] varchar(255) DEFAULT NULL,
  [editable] smallint NOT NULL,
  [type] varchar(255) NOT NULL,
  [pattern] varchar(255) NOT NULL,
  [mandatory] smallint NOT NULL,
  [status] smallint NOT NULL
)

SET IDENTITY_INSERT [field_definition] ON
INSERT INTO field_definition ([id], [display_name], [unique_name], [parent], [editable], [type], [pattern], [mandatory], [status]) VALUES
(1, 'First Name', 'First Name', NULL, 0, 'text', '', 1, 1),
(2, 'User Email', 'User Email', NULL, 0, 'text', '', 1, 1),
(3, 'Username', 'username', NULL, 0, 'text', '', 1, 1),
(4, 'Password', 'password', NULL, 0, 'text', '', 1, 1),
(5, 'Last Name', 'Last Name', NULL, 0, 'text', '', 1, 1),
(6, 'Role', 'role', NULL, 0, 'dropdown', '', 1, 1),
(7, 'Client Name', 'source_of_invoice', NULL, 0, 'dropdown', '', 1, 1);
SET IDENTITY_INSERT [field_definition] OFF


CREATE TABLE group_definition (
  [id] int NOT NULL IDENTITY(4,1) PRIMARY KEY,
  [group_name] varchar(255) NOT NULL,
  [group_definition] varchar(max) NOT NULL
)

SET IDENTITY_INSERT [group_definition] ON
INSERT INTO group_definition ([id], [group_name], [group_definition]) VALUES
(1, 'maker', '{"role": "Maker"}'),
(2, 'checker', '{"role": "Checker"}'),
(3, 'master', '{"role": "Master"}');
SET IDENTITY_INSERT [group_definition] OFF



CREATE TABLE live_sessions (
  [id] int NOT NULL IDENTITY(13,1) PRIMARY KEY,
  [user] varchar(255) NOT NULL,
  [session_id] varchar(255) NOT NULL,
  [status] varchar(255) NOT NULL,
  [login] datetime2(0) NOT NULL DEFAULT GETDATE(),
  [logout] datetime2(0) NOT NULL DEFAULT '0000-00-00 00:00:00'
)

SET IDENTITY_INSERT [live_sessions] ON
INSERT INTO live_sessions ([id], [user], [session_id], [status], [login], [logout]) VALUES
(1, 'Mahendra', 'S297938996', 'active', '2019-11-22 10:16:02', '2019-11-27 10:32:17'),
(2, 'Master', 'S862339597', 'closed', '2019-12-04 09:52:16', '2020-02-04 09:10:31'),
(3, 'Maker', 'S591728501', 'closed', '2019-12-06 06:07:00', '2020-02-04 06:12:33'),
(4, 'Checker', 'S349721954', 'closed', '2020-01-13 05:08:12', '2020-02-04 06:13:46'),
(5, 'Maker2', 'S745774476', 'closed', '2020-01-28 08:26:29', '2020-02-04 07:01:38'),
(6, 'inv_proc', 'S644408872', 'active', '2020-02-03 14:19:51', '2020-02-04 06:08:36'),
(7, 'admin', 'S520736469', 'closed', '2020-02-04 07:04:43', '2020-03-04 06:27:26'),
(8, 'invoice_processor_2', 'S904903979', 'active', '2020-02-04 07:14:18', '2020-02-26 10:24:57'),
(9, 'invoice_processor', 'S448316950', 'active', '2020-02-04 09:13:12', '2020-02-19 05:35:36'),
(10, 'invoice_auditor', 'S876764166', 'closed', '2020-02-05 18:30:31', '2020-02-05 18:30:37'),
(11, 'anurag123', 'S255453235', 'closed', '2020-02-11 11:46:07', '2020-02-11 14:22:30'),
(12, 'amith531', 'S835629239', 'closed', '2020-02-12 07:54:21', '2020-02-12 13:18:29');
SET IDENTITY_INSERT [live_sessions] OFF


CREATE TABLE organisation_attributes (
  [id] int NOT NULL IDENTITY(3,1) PRIMARY KEY,
  [source] varchar(255) NOT NULL DEFAULT 'user',
  [attribute] varchar(255) NOT NULL
)

SET IDENTITY_INSERT [organisation_attributes] ON
INSERT INTO organisation_attributes ([id], [source], [attribute]) VALUES
(1, 'user', 'role'),
(2, 'process_queue', 'source_of_invoice');
SET IDENTITY_INSERT [organisation_attributes] OFF



CREATE TABLE organisation_hierarchy (
  [id] int NOT NULL IDENTITY(3,1) PRIMARY KEY,
  [h_group] varchar(255) NOT NULL,
  [h_order] varchar(1000) NOT NULL,
  [parent_id] int NOT NULL
) ;

SET IDENTITY_INSERT [organisation_hierarchy] ON
INSERT INTO organisation_hierarchy ([id], [h_group], [h_order], [parent_id]) VALUES
(1, 'designation', 'role', 1),
(2, 'client', 'source_of_invoice', 1);
SET IDENTITY_INSERT [organisation_hierarchy] OFF



CREATE TABLE queue_access (
  [id] int NOT NULL IDENTITY(25,1) PRIMARY KEY,
  [queue_id] int NOT NULL,
  [group_id] int NOT NULL
) ;

SET IDENTITY_INSERT [queue_access] ON
INSERT INTO queue_access ([id], [queue_id], [group_id]) VALUES
(1, 1, 3),
(2, 2, 3),
(3, 3, 3),
(4, 4, 3),
(5, 7, 3),
(6, 8, 3),
(7, 12, 3),
(8, 13, 3),
(9, 1, 2),
(11, 3, 2),
(12, 4, 2),
(13, 7, 2),
(15, 12, 2),
(16, 13, 2),
(17, 1, 1),
(18, 2, 1),
(20, 4, 1),
(21, 7, 1),
(22, 8, 1),
(23, 12, 1),
(24, 13, 1);
SET IDENTITY_INSERT [queue_access] OFF


CREATE TABLE queue_definition (
  [id] int NOT NULL IDENTITY PRIMARY KEY,
  [name] varchar(255) NOT NULL,
  [access] varchar(255) NOT NULL,
  [icon] varchar(50) NOT NULL DEFAULT 'doc',
  [timer] smallint NOT NULL DEFAULT '1',
  [type] varchar(255) NOT NULL DEFAULT 'field',
  [level] int NOT NULL,
  [parent] varchar(255) DEFAULT NULL,
  [child] varchar(255) DEFAULT NULL,
  [fields_disable] smallint NOT NULL
)

CREATE TABLE reports_access (
  [id] int NOT NULL IDENTITY(3,1) PRIMARY KEY,
  [reports_id] int NOT NULL,
  [group_id] int NOT NULL
)

SET IDENTITY_INSERT [reports_access] ON
INSERT INTO reports_access ([id], [reports_id], [group_id]) VALUES
(1, 2, 1),
(2, 4, 1);
SET IDENTITY_INSERT [reports_access] OFF


CREATE TABLE stats_access (
  [id] int NOT NULL IDENTITY(5,1) PRIMARY KEY,
  [stats_id] int NOT NULL,
  [group_id] int NOT NULL
)

SET IDENTITY_INSERT [stats_access] ON
INSERT INTO stats_access ([id], [stats_id], [group_id]) VALUES
(1, 2, 3),
(2, 1, 3),
(3, 3, 3),
(4, 22, 3);
SET IDENTITY_INSERT [stats_access] OFF


CREATE TABLE stats_access_20_01 (
  [id] int NOT NULL IDENTITY(42,1) PRIMARY KEY,
  [stats_id] int NOT NULL,
  [group_id] int NOT NULL
)

SET IDENTITY_INSERT [stats_access_20_01] ON
INSERT INTO stats_access_20_01 ([id], [stats_id], [group_id]) VALUES
(13, 5, 3),
(14, 6, 3),
(15, 8, 3),
(16, 7, 3),
(17, 9, 3),
(20, 12, 3),
(28, 5, 1),
(29, 6, 1),
(30, 8, 1),
(31, 7, 1),
(32, 9, 1),
(33, 12, 1),
(34, 5, 2),
(35, 6, 2),
(36, 8, 2),
(37, 7, 2),
(38, 9, 2),
(39, 18, 3),
(40, 18, 2),
(41, 18, 1);
SET IDENTITY_INSERT [stats_access_20_01] OFF


CREATE TABLE user_organisation_mapping (
  [id] int NOT NULL IDENTITY(39,1) PRIMARY KEY,
  [user_id] int NOT NULL,
  [sequence_id] int NOT NULL DEFAULT '1',
  [type] varchar(255) NOT NULL DEFAULT 'user',
  [organisation_attribute] int NOT NULL,
  [value] varchar(255) NOT NULL,
  [multi_check_group] int DEFAULT NULL
) ;


SET IDENTITY_INSERT [user_organisation_mapping] ON
INSERT INTO user_organisation_mapping ([id], [user_id], [sequence_id], [type], [organisation_attribute], [value], [multi_check_group]) VALUES
(1, 36, 1, 'user', 1, 'Master', 1),
(2, 37, 1, 'user', 1, 'Maker', 1),
(5, 37, 1, 'case', 2, 'Facebook', 1),
(6, 46, 1, 'user', 1, 'Maker', 1),
(7, 46, 1, 'case', 2, 'IDS', 1),
(8, 38, 1, 'user', 1, 'Checker', 1),
(9, 40, 1, 'user', 1, 'Checker', 1),
(12, 46, 1, 'case', 2, 'Facebook', 1),
(13, 47, 1, 'user', 1, 'Maker', 1),
(14, 47, 1, 'user', 2, 'Facebook', 1),
(15, 48, 1, 'user', 1, 'Maker', 1),
(16, 48, 1, 'user', 2, 'Facebook', 1),
(17, 48, 1, 'user', 1, 'Checker', 1),
(18, 48, 1, 'user', 2, 'Facebook', 1),
(20, 52, 2, 'process_queue', 2, 'Facebook', 1),
(22, 52, 2, 'process_queue', 2, 'Bloomberg', 1),
(23, 52, 2, 'user', 1, 'Maker', 1),
(24, 52, 1, 'process_queue', 2, 'Netgear', 1),
(26, 52, 1, 'process_queue', 2, 'Stratasys', 2),
(27, 52, 1, 'user', 1, 'Checker', 2),
(28, 52, 2, 'process_queue', 2, 'RII', 2),
(29, 53, 1, 'user', 1, 'Maker', 1),
(30, 53, 1, 'process_queue', 2, 'Facebook', 1),
(31, 53, 2, 'user', 1, 'Maker', 1),
(32, 53, 2, 'process_queue', 2, 'Bloomberg', 1),
(33, 53, 3, 'user', 1, 'Checker', 2),
(34, 53, 3, 'process_queue', 2, 'Stratasys', 2),
(35, 53, 4, 'user', 1, 'Checker', 2),
(36, 53, 4, 'process_queue', 2, 'RII', 2),
(37, 53, 5, 'user', 1, 'Checker', 2),
(38, 53, 5, 'process_queue', 2, 'Netgear', 2);
SET IDENTITY_INSERT [user_organisation_mapping] OFF



