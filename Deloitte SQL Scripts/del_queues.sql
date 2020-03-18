CREATE TABLE ab_ace_br_mappings (
  [id] int NOT NULL IDENTITY PRIMARY KEY,
  [ab_column] varchar(255) NOT NULL,
  [ace_table] varchar(255) NOT NULL DEFAULT 'ocr',
  [ace_database] varchar(255) NOT NULL DEFAULT 'extraction'
)




CREATE TABLE all_data (
[process_queue.id] bigint
,[process_queue.file_name] varchar(max)
,[process_queue.case_id] varchar(255)
,[process_queue.queue] varchar(255)
,[process_queue.fork_ref_value] varchar(100)
,[process_queue.freeze] smallint
,[process_queue.document_type] varchar(255)
,[process_queue.state] varchar(255)
,[process_queue.template_name] varchar(max)
,[process_queue.status] varchar(255)
,[process_queue.error_logs] varchar(max)
,[process_queue.completed_processes] int
,[process_queue.total_processes] int
,[process_queue.case_lock] smallint
,[process_queue.failure_status] smallint
,[process_queue.reference_number] varchar(max)
,[process_queue.file_paths] varchar(max)
,[process_queue.source_of_invoice] varchar(max)
,[process_queue.cluster] float
,[process_queue.batch_id] varchar(max)
,[process_queue.operator] varchar(max)
,[process_queue.unread_email] smallint
,[process_queue.read_flag] smallint
,[process_queue.agent] varchar(255)
,[process_queue.ocr_status] bigint
,[process_queue.time_spent] varchar(255)
,[process_queue.last_updated_by] varchar(max)
,[process_queue.last_updated] datetime2(0)
,[process_queue.created_date] datetime2(0)
,[process_queue.digitally_signed] varchar(255)
,[process_queue.Fax reference number] varchar(255)
,[process_queue.Fax_unique_id] varchar(255)
,[process_queue.communication_date_time] varchar(255)
,[process_queue.case_type] varchar(255)
,[process_queue.fax_field_extracted_status] varchar(255)
,[process_queue.template_prediction_record] int
,[ocr.id] bigint
,[ocr.case_id] varchar(100)
,[ocr.highlight] varchar(max)
,[ocr.last_updated] datetime2(0)
,[ocr.created_date] datetime2(0)
,[ocr.Table] varchar(max)
,[ocr.credit_gl_code] varchar(255)
,[ocr.sub_head] varchar(255)
,[ocr.group_] varchar(255)
,[ocr.sub_group] varchar(255)
,[ocr.debit_gl_code] varchar(255)
,[ocr.ledger] varchar(255)
,[ocr.gl_codes] varchar(255)
,[ocr.comments] varchar(max)
,[ocr.digital_signature] varchar(255)
,[ocr.assessable_value] varchar(255)
,[ocr.tds_section/rule] varchar(255)
,[ocr.Table_line_amount] varchar(255)
,[ocr.tds_amount] varchar(255)
,[ocr.tds_rate] varchar(255)
,[ocr.gst/igst_itc_amount] varchar(255)
,[ocr.gst/cgst_itc_amount] varchar(255)
,[ocr.gst/sgst_itc_amount] varchar(255)
,[ocr.gst/igst_rcm_amount] varchar(255)
,[ocr.gst/cgst_rcm_amount] varchar(255)
,[ocr.gst/sgst_rcm_amount] varchar(255)
,[ocr.gst/igst_amount] varchar(255)
,[ocr.gst/cgst_amount] varchar(255)
,[ocr.gst/sgst_amount] varchar(255)
,[ocr.gst/igst_rate] varchar(255)
,[ocr.gst/cgst_rate] varchar(255)
,[ocr.gst/sgst_rate] varchar(255)
,[ocr.client_gstin] varchar(255)
,[ocr.vendor_gstin] varchar(255)
,[ocr.hsn/sac] varchar(255)
,[ocr.Table_item_quantity] int
,[ocr.Table_item_description] varchar(max)
,[ocr.place_of_supply] varchar(255)
,[ocr.ifsc_code] varchar(255)
,[ocr.bank_account_number] varchar(255)
,[ocr.bank_name] varchar(255)
,[ocr.total_value] varchar(255)
,[ocr.currency] varchar(max)
,[ocr.non_resident_vendors] varchar(max)
,[ocr.address_of_client] varchar(255)
,[ocr.address_of_vendor] varchar(255)
,[ocr.client_pan] varchar(255)
,[ocr.vendor_pan] varchar(255)
,[ocr.client_name] varchar(255)
,[ocr.vendor_name] varchar(255)
,[ocr.invoice_date] varchar(255)
,[ocr.invoice_number] varchar(255)
,[ocr.sez] varchar(max)
,[ocr.ltd_applicability] varchar(max)
,[ocr.ltd_amount] varchar(255)
,[ocr.invoice_header] varchar(max)
,[ocr.tds] varchar(max)
,[ocr.currency_conversion] varchar(255)
,[ocr.tds_gl_account] varchar(255)
,[ocr.remarks] varchar(max)
,[ocr.value_in_inr] varchar(255)
,[ocr.rcm/cgst_liability_account] varchar(max)
,[ocr.rcm/sgst_liability_account] varchar(max)
,[ocr.vendor_client_location_same] smallint
,[ocr.popup_message] varchar(max)
,[ocr.debit_gl_code2] varchar(22)
,[ocr.method_used] varchar(max)
,[ocr.gst_code] varchar(22)
,[ocr.rcm_code] varchar(22)
,[ocr.vendor_id] varchar(22)
,[ocr.client_name_invoice] varchar(255)
,[ocr.type] varchar(22)
,[ocr.update_queue_status] varchar(22)
,[ocr.edited_validation] int
,[ocr.rejection_comment] varchar(255)
,[ocr.client_id] varchar(22)
,[ocr.duplicate] smallint
,[ocr.vendor_pincode] varchar(25)
,[ocr.client_pincode] varchar(25)
,[ocr.vendor_tax_status] varchar(22)
,[ocr.client_tax_status] varchar(22)
,[ocr.invoice_date_df] date
);



