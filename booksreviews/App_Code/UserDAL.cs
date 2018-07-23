using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;

public class UserDAL
{
    public static User Login(string email, string password)
    {
        BRDataContext dc = new BRDataContext ();
        var user = (from u in dc.Users
                   where u.Email == email && u.Password == password
                   select u).SingleOrDefault();
        return user;
    }

    public static User GetUser(string email)
    {
        BRDataContext dc = new BRDataContext();
        var user = (from u in dc.Users
                    where u.Email == email
                    select u).SingleOrDefault();
        return user;
    }


    public static bool  ChangePassword(string email, string oldpassword, string newpassword)
    {
        BRDataContext dc = new BRDataContext();
        StreamWriter sw =  new StreamWriter("E:\\log.txt");
        dc.Log = sw;

        var user = (from u in dc.Users
                    where u.UserId == 1 && u.Password == oldpassword 
                    select u).SingleOrDefault();

        if (user == null)
            return false;

        user.Password = newpassword;

        try
        {

            dc.SubmitChanges();
            return true;
        }
        catch (Exception ex)
        {
            return false;
        }
        finally
        {
            sw.Close();   
        }
    }


    public static bool RegisterUser(string email, string password)
    {
        BRDataContext dc = new BRDataContext();
        try {
           int returnvalue = dc.RegisterUser(email, password);
           return returnvalue == 1;
        }
        catch (Exception ex)
        {
            HttpContext.Current.Trace.Write( "Error in RegisterUser : " + ex.Message);
            return false;
        }

    }
}