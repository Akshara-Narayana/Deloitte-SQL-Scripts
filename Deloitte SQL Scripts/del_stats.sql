CREATE TABLE active_stats (
  [id] int NOT NULL IDENTITY PRIMARY KEY,
)


SET IDENTITY_INSERT [active_stats] ON
INSERT INTO active_stats ([id]) VALUES
(1),
(2),
(3),
(22)
SET IDENTITY_INSERT [active_stats] OFF;


CREATE TABLE audit (
  [id] int NOT NULL IDENTITY(1258,1) primary key,
  [updated_date] datetime2(0) NOT NULL DEFAULT GETDATE(),
  [type] varchar(255) NOT NULL DEFAULT 'update',
  [last_modified_by] varchar(255) DEFAULT NULL,
  [table_name] varchar(255) NOT NULL,
  [reference_column] varchar(255) NOT NULL,
  [reference_value] varchar(255) NOT NULL,
  [changed_data] varchar(max)
) 



CREATE TABLE Closed_Accounts_Source (
  [Account Number] varchar(255) NOT NULL,
  [Customer Id] varchar(255) NOT NULL,
  [Acc Closed Date] varchar(255) NOT NULL,
  [Acc Open Date] varchar(255) NOT NULL,
  [Acc Short Date] varchar(255) NOT NULL,
  [Currency] varchar(255) NOT NULL,
  [Cust Short Name] varchar(255) NOT NULL,
  [Product Name] varchar(255) NOT NULL,
  [Reason Of Closore] varchar(255) NOT NULL,
  [System Code] varchar(255) NOT NULL,
  [GHO] varchar(255) NOT NULL,
  [Full Name] varchar(255) NOT NULL,
  [Name] varchar(255) NOT NULL,
  [ID Type] varchar(255) NOT NULL,
  [ID No] varchar(255) NOT NULL,
  [Date Of Contact] varchar(255) NOT NULL,
  [Pan] varchar(255) NOT NULL,
  [Acc Office Code] varchar(255) NOT NULL,
  [Soleid] varchar(255) NOT NULL,
  [Dob Doi] varchar(255) NOT NULL,
  [Address Id] varchar(255) NOT NULL,
  [Address Id 1] varchar(255) NOT NULL,
  [Address Id 2] varchar(255) NOT NULL,
  [Address Id 3] varchar(255) NOT NULL,
  [Address Id 4] varchar(255) NOT NULL,
  [Address Id 5] varchar(255) NOT NULL,
  [Postal Code] varchar(255) NOT NULL,
  [Tel No] varchar(255) NOT NULL,
  [Tel No2] varchar(255) NOT NULL,
  [Mobile No] varchar(255) NOT NULL,
  [Int Add] varchar(255) NOT NULL
)



CREATE TABLE invoices_uploaded (
  [id] int NOT NULL IDENTITY primary key,
  [date] date NOT NULL,
  [no_of_files] int NOT NULL
)


CREATE TABLE queue_time (
  [id] int NOT NULL IDENTITY(24,1) primary key,
  [date] date NOT NULL,
  [no_of_files] int NOT NULL,
  [state] varchar(255) NOT NULL,
  [aht_in_sec] int NOT NULL
)





CREATE TABLE state_stats (
  [id] int NOT NULL IDENTITY PRIMARY KEY,
  [date] date NOT NULL,
  [state] varchar(255) NOT NULL,
  [no_of_files] int NOT NULL DEFAULT '0'
)



CREATE TABLE stats_master (
  [id] int NOT NULL IDENTITY(23,1) PRIMARY KEY,
  [header] varchar(255) NOT NULL,
  [card_type] varchar(255) NOT NULL,
  [chart_type] varchar(255) DEFAULT NULL,
  [title] varchar(255) DEFAULT NULL,
  [route] varchar(255) NOT NULL,
  [workflow] int DEFAULT NULL,
  [front_flip] varchar(255) DEFAULT NULL,
  [back_flip] varchar(255) DEFAULT NULL,
  [X] int NOT NULL DEFAULT '1',
  [Y] int NOT NULL DEFAULT '1',
  [refresh] varchar(255) NOT NULL,
  [flip] smallint NOT NULL
)



SET IDENTITY_INSERT [stats_master] ON
INSERT INTO stats_master ([id], [header], [card_type], [chart_type], [title], [route], [workflow], [front_flip], [back_flip], [X], [Y], [refresh], [flip]) VALUES
(1, 'Volume Insights card', 'chart_type_cards', NULL, NULL, 'volume_insights', NULL, NULL, NULL, 2, 2, 'auto', 0),
(2, 'In-progress Cases Card', 'chart_type_cards', NULL, NULL, 'in_progress_cases_del', NULL, NULL, NULL, 2, 2, 'auto', 0),
(3, 'Automation Accuracy Metrics', 'chart_type_cards', NULL, NULL, 'automation_accuracy_metrics_del', NULL, NULL, NULL, 2, 2, 'auto', 0),
(22, 'Average Invoice Ageing(Hrs) by Client', 'chart_type_cards', NULL, NULL, 'time_spent_by_invoice', NULL, NULL, NULL, 2, 2, 'auto', 0);
SET IDENTITY_INSERT [stats_master] OFF






