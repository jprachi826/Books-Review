using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Linq.Mapping;


[Table (Name="subjects")]
public class Subject
{
    [Column (Name="subcode", IsPrimaryKey = true )]
    public string Code { get; set; }
    [Column(Name = "subname")]
    public string Name { get; set; }


}