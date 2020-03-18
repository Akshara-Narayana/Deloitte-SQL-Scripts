CREATE TABLE api (
  [id] int NOT NULL IDENTITY PRIMARY KEY,
  [name] varchar(100) NOT NULL,
  [description] varchar(255) DEFAULT NULL,
  [api_type] varchar(100) NOT NULL,
  [base_url] varchar(255) NOT NULL,
  [method] varchar(255) NOT NULL,
  [parameters] varchar(max),
  [auth_type] varchar(100) DEFAULT NULL,
  [auth_params] varchar(max)
)


