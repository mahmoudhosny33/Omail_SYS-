//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Omail
{
    using System;
    using System.Collections.Generic;
    
    public partial class Employee_In_Group
    {
        public int EmpId { get; set; }
        public int GroupId { get; set; }
        public string ProjectName { get; set; }
    
        public virtual EmpGroup EmpGroup { get; set; }
        public virtual Employee Employee { get; set; }
    }
}
