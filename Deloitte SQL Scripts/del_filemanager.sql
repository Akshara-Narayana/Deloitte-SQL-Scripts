CREATE TABLE file_manager (
  [id] int NOT NULL IDENTITY PRIMARY KEY,
  [case_id] varchar(100) NOT NULL,
  [file_name] varchar(255) NOT NULL,
  [folder_id] int NOT NULL
) ;



CREATE TABLE folder_manager (
  [id] int NOT NULL IDENTITY PRIMARY KEY,
  [unique_key] varchar(100) NOT NULL,
  [folder_name] varchar(255) NOT NULL,
  [parent_id] int DEFAULT NULL
) ;
