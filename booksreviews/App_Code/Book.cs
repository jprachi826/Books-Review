using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Linq.Mapping;
using System.Data.Linq;

[Table ( Name="books")]
public class Book
{
    [Column ( IsPrimaryKey = true, IsDbGenerated = true ) ]
    public int BookId { get; set; }
    
    [Column]
    public string Title { get; set; }
    
    [Column]
    public string Authors { get; set; }
    
    [Column]
    public string Publisher { get; set; }
    
    [Column]
    public decimal  Price { get; set; }

    [Column]
    public int NoPages { get; set; }

    [Column]
    public DateTime Pubdate { get; set; }

    [Column]
    public string Subcode { get; set; }

    [Column]
    public DateTime  Addedon { get; set; }

    public string RatingString { get; set; }

    private EntityRef<Subject> _subject;

    [Association(Storage = "_subject", ThisKey = "Subcode" ,  IsForeignKey = true)]
    public Subject Subject
    {
        get { return this._subject.Entity; }
        set { this._subject.Entity = value; }
    }

    public IEnumerable <Review> Reviews { get; set; }



}