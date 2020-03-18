

CREATE TABLE button_options (
  [id] int NOT NULL IDENTITY Primary key,
  [type] varchar(255) NOT NULL,
  [display_name] varchar(255) NOT NULL,
  [options] varchar(255) NOT NULL,
  [button] varchar(255) NOT NULL
) ;


CREATE TABLE client_master (
  [id] int NOT NULL IDENTITY(12,1) PRIMARY KEY,
  [client_name] varchar(39) DEFAULT NULL,
  [client_id] varchar(7) DEFAULT NULL,
  [address] varchar(122) DEFAULT NULL,
  [country] varchar(6) DEFAULT NULL,
  [city] varchar(9) DEFAULT NULL,
  [state] varchar(14) DEFAULT NULL,
  [pincode] varchar(6) DEFAULT NULL,
  [tax_status] varchar(255) NOT NULL,
  [gst_state_code] varchar(2) DEFAULT NULL,
  [bank_name] varchar(13) DEFAULT NULL,
  [bank_account_number] varchar(22) DEFAULT NULL,
  [ifsc_code] varchar(22) DEFAULT NULL,
  [gstin] varchar(15) DEFAULT NULL,
  [pan] varchar(10) DEFAULT NULL,
  [sez] varchar(255) DEFAULT NULL
) 


SET IDENTITY_INSERT [client_master] ON
INSERT INTO client_master ([id], [client_name], [client_id], [address], [country], [city], [state], [pincode], [tax_status], [gst_state_code], [bank_name], [bank_account_number], [ifsc_code], [gstin], [pan], [sez]) VALUES
(2, 'Internet Data service India Pvt Ltd', 'CID0001', '124, Mittal Court, C Wing, Nariman Point', 'India', 'Mumbai', 'Maharashtra', '400021', 'Resident', '27', 'RBL', '242677', 'RATN0000155', '27AAACI2698P2ZU', 'AAACI2698P', 'No'),
(3, 'Bloomberg Data Services (India) Pvt Ltd', 'CID0002', '16th Floor, Unit No. 1601, Tower 2 B Wing, One Indiabulls Center, 841, Jupiter Mills, Off Senapati Bapat Marg, Lower Parel', 'India', 'Mumbai', 'Maharashtra', '400013', 'Resident', '27', 'Deutsche Bank', '0525303000', 'DEUT0784BBY', '27AAACB4260E2Z2', 'AAACB4260E', 'No'),
(4, 'Facebook India Online Services Pvt Ltd', 'CID0003', '', '', '', '', '', 'Resident', '07', '', '', '', '07AABCF5150G1ZX', 'AABCF5150G', 'Yes'),
(5, 'Facebook India Online Services Pvt Ltd', 'CID0004', '', '', '', '', '', 'Resident', '06', '', '', '', '06AABCF5150G1ZZ', 'AABCF5150G', 'Yes'),
(6, 'Facebook India Online Services Pvt Ltd', 'CID0005', '', '', '', '', '', 'Resident', '29', '', '', '', '29AABCF5150G2ZQ', 'AABCF5150G', 'Yes'),
(7, 'Facebook India Online Services Pvt Ltd', 'CID0006', '', '', '', '', '', 'Resident', '27', '', '', '', '27AABCF5150G1ZV', 'AABCF5150G', 'Yes'),
(8, 'Facebook India Online Services Pvt Ltd', 'CID0007', '', '', '', '', '', 'SEZ', '36', '', '', '', '36AABCF5150G1ZW', 'AABCF5150G', 'No'),
(9, 'Facebook India Online Services Pvt Ltd', 'CID0008', '', '', '', '', '', 'Resident', '36', '', '', '', '36AABCF5150G1ZU', 'AABCF5150G', 'Yes'),
(10, 'Azul Systems (India) Private Limited', 'CID0009', '2nd Floor B Wing Indiqube Sigma, Concorde Nexus # 3B 7th C Main, 3rd Block Koramangala,', 'India', 'Bangalore', 'Karnataka', '560034', 'Resident', '29', 'HK and Shangh', '071-289920-001', 'HSBC0560002', '29AAFCA3198R1ZT', 'AAFCA3198R', 'No'),
(11, 'Netgear Research India Private Limited', 'CID0010', '5th floor, Embassy Star, No.8, Palace Road, Vasanthnagar,', 'India', 'Bangalore', 'Karnataka', '560052', 'Resident', '29', '', '', '', '29AAECN0690E1ZH', 'AAECN0690E', 'Yes');
SET IDENTITY_INSERT [client_master] OFF


