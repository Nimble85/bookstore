using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace BookStore.Models
{
    public class BookDbInitializer : DropCreateDatabaseAlways<BookContext>
    {
        protected override void Seed(BookContext db)
        {
            
            db.Books.Add(new Book { Name = "Atomic Habits", Author = "James Clear", Price = 150 });
            db.Books.Add(new Book { Name = "In Search of Lost Time", Author = "Marcel Proust", Price = 150 });
            db.Books.Add(new Book { Name = "Don Quixote", Author = "Miguel de Cervantes", Price = 150 });
            db.Books.Add(new Book { Name = "Ulysses", Author = "James Joyce", Price = 150 });
            db.Books.Add(new Book { Name = "The Great Gatsby", Author = "F.Scott", Price = 185 });

            base.Seed(db);
        }
    }
}