CREATE TABLE grouped_message_flow (
  [id] int NOT NULL IDENTITY (60,1) PRIMARY KEY,
  [listen_to_topic] varchar(100) DEFAULT NULL,
  [send_to_topic] varchar(100) DEFAULT NULL,
  [message_group] varchar(100) NOT NULL,
  [static_data] varchar(255) DEFAULT NULL
)

SET IDENTITY_INSERT[grouped_message_flow] ON
INSERT INTO grouped_message_flow ([id], [listen_to_topic], [send_to_topic], [message_group], [static_data]) VALUES
(23, 'save_changes', 'run_business_rule', 'Approve1', '{"stage" : ["duplicate"], "next_id":59}'),
(24, 'save_changes', 'run_business_rule', 'On Hold', '{"stage" : ["hold"], "next_id": 55}'),
(25, 'save_changes', 'run_business_rule', 'Reject', '{"stage" : ["reject"], "next_id": 56}'),
(26, 'save_changes', 'update_queue', 'Reassign', NULL),
(29, 'save_changes', 'update_queue', 'Dismiss', NULL),
(30, 'save_changes', 'update_queue', 'Grant', NULL),
(31, 'save_changes', NULL, 'Save', NULL),
(32, 'show_decision_tree', NULL, 'Decision Tree', ''),
(37, 'save_changes', 'run_business_rule', 'Confirm', '{"stage" : ["calculation"], "next_id":38}'),
(38, 'run_business_rule', 'run_business_rule', 'Confirm', '{"stage" : ["queue_movement"], "next_id": 39}'),
(39, 'run_business_rule', 'process_time', 'Confirm', ''),
(41, 'save_changes', 'update_queue', 'Approve2', NULL),
(45, 'save_changes', 'run_business_rule', 'Apply', '{"stage" : ["duplicate"], "next_id":58}'),
(46, 'run_business_rule', 'run_business_rule', 'Apply', '{"stage" : ["validation"], "next_id":47}'),
(47, 'run_business_rule', 'run_business_rule', 'Apply', '{"stage" : ["calculation"], "next_id":48}'),
(48, 'run_business_rule', 'run_business_rule', 'Apply', '{"stage" : ["queue_movement"], "next_id":49}'),
(49, 'run_business_rule', NULL, 'Apply', NULL),
(50, 'run_business_rule', 'run_business_rule', 'Approve1', '{"stage" : ["validation"],"next_id":51}'),
(51, 'run_business_rule', 'run_business_rule', 'Approve1', '{"stage" : ["calculation"],"next_id":52}'),
(52, 'run_business_rule', 'run_business_rule', 'Approve1', '{"stage" : ["queue_movement"],"next_id":53}'),
(53, 'run_business_rule', NULL, 'Approve1', NULL),
(55, 'run_business_rule', 'update_queue', 'On Hold', NULL),
(56, 'run_business_rule', 'update_queue', 'Reject', NULL),
(57, 'update_queue', NULL, 'Approve2', NULL),
(58, 'run_business_rule', 'run_business_rule', 'Apply', '{"stage" : ["regex"], "next_id":46}'),
(59, 'run_business_rule', 'run_business_rule', 'Approve1', '{"stage" : ["regex"],"next_id":50}');
SET IDENTITY_INSERT[grouped_message_flow] OFF






CREATE TABLE message_flow (
  [id] int NOT NULL IDENTITY (18,1) PRIMARY KEY,
  [listen_to_topic] varchar(50) DEFAULT NULL,
  [send_to_topic] varchar(50) DEFAULT NULL,
  [workflow] int NOT NULL,
  [static_data] varchar(max)
)


SET IDENTITY_INSERT[message_flow] ON
INSERT INTO message_flow ([id], [listen_to_topic], [send_to_topic], [workflow], [static_data]) VALUES
(1, 'folder_monitor', 'ocr', 0, NULL),
(2, 'ocr', 'detection', 0, NULL),
(3, 'detection', 'extract', 0, NULL),
(4, 'table_extract', 'run_business_rule', 0, '{"stage" : ["proforma"], "next_id":17}'),
(5, 'clustering', 'extract', 0, NULL),
(6, 'train', 'run_business_rule', 0, '{"stage" : ["proforma"], "next_id":17}'),
(8, 'run_business_rule', 'run_business_rule', 0, '{"stage" : ["duplicate"], "next_id":9}'),
(9, 'run_business_rule', 'run_business_rule', 0, '{"stage" : ["validation"], "next_id":10}'),
(10, 'run_business_rule', 'run_business_rule', 0, '{"stage" : ["calculation"], "next_id":11}'),
(11, 'run_business_rule', 'run_business_rule', 0, '{"stage" : ["new"], "next_id":12}'),
(12, 'run_business_rule', 'run_business_rule', 0, '{"stage" : ["queue_movement"],"next_id":14}'),
(14, 'run_business_rule', NULL, 0, NULL),
(16, 'extract', 'table_extract', 0, ''),
(17, 'run_business_rule', 'run_business_rule', 0, '{"stage" : ["regex"], "next_id":8}');
SET IDENTITY_INSERT[message_flow] OFF




