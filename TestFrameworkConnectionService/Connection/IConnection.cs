using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestFrameworkConnectionService.Connection
{
    public interface IConnection
    {

        Connector   Connect(Connector connect);

    }



    public class AzureCloudConnection : IConnection
    {
        public Connector Connect(Connector connection)
        {

            // Add Azzure Nuget Cloud services

            try
            {


            }

            catch (Exception excp)
            {


            }

            return new Connector();

        }


}



    public class SQLCloudConnection : IConnection
    {
        public Connector Connect(Connector connection)
        {

            // Add Azzure Nuget Cloud services

            try
            {


            }

            catch (Exception excp)
            {


            }

            return new Connector();

        }


    }


    public class SQLServerConnection : IConnection
    {
        public Connector Connect(Connector connection)
        {

            // Add Azzure Nuget Cloud services

            try
            {


            }

            catch (Exception excp)
            {


            }

            return new Connector();

        }


    }



    public class OracleServerConnection : IConnection
    {
        public Connector Connect(Connector connection)
        {

            // Add Azzure Nuget Cloud services

            try
            {


            }

            catch (Exception excp)
            {


            }

            return new Connector();

        }


    }


    public class SparkEngineConnection : IConnection
    {
        public Connector Connect(Connector connection)
        {

            // Add Azzure Nuget Cloud services

            try
            {


            }

            catch (Exception excp)
            {


            }

            return new Connector();

        }


    }



    public class SASFinanceConnection : IConnection
    {
        public Connector Connect(Connector connection)
        {

            // Add Azzure Nuget Cloud services

            try
            {


            }

            catch (Exception excp)
            {


            }

            return new Connector();

        }


    }





}