CREATE TABLE button_definition (
  [id] int NOT NULL IDENTITY(13,1) PRIMARY KEY,
  [button_id] varchar(50) DEFAULT NULL,
  [text] varchar(50) NOT NULL,
  [enable] smallint NOT NULL DEFAULT '1',
  [color] varchar(7) NOT NULL,
  [confirmation] smallint NOT NULL DEFAULT '0',
  [confirmation_message] varchar(255) NOT NULL DEFAULT 'Are you sure you want to continue?',
  [navigate_back] smallint NOT NULL DEFAULT '1',
  [fields_required] varchar(max),
  [fields_not_required] varchar(max),
  [compare_tabs] varchar(max),
  [type] varchar(10) DEFAULT NULL,
  [api] int DEFAULT NULL,
  [level] varchar(255) DEFAULT 'case'
)


SET IDENTITY_INSERT [button_definition] ON
INSERT INTO button_definition ([id], [button_id], [text], [enable], [color], [confirmation], [confirmation_message], [navigate_back], [fields_required], [fields_not_required], [compare_tabs], [type], [api], [level]) VALUES
(1, 'Reject', 'Reject', 1, '#000000', 1, 'Are you sure you want to reject this document?', 1, NULL, NULL, NULL, NULL, NULL, 'case'),
(2, 'Save', 'Save', 1, '#ffffff', 0, '', 1, NULL, NULL, NULL, NULL, NULL, 'case'),
(3, 'Reassign', 'Reassign', 1, '#ffffff', 0, '', 1, NULL, NULL, NULL, NULL, NULL, 'case'),
(4, 'Approve1', 'Approve', 0, '#ffffff', 0, '', 1, '["invoice_number","invoice_date","vendor_name","client_name","vendor_pan","address_of_vendor","address_of_client","currency","total_value","Table.item_description","Table.line_amount","assessable_value","digital_signature","invoice_header"]', NULL, NULL, NULL, NULL, 'case'),
(6, 'On Hold', 'On Hold', 0, '#ffffff', 0, '', 1, '["remarks"]', NULL, NULL, NULL, NULL, 'case'),
(7, 'Confirm', 'Approve', 0, '#ffffff', 0, '', 1, '["invoice_number","invoice_date","vendor_name","client_name","vendor_pan","client_pan","address_of_vendor","address_of_client","non_resident_vendors","currency","total_value","bank_name","bank_account_number","ifsc_code","Table.item_description","Table.line_amount","assessable_value","digital_signature","gl_codes","credit_gl_code","invoice_header","tds"]', NULL, NULL, NULL, NULL, 'case'),
(8, 'Dismiss', 'Dismiss', 1, '#000000', 0, '', 1, NULL, NULL, NULL, NULL, NULL, 'case'),
(9, 'Grant', 'Grant', 1, '#000000', 0, '', 1, NULL, NULL, NULL, NULL, NULL, 'case'),
(10, 'Apply', 'Re-Apply', 0, '#ffffff', 0, '', 1, '["invoice_number","invoice_date","vendor_name","client_name","vendor_pan","address_of_vendor","address_of_client","currency","total_value","Table.item_description","Table.line_amount","assessable_value","digital_signature","invoice_header"]', NULL, NULL, NULL, 0, 'case'),
(11, 'Decision Tree', 'Decision Tree', 1, '#24a0ed', 0, '', 0, NULL, NULL, NULL, NULL, 1, 'case'),
(12, 'Approve2', 'Approve', 0, '#ffffff', 0, '', 1, '["invoice_number","invoice_date","vendor_name","client_name","vendor_pan","client_pan","address_of_vendor","address_of_client","non_resident_vendors","currency","total_value","bank_name","bank_account_number","ifsc_code","Table.item_description","Table.line_amount","assessable_value","digital_signature","gl_codes","credit_gl_code","invoice_header","tds"]', NULL, NULL, NULL, NULL, 'case');
SET IDENTITY_INSERT [button_definition] OFF



CREATE TABLE button_functions (
  [id] int NOT NULL IDENTITY(8,1) PRIMARY KEY,
  [route] varchar(100) NOT NULL,
  [type] varchar(100) NOT NULL DEFAULT 'produce',
  [parameters] varchar(255) NOT NULL,
  [api_id] int DEFAULT NULL,
  [in_progress_message] varchar(max),
  [failure_message] varchar(max),
  [success_message] varchar(max)
)


SET IDENTITY_INSERT [button_functions] ON
INSERT INTO button_functions ([id], [route], [type], [parameters], [api_id], [in_progress_message], [failure_message], [success_message]) VALUES
(1, 'update_queue', 'produce', 'case_id,queue,fields', NULL, 'Updating queue', 'Failed to update queue', 'Successfully updated queue'),
(2, 'run_business_rule', 'produce', 'case_id,stage,fields', NULL, 'Applying business rules', 'Failed to apply business rules', 'Successfully applied business rules'),
(5, 'save_changes', 'produce', 'case_id,fields,ui_crop_items', NULL, 'Saving changes', 'Failed to save changes', 'Successfully saved changes'),
(6, 'show_decision_tree', 'api', 'case_id', NULL, NULL, NULL, NULL),
(7, 'process_time', 'produce', 'case_id', NULL, NULL, NULL, NULL);
SET IDENTITY_INSERT [button_functions] OFF



