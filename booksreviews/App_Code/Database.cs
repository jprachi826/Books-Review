using System;
using System.Web.Configuration;

public class Databasew
{
    public static String ConnectionString
    {
        get
        {
            return WebConfigurationManager
                .ConnectionStrings["connectionstring"]
                .ConnectionString;
        }
    }
}