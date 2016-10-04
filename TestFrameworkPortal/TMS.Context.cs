﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TestFrameworkPortal
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class TMS : DbContext
    {
        public TMS()
            : base("name=TMS")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<RegressFileTest> RegressFileTests { get; set; }
        public virtual DbSet<TestCase> TestCases { get; set; }
        public virtual DbSet<TestCaseAssigned> TestCaseAssigneds { get; set; }
        public virtual DbSet<TestCycle> TestCycles { get; set; }
        public virtual DbSet<TestDataModelFunction> TestDataModelFunctions { get; set; }
        public virtual DbSet<TestDataNodeAnaylysi> TestDataNodeAnaylysis { get; set; }
        public virtual DbSet<TestDataNodeTriggeredEvent> TestDataNodeTriggeredEvents { get; set; }
        public virtual DbSet<TestEnvironment> TestEnvironments { get; set; }
        public virtual DbSet<TestExpressionInjection> TestExpressionInjections { get; set; }
        public virtual DbSet<TestNode> TestNodes { get; set; }
        public virtual DbSet<TestNodeDetail> TestNodeDetails { get; set; }
        public virtual DbSet<TestResultTemplate> TestResultTemplates { get; set; }
        public virtual DbSet<TestScenario> TestScenarios { get; set; }
        public virtual DbSet<TestScript> TestScripts { get; set; }
        public virtual DbSet<TestScriptParameter> TestScriptParameters { get; set; }
        public virtual DbSet<TestScriptParameterType> TestScriptParameterTypes { get; set; }
        public virtual DbSet<TestType> TestTypes { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<TestConnectionType> TestConnectionTypes { get; set; }
        public virtual DbSet<TargetFramework> TargetFrameworks { get; set; }
        public virtual DbSet<TestTargetFrameworkVersion> TestTargetFrameworkVersions { get; set; }
        public virtual DbSet<TestAssembly> TestAssemblies { get; set; }
        public virtual DbSet<TestClass> TestClasses { get; set; }
        public virtual DbSet<TestConnection> TestConnections { get; set; }
        public virtual DbSet<TestOperand> TestOperands { get; set; }
    }
}