CREATE TABLE button_function_mapping (
  [id] int NOT NULL IDENTITY(36,1) PRIMARY KEY,
  [button_id] int NOT NULL,
  [function_id] int NOT NULL
)


SET IDENTITY_INSERT [button_function_mapping] ON
INSERT INTO button_function_mapping ([id], [button_id], [function_id]) VALUES
(10, 4, 5),
(12, 1, 5),
(13, 1, 1),
(14, 2, 5),
(15, 3, 5),
(16, 3, 1),
(17, 6, 5),
(18, 6, 1),
(19, 7, 5),
(21, 8, 5),
(22, 8, 1),
(23, 9, 5),
(24, 9, 1),
(25, 10, 5),
(26, 10, 2),
(27, 4, 2),
(28, 11, 6),
(30, 7, 7),
(31, 7, 2),
(32, 12, 5),
(33, 4, 1),
(34, 12, 1),
(35, 10, 1);
SET IDENTITY_INSERT [button_function_mapping] OFF




CREATE TABLE case_relation (
  [id] int NOT NULL IDENTITY PRIMARY KEY,
  [queue_case_id] varchar(255) NOT NULL,
  [data_case_id] varchar(255) NOT NULL,
  [parent_case_id] varchar(255) NOT NULL,
  [fork_config] int NOT NULL
)




CREATE TABLE column_definition (
  [id] int NOT NULL IDENTITY(10,1) PRIMARY KEY,
  [column_name] varchar(200) NOT NULL,
  [label_key] varchar(255) NOT NULL,
  [date] smallint DEFAULT NULL,
  [source] varchar(255) DEFAULT NULL
)




SET IDENTITY_INSERT [column_definition] ON
INSERT INTO column_definition ([id], [column_name], [label_key], [date], [source]) VALUES
(1, 'case_id', 'Case ID', 0, 'process_queue'),
(2, 'file_name', 'File Name', 0, 'process_queue'),
(3, 'created_date', 'Created Date', 1, 'process_queue'),
(4, 'last_updated_by', 'Last Modified By', 0, 'process_queue'),
(5, 'source_of_invoice', 'Client Name', 0, 'process_queue'),
(6, 'vendor_name', 'Vendor Name', 0, 'ocr'),
(7, 'type', 'Type', 0, 'ocr'),
(8, 'status', 'Status', 0, 'process_queue'),
(9, 'last_updated', 'Last Modified Date', 0, 'process_queue');
SET IDENTITY_INSERT [column_definition] OFF






CREATE TABLE decision_tree_trace (
  [id] int NOT NULL IDENTITY PRIMARY KEY,
  [case_id] varchar(255) NOT NULL,
  [trace_array] varchar(max) NOT NULL,
  [trace_dict] varchar(max) NOT NULL
)


CREATE TABLE dropdown_definition (
  [id] int NOT NULL IDENTITY(17,1) PRIMARY KEY,
  [field_id] int NOT NULL,
  [unique_name] varchar(255) DEFAULT NULL,
  [dropdown_option] varchar(100) NOT NULL,
  [value] varchar(255) DEFAULT NULL,
  [linked_field] varchar(255) DEFAULT NULL
)



SET IDENTITY_INSERT [dropdown_definition] ON
INSERT INTO dropdown_definition ([id], [field_id], [unique_name], [dropdown_option], [value], [linked_field]) VALUES
(3, 4, 'Internet Data service India Pvt Ltd', 'Internet Data service India Pvt Ltd', NULL, NULL),
(4, 4, 'Facebook India Online Services Pvt Ltd', 'Facebook India Online Services Pvt Ltd', NULL, NULL),
(5, 4, 'Bloomberg Data Services (India) Pvt Ltd', 'Bloomberg Data Services (India) Pvt Ltd', NULL, NULL),
(6, 4, 'Stratasys', 'Stratasys', NULL, NULL),
(7, 4, 'Rockstar Interactive India LLP', 'Rockstar Interactive India LLP', NULL, NULL),
(8, 4, 'Net gear', 'Net gear', NULL, NULL),
(9, 53, 'Yes', 'Yes', NULL, NULL),
(10, 53, 'No', 'No', NULL, NULL),
(11, 4, 'Azul System India Private Limited', 'Azul System India Private Limited', NULL, NULL),
(12, 40, 'Yes', 'Yes', NULL, NULL),
(13, 40, 'No', 'No', NULL, NULL),
(14, 10, 'INR', 'INR', NULL, NULL),
(15, 10, 'USD', 'USD', NULL, NULL),
(16, 10, 'Pound', 'Pound', NULL, NULL);
SET IDENTITY_INSERT [dropdown_definition] OFF





CREATE TABLE field_accuracy (
  [id] int NOT NULL IDENTITY(140,1) PRIMARY KEY,
  [case_id] varchar(max) NOT NULL,
  [file_name] varchar(max) NOT NULL,
  [fields_changed] varchar(max) NOT NULL,
  [percentage] varchar(max) NOT NULL
) 


