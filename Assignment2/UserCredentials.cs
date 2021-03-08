using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

/// <summary>
/// userCredentials class contains username, password, user_index
/// </summary>
public class CompanyPagesFuel.Models
{
	public UserCredentials()
	{
		public int user_index{get;set;}
		
        [Required]
        [StringLength(15, MinimumLength = 5)]
        [RegularExpression(@"^[A-Z]+[a-zA-Z""'\s-]*$")]
        public string username{get; set;}
        
        
        [Required]
        [StringLength(15, MinimumLength = 5)]
        public string password{get; set;}
	}
}
