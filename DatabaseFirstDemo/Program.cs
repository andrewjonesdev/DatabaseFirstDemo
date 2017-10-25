using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseFirstDemo
{
    class Program
    {
        static void Main(string[] args)
        {
            var context = new DatabaseFirstDemoEntities();
            var post = new post()
            {
                body = "Body",
                date_published = DateTime.Now,
                title = "Title",
                post_id = 1
            };
            context.posts.Add(post);
            context.SaveChanges();
        }
    }
}
