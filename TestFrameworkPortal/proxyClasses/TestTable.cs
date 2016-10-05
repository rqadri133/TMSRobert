using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Runtime.Serialization;
namespace TestFrameworkPortal.proxyClasses
{


    [DataContract]
    public class TestTable
    {
        [DataMember]
        public string TestTableName
        {
            get;
            set;

        }


        [DataMember]
        public Guid TestTableID
        {
            get;
            set;
        }  

    }
}