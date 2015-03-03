using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Fagerstrom.Core
{
    public class FagerstromScoreDataAccess
    {
        public void Save(FagerstromScore score)
        {
            var commandText = string.Format("insert into Score (Question1, Question2, Question3, Question4, Question5, Question6) values ({0}, {1}, {2}, {3}, {4}, {5})",
                    score.question1,
                    score.question2,
                    score.question3,
                    score.question4,
                    score.question5,
                    score.question6                
                );

            using (var connection = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString()))
            {
                connection.Open();

                using(var command = new SqlCommand(commandText, connection))
                {                    
                    command.ExecuteNonQuery();
                }

                connection.Close();
            }
        }

    }
}

// create a new website called fagerstrom .dev using proper IIS to fix issue.

/*

 1 - Createw 

*/
