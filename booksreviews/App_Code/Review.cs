using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Linq.Mapping;
using System.Data.Linq;

[Table (Name="reviews")]
public class Review
{
    [Column(IsPrimaryKey = true, IsDbGenerated = true)]
    public int ReviewId { get; set; }

    [Column]
    public int BookId { get; set; }

    [Column]
    public int UserId { get; set; }

    [Column (Name="review")]
    public string ReviewText { get; set; }

    [Column]
    public int Rating { get; set; }

    [Column]
    public DateTime ReviewDate { get; set; }

    public String RatingName
    {
        get
        {
            switch (Rating)
            {
                case 1: return "Poor";
                case 2: return "Averge";
                case 3: return "Good";
                case 4: return "Very Good";
                case 5: return "Excellent";
                default :
                    return "";
            }

        }
    }

    private EntityRef<User> _user;

    [Association(Storage = "_user", ThisKey = "UserId", IsForeignKey = true)]
    public User User
    {
        get { return this._user.Entity; }
        set { this._user.Entity = value; }
    }

}