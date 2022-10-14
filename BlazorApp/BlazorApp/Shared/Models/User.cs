﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BlazorApp.Shared.Models
{
    public class User
    {
        public int Userid { get; set; }
        public string Username { get; set; } = null!;
        public string Address { get; set; } = null!;
        public string Number { get; set; } = null!;
        public string Emailid { get; set; } = null!;
    }
}