CREATE TABLE duplicate_check (
  [id] int NOT NULL  IDENTITY primary key,
  [table_name] varchar(50) NOT NULL,
  [columns] varchar(max) NOT NULL
) ;



CREATE TABLE folder_client_tagging (
  [id] int NOT NULL IDENTITY(8,1) PRIMARY KEY,
  [client_name_master] varchar(255) DEFAULT NULL,
  [client_name_folder] varchar(255) DEFAULT NULL
) ;


SET IDENTITY_INSERT [folder_client_tagging] ON
INSERT INTO folder_client_tagging ([id], [client_name_master], [client_name_folder]) VALUES
(1, 'Internet Data service India Pvt Ltd', 'IDS'),
(2, 'Facebook India Online Services Pvt Ltd', 'Facebook'),
(3, 'Bloomberg Data Services (India) Pvt Ltd', 'Bloomberg'),
(4, 'Stratasys', 'Stratasys'),
(5, 'Rockstar Interactive India LLP', 'RII'),
(6, 'Net gear', 'Netgear'),
(7, 'Azul', 'Azul');
SET IDENTITY_INSERT [folder_client_tagging] OFF


CREATE TABLE gst_compliance (
  [id] int NOT NULL IDENTITY(15,1) PRIMARY KEY,
  [gst_complied_invoices_checklist] varchar(2) DEFAULT NULL,
  [title] varchar(154) DEFAULT NULL,
  [possible] varchar(62) DEFAULT NULL
) ;



SET IDENTITY_INSERT [gst_compliance] ON
INSERT INTO gst_compliance ([id], [gst_complied_invoices_checklist], [title], [possible]) VALUES
(1, '1', 'Word Tax invoice, Credit note, Debit note etc.', 'Not Sure'),
(2, '2', 'Date of issue of Invoice', 'Yes'),
(3, '3', 'Correct name of receipient entity', 'Not Sure'),
(4, '4', 'Correct address of receipient entity', 'Yes, only based on pin code'),
(5, '5', 'Correct GSTIN of the receipient entity', 'Yes'),
(6, '6', 'GSTN of service provider', 'Yes'),
(7, '7', 'HSN code/ SAC code', 'Not Sure'),
(8, '8', 'Description of goods and services', 'Not Sure'),
(9, '9', 'Break down of taxable value, tax value, total value, tax rate etc.', 'No'),
(10, '10', 'Place of supply', 'No'),
(11, '11', 'Whether the tax payable on RCM', 'Yes, based on successful extraction or manual input of HSN/SAC'),
(12, '12', 'Physcially signed stamp or Digitally signed', 'No'),
(13, '', '', ''),
(14, '', 'To accomplish these check need to check for the presence of key words trained while extracting the information. E.g. keyword GSTIN tagged to 1st/3rd Party', '');
SET IDENTITY_INSERT [gst_compliance] OFF



CREATE TABLE hsn_master (
  [id] int NOT NULL IDENTITY(1599,1) PRIMARY KEY,
  [hsn_code] int DEFAULT NULL,
  [description] varchar(1425) DEFAULT NULL,
  [cgst_rate] varchar(227) DEFAULT NULL,
  [sgst_rate] varchar(155) DEFAULT NULL,
  [igst_rate] varchar(141) DEFAULT NULL,
  [compensation_cess] varchar(115) DEFAULT NULL
) ;




CREATE TABLE ltd_master (
  [id] int NOT NULL IDENTITY(9,1) PRIMARY KEY,
  [client_id] varchar(12) DEFAULT NULL,
  [vendor_name] varchar(57) DEFAULT NULL,
  [vendor_Id] varchar(13) DEFAULT NULL,
  [pan] varchar(12) DEFAULT NULL,
  [certificate_number] varchar(23) DEFAULT NULL,
  [ltd_limit] varchar(12) DEFAULT NULL,
  [ltd_rate] varchar(12) DEFAULT NULL,
  [date_of_issue] varchar(255) DEFAULT NULL,
  [start_date] varchar(255) DEFAULT NULL,
  [end_date] varchar(255) DEFAULT NULL,
  [stacked_amount] varchar(255) NOT NULL
) ;


