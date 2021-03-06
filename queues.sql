USE [master]
GO
/****** Object:  Database [deloitte.acelive.ai_queues]    Script Date: 18-03-2020 16:08:38 ******/
CREATE DATABASE [deloitte.acelive.ai_queues]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'deloitte.acelive.ai_queues', FILENAME = N'/var/opt/mssql/data/deloitte.acelive.ai_queues.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'deloitte.acelive.ai_queues_log', FILENAME = N'/var/opt/mssql/data/deloitte.acelive.ai_queues_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [deloitte.acelive.ai_queues].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET ARITHABORT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET  ENABLE_BROKER 
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET RECOVERY FULL 
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET  MULTI_USER 
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET DB_CHAINING OFF 
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'deloitte.acelive.ai_queues', N'ON'
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET QUERY_STORE = OFF
GO
USE [deloitte.acelive.ai_queues]
GO
/****** Object:  Table [dbo].[ab_ace_br_mappings]    Script Date: 18-03-2020 16:08:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ab_ace_br_mappings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ab_column] [varchar](255) NOT NULL,
	[ace_table] [varchar](255) NOT NULL,
	[ace_database] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[all_data]    Script Date: 18-03-2020 16:08:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[all_data](
	[process_queue.id] [bigint] NULL,
	[process_queue.file_name] [varchar](max) NULL,
	[process_queue.case_id] [varchar](255) NULL,
	[process_queue.queue] [varchar](255) NULL,
	[process_queue.fork_ref_value] [varchar](100) NULL,
	[process_queue.freeze] [smallint] NULL,
	[process_queue.document_type] [varchar](255) NULL,
	[process_queue.state] [varchar](255) NULL,
	[process_queue.template_name] [varchar](max) NULL,
	[process_queue.status] [varchar](255) NULL,
	[process_queue.error_logs] [varchar](max) NULL,
	[process_queue.completed_processes] [int] NULL,
	[process_queue.total_processes] [int] NULL,
	[process_queue.case_lock] [smallint] NULL,
	[process_queue.failure_status] [smallint] NULL,
	[process_queue.reference_number] [varchar](max) NULL,
	[process_queue.file_paths] [varchar](max) NULL,
	[process_queue.source_of_invoice] [varchar](max) NULL,
	[process_queue.cluster] [float] NULL,
	[process_queue.batch_id] [varchar](max) NULL,
	[process_queue.operator] [varchar](max) NULL,
	[process_queue.unread_email] [smallint] NULL,
	[process_queue.read_flag] [smallint] NULL,
	[process_queue.agent] [varchar](255) NULL,
	[process_queue.ocr_status] [bigint] NULL,
	[process_queue.time_spent] [varchar](255) NULL,
	[process_queue.last_updated_by] [varchar](max) NULL,
	[process_queue.last_updated] [datetime2](0) NULL,
	[process_queue.created_date] [datetime2](0) NULL,
	[process_queue.digitally_signed] [varchar](255) NULL,
	[process_queue.Fax reference number] [varchar](255) NULL,
	[process_queue.Fax_unique_id] [varchar](255) NULL,
	[process_queue.communication_date_time] [varchar](255) NULL,
	[process_queue.case_type] [varchar](255) NULL,
	[process_queue.fax_field_extracted_status] [varchar](255) NULL,
	[process_queue.template_prediction_record] [int] NULL,
	[ocr.id] [bigint] NULL,
	[ocr.case_id] [varchar](100) NULL,
	[ocr.highlight] [varchar](max) NULL,
	[ocr.last_updated] [datetime2](0) NULL,
	[ocr.created_date] [datetime2](0) NULL,
	[ocr.Table] [varchar](max) NULL,
	[ocr.credit_gl_code] [varchar](255) NULL,
	[ocr.sub_head] [varchar](255) NULL,
	[ocr.group_] [varchar](255) NULL,
	[ocr.sub_group] [varchar](255) NULL,
	[ocr.debit_gl_code] [varchar](255) NULL,
	[ocr.ledger] [varchar](255) NULL,
	[ocr.gl_codes] [varchar](255) NULL,
	[ocr.comments] [varchar](max) NULL,
	[ocr.digital_signature] [varchar](255) NULL,
	[ocr.assessable_value] [varchar](255) NULL,
	[ocr.tds_section/rule] [varchar](255) NULL,
	[ocr.Table_line_amount] [varchar](255) NULL,
	[ocr.tds_amount] [varchar](255) NULL,
	[ocr.tds_rate] [varchar](255) NULL,
	[ocr.gst/igst_itc_amount] [varchar](255) NULL,
	[ocr.gst/cgst_itc_amount] [varchar](255) NULL,
	[ocr.gst/sgst_itc_amount] [varchar](255) NULL,
	[ocr.gst/igst_rcm_amount] [varchar](255) NULL,
	[ocr.gst/cgst_rcm_amount] [varchar](255) NULL,
	[ocr.gst/sgst_rcm_amount] [varchar](255) NULL,
	[ocr.gst/igst_amount] [varchar](255) NULL,
	[ocr.gst/cgst_amount] [varchar](255) NULL,
	[ocr.gst/sgst_amount] [varchar](255) NULL,
	[ocr.gst/igst_rate] [varchar](255) NULL,
	[ocr.gst/cgst_rate] [varchar](255) NULL,
	[ocr.gst/sgst_rate] [varchar](255) NULL,
	[ocr.client_gstin] [varchar](255) NULL,
	[ocr.vendor_gstin] [varchar](255) NULL,
	[ocr.hsn/sac] [varchar](255) NULL,
	[ocr.Table_item_quantity] [int] NULL,
	[ocr.Table_item_description] [varchar](max) NULL,
	[ocr.place_of_supply] [varchar](255) NULL,
	[ocr.ifsc_code] [varchar](255) NULL,
	[ocr.bank_account_number] [varchar](255) NULL,
	[ocr.bank_name] [varchar](255) NULL,
	[ocr.total_value] [varchar](255) NULL,
	[ocr.currency] [varchar](max) NULL,
	[ocr.non_resident_vendors] [varchar](max) NULL,
	[ocr.address_of_client] [varchar](255) NULL,
	[ocr.address_of_vendor] [varchar](255) NULL,
	[ocr.client_pan] [varchar](255) NULL,
	[ocr.vendor_pan] [varchar](255) NULL,
	[ocr.client_name] [varchar](255) NULL,
	[ocr.vendor_name] [varchar](255) NULL,
	[ocr.invoice_date] [varchar](255) NULL,
	[ocr.invoice_number] [varchar](255) NULL,
	[ocr.sez] [varchar](max) NULL,
	[ocr.ltd_applicability] [varchar](max) NULL,
	[ocr.ltd_amount] [varchar](255) NULL,
	[ocr.invoice_header] [varchar](max) NULL,
	[ocr.tds] [varchar](max) NULL,
	[ocr.currency_conversion] [varchar](255) NULL,
	[ocr.tds_gl_account] [varchar](255) NULL,
	[ocr.remarks] [varchar](max) NULL,
	[ocr.value_in_inr] [varchar](255) NULL,
	[ocr.rcm/cgst_liability_account] [varchar](max) NULL,
	[ocr.rcm/sgst_liability_account] [varchar](max) NULL,
	[ocr.vendor_client_location_same] [smallint] NULL,
	[ocr.popup_message] [varchar](max) NULL,
	[ocr.debit_gl_code2] [varchar](22) NULL,
	[ocr.method_used] [varchar](max) NULL,
	[ocr.gst_code] [varchar](22) NULL,
	[ocr.rcm_code] [varchar](22) NULL,
	[ocr.vendor_id] [varchar](22) NULL,
	[ocr.client_name_invoice] [varchar](255) NULL,
	[ocr.type] [varchar](22) NULL,
	[ocr.update_queue_status] [varchar](22) NULL,
	[ocr.edited_validation] [int] NULL,
	[ocr.rejection_comment] [varchar](255) NULL,
	[ocr.client_id] [varchar](22) NULL,
	[ocr.duplicate] [smallint] NULL,
	[ocr.vendor_pincode] [varchar](25) NULL,
	[ocr.client_pincode] [varchar](25) NULL,
	[ocr.vendor_tax_status] [varchar](22) NULL,
	[ocr.client_tax_status] [varchar](22) NULL,
	[ocr.invoice_date_df] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[button_definition]    Script Date: 18-03-2020 16:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[button_definition](
	[id] [int] IDENTITY(13,1) NOT NULL,
	[button_id] [varchar](50) NULL,
	[text] [varchar](50) NOT NULL,
	[enable] [smallint] NOT NULL,
	[color] [varchar](7) NOT NULL,
	[confirmation] [smallint] NOT NULL,
	[confirmation_message] [varchar](255) NOT NULL,
	[navigate_back] [smallint] NOT NULL,
	[fields_required] [varchar](max) NULL,
	[fields_not_required] [varchar](max) NULL,
	[compare_tabs] [varchar](max) NULL,
	[type] [varchar](10) NULL,
	[api] [int] NULL,
	[level] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[button_function_mapping]    Script Date: 18-03-2020 16:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[button_function_mapping](
	[id] [int] IDENTITY(36,1) NOT NULL,
	[button_id] [int] NOT NULL,
	[function_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[button_functions]    Script Date: 18-03-2020 16:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[button_functions](
	[id] [int] IDENTITY(8,1) NOT NULL,
	[route] [varchar](100) NOT NULL,
	[type] [varchar](100) NOT NULL,
	[parameters] [varchar](255) NOT NULL,
	[api_id] [int] NULL,
	[in_progress_message] [varchar](max) NULL,
	[failure_message] [varchar](max) NULL,
	[success_message] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[case_relation]    Script Date: 18-03-2020 16:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[case_relation](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[queue_case_id] [varchar](255) NOT NULL,
	[data_case_id] [varchar](255) NOT NULL,
	[parent_case_id] [varchar](255) NOT NULL,
	[fork_config] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[column_definition]    Script Date: 18-03-2020 16:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[column_definition](
	[id] [int] IDENTITY(10,1) NOT NULL,
	[column_name] [varchar](200) NOT NULL,
	[label_key] [varchar](255) NOT NULL,
	[date] [smallint] NULL,
	[source] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[decision_tree_trace]    Script Date: 18-03-2020 16:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[decision_tree_trace](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[case_id] [varchar](255) NOT NULL,
	[trace_array] [varchar](max) NOT NULL,
	[trace_dict] [varchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dropdown_definition]    Script Date: 18-03-2020 16:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dropdown_definition](
	[id] [int] IDENTITY(17,1) NOT NULL,
	[field_id] [int] NOT NULL,
	[unique_name] [varchar](255) NULL,
	[dropdown_option] [varchar](100) NOT NULL,
	[value] [varchar](255) NULL,
	[linked_field] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[field_accuracy]    Script Date: 18-03-2020 16:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[field_accuracy](
	[id] [int] IDENTITY(140,1) NOT NULL,
	[case_id] [varchar](max) NOT NULL,
	[file_name] [varchar](max) NOT NULL,
	[fields_changed] [varchar](max) NOT NULL,
	[percentage] [varchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[field_definition]    Script Date: 18-03-2020 16:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[field_definition](
	[id] [int] IDENTITY(73,1) NOT NULL,
	[display_name] [varchar](max) NULL,
	[unique_name] [varchar](max) NULL,
	[queue_field_mapping] [varchar](max) NULL,
	[field_order] [int] NOT NULL,
	[mandatory] [smallint] NULL,
	[tab_id] [int] NULL,
	[editable] [varchar](255) NULL,
	[outline] [smallint] NOT NULL,
	[type] [varchar](100) NULL,
	[is_dropdown] [smallint] NOT NULL,
	[data_type] [varchar](100) NOT NULL,
	[min_length] [int] NOT NULL,
	[max_length] [int] NOT NULL,
	[pattern] [varchar](max) NULL,
	[crop] [int] NOT NULL,
	[max_date] [int] NULL,
	[confidence_threshold] [int] NOT NULL,
	[consider_field_for_export] [smallint] NOT NULL,
	[configurable] [smallint] NULL,
	[default_value] [varchar](255) NULL,
	[static_field] [smallint] NULL,
	[group_name] [varchar](255) NULL,
	[training_flag] [int] NULL,
	[field_order_mapping] [varchar](255) NULL,
	[tag] [varchar](255) NOT NULL,
	[pattern_conversion] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[file_workflow]    Script Date: 18-03-2020 16:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[file_workflow](
	[id] [int] IDENTITY(7,1) NOT NULL,
	[source] [varchar](255) NOT NULL,
	[target] [varchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[match_data]    Script Date: 18-03-2020 16:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[match_data](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[case_id] [varchar](max) NULL,
	[query_result] [varchar](max) NULL,
	[score] [bigint] NULL,
	[vendor] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[merged_blob]    Script Date: 18-03-2020 16:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[merged_blob](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[case_id] [varchar](255) NOT NULL,
	[merged_blob] [varbinary](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ocr_info]    Script Date: 18-03-2020 16:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ocr_info](
	[id] [bigint] IDENTITY(34,1) NOT NULL,
	[case_id] [varchar](100) NULL,
	[xml_data] [varchar](max) NULL,
	[ocr_text] [varchar](max) NULL,
	[ocr_data] [varchar](max) NULL,
	[created_date] [datetime2](0) NULL,
	[keywords] [varchar](max) NULL,
	[table_xml] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[process_queue]    Script Date: 18-03-2020 16:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[process_queue](
	[id] [bigint] IDENTITY(21,1) NOT NULL,
	[file_name] [varchar](max) NULL,
	[case_id] [varchar](255) NULL,
	[queue] [varchar](255) NULL,
	[fork_ref_value] [varchar](100) NULL,
	[freeze] [smallint] NOT NULL,
	[document_type] [varchar](255) NOT NULL,
	[state] [varchar](255) NOT NULL,
	[template_name] [varchar](max) NULL,
	[status] [varchar](255) NULL,
	[error_logs] [varchar](max) NULL,
	[completed_processes] [int] NOT NULL,
	[total_processes] [int] NOT NULL,
	[case_lock] [smallint] NOT NULL,
	[failure_status] [smallint] NOT NULL,
	[reference_number] [varchar](max) NULL,
	[file_paths] [varchar](max) NULL,
	[source_of_invoice] [varchar](max) NULL,
	[cluster] [float] NULL,
	[batch_id] [varchar](max) NULL,
	[operator] [varchar](max) NULL,
	[unread_email] [smallint] NOT NULL,
	[read_flag] [smallint] NOT NULL,
	[agent] [varchar](255) NULL,
	[ocr_status] [bigint] NULL,
	[time_spent] [varchar](255) NULL,
	[last_updated_by] [varchar](max) NULL,
	[last_updated] [datetime2](0) NULL,
	[created_date] [datetime2](0) NOT NULL,
	[digitally_signed] [varchar](255) NULL,
	[Fax reference number] [varchar](255) NOT NULL,
	[Fax_unique_id] [varchar](255) NOT NULL,
	[communication_date_time] [varchar](255) NOT NULL,
	[case_type] [varchar](255) NOT NULL,
	[fax_field_extracted_status] [varchar](255) NOT NULL,
	[template_prediction_record] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[queue_column_mapping]    Script Date: 18-03-2020 16:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[queue_column_mapping](
	[id] [int] IDENTITY(84,1) NOT NULL,
	[queue_id] [int] NOT NULL,
	[column_id] [int] NOT NULL,
	[column_order] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[queue_definition]    Script Date: 18-03-2020 16:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[queue_definition](
	[id] [int] IDENTITY(14,1) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[unique_name] [varchar](255) NOT NULL,
	[default_flow] [int] NULL,
	[level] [int] NOT NULL,
	[parent] [varchar](255) NULL,
	[timer] [smallint] NOT NULL,
	[type] [varchar](255) NOT NULL,
	[fields_disable] [smallint] NOT NULL,
	[queue_order] [int] NOT NULL,
	[workflow] [varchar](10) NULL,
	[is_snapshot] [smallint] NOT NULL,
	[sort_by] [varchar](max) NOT NULL,
	[file_category] [int] NULL,
	[static_filters] [varchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[screenshot_upload]    Script Date: 18-03-2020 16:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[screenshot_upload](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[case_id] [varchar](255) NOT NULL,
	[agent] [varchar](255) NULL,
	[page_no] [int] NOT NULL,
	[blob_data] [varbinary](max) NOT NULL,
	[processed] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tab_definition]    Script Date: 18-03-2020 16:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tab_definition](
	[id] [int] IDENTITY(9,1) NOT NULL,
	[text] [varchar](255) NOT NULL,
	[color] [varchar](7) NOT NULL,
	[type] [varchar](50) NOT NULL,
	[source] [varchar](50) NOT NULL,
	[table_tab] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tab_dropdown]    Script Date: 18-03-2020 16:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tab_dropdown](
	[id] [int] IDENTITY(5,1) NOT NULL,
	[unique_name] [varchar](255) NOT NULL,
	[display_name] [varchar](255) NOT NULL,
	[value] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tab_properties]    Script Date: 18-03-2020 16:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tab_properties](
	[id] [int] IDENTITY(3,1) NOT NULL,
	[display_name] [varchar](max) NULL,
	[unique_name] [varchar](255) NULL,
	[field_order] [int] NOT NULL,
	[mandatory] [smallint] NULL,
	[tab_id] [int] NULL,
	[editable] [varchar](100) NULL,
	[outline] [smallint] NOT NULL,
	[type] [varchar](100) NULL,
	[is_dropdown] [smallint] NOT NULL,
	[data_type] [varchar](100) NOT NULL,
	[min_length] [int] NOT NULL,
	[max_length] [int] NOT NULL,
	[pattern] [varchar](max) NULL,
	[crop] [int] NOT NULL,
	[max_date] [int] NULL,
	[confidence_threshold] [int] NOT NULL,
	[static_field] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[template_detection_config]    Script Date: 18-03-2020 16:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[template_detection_config](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[field] [varchar](255) NOT NULL,
	[type] [varchar](255) NOT NULL,
	[sequence] [int] NULL,
	[relation] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trace_info]    Script Date: 18-03-2020 16:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trace_info](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[case_id] [varchar](max) NULL,
	[last_updated_dates] [varchar](max) NULL,
	[operators] [varchar](max) NULL,
	[queue_trace] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[unit_dropdown]    Script Date: 18-03-2020 16:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[unit_dropdown](
	[id] [int] IDENTITY(5,1) NOT NULL,
	[display_name] [varchar](255) NOT NULL,
	[unit_value] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[workflow_definition]    Script Date: 18-03-2020 16:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[workflow_definition](
	[id] [int] IDENTITY(22,1) NOT NULL,
	[workflow_id] [int] NOT NULL,
	[queue_id] [int] NULL,
	[trigger_type] [varchar](50) NOT NULL,
	[button_id] [int] NULL,
	[move_to] [int] NULL,
	[rule_group] [varchar](100) NULL,
	[workflow_button] [varchar](255) NULL,
	[email_template] [varchar](255) NULL,
	[draft_template] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[workflow_stages]    Script Date: 18-03-2020 16:08:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[workflow_stages](
	[id] [int] IDENTITY(4,1) NOT NULL,
	[stage] [varchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[button_definition] ON 

INSERT [dbo].[button_definition] ([id], [button_id], [text], [enable], [color], [confirmation], [confirmation_message], [navigate_back], [fields_required], [fields_not_required], [compare_tabs], [type], [api], [level]) VALUES (1, N'Reject', N'Reject', 1, N'#000000', 1, N'Are you sure you want to reject this document?', 1, NULL, NULL, NULL, NULL, NULL, N'case')
INSERT [dbo].[button_definition] ([id], [button_id], [text], [enable], [color], [confirmation], [confirmation_message], [navigate_back], [fields_required], [fields_not_required], [compare_tabs], [type], [api], [level]) VALUES (2, N'Save', N'Save', 1, N'#ffffff', 0, N'', 1, NULL, NULL, NULL, NULL, NULL, N'case')
INSERT [dbo].[button_definition] ([id], [button_id], [text], [enable], [color], [confirmation], [confirmation_message], [navigate_back], [fields_required], [fields_not_required], [compare_tabs], [type], [api], [level]) VALUES (3, N'Reassign', N'Reassign', 1, N'#ffffff', 0, N'', 1, NULL, NULL, NULL, NULL, NULL, N'case')
INSERT [dbo].[button_definition] ([id], [button_id], [text], [enable], [color], [confirmation], [confirmation_message], [navigate_back], [fields_required], [fields_not_required], [compare_tabs], [type], [api], [level]) VALUES (4, N'Approve1', N'Approve', 0, N'#ffffff', 0, N'', 1, N'["invoice_number","invoice_date","vendor_name","client_name","vendor_pan","address_of_vendor","address_of_client","currency","total_value","Table.item_description","Table.line_amount","assessable_value","digital_signature","invoice_header"]', NULL, NULL, NULL, NULL, N'case')
INSERT [dbo].[button_definition] ([id], [button_id], [text], [enable], [color], [confirmation], [confirmation_message], [navigate_back], [fields_required], [fields_not_required], [compare_tabs], [type], [api], [level]) VALUES (6, N'On Hold', N'On Hold', 0, N'#ffffff', 0, N'', 1, N'["remarks"]', NULL, NULL, NULL, NULL, N'case')
INSERT [dbo].[button_definition] ([id], [button_id], [text], [enable], [color], [confirmation], [confirmation_message], [navigate_back], [fields_required], [fields_not_required], [compare_tabs], [type], [api], [level]) VALUES (7, N'Confirm', N'Approve', 0, N'#ffffff', 0, N'', 1, N'["invoice_number","invoice_date","vendor_name","client_name","vendor_pan","client_pan","address_of_vendor","address_of_client","non_resident_vendors","currency","total_value","bank_name","bank_account_number","ifsc_code","Table.item_description","Table.line_amount","assessable_value","digital_signature","gl_codes","credit_gl_code","invoice_header","tds"]', NULL, NULL, NULL, NULL, N'case')
INSERT [dbo].[button_definition] ([id], [button_id], [text], [enable], [color], [confirmation], [confirmation_message], [navigate_back], [fields_required], [fields_not_required], [compare_tabs], [type], [api], [level]) VALUES (8, N'Dismiss', N'Dismiss', 1, N'#000000', 0, N'', 1, NULL, NULL, NULL, NULL, NULL, N'case')
INSERT [dbo].[button_definition] ([id], [button_id], [text], [enable], [color], [confirmation], [confirmation_message], [navigate_back], [fields_required], [fields_not_required], [compare_tabs], [type], [api], [level]) VALUES (9, N'Grant', N'Grant', 1, N'#000000', 0, N'', 1, NULL, NULL, NULL, NULL, NULL, N'case')
INSERT [dbo].[button_definition] ([id], [button_id], [text], [enable], [color], [confirmation], [confirmation_message], [navigate_back], [fields_required], [fields_not_required], [compare_tabs], [type], [api], [level]) VALUES (10, N'Apply', N'Re-Apply', 0, N'#ffffff', 0, N'', 1, N'["invoice_number","invoice_date","vendor_name","client_name","vendor_pan","address_of_vendor","address_of_client","currency","total_value","Table.item_description","Table.line_amount","assessable_value","digital_signature","invoice_header"]', NULL, NULL, NULL, 0, N'case')
INSERT [dbo].[button_definition] ([id], [button_id], [text], [enable], [color], [confirmation], [confirmation_message], [navigate_back], [fields_required], [fields_not_required], [compare_tabs], [type], [api], [level]) VALUES (11, N'Decision Tree', N'Decision Tree', 1, N'#24a0ed', 0, N'', 0, NULL, NULL, NULL, NULL, 1, N'case')
INSERT [dbo].[button_definition] ([id], [button_id], [text], [enable], [color], [confirmation], [confirmation_message], [navigate_back], [fields_required], [fields_not_required], [compare_tabs], [type], [api], [level]) VALUES (12, N'Approve2', N'Approve', 0, N'#ffffff', 0, N'', 1, N'["invoice_number","invoice_date","vendor_name","client_name","vendor_pan","client_pan","address_of_vendor","address_of_client","non_resident_vendors","currency","total_value","bank_name","bank_account_number","ifsc_code","Table.item_description","Table.line_amount","assessable_value","digital_signature","gl_codes","credit_gl_code","invoice_header","tds"]', NULL, NULL, NULL, NULL, N'case')
SET IDENTITY_INSERT [dbo].[button_definition] OFF
SET IDENTITY_INSERT [dbo].[button_function_mapping] ON 

INSERT [dbo].[button_function_mapping] ([id], [button_id], [function_id]) VALUES (10, 4, 5)
INSERT [dbo].[button_function_mapping] ([id], [button_id], [function_id]) VALUES (12, 1, 5)
INSERT [dbo].[button_function_mapping] ([id], [button_id], [function_id]) VALUES (13, 1, 1)
INSERT [dbo].[button_function_mapping] ([id], [button_id], [function_id]) VALUES (14, 2, 5)
INSERT [dbo].[button_function_mapping] ([id], [button_id], [function_id]) VALUES (15, 3, 5)
INSERT [dbo].[button_function_mapping] ([id], [button_id], [function_id]) VALUES (16, 3, 1)
INSERT [dbo].[button_function_mapping] ([id], [button_id], [function_id]) VALUES (17, 6, 5)
INSERT [dbo].[button_function_mapping] ([id], [button_id], [function_id]) VALUES (18, 6, 1)
INSERT [dbo].[button_function_mapping] ([id], [button_id], [function_id]) VALUES (19, 7, 5)
INSERT [dbo].[button_function_mapping] ([id], [button_id], [function_id]) VALUES (21, 8, 5)
INSERT [dbo].[button_function_mapping] ([id], [button_id], [function_id]) VALUES (22, 8, 1)
INSERT [dbo].[button_function_mapping] ([id], [button_id], [function_id]) VALUES (23, 9, 5)
INSERT [dbo].[button_function_mapping] ([id], [button_id], [function_id]) VALUES (24, 9, 1)
INSERT [dbo].[button_function_mapping] ([id], [button_id], [function_id]) VALUES (25, 10, 5)
INSERT [dbo].[button_function_mapping] ([id], [button_id], [function_id]) VALUES (26, 10, 2)
INSERT [dbo].[button_function_mapping] ([id], [button_id], [function_id]) VALUES (27, 4, 2)
INSERT [dbo].[button_function_mapping] ([id], [button_id], [function_id]) VALUES (28, 11, 6)
INSERT [dbo].[button_function_mapping] ([id], [button_id], [function_id]) VALUES (30, 7, 7)
INSERT [dbo].[button_function_mapping] ([id], [button_id], [function_id]) VALUES (31, 7, 2)
INSERT [dbo].[button_function_mapping] ([id], [button_id], [function_id]) VALUES (32, 12, 5)
INSERT [dbo].[button_function_mapping] ([id], [button_id], [function_id]) VALUES (33, 4, 1)
INSERT [dbo].[button_function_mapping] ([id], [button_id], [function_id]) VALUES (34, 12, 1)
INSERT [dbo].[button_function_mapping] ([id], [button_id], [function_id]) VALUES (35, 10, 1)
SET IDENTITY_INSERT [dbo].[button_function_mapping] OFF
SET IDENTITY_INSERT [dbo].[button_functions] ON 

INSERT [dbo].[button_functions] ([id], [route], [type], [parameters], [api_id], [in_progress_message], [failure_message], [success_message]) VALUES (1, N'update_queue', N'produce', N'case_id,queue,fields', NULL, N'Updating queue', N'Failed to update queue', N'Successfully updated queue')
INSERT [dbo].[button_functions] ([id], [route], [type], [parameters], [api_id], [in_progress_message], [failure_message], [success_message]) VALUES (2, N'run_business_rule', N'produce', N'case_id,stage,fields', NULL, N'Applying business rules', N'Failed to apply business rules', N'Successfully applied business rules')
INSERT [dbo].[button_functions] ([id], [route], [type], [parameters], [api_id], [in_progress_message], [failure_message], [success_message]) VALUES (5, N'save_changes', N'produce', N'case_id,fields,ui_crop_items', NULL, N'Saving changes', N'Failed to save changes', N'Successfully saved changes')
INSERT [dbo].[button_functions] ([id], [route], [type], [parameters], [api_id], [in_progress_message], [failure_message], [success_message]) VALUES (6, N'show_decision_tree', N'api', N'case_id', NULL, NULL, NULL, NULL)
INSERT [dbo].[button_functions] ([id], [route], [type], [parameters], [api_id], [in_progress_message], [failure_message], [success_message]) VALUES (7, N'process_time', N'produce', N'case_id', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[button_functions] OFF
SET IDENTITY_INSERT [dbo].[column_definition] ON 

INSERT [dbo].[column_definition] ([id], [column_name], [label_key], [date], [source]) VALUES (1, N'case_id', N'Case ID', 0, N'process_queue')
INSERT [dbo].[column_definition] ([id], [column_name], [label_key], [date], [source]) VALUES (2, N'file_name', N'File Name', 0, N'process_queue')
INSERT [dbo].[column_definition] ([id], [column_name], [label_key], [date], [source]) VALUES (3, N'created_date', N'Created Date', 1, N'process_queue')
INSERT [dbo].[column_definition] ([id], [column_name], [label_key], [date], [source]) VALUES (4, N'last_updated_by', N'Last Modified By', 0, N'process_queue')
INSERT [dbo].[column_definition] ([id], [column_name], [label_key], [date], [source]) VALUES (5, N'source_of_invoice', N'Client Name', 0, N'process_queue')
INSERT [dbo].[column_definition] ([id], [column_name], [label_key], [date], [source]) VALUES (6, N'vendor_name', N'Vendor Name', 0, N'ocr')
INSERT [dbo].[column_definition] ([id], [column_name], [label_key], [date], [source]) VALUES (7, N'type', N'Type', 0, N'ocr')
INSERT [dbo].[column_definition] ([id], [column_name], [label_key], [date], [source]) VALUES (8, N'status', N'Status', 0, N'process_queue')
INSERT [dbo].[column_definition] ([id], [column_name], [label_key], [date], [source]) VALUES (9, N'last_updated', N'Last Modified Date', 0, N'process_queue')
SET IDENTITY_INSERT [dbo].[column_definition] OFF
SET IDENTITY_INSERT [dbo].[dropdown_definition] ON 

INSERT [dbo].[dropdown_definition] ([id], [field_id], [unique_name], [dropdown_option], [value], [linked_field]) VALUES (3, 4, N'Internet Data service India Pvt Ltd', N'Internet Data service India Pvt Ltd', NULL, NULL)
INSERT [dbo].[dropdown_definition] ([id], [field_id], [unique_name], [dropdown_option], [value], [linked_field]) VALUES (4, 4, N'Facebook India Online Services Pvt Ltd', N'Facebook India Online Services Pvt Ltd', NULL, NULL)
INSERT [dbo].[dropdown_definition] ([id], [field_id], [unique_name], [dropdown_option], [value], [linked_field]) VALUES (5, 4, N'Bloomberg Data Services (India) Pvt Ltd', N'Bloomberg Data Services (India) Pvt Ltd', NULL, NULL)
INSERT [dbo].[dropdown_definition] ([id], [field_id], [unique_name], [dropdown_option], [value], [linked_field]) VALUES (6, 4, N'Stratasys', N'Stratasys', NULL, NULL)
INSERT [dbo].[dropdown_definition] ([id], [field_id], [unique_name], [dropdown_option], [value], [linked_field]) VALUES (7, 4, N'Rockstar Interactive India LLP', N'Rockstar Interactive India LLP', NULL, NULL)
INSERT [dbo].[dropdown_definition] ([id], [field_id], [unique_name], [dropdown_option], [value], [linked_field]) VALUES (8, 4, N'Net gear', N'Net gear', NULL, NULL)
INSERT [dbo].[dropdown_definition] ([id], [field_id], [unique_name], [dropdown_option], [value], [linked_field]) VALUES (9, 53, N'Yes', N'Yes', NULL, NULL)
INSERT [dbo].[dropdown_definition] ([id], [field_id], [unique_name], [dropdown_option], [value], [linked_field]) VALUES (10, 53, N'No', N'No', NULL, NULL)
INSERT [dbo].[dropdown_definition] ([id], [field_id], [unique_name], [dropdown_option], [value], [linked_field]) VALUES (11, 4, N'Azul System India Private Limited', N'Azul System India Private Limited', NULL, NULL)
INSERT [dbo].[dropdown_definition] ([id], [field_id], [unique_name], [dropdown_option], [value], [linked_field]) VALUES (12, 40, N'Yes', N'Yes', NULL, NULL)
INSERT [dbo].[dropdown_definition] ([id], [field_id], [unique_name], [dropdown_option], [value], [linked_field]) VALUES (13, 40, N'No', N'No', NULL, NULL)
INSERT [dbo].[dropdown_definition] ([id], [field_id], [unique_name], [dropdown_option], [value], [linked_field]) VALUES (14, 10, N'INR', N'INR', NULL, NULL)
INSERT [dbo].[dropdown_definition] ([id], [field_id], [unique_name], [dropdown_option], [value], [linked_field]) VALUES (15, 10, N'USD', N'USD', NULL, NULL)
INSERT [dbo].[dropdown_definition] ([id], [field_id], [unique_name], [dropdown_option], [value], [linked_field]) VALUES (16, 10, N'Pound', N'Pound', NULL, NULL)
SET IDENTITY_INSERT [dbo].[dropdown_definition] OFF
SET IDENTITY_INSERT [dbo].[field_definition] ON 

INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (1, N'Invoice Number', N'invoice_number', N'2,3,4,7,8,13', 1, 1, 2, N'2,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (2, N'Invoice Date', N'invoice_date', N'2,3,4,7,8,13', 2, 1, 2, N'2,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', N'%d-%m-%Y')
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (3, N'Vendor Name', N'vendor_name', N'2,3,4,7,8,13', 3, 1, 2, N'2,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (4, N'Client Name', N'client_name', N'2,3,4,7,8', 4, 1, 2, N'2,4,7,8,13', 1, N'dropdown', 1, N'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (5, N'Vendor PAN', N'vendor_pan', N'2,3,4,7,8,13', 7, 1, 2, N'2,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[a-zA-Z0-9]{0,10}$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (6, N'Client PAN', N'client_pan', N'2,3,4,7,8,13', 8, 1, 2, N'2,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[a-zA-Z0-9]{0,10}$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (7, N'Address of Vendor', N'address_of_vendor', N'2,3,4,7,8,13', 11, 1, 2, N'2,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (8, N'Address of Client', N'address_of_client', N'2,3,4,7,8,13', 12, 1, 2, N'2,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (9, N'Non Resident vendors', N'non_resident_vendors', N'2,3,4,7,8', 20, 1, 2, N'2,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[a-zA-Z0-9]{0,3}$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (10, N'Currency', N'currency', N'2,3,4,7,8,13', 21, 0, 2, N'2,4,7,8,13', 1, N'dropdown', 1, N'string', 0, 10000, N'^[a-zA-Z0-9]*$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (11, N'Total value', N'total_value', N'2,3,4,7,8,13', 13, 1, 2, N'2,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[0-9.,]*$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (12, N'Bank Name', N'bank_name', N'2,3,4,7,8', 15, 1, 2, N'2,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[a-zA-Z0-9]*$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (13, N'Bank Account Number', N'bank_account_number', N'2,3,4,7,8,13', 16, 1, 2, N'2,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (14, N'IFSC Code', N'ifsc_code', N'2,3,4,7,8,13', 17, 1, 2, N'2,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[a-zA-Z0-9]*$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (15, N'Place of Supply', N'place_of_supply', N'2,3,4,7,8,13', 17, 0, 5, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (16, N'Item Description', N'Table_item_description', N'', 18, 1, 2, N'2,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (17, N'Item Quantity', N'Table_item_quantity', N'', 25, 0, 2, N'2,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[0-9.]*$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (19, N'HSN/SAC', N'hsn/sac', N'2,3,4,7,8,13', 19, 0, 2, N'2,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[0-9.]*$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (20, N'Vendor GSTIN', N'vendor_gstin', N'2,3,4,7,8,13', 5, 0, 2, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[a-zA-Z0-9]{0,15}$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (21, N'Client GSTIN', N'client_gstin', N'2,3,4,7,8,13', 6, 0, 2, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[a-zA-Z0-9]{0,15}$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (22, N'GST/SGST Rate(%)', N'gst/sgst_rate', N'2,3,4,7,8', 22, 0, 5, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[0-9.]*$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (23, N'GST/CGST Rate(%)', N'gst/cgst_rate', N'2,3,4,7,8', 23, 0, 5, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[0-9.]*$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (24, N'GST/IGST Rate(%)', N'gst/igst_rate', N'2,3,4,7,8', 24, 0, 5, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[0-9.]*$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (25, N'GST/SGST Amount', N'gst/sgst_amount', N'2,3,4,7,8,13', 25, 0, 5, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[0-9.,]*$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (26, N'GST/CGST Amount', N'gst/cgst_amount', N'2,3,4,7,8,13', 26, 0, 5, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[0-9.,]*$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (27, N'GST/IGST Amount', N'gst/igst_amount', N'2,3,4,7,8,13', 27, 0, 5, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[0-9.,]*$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (28, N'GST/SGST RCM Amount', N'gst/sgst_rcm_amount', N'2,3,4,7,8', 29, 0, 5, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[0-9.,]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (29, N'GST/CGST RCM Amount', N'gst/cgst_rcm_amount', N'2,3,4,7,8', 30, 0, 5, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[0-9.,]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (30, N'GST/IGST RCM Amount', N'gst/igst_rcm_amount', N'2,3,4,7,8', 31, 0, 5, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[0-9.,]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (31, N'GST/SGST ITC Amount', N'gst/sgst_itc_amount', N'2,3,4,7,8', 32, 0, 5, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[0-9.,]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (32, N'GST/CGST ITC Amount', N'gst/cgst_itc_amount', N'2,3,4,7,8', 33, 0, 5, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[0-9.,]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (33, N'GST/IGST ITC Amount', N'gst/igst_itc_amount', N'2,3,4,7,8', 34, 0, 5, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[0-9.,]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (34, N'TDS Rate(%)', N'tds_rate', N'2,3,4,7,8', 41, 0, 6, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[0-9.]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (35, N'TDS Amount', N'tds_amount', N'2,3,4,7,8', 42, 0, 6, N'3', 1, N'Text Field', 0, N'string', 0, 10000, N'^[0-9.,]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (36, N'Line Amount', N'Table_line_amount', N'', 28, 1, 2, N'2,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[0-9.,]*$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (37, N'TDS Section/Rule', N'tds_section/rule', N'2,3,4,7,8', 43, 0, 6, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[a-zA-Z0-9]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (39, N'Assessable Value', N'assessable_value', N'2,3,4,7,8,13', 14, 1, 2, N'2,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[0-9.,]*$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (40, N'Digital Signature', N'digital_signature', N'2,3,4,7,8', 23, 1, 2, N'2,4,7,8,13', 1, N'dropdown', 1, N'string', 0, 10000, N'^[a-zA-Z0-9]{0,3}$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (41, N'Validation Comments', N'comments', N'2,3,4,7,8', 58, 0, 8, N'2,4,7,8,13', 1, N'textarea', 0, N'string', 0, 10000, NULL, 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (42, N'Expense Account (Debit)', N'gl_codes', N'2,3,4,7,8', 47, 1, 7, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[a-zA-Z0-9.]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (43, N'Ledger', N'ledger', N'', 48, 0, 7, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (44, N'ITC Account Debit1', N'debit_gl_code', N'2,3,4,7,8', 49, 0, 7, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[a-zA-Z0-9.]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (45, N'Vendor Account (Credit)', N'credit_gl_code', N'2,3,4,7,8', 50, 1, 7, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[a-zA-Z0-9.]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (46, N'Sub Group (If requires)', N'sub_group', N'', 51, 0, 7, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (47, N'Group', N'group', N'', 52, 0, 7, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (48, N'Sub Head', N'sub_head', N'', 53, 0, 7, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (49, N'SEZ', N'sez', N'', 35, 0, 5, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[a-zA-Z0-9]{0,3}$', 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (50, N'LTD Applicability', N'ltd_applicability', N'2,3,4,7,8', 44, 0, 6, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[a-zA-Z0-9]{0,3}$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (51, N'LTD Amount', N'ltd_amount', N'2,3,4,7,8', 45, 0, 6, N'3', 1, N'Text Field', 0, N'string', 0, 10000, N'^[0-9.,]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (52, N'Invoice Header', N'invoice_header', N'2,3,4,7,8,13', 22, 1, 2, N'2,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (53, N'TDS', N'tds', N'2,3,4,7,8', 46, 1, 6, N'2,3,4,7,8,13', 1, N'dropdown', 1, N'string', 0, 10000, N'', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (54, N'Fx Rate', N'corrency_conversion', N'2,3,4,7,8', 24, 0, 2, N'2,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[0-9.]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (55, N'TDS Account (Credit)', N'tds_gl_account', N'2,3,4,7,8', 54, 0, 7, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[a-zA-Z0-9.]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (56, N'Remarks For Hold', N'remarks', N'2,3,4,7', 59, 1, 8, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, NULL, 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (57, N'Value in INR', N'value_in_inr', N'2,3,4,7,8', 25, 0, 2, N'', 1, N'Text Field', 0, N'string', 0, 10000, N'^[0-9.,]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (58, N'RCM/CGST Liability Account', N'rcm/cgst_liability_account', N'2,3,4,7,8', 55, 0, 7, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[a-zA-Z0-9.]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (59, N'RCM/SGST Liability Account', N'rcm/sgst_liability_account', N'2,3,4,7,8', 56, 0, 7, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[a-zA-Z0-9.]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (60, N'Vendor Client Location Same', N'vendor_client_location_same', N'', 36, 0, 5, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (61, N'Summary', N'popup_message', N'2,3,4,7,8', 60, 0, 8, N'2,4,7,8,13', 1, N'textarea', 0, N'string', 0, 10000, NULL, 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (62, N'ITC Account Debit2', N'debit_gl_code2', N'2,3,4,7,8', 67, 0, 7, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, N'^[a-zA-Z0-9.]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (64, N'GST Code', N'gst_code', N'2,3,4,7,8', 37, 0, 5, N'3', 1, N'Text Field', 0, N'string', 0, 10000, N'^[a-zA-Z0-9.]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (65, N'RCM Code', N'rcm_code', N'2,3,4,7,8', 38, 0, 5, N'3', 1, N'Text Field', 0, N'string', 0, 10000, N'^[a-zA-Z0-9.]*$', 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (66, N'Client Name', N'client_name_invoice', N'', 26, 0, 2, N'2,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (67, N'Type', N'type', N'', 27, 0, 2, N'2,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, NULL, 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (68, N'Rejection Comments', N'rejection_comment', N'7', 61, 0, 8, N'2,3,4,7,8,13', 1, N'textarea', 0, N'string', 0, 10000, NULL, 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (69, N'Vendor Tax Status', N'vendor_tax_status', N'2,3,4,7,8', 39, 0, 5, N'3', 1, N'Text Field', 0, N'string', 0, 10000, NULL, 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (70, N'Client Tax Status', N'client_tax_status', N'2,3,4,7,8', 40, 0, 5, N'3', 1, N'Text Field', 0, N'string', 0, 10000, NULL, 0, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (71, N'Vendor Pincode', N'vendor_pincode', N'2,3,4,7,8,13', 9, 1, 2, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
INSERT [dbo].[field_definition] ([id], [display_name], [unique_name], [queue_field_mapping], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [consider_field_for_export], [configurable], [default_value], [static_field], [group_name], [training_flag], [field_order_mapping], [tag], [pattern_conversion]) VALUES (72, N'Client Pincode', N'client_pincode', N'2,3,4,7,8,13', 10, 1, 2, N'2,3,4,7,8,13', 1, N'Text Field', 0, N'string', 0, 10000, NULL, 1, NULL, 100, 0, NULL, NULL, NULL, NULL, NULL, NULL, N'', NULL)
SET IDENTITY_INSERT [dbo].[field_definition] OFF
SET IDENTITY_INSERT [dbo].[file_workflow] ON 

INSERT [dbo].[file_workflow] ([id], [source], [target]) VALUES (1, N'template_exceptions', N'["maker", "validation","rejection"]')
INSERT [dbo].[file_workflow] ([id], [source], [target]) VALUES (2, N'maker', N'["validation", "checker", "rejection"]')
INSERT [dbo].[file_workflow] ([id], [source], [target]) VALUES (3, N'checker', N'["validation","maker", "approved","rejection"]')
INSERT [dbo].[file_workflow] ([id], [source], [target]) VALUES (4, N'validation', N'["checker","approved","rejection"]')
INSERT [dbo].[file_workflow] ([id], [source], [target]) VALUES (5, N'approved', N'[]')
INSERT [dbo].[file_workflow] ([id], [source], [target]) VALUES (6, N'rejection', N'["maker"]')
SET IDENTITY_INSERT [dbo].[file_workflow] OFF
SET IDENTITY_INSERT [dbo].[queue_column_mapping] ON 

INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (2, 2, 2, 3)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (3, 2, 3, 4)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (4, 2, 4, 6)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (5, 2, 5, 1)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (7, 3, 2, 3)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (8, 3, 3, 4)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (9, 3, 4, 6)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (10, 3, 5, 1)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (12, 4, 2, 3)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (13, 4, 3, 4)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (14, 4, 4, 6)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (15, 4, 5, 1)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (27, 7, 2, 3)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (28, 7, 3, 4)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (29, 7, 4, 6)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (30, 7, 5, 1)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (32, 8, 2, 2)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (33, 8, 3, 4)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (34, 8, 4, 6)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (35, 8, 5, 1)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (47, 13, 2, 1)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (48, 13, 3, 4)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (50, 13, 5, 2)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (52, 3, 6, 2)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (56, 7, 6, 2)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (57, 8, 6, 2)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (60, 2, 7, 8)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (61, 3, 7, 8)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (62, 4, 7, 8)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (63, 7, 7, 8)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (64, 8, 7, 8)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (65, 2, 8, 7)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (66, 3, 8, 7)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (67, 4, 8, 7)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (68, 8, 8, 7)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (69, 2, 9, 5)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (70, 3, 9, 5)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (71, 8, 9, 5)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (72, 4, 6, 2)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (74, 8, 1, 9)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (75, 2, 1, 9)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (76, 3, 1, 9)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (77, 4, 1, 9)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (78, 7, 1, 9)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (79, 13, 1, 9)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (80, 2, 6, 2)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (81, 4, 9, 5)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (82, 7, 9, 5)
INSERT [dbo].[queue_column_mapping] ([id], [queue_id], [column_id], [column_order]) VALUES (83, 7, 8, 7)
SET IDENTITY_INSERT [dbo].[queue_column_mapping] OFF
SET IDENTITY_INSERT [dbo].[queue_definition] ON 

INSERT [dbo].[queue_definition] ([id], [name], [unique_name], [default_flow], [level], [parent], [timer], [type], [fields_disable], [queue_order], [workflow], [is_snapshot], [sort_by], [file_category], [static_filters]) VALUES (1, N'Stats', N'stats', NULL, 1, NULL, 0, N'stats', 0, 1, NULL, 0, N'[{"ocr.type.keyword": "asc"},{"process_queue.last_updated": "desc"}]', NULL, N'')
INSERT [dbo].[queue_definition] ([id], [name], [unique_name], [default_flow], [level], [parent], [timer], [type], [fields_disable], [queue_order], [workflow], [is_snapshot], [sort_by], [file_category], [static_filters]) VALUES (2, N'Maker', N'maker', 2, 1, NULL, 1, N'field', 0, 2, NULL, 0, N'[{"ocr.type.keyword": "asc"},{"process_queue.last_updated": "desc"}]', NULL, N'')
INSERT [dbo].[queue_definition] ([id], [name], [unique_name], [default_flow], [level], [parent], [timer], [type], [fields_disable], [queue_order], [workflow], [is_snapshot], [sort_by], [file_category], [static_filters]) VALUES (3, N'Checker', N'checker', NULL, 1, NULL, 1, N'field', 1, 4, NULL, 0, N'[{"ocr.type.keyword": "asc"},{"process_queue.last_updated": "desc"}]', NULL, N'')
INSERT [dbo].[queue_definition] ([id], [name], [unique_name], [default_flow], [level], [parent], [timer], [type], [fields_disable], [queue_order], [workflow], [is_snapshot], [sort_by], [file_category], [static_filters]) VALUES (4, N'Approved', N'approved', 3, 1, NULL, 1, N'field', 1, 10, NULL, 0, N'[{"ocr.type.keyword": "asc"},{"process_queue.last_updated": "desc"}]', NULL, N'')
INSERT [dbo].[queue_definition] ([id], [name], [unique_name], [default_flow], [level], [parent], [timer], [type], [fields_disable], [queue_order], [workflow], [is_snapshot], [sort_by], [file_category], [static_filters]) VALUES (7, N'Rejection', N'rejection', 3, 1, NULL, 1, N'field', 1, 9, N'training', 0, N'[{"ocr.type.keyword": "asc"},{"process_queue.last_updated": "desc"}]', NULL, N'')
INSERT [dbo].[queue_definition] ([id], [name], [unique_name], [default_flow], [level], [parent], [timer], [type], [fields_disable], [queue_order], [workflow], [is_snapshot], [sort_by], [file_category], [static_filters]) VALUES (8, N'Validation', N'validation', NULL, 1, NULL, 1, N'field', 0, 8, NULL, 0, N'[{"ocr.type.keyword": "asc"},{"process_queue.last_updated": "desc"}]', NULL, N'')
INSERT [dbo].[queue_definition] ([id], [name], [unique_name], [default_flow], [level], [parent], [timer], [type], [fields_disable], [queue_order], [workflow], [is_snapshot], [sort_by], [file_category], [static_filters]) VALUES (12, N'Reports', N'reports', NULL, 1, NULL, 0, N'reports', 0, 12, NULL, 0, N'[{"ocr.type.keyword": "asc"},{"process_queue.last_updated": "desc"}]', NULL, N'')
INSERT [dbo].[queue_definition] ([id], [name], [unique_name], [default_flow], [level], [parent], [timer], [type], [fields_disable], [queue_order], [workflow], [is_snapshot], [sort_by], [file_category], [static_filters]) VALUES (13, N'Template Exceptions', N'template_exceptions', 1, 1, NULL, 1, N'train', 0, 13, NULL, 0, N'[{"ocr.type.keyword": "asc"},{"process_queue.last_updated": "desc"}]', NULL, N'')
SET IDENTITY_INSERT [dbo].[queue_definition] OFF
SET IDENTITY_INSERT [dbo].[tab_definition] ON 

INSERT [dbo].[tab_definition] ([id], [text], [color], [type], [source], [table_tab]) VALUES (2, N'Invoice', N'#00ff00', N'ocr', N'ocr', 1)
INSERT [dbo].[tab_definition] ([id], [text], [color], [type], [source], [table_tab]) VALUES (5, N'GST', N'#00ff00', N'ocr', N'ocr', 0)
INSERT [dbo].[tab_definition] ([id], [text], [color], [type], [source], [table_tab]) VALUES (6, N'TDS', N'#00ff00', N'ocr', N'ocr', 0)
INSERT [dbo].[tab_definition] ([id], [text], [color], [type], [source], [table_tab]) VALUES (7, N'GL Code', N'#00ff00', N'ocr', N'ocr', 0)
INSERT [dbo].[tab_definition] ([id], [text], [color], [type], [source], [table_tab]) VALUES (8, N'Comments', N'#00ff00', N'ocr', N'ocr', 0)
SET IDENTITY_INSERT [dbo].[tab_definition] OFF
SET IDENTITY_INSERT [dbo].[tab_dropdown] ON 

INSERT [dbo].[tab_dropdown] ([id], [unique_name], [display_name], [value]) VALUES (1, N'units_applied', N'Crores', N'10000000')
INSERT [dbo].[tab_dropdown] ([id], [unique_name], [display_name], [value]) VALUES (2, N'units_applied', N'Lakhs', N'100000')
INSERT [dbo].[tab_dropdown] ([id], [unique_name], [display_name], [value]) VALUES (3, N'units_applied', N'Thousands', N'1000')
INSERT [dbo].[tab_dropdown] ([id], [unique_name], [display_name], [value]) VALUES (4, N'units_applied', N'Unit Value', N'1')
SET IDENTITY_INSERT [dbo].[tab_dropdown] OFF
SET IDENTITY_INSERT [dbo].[tab_properties] ON 

INSERT [dbo].[tab_properties] ([id], [display_name], [unique_name], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [static_field]) VALUES (1, N'Units Applied', N'units_applied', 1, 1, 2, N'5,6,7,8', 0, N'dropdown', 1, N'string', 0, 10000, NULL, 0, NULL, 100, 0)
INSERT [dbo].[tab_properties] ([id], [display_name], [unique_name], [field_order], [mandatory], [tab_id], [editable], [outline], [type], [is_dropdown], [data_type], [min_length], [max_length], [pattern], [crop], [max_date], [confidence_threshold], [static_field]) VALUES (2, N'Currency', N'currency', 1, 1, 2, N'5,6,7,8', 0, N'text', 0, N'string', 0, 10000, NULL, 0, NULL, 100, 0)
SET IDENTITY_INSERT [dbo].[tab_properties] OFF
SET IDENTITY_INSERT [dbo].[unit_dropdown] ON 

INSERT [dbo].[unit_dropdown] ([id], [display_name], [unit_value]) VALUES (1, N'Crores', 10000000)
INSERT [dbo].[unit_dropdown] ([id], [display_name], [unit_value]) VALUES (2, N'Lakhs', 100000)
INSERT [dbo].[unit_dropdown] ([id], [display_name], [unit_value]) VALUES (3, N'Thousands', 1000)
INSERT [dbo].[unit_dropdown] ([id], [display_name], [unit_value]) VALUES (4, N'Unit Value', 1)
SET IDENTITY_INSERT [dbo].[unit_dropdown] OFF
SET IDENTITY_INSERT [dbo].[workflow_definition] ON 

INSERT [dbo].[workflow_definition] ([id], [workflow_id], [queue_id], [trigger_type], [button_id], [move_to], [rule_group], [workflow_button], [email_template], [draft_template]) VALUES (1, 1, 2, N'', 4, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[workflow_definition] ([id], [workflow_id], [queue_id], [trigger_type], [button_id], [move_to], [rule_group], [workflow_button], [email_template], [draft_template]) VALUES (2, 2, 2, N'', 1, 7, NULL, NULL, NULL, NULL)
INSERT [dbo].[workflow_definition] ([id], [workflow_id], [queue_id], [trigger_type], [button_id], [move_to], [rule_group], [workflow_button], [email_template], [draft_template]) VALUES (3, 3, 2, N'', 6, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[workflow_definition] ([id], [workflow_id], [queue_id], [trigger_type], [button_id], [move_to], [rule_group], [workflow_button], [email_template], [draft_template]) VALUES (4, 4, 2, N'', 2, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[workflow_definition] ([id], [workflow_id], [queue_id], [trigger_type], [button_id], [move_to], [rule_group], [workflow_button], [email_template], [draft_template]) VALUES (5, 5, 3, N'', 7, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[workflow_definition] ([id], [workflow_id], [queue_id], [trigger_type], [button_id], [move_to], [rule_group], [workflow_button], [email_template], [draft_template]) VALUES (6, 6, 3, N'', 3, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[workflow_definition] ([id], [workflow_id], [queue_id], [trigger_type], [button_id], [move_to], [rule_group], [workflow_button], [email_template], [draft_template]) VALUES (7, 7, 3, N'', 1, 7, NULL, NULL, NULL, NULL)
INSERT [dbo].[workflow_definition] ([id], [workflow_id], [queue_id], [trigger_type], [button_id], [move_to], [rule_group], [workflow_button], [email_template], [draft_template]) VALUES (8, 8, 3, N'', 6, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[workflow_definition] ([id], [workflow_id], [queue_id], [trigger_type], [button_id], [move_to], [rule_group], [workflow_button], [email_template], [draft_template]) VALUES (9, 9, 3, N'', 2, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[workflow_definition] ([id], [workflow_id], [queue_id], [trigger_type], [button_id], [move_to], [rule_group], [workflow_button], [email_template], [draft_template]) VALUES (10, 10, 8, N'', 12, 3, NULL, NULL, NULL, NULL)
INSERT [dbo].[workflow_definition] ([id], [workflow_id], [queue_id], [trigger_type], [button_id], [move_to], [rule_group], [workflow_button], [email_template], [draft_template]) VALUES (16, 16, 8, N'', 10, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[workflow_definition] ([id], [workflow_id], [queue_id], [trigger_type], [button_id], [move_to], [rule_group], [workflow_button], [email_template], [draft_template]) VALUES (17, 17, 8, N'', 11, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[workflow_definition] ([id], [workflow_id], [queue_id], [trigger_type], [button_id], [move_to], [rule_group], [workflow_button], [email_template], [draft_template]) VALUES (18, 18, 13, N'', NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[workflow_definition] ([id], [workflow_id], [queue_id], [trigger_type], [button_id], [move_to], [rule_group], [workflow_button], [email_template], [draft_template]) VALUES (19, 19, 7, N'', 3, 2, NULL, NULL, NULL, NULL)
INSERT [dbo].[workflow_definition] ([id], [workflow_id], [queue_id], [trigger_type], [button_id], [move_to], [rule_group], [workflow_button], [email_template], [draft_template]) VALUES (20, 20, 8, N'', 2, 8, NULL, NULL, NULL, NULL)
INSERT [dbo].[workflow_definition] ([id], [workflow_id], [queue_id], [trigger_type], [button_id], [move_to], [rule_group], [workflow_button], [email_template], [draft_template]) VALUES (21, 21, 8, N'', 1, 7, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[workflow_definition] OFF
SET IDENTITY_INSERT [dbo].[workflow_stages] ON 

INSERT [dbo].[workflow_stages] ([id], [stage]) VALUES (1, N'exception')
INSERT [dbo].[workflow_stages] ([id], [stage]) VALUES (2, N'detection')
INSERT [dbo].[workflow_stages] ([id], [stage]) VALUES (3, N'final')
SET IDENTITY_INSERT [dbo].[workflow_stages] OFF
ALTER TABLE [dbo].[ab_ace_br_mappings] ADD  DEFAULT ('ocr') FOR [ace_table]
GO
ALTER TABLE [dbo].[ab_ace_br_mappings] ADD  DEFAULT ('extraction') FOR [ace_database]
GO
ALTER TABLE [dbo].[button_definition] ADD  DEFAULT (NULL) FOR [button_id]
GO
ALTER TABLE [dbo].[button_definition] ADD  DEFAULT ('1') FOR [enable]
GO
ALTER TABLE [dbo].[button_definition] ADD  DEFAULT ('0') FOR [confirmation]
GO
ALTER TABLE [dbo].[button_definition] ADD  DEFAULT ('Are you sure you want to continue?') FOR [confirmation_message]
GO
ALTER TABLE [dbo].[button_definition] ADD  DEFAULT ('1') FOR [navigate_back]
GO
ALTER TABLE [dbo].[button_definition] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[button_definition] ADD  DEFAULT (NULL) FOR [api]
GO
ALTER TABLE [dbo].[button_definition] ADD  DEFAULT ('case') FOR [level]
GO
ALTER TABLE [dbo].[button_functions] ADD  DEFAULT ('produce') FOR [type]
GO
ALTER TABLE [dbo].[button_functions] ADD  DEFAULT (NULL) FOR [api_id]
GO
ALTER TABLE [dbo].[column_definition] ADD  DEFAULT (NULL) FOR [date]
GO
ALTER TABLE [dbo].[column_definition] ADD  DEFAULT (NULL) FOR [source]
GO
ALTER TABLE [dbo].[dropdown_definition] ADD  DEFAULT (NULL) FOR [unique_name]
GO
ALTER TABLE [dbo].[dropdown_definition] ADD  DEFAULT (NULL) FOR [value]
GO
ALTER TABLE [dbo].[dropdown_definition] ADD  DEFAULT (NULL) FOR [linked_field]
GO
ALTER TABLE [dbo].[field_definition] ADD  DEFAULT ('1') FOR [field_order]
GO
ALTER TABLE [dbo].[field_definition] ADD  DEFAULT ('1') FOR [mandatory]
GO
ALTER TABLE [dbo].[field_definition] ADD  DEFAULT (NULL) FOR [tab_id]
GO
ALTER TABLE [dbo].[field_definition] ADD  DEFAULT (NULL) FOR [editable]
GO
ALTER TABLE [dbo].[field_definition] ADD  DEFAULT ('1') FOR [outline]
GO
ALTER TABLE [dbo].[field_definition] ADD  DEFAULT ('Text Field') FOR [type]
GO
ALTER TABLE [dbo].[field_definition] ADD  DEFAULT ('0') FOR [is_dropdown]
GO
ALTER TABLE [dbo].[field_definition] ADD  DEFAULT ('string') FOR [data_type]
GO
ALTER TABLE [dbo].[field_definition] ADD  DEFAULT ('0') FOR [min_length]
GO
ALTER TABLE [dbo].[field_definition] ADD  DEFAULT ('10000') FOR [max_length]
GO
ALTER TABLE [dbo].[field_definition] ADD  DEFAULT ('1') FOR [crop]
GO
ALTER TABLE [dbo].[field_definition] ADD  DEFAULT (NULL) FOR [max_date]
GO
ALTER TABLE [dbo].[field_definition] ADD  DEFAULT ('100') FOR [confidence_threshold]
GO
ALTER TABLE [dbo].[field_definition] ADD  DEFAULT (NULL) FOR [configurable]
GO
ALTER TABLE [dbo].[field_definition] ADD  DEFAULT (NULL) FOR [default_value]
GO
ALTER TABLE [dbo].[field_definition] ADD  DEFAULT (NULL) FOR [static_field]
GO
ALTER TABLE [dbo].[field_definition] ADD  DEFAULT (NULL) FOR [group_name]
GO
ALTER TABLE [dbo].[field_definition] ADD  DEFAULT (NULL) FOR [training_flag]
GO
ALTER TABLE [dbo].[field_definition] ADD  DEFAULT (NULL) FOR [field_order_mapping]
GO
ALTER TABLE [dbo].[field_definition] ADD  DEFAULT (NULL) FOR [pattern_conversion]
GO
ALTER TABLE [dbo].[match_data] ADD  DEFAULT (NULL) FOR [score]
GO
ALTER TABLE [dbo].[ocr_info] ADD  DEFAULT (NULL) FOR [case_id]
GO
ALTER TABLE [dbo].[ocr_info] ADD  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[process_queue] ADD  DEFAULT (NULL) FOR [case_id]
GO
ALTER TABLE [dbo].[process_queue] ADD  DEFAULT (NULL) FOR [queue]
GO
ALTER TABLE [dbo].[process_queue] ADD  DEFAULT (NULL) FOR [fork_ref_value]
GO
ALTER TABLE [dbo].[process_queue] ADD  DEFAULT ('0') FOR [freeze]
GO
ALTER TABLE [dbo].[process_queue] ADD  DEFAULT ('folder') FOR [document_type]
GO
ALTER TABLE [dbo].[process_queue] ADD  DEFAULT (NULL) FOR [status]
GO
ALTER TABLE [dbo].[process_queue] ADD  DEFAULT ('0') FOR [completed_processes]
GO
ALTER TABLE [dbo].[process_queue] ADD  DEFAULT ('0') FOR [total_processes]
GO
ALTER TABLE [dbo].[process_queue] ADD  DEFAULT ('0') FOR [case_lock]
GO
ALTER TABLE [dbo].[process_queue] ADD  DEFAULT ('0') FOR [failure_status]
GO
ALTER TABLE [dbo].[process_queue] ADD  DEFAULT (NULL) FOR [cluster]
GO
ALTER TABLE [dbo].[process_queue] ADD  DEFAULT ('0') FOR [unread_email]
GO
ALTER TABLE [dbo].[process_queue] ADD  DEFAULT ('0') FOR [read_flag]
GO
ALTER TABLE [dbo].[process_queue] ADD  DEFAULT (NULL) FOR [agent]
GO
ALTER TABLE [dbo].[process_queue] ADD  DEFAULT (NULL) FOR [ocr_status]
GO
ALTER TABLE [dbo].[process_queue] ADD  DEFAULT ('00:00:00') FOR [time_spent]
GO
ALTER TABLE [dbo].[process_queue] ADD  DEFAULT (getdate()) FOR [last_updated]
GO
ALTER TABLE [dbo].[process_queue] ADD  DEFAULT (getdate()) FOR [created_date]
GO
ALTER TABLE [dbo].[process_queue] ADD  DEFAULT (NULL) FOR [digitally_signed]
GO
ALTER TABLE [dbo].[queue_column_mapping] ADD  DEFAULT (NULL) FOR [column_order]
GO
ALTER TABLE [dbo].[queue_definition] ADD  DEFAULT (NULL) FOR [default_flow]
GO
ALTER TABLE [dbo].[queue_definition] ADD  DEFAULT (NULL) FOR [parent]
GO
ALTER TABLE [dbo].[queue_definition] ADD  DEFAULT ('1') FOR [timer]
GO
ALTER TABLE [dbo].[queue_definition] ADD  DEFAULT ('field') FOR [type]
GO
ALTER TABLE [dbo].[queue_definition] ADD  DEFAULT (NULL) FOR [workflow]
GO
ALTER TABLE [dbo].[queue_definition] ADD  DEFAULT (NULL) FOR [file_category]
GO
ALTER TABLE [dbo].[screenshot_upload] ADD  DEFAULT (NULL) FOR [agent]
GO
ALTER TABLE [dbo].[screenshot_upload] ADD  DEFAULT ('1') FOR [page_no]
GO
ALTER TABLE [dbo].[screenshot_upload] ADD  DEFAULT ('0') FOR [processed]
GO
ALTER TABLE [dbo].[tab_definition] ADD  DEFAULT ('ocr') FOR [type]
GO
ALTER TABLE [dbo].[tab_definition] ADD  DEFAULT ('ocr') FOR [source]
GO
ALTER TABLE [dbo].[tab_properties] ADD  DEFAULT (NULL) FOR [unique_name]
GO
ALTER TABLE [dbo].[tab_properties] ADD  DEFAULT ('1') FOR [field_order]
GO
ALTER TABLE [dbo].[tab_properties] ADD  DEFAULT ('1') FOR [mandatory]
GO
ALTER TABLE [dbo].[tab_properties] ADD  DEFAULT (NULL) FOR [tab_id]
GO
ALTER TABLE [dbo].[tab_properties] ADD  DEFAULT ('1') FOR [editable]
GO
ALTER TABLE [dbo].[tab_properties] ADD  DEFAULT ('0') FOR [outline]
GO
ALTER TABLE [dbo].[tab_properties] ADD  DEFAULT ('Text Field') FOR [type]
GO
ALTER TABLE [dbo].[tab_properties] ADD  DEFAULT ('0') FOR [is_dropdown]
GO
ALTER TABLE [dbo].[tab_properties] ADD  DEFAULT ('string') FOR [data_type]
GO
ALTER TABLE [dbo].[tab_properties] ADD  DEFAULT ('0') FOR [min_length]
GO
ALTER TABLE [dbo].[tab_properties] ADD  DEFAULT ('10000') FOR [max_length]
GO
ALTER TABLE [dbo].[tab_properties] ADD  DEFAULT ('1') FOR [crop]
GO
ALTER TABLE [dbo].[tab_properties] ADD  DEFAULT (NULL) FOR [max_date]
GO
ALTER TABLE [dbo].[tab_properties] ADD  DEFAULT ('100') FOR [confidence_threshold]
GO
ALTER TABLE [dbo].[tab_properties] ADD  DEFAULT ('0') FOR [static_field]
GO
ALTER TABLE [dbo].[template_detection_config] ADD  DEFAULT (NULL) FOR [sequence]
GO
ALTER TABLE [dbo].[workflow_definition] ADD  DEFAULT (NULL) FOR [queue_id]
GO
ALTER TABLE [dbo].[workflow_definition] ADD  DEFAULT (NULL) FOR [button_id]
GO
ALTER TABLE [dbo].[workflow_definition] ADD  DEFAULT (NULL) FOR [move_to]
GO
ALTER TABLE [dbo].[workflow_definition] ADD  DEFAULT (NULL) FOR [rule_group]
GO
ALTER TABLE [dbo].[workflow_definition] ADD  DEFAULT (NULL) FOR [workflow_button]
GO
ALTER TABLE [dbo].[workflow_definition] ADD  DEFAULT (NULL) FOR [email_template]
GO
ALTER TABLE [dbo].[workflow_definition] ADD  DEFAULT (NULL) FOR [draft_template]
GO
USE [master]
GO
ALTER DATABASE [deloitte.acelive.ai_queues] SET  READ_WRITE 
GO
