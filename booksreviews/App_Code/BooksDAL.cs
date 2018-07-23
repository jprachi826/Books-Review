using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class BooksDAL
{
    public static IQueryable <Subject> GetSubjects()
    {
        BRDataContext dc = new BRDataContext();
        return dc.Subjects;
    }

    public static IQueryable<Book> GetBooksBySubject(string subcode)
    {
        BRDataContext dc = new BRDataContext();
        var books = from b in dc.Books
                    where b.Subcode == subcode
                    select b;

        return books;
    }

    public static string GetRatingString(int count)
    {
        String rating = "";
        for (int i = 1; i <= count;  i++)
        {
            rating += "*";
        }
        return rating;
    }

    public static Book GetBook(int bookid)
    {
        BRDataContext dc = new BRDataContext();
        var book = (from b in dc.Books
                    where b.BookId == bookid
                    select b ).SingleOrDefault();

        // get reviess for the book

        book.Reviews = from r in dc.Reviews
                       where r.BookId == bookid
                       select r;

        if (book.Reviews.Count()  > 0)
        {
            int total = 0;
            foreach (var r in book.Reviews)
                total += r.Rating;

            int rating = total / book.Reviews.Count();

            book.RatingString = GetRatingString(rating);
        }
        else
            book.RatingString = "None";

        return book;
    }

    public static bool AddReview(int bookid, int userid,  int rating, string review)
    {
        try
        {
            BRDataContext dc = new BRDataContext();
            Review r = new Review
            {
                BookId = bookid,
                UserId = userid,
                Rating = rating,
                ReviewText = review,
                ReviewDate = DateTime.Now
            };

            dc.Reviews.InsertOnSubmit(r);
            dc.SubmitChanges();
            return true;
        }
        catch (Exception ex)
        {
            HttpContext.Current.Trace.Write("Error in AddReview : " + ex.Message);
            return false;
        }

    }

    public static IEnumerable<Book> Search(string pattern)
    {
        BRDataContext dc = new BRDataContext();
        var books = from b in dc.Books
                    where b.Title.Contains(pattern)
                    select b;
        return books;
    }


    public static IEnumerable<Book> GetTopRatedBooks()
    {
        BRDataContext dc = new BRDataContext();
        var booksrating =
                       (from r in dc.Reviews 
                        group r by new {r.BookId }  into grp
                        select  new {BookId = grp.Key.BookId, 
                                     Rating = grp.Sum(rec => rec.Rating) / grp.Count() })
                        .OrderByDescending (v => v.Rating ).Take(5);

        List<Book> topbooks = new List<Book>();
        foreach (var bk in booksrating)
        {
            Book book = dc.Books.Where(b => b.BookId == bk.BookId).First();  // get book
            book.RatingString = GetRatingString(bk.Rating);  // set rating based on ratings 
            topbooks.Add(book);
        }
        return topbooks;
    }
}