SET IDENTITY_INSERT [ltd_master] ON
INSERT INTO ltd_master ([id], [client_id], [vendor_name], [vendor_Id], [pan], [certificate_number], [ltd_limit], [ltd_rate], [date_of_issue], [start_date], [end_date], [stacked_amount]) VALUES
(2, 'CID0001', 'BHARTI AIRTEL LIMITED', 'VID0001-00003', 'AAACB2894G', '1AC0419IVJ', '  152,250 ', '0.1', '4/30/2019', '4/29/2019', '3/31/2020', '0'),
(3, 'CID0001', 'THE PRESS TRUST OF INDIA', 'VID0001-00008', 'AAATT3616R', '1AE0519JOW', '  440,000 ', '0', '5/17/2019', '5/17/2019', '3/31/2020', '0'),
(4, 'CID0002', 'CBRE South Asia Pvt.Ltd', 'VID0002-00004', 'AAACC9308A', '1AG0519JLG', '8966800', '3.5', '5/24/2019', '5/24/2019', '3/31/2020', '0'),
(5, 'CID0002', 'Meraki Commnication Pvt.Ltd', 'VID0002-00009', 'AAICM0807G', '1AA0619DVU', '35000000', '3', '6/3/2019', '6/3/2019', '3/31/2020', '0'),
(6, 'CID0002', 'Jones Lang Lasalle Property Consultants(India) Pvt. Ltd.,', 'VID0002-00005', 'AAACL2089B', '', '1000000', '7.5', '6/3/2019', '6/3/2019', '3/31/2020', '0'),
(7, 'CID0002', 'WMW EVENTS & ENTERTAINMENT PVT.LTD', 'VID0002-00006', 'AABCW2184K', '', '1000000', '1.65', '6/3/2019', '6/3/2019', '3/31/2020', '0'),
(8, 'CID0002', 'MERAKI COMMUNICATIONS PVT LTD', 'VID0002-00009', 'AAICM0807G', '', '1000000', '3', '6/3/2019', '6/3/2019', '3/31/2020', '0');
SET IDENTITY_INSERT [ltd_master] OFF

CREATE TABLE master_upload_tables (
  [id] int NOT NULL IDENTITY(11,1) PRIMARY KEY,
  [table_name] varchar(255) NOT NULL,
  [group_id] int DEFAULT NULL,
  [editable] int NOT NULL DEFAULT '1',
  [produce] varchar(255) DEFAULT NULL
) ;


SET IDENTITY_INSERT [master_upload_tables] ON
INSERT INTO master_upload_tables ([id], [table_name], [group_id], [editable], [produce]) VALUES
(1, 'client_master', 3, 1, NULL),
(2, 'gst_compliance', 3, 1, NULL),
(3, 'hsn_master', 3, 1, NULL),
(4, 'ltd_master', 3, 1, NULL),
(5, 'pincode_gst_validation', 3, 1, NULL),
(6, 'po_master', 3, 1, NULL),
(7, 'rcm_master', 3, 1, NULL),
(8, 'tds_master', 3, 1, NULL),
(9, 'vendor_master', 3, 1, NULL),
(10, 'folder_client_tagging', 3, 1, NULL);
SET IDENTITY_INSERT [master_upload_tables] OFF


