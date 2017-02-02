﻿using NoteTaker.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NoteTaker
{
    public partial class Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) //11:54AM
        {
            //if (Request.Form.AllKeys.Contains("title"))
            if (IsPostBack)
            {
                using (var db = new NoteContext())
                {
                    var note = new Note
                    {
                        Title = Request.Form["title"],
                        Body = Request.Form["body"],
                        Timestamp = Request.Form["timestamp"],
                        Created = DateTime.Now
                    };

                    db.Notes.Add(note);
                    db.SaveChanges();
                }
            }
            Response.Redirect("Default.aspx");
        }
    }
}