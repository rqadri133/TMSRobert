
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/12/2016 21:12:35
-- Generated from EDMX file: C:\Root\RafisPersonals\TestFrameworkPortal\TestFrameworkPortal\TMS.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [TestCaseManagementSystem];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[RegressFileTest]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RegressFileTest];
GO
IF OBJECT_ID(N'[dbo].[TestCase]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TestCase];
GO
IF OBJECT_ID(N'[dbo].[TestCaseAssigned]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TestCaseAssigned];
GO
IF OBJECT_ID(N'[dbo].[TestCycle]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TestCycle];
GO
IF OBJECT_ID(N'[dbo].[TestDataModelFunction]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TestDataModelFunction];
GO
IF OBJECT_ID(N'[dbo].[TestDataNodeAnaylysis]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TestDataNodeAnaylysis];
GO
IF OBJECT_ID(N'[dbo].[TestDataNodeTriggeredEvents]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TestDataNodeTriggeredEvents];
GO
IF OBJECT_ID(N'[dbo].[TestEnvironment]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TestEnvironment];
GO
IF OBJECT_ID(N'[dbo].[TestExpressionInjection]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TestExpressionInjection];
GO
IF OBJECT_ID(N'[dbo].[TestNode]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TestNode];
GO
IF OBJECT_ID(N'[dbo].[TestNodeDetail]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TestNodeDetail];
GO
IF OBJECT_ID(N'[dbo].[TestResultTemplate]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TestResultTemplate];
GO
IF OBJECT_ID(N'[dbo].[TestScenario]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TestScenario];
GO
IF OBJECT_ID(N'[dbo].[TestScript]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TestScript];
GO
IF OBJECT_ID(N'[dbo].[TestScriptParameter]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TestScriptParameter];
GO
IF OBJECT_ID(N'[dbo].[TestScriptParameterType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TestScriptParameterType];
GO
IF OBJECT_ID(N'[dbo].[TestType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TestType];
GO
IF OBJECT_ID(N'[dbo].[User]', 'U') IS NOT NULL
    DROP TABLE [dbo].[User];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'RegressFileTests'
CREATE TABLE [dbo].[RegressFileTests] (
    [RegressFileTestID] uniqueidentifier  NOT NULL,
    [RegressTestFilePathSource] nvarchar(200)  NOT NULL,
    [RegressTestFileDescription] varchar(500)  NULL,
    [CreatedDate] datetime  NOT NULL,
    [CreatedBy] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'TestCases'
CREATE TABLE [dbo].[TestCases] (
    [TestCaseID] uniqueidentifier  NOT NULL,
    [TestCaseDescName] nvarchar(200)  NOT NULL,
    [TestTypeID] varchar(500)  NULL,
    [CreatedDate] datetime  NOT NULL,
    [CreatedBy] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'TestCaseAssigneds'
CREATE TABLE [dbo].[TestCaseAssigneds] (
    [TestCaseAssignedID] uniqueidentifier  NOT NULL,
    [TestCaseID] uniqueidentifier  NOT NULL,
    [TestNodeProfileFileType] varchar(100)  NULL,
    [TestNodeProfileBaseExpression] nvarchar(max)  NULL,
    [CreatedDate] datetime  NOT NULL,
    [CreatedBy] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'TestCycles'
CREATE TABLE [dbo].[TestCycles] (
    [TestCycleID] uniqueidentifier  NOT NULL,
    [TestCaseID] uniqueidentifier  NOT NULL,
    [NextTestCaseID] uniqueidentifier  NOT NULL,
    [CycleStoppedDateTime] datetime  NULL,
    [IsRunning] bit  NULL,
    [CreatedDate] datetime  NOT NULL,
    [CreatedBy] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'TestDataModelFunctions'
CREATE TABLE [dbo].[TestDataModelFunctions] (
    [TestDataModelFunctionID] uniqueidentifier  NOT NULL,
    [TestDataModelFunctionName] nvarchar(max)  NOT NULL,
    [TestModelDataParameterCommaSeparated] nvarchar(max)  NOT NULL,
    [LastExecuted] datetime  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [CreatedBy] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'TestDataNodeAnaylysis'
CREATE TABLE [dbo].[TestDataNodeAnaylysis] (
    [TestDataNodeAnalysisID] uniqueidentifier  NOT NULL,
    [TestDataNodeAnalysisName] nvarchar(100)  NOT NULL,
    [TestNodeStartPointID] uniqueidentifier  NOT NULL,
    [TestNodeEndPointID] uniqueidentifier  NOT NULL,
    [LastExecuted] datetime  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [CreatedBy] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'TestDataNodeTriggeredEvents'
CREATE TABLE [dbo].[TestDataNodeTriggeredEvents] (
    [TestDataNodeTriggeredEventID] uniqueidentifier  NOT NULL,
    [TestDataNodeTriggeredEventName] nvarchar(100)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [CreatedBy] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'TestEnvironments'
CREATE TABLE [dbo].[TestEnvironments] (
    [TestEnvironmentID] uniqueidentifier  NOT NULL,
    [TestEnvironmentName] uniqueidentifier  NOT NULL,
    [ServerConnectionString] nvarchar(2000)  NULL,
    [CreatedDate] datetime  NOT NULL,
    [CreatedBy] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'TestExpressionInjections'
CREATE TABLE [dbo].[TestExpressionInjections] (
    [TestExpressionInjectionID] uniqueidentifier  NOT NULL,
    [ExpressionInjection] uniqueidentifier  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [CreatedBy] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'TestNodes'
CREATE TABLE [dbo].[TestNodes] (
    [TestNodeID] uniqueidentifier  NOT NULL,
    [TestNodeName] uniqueidentifier  NOT NULL,
    [HasChildren] bit  NULL,
    [CreatedDate] datetime  NOT NULL,
    [CreatedBy] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'TestNodeDetails'
CREATE TABLE [dbo].[TestNodeDetails] (
    [TestNodeDetailID] uniqueidentifier  NOT NULL,
    [TestNodeID] uniqueidentifier  NOT NULL,
    [TestChildNodeID] uniqueidentifier  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [CreatedBy] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'TestResultTemplates'
CREATE TABLE [dbo].[TestResultTemplates] (
    [TestResultTemplateID] uniqueidentifier  NOT NULL,
    [TestResultTemmplateURL] uniqueidentifier  NOT NULL,
    [TestTemplateURL] nvarchar(200)  NULL,
    [TestTemplateType] nvarchar(100)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [CreatedBy] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'TestScenarios'
CREATE TABLE [dbo].[TestScenarios] (
    [TestScenarioID] uniqueidentifier  NOT NULL,
    [TestScenarioDesc] uniqueidentifier  NOT NULL,
    [TestScenarioExpression] varchar(1000)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [CreatedBy] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'TestScripts'
CREATE TABLE [dbo].[TestScripts] (
    [TestScriptID] uniqueidentifier  NOT NULL,
    [TestScript1] nvarchar(max)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [CreatedBy] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'TestScriptParameters'
CREATE TABLE [dbo].[TestScriptParameters] (
    [TestScriptParameterID] uniqueidentifier  NOT NULL,
    [TestScriptParamterTypeID] uniqueidentifier  NOT NULL,
    [TestScriptParameterName] nvarchar(200)  NULL,
    [TestScriptParameterValueReal] nvarchar(100)  NULL,
    [TestScriptParameterFakeValue] nvarchar(100)  NULL,
    [CreatedDate] datetime  NOT NULL,
    [CreatedBy] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'TestScriptParameterTypes'
CREATE TABLE [dbo].[TestScriptParameterTypes] (
    [TestScriptParamterTypeID] uniqueidentifier  NOT NULL,
    [TestScriptParameterTypeName] nvarchar(200)  NULL,
    [CreatedDate] datetime  NOT NULL,
    [CreatedBy] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'TestTypes'
CREATE TABLE [dbo].[TestTypes] (
    [TestTypeID] uniqueidentifier  NOT NULL,
    [TestTypeName] nvarchar(200)  NOT NULL,
    [TestTypeDecription] varchar(500)  NULL,
    [CreatedDate] datetime  NOT NULL,
    [CreatedBy] uniqueidentifier  NOT NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [UserID] uniqueidentifier  NOT NULL,
    [LoginName] nvarchar(40)  NOT NULL,
    [PasswordHash] nvarchar(2000)  NOT NULL,
    [EmailAddress] nvarchar(100)  NOT NULL,
    [PhoneNumber] nvarchar(23)  NULL,
    [FirstName] nvarchar(100)  NOT NULL,
    [LastName] nvarchar(100)  NOT NULL,
    [CompanyName] nvarchar(100)  NOT NULL,
    [CompanyWebSite] nvarchar(100)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [RegressFileTestID] in table 'RegressFileTests'
ALTER TABLE [dbo].[RegressFileTests]
ADD CONSTRAINT [PK_RegressFileTests]
    PRIMARY KEY CLUSTERED ([RegressFileTestID] ASC);
GO

-- Creating primary key on [TestCaseID] in table 'TestCases'
ALTER TABLE [dbo].[TestCases]
ADD CONSTRAINT [PK_TestCases]
    PRIMARY KEY CLUSTERED ([TestCaseID] ASC);
GO

-- Creating primary key on [TestCaseAssignedID] in table 'TestCaseAssigneds'
ALTER TABLE [dbo].[TestCaseAssigneds]
ADD CONSTRAINT [PK_TestCaseAssigneds]
    PRIMARY KEY CLUSTERED ([TestCaseAssignedID] ASC);
GO

-- Creating primary key on [TestCycleID] in table 'TestCycles'
ALTER TABLE [dbo].[TestCycles]
ADD CONSTRAINT [PK_TestCycles]
    PRIMARY KEY CLUSTERED ([TestCycleID] ASC);
GO

-- Creating primary key on [TestDataModelFunctionID] in table 'TestDataModelFunctions'
ALTER TABLE [dbo].[TestDataModelFunctions]
ADD CONSTRAINT [PK_TestDataModelFunctions]
    PRIMARY KEY CLUSTERED ([TestDataModelFunctionID] ASC);
GO

-- Creating primary key on [TestDataNodeAnalysisID] in table 'TestDataNodeAnaylysis'
ALTER TABLE [dbo].[TestDataNodeAnaylysis]
ADD CONSTRAINT [PK_TestDataNodeAnaylysis]
    PRIMARY KEY CLUSTERED ([TestDataNodeAnalysisID] ASC);
GO

-- Creating primary key on [TestDataNodeTriggeredEventID] in table 'TestDataNodeTriggeredEvents'
ALTER TABLE [dbo].[TestDataNodeTriggeredEvents]
ADD CONSTRAINT [PK_TestDataNodeTriggeredEvents]
    PRIMARY KEY CLUSTERED ([TestDataNodeTriggeredEventID] ASC);
GO

-- Creating primary key on [TestEnvironmentID] in table 'TestEnvironments'
ALTER TABLE [dbo].[TestEnvironments]
ADD CONSTRAINT [PK_TestEnvironments]
    PRIMARY KEY CLUSTERED ([TestEnvironmentID] ASC);
GO

-- Creating primary key on [TestExpressionInjectionID] in table 'TestExpressionInjections'
ALTER TABLE [dbo].[TestExpressionInjections]
ADD CONSTRAINT [PK_TestExpressionInjections]
    PRIMARY KEY CLUSTERED ([TestExpressionInjectionID] ASC);
GO

-- Creating primary key on [TestNodeID] in table 'TestNodes'
ALTER TABLE [dbo].[TestNodes]
ADD CONSTRAINT [PK_TestNodes]
    PRIMARY KEY CLUSTERED ([TestNodeID] ASC);
GO

-- Creating primary key on [TestNodeDetailID] in table 'TestNodeDetails'
ALTER TABLE [dbo].[TestNodeDetails]
ADD CONSTRAINT [PK_TestNodeDetails]
    PRIMARY KEY CLUSTERED ([TestNodeDetailID] ASC);
GO

-- Creating primary key on [TestResultTemplateID] in table 'TestResultTemplates'
ALTER TABLE [dbo].[TestResultTemplates]
ADD CONSTRAINT [PK_TestResultTemplates]
    PRIMARY KEY CLUSTERED ([TestResultTemplateID] ASC);
GO

-- Creating primary key on [TestScenarioID] in table 'TestScenarios'
ALTER TABLE [dbo].[TestScenarios]
ADD CONSTRAINT [PK_TestScenarios]
    PRIMARY KEY CLUSTERED ([TestScenarioID] ASC);
GO

-- Creating primary key on [TestScriptID] in table 'TestScripts'
ALTER TABLE [dbo].[TestScripts]
ADD CONSTRAINT [PK_TestScripts]
    PRIMARY KEY CLUSTERED ([TestScriptID] ASC);
GO

-- Creating primary key on [TestScriptParameterID] in table 'TestScriptParameters'
ALTER TABLE [dbo].[TestScriptParameters]
ADD CONSTRAINT [PK_TestScriptParameters]
    PRIMARY KEY CLUSTERED ([TestScriptParameterID] ASC);
GO

-- Creating primary key on [TestScriptParamterTypeID] in table 'TestScriptParameterTypes'
ALTER TABLE [dbo].[TestScriptParameterTypes]
ADD CONSTRAINT [PK_TestScriptParameterTypes]
    PRIMARY KEY CLUSTERED ([TestScriptParamterTypeID] ASC);
GO

-- Creating primary key on [TestTypeID] in table 'TestTypes'
ALTER TABLE [dbo].[TestTypes]
ADD CONSTRAINT [PK_TestTypes]
    PRIMARY KEY CLUSTERED ([TestTypeID] ASC);
GO

-- Creating primary key on [UserID] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([UserID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------