CREATE TABLE ocr (
  [id] bigint NOT NULL IDENTITY(18,1) PRIMARY KEY,
  [case_id] varchar(100) NOT NULL,
  [highlight] varchar(max),
  [last_updated] datetime2(0) NOT NULL DEFAULT GETDATE(),
  [created_date] datetime2(0) NULL DEFAULT GETDATE(),
  [Table] varchar(max),
  [credit_gl_code] varchar(255) DEFAULT NULL,
  [sub_head] varchar(255) DEFAULT NULL,
  [group_] varchar(255) DEFAULT NULL,
  [sub_group] varchar(255) DEFAULT NULL,
  [debit_gl_code] varchar(255) DEFAULT NULL,
  [ledger] varchar(255) DEFAULT NULL,
  [gl_codes] varchar(255) DEFAULT NULL,
  [comments] varchar(max),
  [digital_signature] varchar(255) NOT NULL DEFAULT 'Yes',
  [assessable_value] varchar(255) DEFAULT '0',
  [tds_section/rule] varchar(255) DEFAULT NULL,
  [Table_line_amount] varchar(255) DEFAULT '0.00',
  [tds_amount] varchar(255) DEFAULT '0.00',
  [tds_rate] varchar(255) DEFAULT NULL,
  [gst/igst_itc_amount] varchar(255) NOT NULL DEFAULT '0.00',
  [gst/cgst_itc_amount] varchar(255) NOT NULL DEFAULT '0.00',
  [gst/sgst_itc_amount] varchar(255) NOT NULL DEFAULT '0.00',
  [gst/igst_rcm_amount] varchar(255) NOT NULL DEFAULT '0.00',
  [gst/cgst_rcm_amount] varchar(255) NOT NULL DEFAULT '0.00',
  [gst/sgst_rcm_amount] varchar(255) NOT NULL DEFAULT '0.00',
  [gst/igst_amount] varchar(255) NOT NULL DEFAULT '0.00',
  [gst/cgst_amount] varchar(255) NOT NULL DEFAULT '0.00',
  [gst/sgst_amount] varchar(255) NOT NULL DEFAULT '0.00',
  [gst/igst_rate] varchar(255) DEFAULT NULL,
  [gst/cgst_rate] varchar(255) DEFAULT NULL,
  [gst/sgst_rate] varchar(255) DEFAULT NULL,
  [client_gstin] varchar(255) DEFAULT NULL,
  [vendor_gstin] varchar(255) DEFAULT NULL,
  [hsn/sac] varchar(255) DEFAULT NULL,
  [Table_item_quantity] int DEFAULT '0',
  [Table_item_description] varchar(max),
  [place_of_supply] varchar(255) DEFAULT NULL,
  [ifsc_code] varchar(255) DEFAULT NULL,
  [bank_account_number] varchar(255) DEFAULT NULL,
  [bank_name] varchar(255) DEFAULT NULL,
  [total_value] varchar(255) DEFAULT '0',
  [currency] varchar(max),
  [non_resident_vendors] varchar(max),
  [address_of_client] varchar(255) DEFAULT NULL,
  [address_of_vendor] varchar(255) DEFAULT NULL,
  [client_pan] varchar(255) DEFAULT NULL,
  [vendor_pan] varchar(255) DEFAULT NULL,
  [client_name] varchar(255) DEFAULT NULL,
  [vendor_name] varchar(255) DEFAULT NULL,
  [invoice_date] varchar(255) DEFAULT NULL,
  [invoice_number] varchar(255) DEFAULT NULL,
  [sez] varchar(max),
  [ltd_applicability] varchar(max),
  [ltd_amount] varchar(255) DEFAULT '0',
  [invoice_header] varchar(max),
  [tds] varchar(max) NOT NULL,
  [currency_conversion] varchar(255) DEFAULT '1.00',
  [tds_gl_account] varchar(255) DEFAULT NULL,
  [remarks] varchar(max),
  [value_in_inr] varchar(255) DEFAULT NULL,
  [rcm/cgst_liability_account] varchar(max),
  [rcm/sgst_liability_account] varchar(max),
  [vendor_client_location_same] smallint DEFAULT NULL,
  [popup_message] varchar(max),
  [debit_gl_code2] varchar(22) DEFAULT NULL,
  [method_used] varchar(max),
  [gst_code] varchar(22) NOT NULL DEFAULT ' ',
  [rcm_code] varchar(22) NOT NULL DEFAULT ' ',
  [vendor_id] varchar(22) DEFAULT NULL,
  [client_name_invoice] varchar(255) DEFAULT NULL,
  [type] varchar(22) DEFAULT NULL,
  [update_queue_status] varchar(22) NOT NULL DEFAULT 'default',
  [edited_validation] int NOT NULL DEFAULT '0',
  [rejection_comment] varchar(255) DEFAULT NULL,
  [client_id] varchar(22) DEFAULT NULL,
  [duplicate] smallint NOT NULL DEFAULT '0',
  [vendor_pincode] varchar(25) DEFAULT NULL,
  [client_pincode] varchar(25) DEFAULT NULL,
  [vendor_tax_status] varchar(22) DEFAULT NULL,
  [client_tax_status] varchar(22) DEFAULT NULL,
  [invoice_date_df] date DEFAULT NULL
) ;




