using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Reflection;
using System.Text;

namespace ConnectDBHW.Classes
{
    class CreateDB
    {
        public string path { get; set; } = Assembly.GetExecutingAssembly().Location + @"..\..\..\..\..\SQL";
        private string connectionStr;

        public CreateDB(string conStr)
        {
            this.connectionStr = conStr;
        }

        public void ExecuteQuery() 
        {
            if (Directory.Exists(this.path)) 
            {
                for (int i = 0; i < 2; i++) 
                {
               string[] files = Directory.GetFiles(this.path);
                SqlConnection sqlConn = new SqlConnection(this.connectionStr);

                try
                {
                    sqlConn.Open();
                    foreach (var it in files) 
                    {
                        SqlCommand command = new SqlCommand(File.ReadAllText(it), sqlConn);
                        command.ExecuteNonQuery();
                    }
                    sqlConn.Close();
                }
                catch (Exception ex) 
                {
                    Console.WriteLine("ERROR LINK!");
                    Console.WriteLine(ex.Message);
                }
                }
              Console.WriteLine("Формування БД закінчено!");

              
            }

        }
    }
}
