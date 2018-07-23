using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Reflection;

/// <summary>
/// Summary description for BDDataContext
/// </summary>
public class BRDataContext : DataContext
{
    public BRDataContext()
        : base(Databasew.ConnectionString)
    {

    }

    public Table<User> Users
    {
        get
        {
            return GetTable<User>();
        }
    }

    [Function (Name= "dbo.RegisterUser")]
    public int RegisterUser( [Parameter(Name="email")] string email,  [Parameter(Name="password")] string password)
    {
        IExecuteResult result = ExecuteMethodCall(this, (MethodInfo)MethodInfo.GetCurrentMethod(), email, password);
        return (int) result.ReturnValue;
        
    }

    public Table<Subject> Subjects
    {
        get
        {
            return GetTable<Subject>();
        }
    }

    public Table<Book> Books
    {
        get
        {
            return GetTable<Book>();
        }
    }

    public Table<Review> Reviews
    {
        get
        {
            return GetTable<Review>();
        }
    }


}