CREATE TABLE field_definition (
  [id] int NOT NULL IDENTITY(73,1) PRIMARY KEY,
  [display_name] varchar(max),
  [unique_name] varchar(max),
  [queue_field_mapping] varchar(max),
  [field_order] int NOT NULL DEFAULT '1',
  [mandatory] smallint DEFAULT '1',
  [tab_id] int DEFAULT NULL,
  [editable] varchar(255) DEFAULT NULL,
  [outline] smallint NOT NULL DEFAULT '1',
  [type] varchar(100) DEFAULT 'Text Field',
  [is_dropdown] smallint NOT NULL DEFAULT '0',
  [data_type] varchar(100) NOT NULL DEFAULT 'string',
  [min_length] int NOT NULL DEFAULT '0',
  [max_length] int NOT NULL DEFAULT '10000',
  [pattern] varchar(max),
  [crop] int NOT NULL DEFAULT '1',
  [max_date] int DEFAULT NULL,
  [confidence_threshold] int NOT NULL DEFAULT '100',
  [consider_field_for_export] smallint NOT NULL,
  [configurable] smallint DEFAULT NULL,
  [default_value] varchar(255) DEFAULT NULL,
  [static_field] smallint DEFAULT NULL,
  [group_name] varchar(255) DEFAULT NULL,
  [training_flag] int DEFAULT NULL,
  [field_order_mapping] varchar(255) DEFAULT NULL,
  [tag] varchar(255) NOT NULL,
  [pattern_conversion] varchar(255) DEFAULT NULL
)


