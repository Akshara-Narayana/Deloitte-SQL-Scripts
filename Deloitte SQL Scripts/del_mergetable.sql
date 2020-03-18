CREATE TABLE merge_table_config (
  [id] int NOT NULL  IDENTITY (3,1) PRIMARY KEY,
  [button_id] int NOT NULL,
  [source_type] varchar(100) NOT NULL,
  [source_config] varchar(max) NOT NULL,
  [source_columns] varchar(max),
  [join_on] varchar(255) NOT NULL,
  [join_type] varchar(100) NOT NULL DEFAULT 'left'
) ;


SET IDENTITY_INSERT [merge_table_config] ON
INSERT INTO merge_table_config ([id], [button_id], [source_type], [source_config], [source_columns], [join_on], [join_type]) VALUES
(1, 12, 'db', '{"database": "external", "table": "source"}', 'B,C,D,E,case_id', 'Case ID,case_id', 'inner'),
(2, 12, 'db', '{"database": "external", "table": "source_1"}', 'G,H,unique ID', 'Case ID,unique ID', 'right');
SET IDENTITY_INSERT [merge_table_config] OFF