CREATE TABLE ocr_28_01 (
  [id] bigint NOT NULL IDENTITY(175,1) PRIMARY KEY,
  [case_id] varchar(100) NOT NULL,
  [highlight] varchar(max),
  [last_updated] datetime2(0) NOT NULL DEFAULT GETDATE(),
  [created_date] datetime2(0) NULL DEFAULT GETDATE(),
  [Table] varchar(max),
  [credit_gl_code] varchar(255) DEFAULT NULL,
  [sub_head] varchar(255) DEFAULT NULL,
  [group_] varchar(255) DEFAULT NULL,
  [sub_group] varchar(255) DEFAULT NULL,
  [debit_gl_code] varchar(255) DEFAULT NULL,
  [ledger] varchar(255) DEFAULT NULL,
  [gl_codes] varchar(255) DEFAULT NULL,
  [comments] varchar(max),
  [digital_signature] varchar(255) DEFAULT NULL,
  [assessable_value] varchar(255) DEFAULT '0',
  [tds_section/rule] varchar(255) DEFAULT NULL,
  [line_amount] varchar(255) DEFAULT '0.00',
  [tds_amount] varchar(255) DEFAULT '0.00',
  [tds_rate] varchar(255) DEFAULT NULL,
  [gst/igst_itc_amount] varchar(255) NOT NULL DEFAULT '0.00',
  [gst/cgst_itc_amount] varchar(255) NOT NULL DEFAULT '0.00',
  [gst/sgst_itc_amount] varchar(255) NOT NULL DEFAULT '0.00',
  [gst/igst_rcm_amount] varchar(255) NOT NULL DEFAULT '0.00',
  [gst/cgst_rcm_amount] varchar(255) NOT NULL DEFAULT '0.00',
  [gst/sgst_rcm_amount] varchar(255) NOT NULL DEFAULT '0.00',
  [gst/igst_amount] varchar(255) NOT NULL DEFAULT '0.00',
  [gst/cgst_amount] varchar(255) NOT NULL DEFAULT '0.00',
  [gst/sgst_amount] varchar(255) NOT NULL DEFAULT '0.00',
  [gst/igst_rate] varchar(255) DEFAULT NULL,
  [gst/cgst_rate] varchar(255) DEFAULT NULL,
  [gst/sgst_rate] varchar(255) DEFAULT NULL,
  [client_gstin] varchar(255) DEFAULT NULL,
  [vendor_gstin] varchar(255) DEFAULT NULL,
  [hsn/sac] varchar(255) DEFAULT NULL,
  [item_quantity] int DEFAULT '0',
  [item_description] varchar(max),
  [place_of_supply] varchar(255) DEFAULT NULL,
  [ifsc_code] varchar(255) DEFAULT NULL,
  [bank_account_number] varchar(255) DEFAULT NULL,
  [bank_name] varchar(255) DEFAULT NULL,
  [total_value] varchar(255) DEFAULT '0',
  [currency] varchar(max),
  [non_resident_vendors] varchar(max),
  [address_of_client] varchar(255) DEFAULT NULL,
  [address_of_vendor] varchar(255) DEFAULT NULL,
  [client_pan] varchar(255) DEFAULT NULL,
  [vendor_pan] varchar(255) DEFAULT NULL,
  [client_name] varchar(255) DEFAULT NULL,
  [vendor_name] varchar(255) DEFAULT NULL,
  [invoice_date] varchar(255) DEFAULT NULL,
  [invoice_number] varchar(255) DEFAULT NULL,
  [sez] varchar(max),
  [ltd_applicability] varchar(max),
  [ltd_amount] varchar(255) DEFAULT '0',
  [invoice_header] varchar(max),
  [tds] varchar(max) NOT NULL,
  [corrency_conversion] varchar(255) DEFAULT '1.00',
  [tds_gl_account] varchar(255) DEFAULT NULL,
  [remarks] varchar(max),
  [value_in_inr] varchar(255) DEFAULT NULL,
  [rcm/cgst_liability_account] varchar(max),
  [rcm/sgst_liability_account] varchar(max),
  [vendor_client_location_same] smallint DEFAULT NULL,
  [popup_message] varchar(max),
  [debit_gl_code2] varchar(22) DEFAULT NULL,
  [method_used] varchar(max),
  [gst_code] varchar(22) NOT NULL DEFAULT ' ',
  [rcm_code] varchar(22) NOT NULL DEFAULT ' ',
  [vendor_id] varchar(22) DEFAULT NULL,
  [client_name_invoice] varchar(255) DEFAULT NULL,
  [type] varchar(22) DEFAULT NULL,
  [update_queue_status] varchar(22) NOT NULL DEFAULT 'default',
  [edited_validation] int NOT NULL DEFAULT '0',
  [rejection_comment] varchar(255) DEFAULT NULL,
  [vendor_pincode] varchar(11) DEFAULT NULL,
  [client_pincode] varchar(11) DEFAULT NULL,
  [client_id] varchar(22) DEFAULT NULL,
  [duplicate] smallint NOT NULL DEFAULT '0',
  [vendor_tax_status] varchar(22) DEFAULT NULL,
  [client_tax_status] varchar(22) DEFAULT NULL
) ;



