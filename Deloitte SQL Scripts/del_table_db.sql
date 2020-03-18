CREATE TABLE table_info (
  [id] bigint NOT NULL IDENTITY (21,1) PRIMARY KEY,
  [template_name] varchar(100) DEFAULT NULL,
  [method] varchar(max),
  [table_no] varchar(max),
  [table_name] varchar(max),
  [header_check] bigint DEFAULT NULL,
  [footer_check] bigint DEFAULT NULL,
  [table_data] varchar(max)
) ;

--
-- Dumping data for table `table_info`
--
SET IDENTITY_INSERT [table_info] ON
INSERT INTO table_info ([id], [template_name], [method], [table_no], [table_name], [header_check], [footer_check], [table_data]) VALUES
(2, 'test_abhi', '', NULL, NULL, NULL, NULL, '{"v1": {"label": "", "del": "no", "alias": "", "ref": false}, "v2": {"label": "", "del": "no", "alias": "", "ref": false}, "v3": {"label": "", "del": "no", "alias": "", "ref": false}, "v4": {"label": "", "del": "no", "alias": "", "ref": false}, "v5": {"label": "", "del": "no", "alias": "", "ref": false}, "v6": {"label": "", "del": "no", "alias": "", "ref": true}}'),
(3, 'Value Notes', '', NULL, NULL, NULL, NULL, '{"v1": {"label": "Particulars", "del": "no", "alias": "", "ref": false}, "v2": {"label": "Amount (Rs)", "del": "no", "alias": "", "ref": true}}'),
(4, 'Value Notes', '', NULL, NULL, NULL, NULL, '{"v1": {"label": "Particulars", "del": "no", "alias": "", "ref": false}, "v2": {"label": "Amount (Rs)", "del": "no", "alias": "", "ref": true}}'),
(5, 'test_abhishek', '', NULL, NULL, NULL, NULL, '{"v1": {"label": "PARTICULARS", "del": "no", "alias": "", "ref": false}, "v2": {"label": "| SAC/ HSN Code", "del": "no", "alias": "", "ref": false}, "v3": {"label": "PERSON/QTY.", "del": "no", "alias": "", "ref": false}, "v4": {"label": "| DUTIES | RATE | AMOUNT", "del": "no", "alias": "", "ref": true}}'),
(6, 'test_abhishek1', '', NULL, NULL, NULL, NULL, '{"v1": {"label": "PARTICULARS", "del": "no", "alias": "", "ref": false}, "v2": {"label": "| SAC/ HSN Code", "del": "no", "alias": "", "ref": false}, "v3": {"label": "PERSON/QTY.", "del": "no", "alias": "", "ref": false}, "v4": {"label": "| DUTIES | RATE |", "del": "no", "alias": "", "ref": true}}'),
(7, 'George P.Jhonson Evenet Marketing Private Limited', '', NULL, NULL, NULL, NULL, '{"v1": {"label": "Item No", "del": "no", "alias": "item_quantity", "ref": false}, "v2": {"label": "Service Description", "del": "no", "alias": "item_description", "ref": false}, "v3": {"label": "SAC Code", "del": "yes", "alias": "", "ref": false}, "v4": {"label": "Taxable Value", "del": "yes", "alias": "", "ref": false}, "v5": {"label": "Amount Rs.", "del": "no", "alias": "line_amount", "ref": true}}'),
(8, 'Orion Security Solution Private Limited', '', NULL, NULL, NULL, NULL, '{"v1": {"label": "", "del": "yes", "alias": "", "ref": false}, "v2": {"label": "PARTICULARS", "del": "no", "alias": "item_description", "ref": false}, "v3": {"label": "SAC/ HSN Code", "del": "no", "alias": "", "ref": false}, "v4": {"label": "PERSON/QTY,", "del": "no", "alias": "item_quantity", "ref": false}, "v5": {"label": "I DUTIES I", "del": "yes", "alias": "", "ref": false}, "v6": {"label": "RATE", "del": "yes", "alias": "", "ref": false}, "v7": {"label": "| AMOUNT", "del": "no", "alias": "line_amount", "ref": true}}'),
(9, 'sodexo svc india private limited', '', NULL, NULL, NULL, NULL, '{"v1": {"label": "Description", "del": "no", "alias": "", "ref": false}, "v2": {"label": "Amount", "del": "no", "alias": "", "ref": false}, "v3": {"label": "", "del": "no", "alias": "", "ref": false}, "v4": {"label": "", "del": "no", "alias": "", "ref": true}}'),
(10, 'Afoozo Pvt.Ltd.', '', NULL, NULL, NULL, NULL, '{}'),
(11, 'The Press Trust of India Limited', '', NULL, NULL, NULL, NULL, '{"v1": {"label": "", "del": "yes", "alias": "", "ref": false}, "v2": {"label": "PARTICULARS", "del": "no", "alias": "", "ref": false}, "v3": {"label": "AMOUNT", "del": "no", "alias": "", "ref": false}, "v4": {"label": "", "del": "yes", "alias": "", "ref": true}}'),
(12, 'RL RADIANT TRADEVEST PVT.LTD.', '', NULL, NULL, NULL, NULL, '{"v1": {"label": "Description of Goods HSN/SAC SR.No.", "del": "no", "alias": "item_description", "ref": false}, "v2": {"label": "GST Rate", "del": "no", "alias": "item_quantity", "ref": false}, "v3": {"label": "Rate", "del": "no", "alias": "", "ref": true}, "v4": {"label": "Amount", "del": "no", "alias": "line_amount", "ref": false}}'),
(13, 'Sher Sinha', '', NULL, NULL, NULL, NULL, '{"v1": {"label": "", "del": "yes", "alias": "", "ref": false}, "v2": {"label": "", "del": "yes", "alias": "", "ref": false}, "v3": {"label": "DESCRIPTION", "del": "no", "alias": "", "ref": false}, "v4": {"label": "AMOUNT", "del": "no", "alias": "", "ref": false}, "v5": {"label": "DESCRIPTION OF WORK", "del": "no", "alias": "", "ref": false}, "v6": {"label": "", "del": "no", "alias": "", "ref": true}}'),
(14, 'test_abhishek3', '', NULL, NULL, NULL, NULL, '{"v1": {"label": "PARTICULARS", "del": "no", "alias": "", "ref": false}, "v2": {"label": "SAC/ HSN Code", "del": "no", "alias": "", "ref": false}, "v3": {"label": "PERSON/QTY,", "del": "no", "alias": "", "ref": false}, "v4": {"label": "I DUTIES I RATE | AMOUNT", "del": "no", "alias": "", "ref": true}}'),
(15, 'RL RADIANT TRADEVEST PVT.LTD.', '', NULL, NULL, NULL, NULL, '{"v1": {"label": "", "del": "no", "alias": "", "ref": false}, "v2": {"label": "", "del": "no", "alias": "", "ref": false}, "v3": {"label": "", "del": "no", "alias": "", "ref": false}, "v4": {"label": "", "del": "no", "alias": "", "ref": false}, "v5": {"label": "", "del": "no", "alias": "", "ref": false}, "v6": {"label": "", "del": "no", "alias": "", "ref": false}, "v7": {"label": "", "del": "no", "alias": "", "ref": true}}'),
(16, 'Afoozo Pvt.Ltd', '', NULL, NULL, NULL, NULL, '{"v1": {"label": "Sr", "del": "yes", "alias": "", "ref": false}, "v2": {"label": "Particulars of Service/ltems u2022", "del": "no", "alias": "", "ref": false}, "v3": {"label": "SAC Code", "del": "no", "alias": "", "ref": false}, "v4": {"label": "Amount (Rs.)", "del": "no", "alias": "", "ref": true}}'),
(17, 'Sodexo-1', '', NULL, NULL, NULL, NULL, '{"v1": {"label": "Description", "del": "no", "alias": "item_description", "ref": false}, "v2": {"label": "Amount", "del": "no", "alias": "line_amount", "ref": false}, "v3": {"label": "", "del": "no", "alias": "line_amount", "ref": false}, "v4": {"label": "", "del": "no", "alias": "", "ref": true}}'),
(18, 'Shravas Technologies', '', NULL, NULL, NULL, NULL, '{"v1": {"label": "SI No. Particulars", "del": "no", "alias": "", "ref": true}, "v2": {"label": "", "del": "no", "alias": "", "ref": false}, "v3": {"label": "Amount", "del": "no", "alias": "", "ref": false}, "v4": {"label": "", "del": "no", "alias": "", "ref": false}}'),
(19, 'ABSC ENTERTAINMENT.', '', NULL, NULL, NULL, NULL, '{}'),
(20, 'ABSC ENTERTAINMENT.', '', NULL, NULL, NULL, NULL, '{}');

SET IDENTITY_INSERT [table_info] OFF