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

            string connectionStr = "Data Source=serverpu816.database.windows.net;Initial Catalog=test;User ID=pu816;Password=Qwerty1*";
            CreateDB c = new CreateDB(connectionStr);

            c.ExecuteQuery();

        }
    }
}