CREATE TABLE pincode_gst_validation (
  [id] int NOT NULL,
  [pincode] int DEFAULT NULL,
  [statename] varchar(27) DEFAULT NULL,
  [gst_code] int DEFAULT NULL
)



CREATE TABLE po_master (
  [id] int NOT NULL IDENTITY(4,1) PRIMARY KEY,
  [client_name] varchar(39) DEFAULT NULL,
  [client_id] varchar(6) DEFAULT NULL,
  [vendor_name] varchar(34) DEFAULT NULL,
  [vendor_id] varchar(13) DEFAULT NULL,
  [vendor_address] varchar(91) DEFAULT NULL,
  [po_number] bigint DEFAULT NULL,
  [po_start_date] varchar(10) DEFAULT NULL,
  [city] varchar(9) DEFAULT NULL,
  [state] varchar(11) DEFAULT NULL,
  [pincode] int DEFAULT NULL,
  [bank_name] varchar(14) DEFAULT NULL,
  [bank_account_number] varchar(15) DEFAULT NULL,
  [bank_account_beneficiary Name] varchar(34) DEFAULT NULL,
  [ifsc_code] varchar(11) DEFAULT NULL,
  [gstin] varchar(15) DEFAULT NULL,
  [pan] varchar(10) DEFAULT NULL
) ;

SET IDENTITY_INSERT [po_master] ON
INSERT INTO po_master ([id], [client_name], [client_id], [vendor_name], [vendor_id], [vendor_address], [po_number], [po_start_date], [city], [state], [pincode], [bank_name], [bank_account_number], [bank_account_beneficiary Name], [ifsc_code], [gstin], [pan]) VALUES
(1, 'Bloomberg Data Services (India) Pvt Ltd', 'CID003', 'Deloitte Touche Tohmatsu India LLP', 'VID0003-00001', 'Tower 3, 27th - 32nd Floor, Indiabulls Finance Center, Senapati Bapat Marg, Elphinstone (W)', 4500533506, '', 'Mumbai', 'Maharashtra', 400013, 'RBL Bank Ltd', 'VA32439D2000770', 'Deloitte Touche Tohmatsu India LLP', 'RATN0000088', '27AALFD7157J1ZZ', 'AALFD7157J'),
(2, 'Bloomberg Data Services (India) Pvt Ltd', 'CID003', 'Afoozo Pvt Ltd', 'VID0003-00002', 'Plot No.29, Street No.30, Santgarh Extension, Tilak Nagar', 4500538239, '12-02-2019', 'New Delhi', 'New Delhi', 110018, 'ICICI Bank Ltd', '001105023975', 'Afoozo Pvt Ltd', 'ICIC0000011', '07AAJCA7298L1ZY', 'AAJCA7298L'),
(3, 'Bloomberg Data Services (India) Pvt Ltd', 'CID003', 'Blue Dart Express Ltd', 'VID0003-00005', 'Blue Dart Centre, Sahar Road, Andheri East', 4500539167, '', 'Mumbai', 'Maharashtra', 400099, 'ICICI Bank Ltd', '039305000074', 'Blue Dart Express Ltd', 'ICIC0000393', '27AAACB0446L1ZS', 'AAACB0446L');
SET IDENTITY_INSERT [po_master] OFF

