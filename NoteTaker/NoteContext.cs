using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using NoteTaker.Models;

namespace NoteTaker
{
    public class NoteContext : DbContext
    {
        public DbSet<Note> Notes { get; set; }
    }
}