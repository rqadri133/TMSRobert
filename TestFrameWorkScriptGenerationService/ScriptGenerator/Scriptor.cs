using System;
using System.CodeDom.Compiler;
using System.CodeDom;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.CSharp;
using System.IO;

namespace TestFrameWorkScriptGenerationService.ScriptGenerator
{
   public  class Scriptor
    {

        // Generated with the first set of instruction sets and then further more instruction sets keep it generic
        public static string GenerateCSharpCode<T>(List<T> instructionSet ,CodeCompileUnit compileunit)
        {
            // Generate the code with the C# code provider.
             CSharpCodeProvider provider = new CSharpCodeProvider();

            // Build the output file name.
            string sourceFile;
            if (provider.FileExtension[0] == '.')
            {
                sourceFile = "HelloWorld" + provider.FileExtension;
            }
            else
            {
                sourceFile = "HelloWorld." + provider.FileExtension;
            }

            // Create a TextWriter to a StreamWriter to the output file.
            using (StreamWriter sw = new StreamWriter(sourceFile, false))
            {
                IndentedTextWriter tw = new IndentedTextWriter(sw, "    ");

                // Generate source code using the code provider.
                provider.GenerateCodeFromCompileUnit(compileunit, tw,
                    new CodeGeneratorOptions());

                // Close the output file.
                tw.Close();
            }

            return sourceFile;
        }

        public static string GenerateCSharpCode<T>(TestScript instructionSet, CodeCompileUnit compileunit)
        {
            // Generate the code with the C# code provider.
            CSharpCodeProvider provider = new CSharpCodeProvider();

            // Build the output file name.
            string sourceFile;
            sourceFile = instructionSet.TestScriptFileName +  "." + instructionSet.TestScriptFileExtension;
           
            // Create a TextWriter to a StreamWriter to the output file.
            using (StreamWriter sw = new StreamWriter(sourceFile, false))
            {

                // Start Wriring indenting code here
                IndentedTextWriter tw = new IndentedTextWriter(sw, "    ");

                // Generate source code using the code provider.
                provider.GenerateCodeFromCompileUnit(compileunit, tw,
                    new CodeGeneratorOptions());

                // Close the output file.
                tw.Close();
            }

            return sourceFile;
        }

        #region "Translate Code Lines"

        private  string TranslateTokens(CodeLine lineObj)
        {
            string _translatedCode = String.Empty;

           switch(lineObj.CodeExtensionType)
           {
                case "java":
                    break;

                case "jar":
                    break;

                case "cs": 
                    break;
                case "vb":
                    break;

                    // Client side only code generation script no commpilation 
                case "js":

                    break;


            }

            return _translatedCode;






        }



        #endregion 





        public static string CodeLineManager<T>(TestScript instructionSet, CodeCompileUnit compileunit)
        {
            // Generate the code with the C# code provider.
            CSharpCodeProvider provider = new CSharpCodeProvider();

            // Build the output file name.
            string sourceFile;
            sourceFile = instructionSet.TestScriptFileName + "." + instructionSet.TestScriptFileExtension;

            // Create a TextWriter to a StreamWriter to the output file.
            using (StreamWriter sw = new StreamWriter(sourceFile, false))
            {

                foreach(CodeLine codel in instructionSet.CodeLines)
                {

                                   
                       // TranslateTokens


                }


                // Start Wriring indenting code here
                IndentedTextWriter tw = new IndentedTextWriter(sw, "    ");

                // Generate source code using the code provider.
                provider.GenerateCodeFromCompileUnit(compileunit, tw,
                    new CodeGeneratorOptions());

                // Close the output file.
                tw.Close();
            }

            return sourceFile;
        }






    }
}
