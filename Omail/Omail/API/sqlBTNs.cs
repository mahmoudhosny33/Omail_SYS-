using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
namespace Omail.API
{
    class sqlBTNs
    {



        public static async Task<string> MarkEmailAsSpam(int emailId, int empId)
        {
            try
            {
                using (SqlConnection sql = new SqlConnection("Data Source =.; Initial Catalog = Omail; Integrated Security = True"))
                {
                    using (SqlCommand cmd = new SqlCommand("MarkEmailAsSpam", sql))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@EmpId", empId);
                        cmd.Parameters.AddWithValue("@EmailId", emailId);
                        await sql.OpenAsync();
                        var result = await cmd.ExecuteNonQueryAsync(); // returns number of rows effected.
                        if (result == 1)
                            return "Marked successfully";
                        else if (result > 1)
                            return "An error has occured, more than one Email has been marked as spam.";
                        else
                            return "And error has occured, no emails have been effected, please try again!";
                    }
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }
        public static async Task<string> MarkEmailAsStarred(int emailId, int empId)
        {
            try
            {
                using (SqlConnection sql = new SqlConnection("Data Source =.; Initial Catalog = Omail; Integrated Security = True"))
                {
                    using (SqlCommand cmd = new SqlCommand("MarkEmailAsStarred", sql))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@EmpId", empId);
                        cmd.Parameters.AddWithValue("@EmailId", emailId);
                        await sql.OpenAsync();
                        var result = await cmd.ExecuteNonQueryAsync(); // returns number of rows effected.
                        if (result == 1)
                            return "Marked successfully";
                        else if (result > 1)
                            return "An error has occured, more than one Email has been marked as spam.";
                        else
                            return "And error has occured, no emails have been effected, please try again!";
                    }
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }
        public static async Task<string> MarkEmailAsDeleted(int emailId, int empId)
        {
            try
            {
                using (SqlConnection sql = new SqlConnection("Data Source =.; Initial Catalog = Omail; Integrated Security = True"))
                {
                    using (SqlCommand cmd = new SqlCommand("MarkEmailAsDeleted", sql))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@EmpId", empId);
                        cmd.Parameters.AddWithValue("@EmailId", emailId);
                        await sql.OpenAsync();
                        var result = await cmd.ExecuteNonQueryAsync(); // returns number of rows effected.
                        if (result == 1)
                            return "Marked successfully";
                        else if (result > 1)
                            return "An error has occured, more than one Email has been marked as spam.";
                        else
                            return "And error has occured, no emails have been effected, please try again!";
                    }
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }
        public static async Task<int> GetEmailsByTime(int empId, DateTime sentTime)
        {

            using (SqlConnection sql = new SqlConnection("Data Source =.; Initial Catalog = Omail; Integrated Security = True"))
            {
                using (SqlCommand cmd = new SqlCommand("GetEmailsByTime", sql))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@EmpId", empId);
                    cmd.Parameters.AddWithValue("@Date", sentTime);
                    await sql.OpenAsync();
                    var returnedEmail = new Email();

                    using (var reader = await cmd.ExecuteReaderAsync())
                    {
                        while (await reader.ReadAsync())
                        {
                            returnedEmail.EmailId = (int)reader["EmailId"];
                        }
                    }

                    return returnedEmail.EmailId;
                }


            }
        }

    }

}



