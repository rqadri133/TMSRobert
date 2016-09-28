using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace TestFrameWorkScriptGenerationService
{
    
    public enum CodeGenerationInstruction
    {
        ExistingAssembly = 101 ,
        GenerateNewAssembly = 102,
        GenerateSQLQueryCheckOnlyZeroPlatform = 103 ,
        InjectRemainingCode = 104,
        DeleteAnOverRideCode =105,
        ExecuteOnly = 106 ,
        ExecuteAndSendReport = 107,
        GenerateReportForProvidedID = 108

    }


    public enum PlateForm
    {

        DotNetFrameWork = 4201,
        JavaFrameWork  = 4202,
   
    }

     




    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface ITestScriptervice
    {
        [OperationContract]
         TestScript CreateScript<T>(T obj , CodeGenerationInstruction codeInstructions) ;

        // TODO: Add your service operations here


        [OperationContract]
        TestScript UpdateScript<T>(T obj , CodeGenerationInstruction codeInstructions);
                


        [OperationContract]
        TestScript DeleteScript<T>(T obj, CodeGenerationInstruction codeInstructions);



        [OperationContract]
        TestScript InjectCodeLineScript<T>(TestScript script, CodeGenerationInstruction codeInstructions);


        [OperationContract]
        TestScript ExecuteScript<T>(TestScript script, CodeGenerationInstruction codeInstructions);



        [OperationContract]
         TestReport ScriptReport<T>(TestScript script, CodeGenerationInstruction codeInstructions);


    }

    // Use a data contract as illustrated in the sample below to add composite types to service operations.
    // You can add XSD files into the project. After building the project, you can directly use the data types defined there, with the namespace "TestFrameWorkScriptGenerationService.ContractType".
    [DataContract]
    public class TestScript
    {
        
        [DataMember]
        public string TestScriptFilePath
        {
            get;
            set;

        }

        [DataMember]
        public string TestScriptFileExtension
        {

            get;
            set;

        }

        [DataMember]
        public List<TestExpression> TestExpressions
        {
            get;
            set;

        }

        [DataMember]
        public List<string> SyntaxExpression
        {

            get;
            set;

        }




        [DataMember]
        public string TestScriptParametersJSON
        {
            get;
            set;

        }

        [DataMember]
        public bool TestScriptFileCreated
        {

            get;
            set;

        }



        [DataMember]
        public bool TestScriptFileExecuted
        {

            get;
            set;

        }




    }




    [DataContract]
    public class TestExpression
    {

        [DataMember]
        public string TestExpressionRule
        {
            get;
            set;

        }

        [DataMember]
        public string TestExpressionName
        {

            get;
            set;

        }

        [DataMember]
        public string ExpressionValidationRegex
        {
            get;
            set;

        }

        [DataMember]
        public  bool ExpressionPassedSyntaxRule
        {

            get;
            set;

        }


        



    }



    [DataContract]
    public class TestReport
    {

        [DataMember]
        public Guid TestReportID
        {
            get;
            set;

        }

        [DataMember]
        public string TestReportName
        {

            get;
            set;

        }

        [DataMember]
        public Guid TestScriptID
        {

            get;
            set;

        }



        [DataMember]
        public string TestResultsJson  
        {

            get;
            set;

        }







    }

}
