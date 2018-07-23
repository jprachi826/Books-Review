using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Linq.Mapping;

[Table ( Name="Users")]
public class User
{
    [Column ( IsPrimaryKey = true)]
    public int UserId { get; set; }
    [Column]
    public string Email { get; set; }
    [Column]
    public string Password { get; set; }
    
}