using ConnectDBHW.Classes;
using System;
using System.IO;
using System.Reflection;
using System.Text;

namespace ConnectDBHW
{
    class Program
    {
        static void Main()
        {
            Console.OutputEncoding = Encoding.Unicode;
            Console.InputEncoding = Encoding.Unicode;

            string connectionStr = "Data Source=denyskravchuk.database.windows.net;Initial Catalog=Academy;User ID=denys;Password=$denus2005$";
            CreateDB c = new CreateDB(connectionStr);

            c.ExecuteQuery();

        }
    }
}
