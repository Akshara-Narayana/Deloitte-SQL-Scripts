CREATE TABLE fork_config (
  [id] int NOT NULL IDENTITY PRIMARY KEY,
  [button_id] int NOT NULL,
  [fork_type] varchar(100) NOT NULL,
  [fork_ref_value] varchar(100) NOT NULL,
  [branch_to_queue] int NOT NULL,
  [freeze] smallint NOT NULL DEFAULT '0',
  [unfreeze_queue] int DEFAULT NULL
) ;