SET IDENTITY_INSERT [field_definition] ON
INSERT INTO field_definition ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES
(1, 'Invoice Number', 'invoice_number', '2,3,4,7,8,13', 1, 1, 2, '2,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(2, 'Invoice Date', 'invoice_date', '2,3,4,7,8,13', 2, 1, 2, '2,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', '%d-%m-%Y'),
(3, 'Vendor Name', 'vendor_name', '2,3,4,7,8,13', 3, 1, 2, '2,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(4, 'Client Name', 'client_name', '2,3,4,7,8', 4, 1, 2, '2,4,7,8,13', 1, 'dropdown', 1, 'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(5, 'Vendor PAN', 'vendor_pan', '2,3,4,7,8,13', 7, 1, 2, '2,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[a-zA-Z0-9]{0,10}$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(6, 'Client PAN', 'client_pan', '2,3,4,7,8,13', 8, 1, 2, '2,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[a-zA-Z0-9]{0,10}$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(7, 'Address of Vendor', 'address_of_vendor', '2,3,4,7,8,13', 11, 1, 2, '2,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(8, 'Address of Client', 'address_of_client', '2,3,4,7,8,13', 12, 1, 2, '2,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(9, 'Non Resident vendors', 'non_resident_vendors', '2,3,4,7,8', 20, 1, 2, '2,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[a-zA-Z0-9]{0,3}$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(10, 'Currency', 'currency', '2,3,4,7,8,13', 21, 0, 2, '2,4,7,8,13', 1, 'dropdown', 1, 'string', 0, 10000, '^[a-zA-Z0-9]*$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(11, 'Total value', 'total_value', '2,3,4,7,8,13', 13, 1, 2, '2,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[0-9.,]*$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(12, 'Bank Name', 'bank_name', '2,3,4,7,8', 15, 1, 2, '2,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[a-zA-Z0-9]*$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(13, 'Bank Account Number', 'bank_account_number', '2,3,4,7,8,13', 16, 1, 2, '2,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(14, 'IFSC Code', 'ifsc_code', '2,3,4,7,8,13', 17, 1, 2, '2,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[a-zA-Z0-9]*$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(15, 'Place of Supply', 'place_of_supply', '2,3,4,7,8,13', 17, 0, 5, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(16, 'Item Description', 'Table_item_description', '', 18, 1, 2, '2,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(17, 'Item Quantity', 'Table_item_quantity', '', 25, 0, 2, '2,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[0-9.]*$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(19, 'HSN/SAC', 'hsn/sac', '2,3,4,7,8,13', 19, 0, 2, '2,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[0-9.]*$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(20, 'Vendor GSTIN', 'vendor_gstin', '2,3,4,7,8,13', 5, 0, 2, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[a-zA-Z0-9]{0,15}$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(21, 'Client GSTIN', 'client_gstin', '2,3,4,7,8,13', 6, 0, 2, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[a-zA-Z0-9]{0,15}$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(22, 'GST/SGST Rate(%)', 'gst/sgst_rate', '2,3,4,7,8', 22, 0, 5, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[0-9.]*$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(23, 'GST/CGST Rate(%)', 'gst/cgst_rate', '2,3,4,7,8', 23, 0, 5, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[0-9.]*$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(24, 'GST/IGST Rate(%)', 'gst/igst_rate', '2,3,4,7,8', 24, 0, 5, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[0-9.]*$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(25, 'GST/SGST Amount', 'gst/sgst_amount', '2,3,4,7,8,13', 25, 0, 5, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[0-9.,]*$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(26, 'GST/CGST Amount', 'gst/cgst_amount', '2,3,4,7,8,13', 26, 0, 5, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[0-9.,]*$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(27, 'GST/IGST Amount', 'gst/igst_amount', '2,3,4,7,8,13', 27, 0, 5, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[0-9.,]*$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(28, 'GST/SGST RCM Amount', 'gst/sgst_rcm_amount', '2,3,4,7,8', 29, 0, 5, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[0-9.,]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(29, 'GST/CGST RCM Amount', 'gst/cgst_rcm_amount', '2,3,4,7,8', 30, 0, 5, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[0-9.,]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(30, 'GST/IGST RCM Amount', 'gst/igst_rcm_amount', '2,3,4,7,8', 31, 0, 5, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[0-9.,]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(31, 'GST/SGST ITC Amount', 'gst/sgst_itc_amount', '2,3,4,7,8', 32, 0, 5, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[0-9.,]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(32, 'GST/CGST ITC Amount', 'gst/cgst_itc_amount', '2,3,4,7,8', 33, 0, 5, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[0-9.,]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(33, 'GST/IGST ITC Amount', 'gst/igst_itc_amount', '2,3,4,7,8', 34, 0, 5, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[0-9.,]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(34, 'TDS Rate(%)', 'tds_rate', '2,3,4,7,8', 41, 0, 6, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[0-9.]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(35, 'TDS Amount', 'tds_amount', '2,3,4,7,8', 42, 0, 6, '3', 1, 'Text Field', 0, 'string', 0, 10000, '^[0-9.,]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(36, 'Line Amount', 'Table_line_amount', '', 28, 1, 2, '2,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[0-9.,]*$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(37, 'TDS Section/Rule', 'tds_section/rule', '2,3,4,7,8', 43, 0, 6, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[a-zA-Z0-9]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(39, 'Assessable Value', 'assessable_value', '2,3,4,7,8,13', 14, 1, 2, '2,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[0-9.,]*$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(40, 'Digital Signature', 'digital_signature', '2,3,4,7,8', 23, 1, 2, '2,4,7,8,13', 1, 'dropdown', 1, 'string', 0, 10000, '^[a-zA-Z0-9]{0,3}$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(41, 'Validation Comments', 'comments', '2,3,4,7,8', 58, 0, 8, '2,4,7,8,13', 1, 'textarea', 0, 'string', 0, 10000, NULL, 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(42, 'Expense Account (Debit)', 'gl_codes', '2,3,4,7,8', 47, 1, 7, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[a-zA-Z0-9.]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(43, 'Ledger', 'ledger', '', 48, 0, 7, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(44, 'ITC Account Debit1', 'debit_gl_code', '2,3,4,7,8', 49, 0, 7, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[a-zA-Z0-9.]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(45, 'Vendor Account (Credit)', 'credit_gl_code', '2,3,4,7,8', 50, 1, 7, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[a-zA-Z0-9.]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(46, 'Sub Group (If requires)', 'sub_group', '', 51, 0, 7, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(47, 'Group', 'group', '', 52, 0, 7, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(48, 'Sub Head', 'sub_head', '', 53, 0, 7, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(49, 'SEZ', 'sez', '', 35, 0, 5, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[a-zA-Z0-9]{0,3}$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(50, 'LTD Applicability', 'ltd_applicability', '2,3,4,7,8', 44, 0, 6, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[a-zA-Z0-9]{0,3}$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(51, 'LTD Amount', 'ltd_amount', '2,3,4,7,8', 45, 0, 6, '3', 1, 'Text Field', 0, 'string', 0, 10000, '^[0-9.,]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(52, 'Invoice Header', 'invoice_header', '2,3,4,7,8,13', 22, 1, 2, '2,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(53, 'TDS', 'tds', '2,3,4,7,8', 46, 1, 6, '2,3,4,7,8,13', 1, 'dropdown', 1, 'string', 0, 10000, '', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(54, 'Fx Rate', 'corrency_conversion', '2,3,4,7,8', 24, 0, 2, '2,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[0-9.]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(55, 'TDS Account (Credit)', 'tds_gl_account', '2,3,4,7,8', 54, 0, 7, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[a-zA-Z0-9.]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(56, 'Remarks For Hold', 'remarks', '2,3,4,7', 59, 1, 8, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, NULL, 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(57, 'Value in INR', 'value_in_inr', '2,3,4,7,8', 25, 0, 2, '', 1, 'Text Field', 0, 'string', 0, 10000, '^[0-9.,]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(58, 'RCM/CGST Liability Account', 'rcm/cgst_liability_account', '2,3,4,7,8', 55, 0, 7, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[a-zA-Z0-9.]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(59, 'RCM/SGST Liability Account', 'rcm/sgst_liability_account', '2,3,4,7,8', 56, 0, 7, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[a-zA-Z0-9.]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(60, 'Vendor Client Location Same', 'vendor_client_location_same', '', 36, 0, 5, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(61, 'Summary', 'popup_message', '2,3,4,7,8', 60, 0, 8, '2,4,7,8,13', 1, 'textarea', 0, 'string', 0, 10000, NULL, 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(62, 'ITC Account Debit2', 'debit_gl_code2', '2,3,4,7,8', 67, 0, 7, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, '^[a-zA-Z0-9.]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(64, 'GST Code', 'gst_code', '2,3,4,7,8', 37, 0, 5, '3', 1, 'Text Field', 0, 'string', 0, 10000, '^[a-zA-Z0-9.]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(65, 'RCM Code', 'rcm_code', '2,3,4,7,8', 38, 0, 5, '3', 1, 'Text Field', 0, 'string', 0, 10000, '^[a-zA-Z0-9.]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(66, 'Client Name', 'client_name_invoice', '', 26, 0, 2, '2,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(67, 'Type', 'type', '', 27, 0, 2, '2,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, NULL, 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(68, 'Rejection Comments', 'rejection_comment', '7', 61, 0, 8, '2,3,4,7,8,13', 1, 'textarea', 0, 'string', 0, 10000, NULL, 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(69, 'Vendor Tax Status', 'vendor_tax_status', '2,3,4,7,8', 39, 0, 5, '3', 1, 'Text Field', 0, 'string', 0, 10000, NULL, 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(70, 'Client Tax Status', 'client_tax_status', '2,3,4,7,8', 40, 0, 5, '3', 1, 'Text Field', 0, 'string', 0, 10000, NULL, 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(71, 'Vendor Pincode', 'vendor_pincode', '2,3,4,7,8,13', 9, 1, 2, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL),
(72, 'Client Pincode', 'client_pincode', '2,3,4,7,8,13', 10, 1, 2, '2,3,4,7,8,13', 1, 'Text Field', 0, 'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL);
SET IDENTITY_INSERT [field_definition] OFF





CREATE TABLE file_workflow (
  [id] int NOT NULL IDENTITY(7,1) PRIMARY KEY,
  [source] varchar(255) NOT NULL,
  [target] varchar(max) NOT NULL
)


SET IDENTITY_INSERT [file_workflow] ON
INSERT INTO file_workflow ([id], [source], [target]) VALUES
(1, 'template_exceptions', '["maker", "validation","rejection"]'),
(2, 'maker', '["validation", "checker", "rejection"]'),
(3, 'checker', '["validation","maker", "approved","rejection"]'),
(4, 'validation', '["checker","approved","rejection"]'),
(5, 'approved', '[]'),
(6, 'rejection', '["maker"]');
SET IDENTITY_INSERT [file_workflow] OFF


CREATE TABLE match_data (
  [id] bigint NOT NULL IDENTITY PRIMARY KEY,
  [case_id] varchar(max),
  [query_result] varchar(max),
  [score] bigint DEFAULT NULL,
  [vendor] varchar(max)
)



CREATE TABLE merged_blob (
  [id] int NOT NULL IDENTITY PRIMARY KEY,
  [case_id] varchar(255) NOT NULL,
  [merged_blob] varbinary(max) NOT NULL
)



CREATE TABLE ocr_info (
  [id] bigint NOT NULL IDENTITY(34,1) PRIMARY KEY,
  [case_id] varchar(100) DEFAULT NULL,
  [xml_data] varchar(max),
  [ocr_text] varchar(max),
  [ocr_data] varchar(max),
  [created_date] datetime2(0) NULL DEFAULT GETDATE(),
  [keywords] varchar(max),
  [table_xml] varchar(max)
)


CREATE TABLE process_queue (
  [id] bigint NOT NULL IDENTITY(21,1) PRIMARY KEY,
  [file_name] varchar(max),
  [case_id] varchar(255) DEFAULT NULL,
  [queue] varchar(255) DEFAULT NULL,
  [fork_ref_value] varchar(100) DEFAULT NULL,
  [freeze] smallint NOT NULL DEFAULT '0',
  [document_type] varchar(255) NOT NULL DEFAULT 'folder',
  [state] varchar(255) NOT NULL,
  [template_name] varchar(max),
  [status] varchar(255) DEFAULT NULL,
  [error_logs] varchar(max),
  [completed_processes] int NOT NULL DEFAULT '0',
  [total_processes] int NOT NULL DEFAULT '0',
  [case_lock] smallint NOT NULL DEFAULT '0',
  [failure_status] smallint NOT NULL DEFAULT '0',
  [reference_number] varchar(max),
  [file_paths] varchar(max),
  [source_of_invoice] varchar(max),
  [cluster] float DEFAULT NULL,
  [batch_id] varchar(max),
  [operator] varchar(max),
  [unread_email] smallint NOT NULL DEFAULT '0',
  [read_flag] smallint NOT NULL DEFAULT '0',
  [agent] varchar(255) DEFAULT NULL,
  [ocr_status] bigint DEFAULT NULL,
  [time_spent] varchar(255) DEFAULT '00:00:00',
  [last_updated_by] varchar(max),
  [last_updated] datetime2(0) NULL DEFAULT GETDATE(),
  [created_date] datetime2(0) NOT NULL DEFAULT GETDATE(),
  [digitally_signed] varchar(255) DEFAULT NULL,
  [Fax reference number] varchar(255) NOT NULL,
  [Fax_unique_id] varchar(255) NOT NULL,
  [communication_date_time] varchar(255) NOT NULL,
  [case_type] varchar(255) NOT NULL,
  [fax_field_extracted_status] varchar(255) NOT NULL,
  [template_prediction_record] int NOT NULL
)






CREATE TABLE queue_column_mapping (
  [id] int NOT NULL IDENTITY(84,1) PRIMARY KEY,
  [queue_id] int NOT NULL,
  [column_id] int NOT NULL,
  [column_order] int DEFAULT NULL
)



SET IDENTITY_INSERT [queue_column_mapping] ON
INSERT INTO queue_column_mapping ([id], [queue_id], [column_id], [column_order]) VALUES
(2, 2, 2, 3),
(3, 2, 3, 4),
(4, 2, 4, 6),
(5, 2, 5, 1),
(7, 3, 2, 3),
(8, 3, 3, 4),
(9, 3, 4, 6),
(10, 3, 5, 1),
(12, 4, 2, 3),
(13, 4, 3, 4),
(14, 4, 4, 6),
(15, 4, 5, 1),
(27, 7, 2, 3),
(28, 7, 3, 4),
(29, 7, 4, 6),
(30, 7, 5, 1),
(32, 8, 2, 2),
(33, 8, 3, 4),
(34, 8, 4, 6),
(35, 8, 5, 1),
(47, 13, 2, 1),
(48, 13, 3, 4),
(50, 13, 5, 2),
(52, 3, 6, 2),
(56, 7, 6, 2),
(57, 8, 6, 2),
(60, 2, 7, 8),
(61, 3, 7, 8),
(62, 4, 7, 8),
(63, 7, 7, 8),
(64, 8, 7, 8),
(65, 2, 8, 7),
(66, 3, 8, 7),
(67, 4, 8, 7),
(68, 8, 8, 7),
(69, 2, 9, 5),
(70, 3, 9, 5),
(71, 8, 9, 5),
(72, 4, 6, 2),
(74, 8, 1, 9),
(75, 2, 1, 9),
(76, 3, 1, 9),
(77, 4, 1, 9),
(78, 7, 1, 9),
(79, 13, 1, 9),
(80, 2, 6, 2),
(81, 4, 9, 5),
(82, 7, 9, 5),
(83, 7, 8, 7);
SET IDENTITY_INSERT [queue_column_mapping] OFF






CREATE TABLE queue_definition (
  [id] int NOT NULL IDENTITY(14,1) PRIMARY KEY,
  [name] varchar(255) NOT NULL,
  [unique_name] varchar(255) NOT NULL,
  [default_flow] int DEFAULT NULL,
  [level] int NOT NULL,
  [parent] varchar(255) DEFAULT NULL,
  [timer] smallint NOT NULL DEFAULT '1',
  [type] varchar(255) NOT NULL DEFAULT 'field',
  [fields_disable] smallint NOT NULL,
  [queue_order] int NOT NULL,
  [workflow] varchar(10) DEFAULT NULL,
  [is_snapshot] smallint NOT NULL,
  [sort_by] varchar(max) NOT NULL,
  [file_category] int DEFAULT NULL,
  [static_filters] varchar(max) NOT NULL
)


SET IDENTITY_INSERT [queue_definition] ON
INSERT INTO queue_definition ([id], [name], [unique_name], [default_flow], [level], [parent], [timer], [type], [fields_disable], [queue_order], [workflow], [is_snapshot], [sort_by], [file_category], [static_filters]) VALUES
(1, 'Stats', 'stats', NULL, 1, NULL, 0, 'stats', 0, 1, NULL, 0, '[{"ocr.type.keyword": "asc"},{"process_queue.last_updated": "desc"}]', NULL, ''),
(2, 'Maker', 'maker', 2, 1, NULL, 1, 'field', 0, 2, NULL, 0, '[{"ocr.type.keyword": "asc"},{"process_queue.last_updated": "desc"}]', NULL, ''),
(3, 'Checker', 'checker', NULL, 1, NULL, 1, 'field', 1, 4, NULL, 0, '[{"ocr.type.keyword": "asc"},{"process_queue.last_updated": "desc"}]', NULL, ''),
(4, 'Approved', 'approved', 3, 1, NULL, 1, 'field', 1, 10, NULL, 0, '[{"ocr.type.keyword": "asc"},{"process_queue.last_updated": "desc"}]', NULL, ''),
(7, 'Rejection', 'rejection', 3, 1, NULL, 1, 'field', 1, 9, 'training', 0, '[{"ocr.type.keyword": "asc"},{"process_queue.last_updated": "desc"}]', NULL, ''),
(8, 'Validation', 'validation', NULL, 1, NULL, 1, 'field', 0, 8, NULL, 0, '[{"ocr.type.keyword": "asc"},{"process_queue.last_updated": "desc"}]', NULL, ''),
(12, 'Reports', 'reports', NULL, 1, NULL, 0, 'reports', 0, 12, NULL, 0, '[{"ocr.type.keyword": "asc"},{"process_queue.last_updated": "desc"}]', NULL, ''),
(13, 'Template Exceptions', 'template_exceptions', 1, 1, NULL, 1, 'train', 0, 13, NULL, 0, '[{"ocr.type.keyword": "asc"},{"process_queue.last_updated": "desc"}]', NULL, '');
SET IDENTITY_INSERT [queue_definition] OFF


CREATE TABLE screenshot_upload (
  [id] int NOT NULL IDENTITY PRIMARY KEY,
  [case_id] varchar(255) NOT NULL,
  [agent] varchar(255) DEFAULT NULL,
  [page_no] int NOT NULL DEFAULT '1',
  [blob_data] varbinary(max) NOT NULL,
  [processed] int NOT NULL DEFAULT '0'
) 











CREATE TABLE tab_definition (
  [id] int NOT NULL IDENTITY(9,1) PRIMARY KEY,
  [text] varchar(255) NOT NULL,
  [color] varchar(7) NOT NULL,
  [type] varchar(50) NOT NULL DEFAULT 'ocr',
  [source] varchar(50) NOT NULL DEFAULT 'ocr',
  [table_tab] smallint NOT NULL
)



SET IDENTITY_INSERT [tab_definition] ON
INSERT INTO tab_definition ([id], [text], [color], [type], [source], [table_tab]) VALUES
(2, 'Invoice', '#00ff00', 'ocr', 'ocr', 1),
(5, 'GST', '#00ff00', 'ocr', 'ocr', 0),
(6, 'TDS', '#00ff00', 'ocr', 'ocr', 0),
(7, 'GL Code', '#00ff00', 'ocr', 'ocr', 0),
(8, 'Comments', '#00ff00', 'ocr', 'ocr', 0);
SET IDENTITY_INSERT [tab_definition] OFF







CREATE TABLE tab_dropdown (
  [id] int NOT NULL IDENTITY(5,1) PRIMARY KEY,
  [unique_name] varchar(255) NOT NULL,
  [display_name] varchar(255) NOT NULL,
  [value] varchar(255) NOT NULL
)



SET IDENTITY_INSERT [tab_dropdown] ON
INSERT INTO tab_dropdown ([id], [unique_name], [display_name], [value]) VALUES
(1, 'units_applied', 'Crores', '10000000'),
(2, 'units_applied', 'Lakhs', '100000'),
(3, 'units_applied', 'Thousands', '1000'),
(4, 'units_applied', 'Unit Value', '1');
SET IDENTITY_INSERT [tab_dropdown] OFF


CREATE TABLE tab_properties (
  [id] int NOT NULL IDENTITY(3,1) PRIMARY KEY,
  [display_name] varchar(max),
  [unique_name] varchar(255) DEFAULT NULL,
  [field_order] int NOT NULL DEFAULT '1',
  [mandatory] smallint DEFAULT '1',
  [tab_id] int DEFAULT NULL,
  [editable] varchar(100) DEFAULT '1',
  [outline] smallint NOT NULL DEFAULT '0',
  [type] varchar(100) DEFAULT 'Text Field',
  [is_dropdown] smallint NOT NULL DEFAULT '0',
  [data_type] varchar(100) NOT NULL DEFAULT 'string',
  [min_length] int NOT NULL DEFAULT '0',
  [max_length] int NOT NULL DEFAULT '10000',
  [pattern] varchar(max),
  [crop] int NOT NULL DEFAULT '1',
  [max_date] int DEFAULT NULL,
  [confidence_threshold] int NOT NULL DEFAULT '100',
  [static_field] smallint NOT NULL DEFAULT '0'
)

SET IDENTITY_INSERT [tab_properties] ON
INSERT INTO tab_properties ([id], [display_name], [unique_name], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [static_field]) VALUES
(1, 'Units Applied', 'units_applied', 1, 1, 2, '5,6,7,8', 0, 'dropdown', 1, 'string', 0, 10000, NULL, 0, NULL, 100, 0),
(2, 'Currency', 'currency', 1, 1, 2, '5,6,7,8', 0, 'text', 0, 'string', 0, 10000, NULL, 0, NULL, 100, 0);
SET IDENTITY_INSERT [tab_properties] OFF




CREATE TABLE template_detection_config (
  [id] int NOT NULL IDENTITY PRIMARY KEY,
  [field] varchar(255) NOT NULL,
  [type] varchar(255) NOT NULL,
  [sequence] int DEFAULT NULL,
  [relation] varchar(255) NOT NULL
)




CREATE TABLE trace_info (
  [id] bigint NOT NULL IDENTITY PRIMARY KEY,
  [case_id] varchar(max),
  [last_updated_dates] varchar(max),
  [operators] varchar(max),
  [queue_trace] varchar(max)
)


CREATE TABLE unit_dropdown (
  [id] int NOT NULL IDENTITY(5,1) PRIMARY KEY,
  [display_name] varchar(255) NOT NULL,
  [unit_value] int NOT NULL
)


SET IDENTITY_INSERT [unit_dropdown] ON
INSERT INTO unit_dropdown ([id], [display_name], [unit_value]) VALUES
(1, 'Crores', 10000000),
(2, 'Lakhs', 100000),
(3, 'Thousands', 1000),
(4, 'Unit Value', 1);
SET IDENTITY_INSERT [unit_dropdown] OFF


CREATE TABLE workflow_definition (
  [id] int NOT NULL IDENTITY(22,1) PRIMARY KEY,
  [workflow_id] int NOT NULL,
  [queue_id] int DEFAULT NULL,
  [trigger_type] varchar(50) NOT NULL,
  [button_id] int DEFAULT NULL,
  [move_to] int DEFAULT NULL,
  [rule_group] varchar(100) DEFAULT NULL,
  [workflow_button] varchar(255) DEFAULT NULL,
  [email_template] varchar(255) DEFAULT NULL,
  [draft_template] varchar(255) DEFAULT NULL
)



SET IDENTITY_INSERT [workflow_definition] ON
INSERT INTO workflow_definition ([id], [workflow_id], [queue_id], [trigger_type], [button_id], [move_to], [rule_group], [workflow_button], [email_template], [draft_template]) VALUES
(1, 1, 2, '', 4, NULL, NULL, NULL, NULL, NULL),
(2, 2, 2, '', 1, 7, NULL, NULL, NULL, NULL),
(3, 3, 2, '', 6, 2, NULL, NULL, NULL, NULL),
(4, 4, 2, '', 2, 2, NULL, NULL, NULL, NULL),
(5, 5, 3, '', 7, NULL, NULL, NULL, NULL, NULL),
(6, 6, 3, '', 3, 2, NULL, NULL, NULL, NULL),
(7, 7, 3, '', 1, 7, NULL, NULL, NULL, NULL),
(8, 8, 3, '', 6, 3, NULL, NULL, NULL, NULL),
(9, 9, 3, '', 2, 3, NULL, NULL, NULL, NULL),
(10, 10, 8, '', 12, 3, NULL, NULL, NULL, NULL),
(16, 16, 8, '', 10, NULL, NULL, NULL, NULL, NULL),
(17, 17, 8, '', 11, NULL, NULL, NULL, NULL, NULL),
(18, 18, 13, '', NULL, NULL, NULL, NULL, NULL, NULL),
(19, 19, 7, '', 3, 2, NULL, NULL, NULL, NULL),
(20, 20, 8, '', 2, 8, NULL, NULL, NULL, NULL),
(21, 21, 8, '', 1, 7, NULL, NULL, NULL, NULL);
SET IDENTITY_INSERT [workflow_definition] OFF


CREATE TABLE workflow_stages (
  [id] int NOT NULL IDENTITY(4,1) PRIMARY KEY,
  [stage] varchar(255) NOT NULL
)

SET IDENTITY_INSERT [workflow_stages] ON
INSERT INTO workflow_stages ([id], [stage]) VALUES
(1, 'exception'),
(2, 'detection'),
(3, 'final');
SET IDENTITY_INSERT [workflow_stages] OFF