CREATE TABLE rcm_master (
  [id] int NOT NULL IDENTITY(14,1) PRIMARY KEY,
  [sr_no] int DEFAULT NULL,
  [services] varchar(69) DEFAULT NULL,
  [gst_percent] varchar(2) DEFAULT NULL
) ;

SET IDENTITY_INSERT [rcm_master] ON
INSERT INTO rcm_master ([id], [sr_no], [services], [gst_percent]) VALUES
(1, 1, 'Non-taxable territory - 100%', '18'),
(2, 2, 'Goods transport agency (GTA) - 100%', '12'),
(3, 3, 'Legal services by Advocate firm - 100%', '18'),
(4, 4, 'Arbitral Tribunal - 100%', '18'),
(5, 5, 'Sponsership services - 100%', '18'),
(6, 6, 'Govt. or local authority - 100%', '18'),
(7, 7, 'Directors fees - 100%', '18'),
(8, 8, 'Insurance agent - 100%', '18'),
(9, 9, 'Banking company, FI or NBFC - 100%', '18'),
(10, 10, 'Transportation of goods from Outside India - 100%', '18'),
(11, 11, 'Transfer or permitting the use of copy rights - 100%', '18'),
(12, 12, 'Radio taxi or passenger transport (ECO) - 100% by ECO', '18'),
(13, 13, 'Unregistered - Goods/ services procure from unregistered deler - 100%', 'NA');
SET IDENTITY_INSERT [rcm_master] OFF



CREATE TABLE tds_master (
  [id] int NOT NULL IDENTITY(28,1) PRIMARY KEY,
  [section] varchar(17) DEFAULT NULL,
  [particulars] varchar(316) DEFAULT NULL,
  [description] varchar(448) DEFAULT NULL,
  [pan_4th_character] varchar(9) DEFAULT NULL,
  [code_for_mapping] varchar(9) DEFAULT NULL,
  [tds_rate_percent] varchar(26) DEFAULT NULL
) ;



CREATE TABLE vendor_master (
  [id] int NOT NULL IDENTITY(95,1) PRIMARY KEY,
  [client_name] varchar(39) DEFAULT NULL,
  [client_id] varchar(7) DEFAULT NULL,
  [vendor_name] varchar(51) DEFAULT NULL,
  [vendor_id] varchar(13) DEFAULT NULL,
  [gstin] varchar(15) DEFAULT NULL,
  [pan] varchar(10) DEFAULT NULL,
  [vendor_address] varchar(127) DEFAULT NULL,
  [address] varchar(127) DEFAULT NULL,
  [country] varchar(5) DEFAULT NULL,
  [city] varchar(9) DEFAULT NULL,
  [state] varchar(11) DEFAULT NULL,
  [pincode] varchar(7) DEFAULT NULL,
  [bank_name] varchar(47) DEFAULT NULL,
  [bank_account_number] varchar(16) DEFAULT NULL,
  [bank_account_beneficiary_name] varchar(57) DEFAULT NULL,
  [ifsc_code] varchar(11) DEFAULT NULL,
  [tax_status] varchar(12) DEFAULT NULL,
  [tds_code] varchar(6) DEFAULT NULL,
  [gst_group_code] varchar(5) DEFAULT NULL,
  [rcm_applicability] varchar(3) DEFAULT NULL,
  [rcm_category_if_yes] varchar(52) DEFAULT NULL,
  [rcm_gst_rate] varchar(2) DEFAULT NULL,
  [itc_eligibility] varchar(3) DEFAULT NULL,
  [expense_account_debit] varchar(22) DEFAULT NULL,
  [vendor_account_credit] varchar(22) DEFAULT NULL,
  [tds_account_credit] varchar(22) DEFAULT NULL,
  [itc_account_debit] varchar(22) DEFAULT NULL,
  [itc_account_debit2] varchar(22) DEFAULT NULL,
  [exp_account_2_debit] varchar(22) DEFAULT NULL,
  [gst_liability_2_credit] varchar(22) DEFAULT NULL,
  [gst_liability_2_credit2] varchar(22) DEFAULT NULL,
  [sez] varchar(255) DEFAULT NULL
) ;


