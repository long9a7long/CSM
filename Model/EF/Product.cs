namespace Model.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Product")]
    public partial class Product
    {
        [Key]
        public int ProdID { get; set; }

        [Required]
        [StringLength(200)]
        public string ProdName { get; set; }

        [StringLength(4000)]
        public string ImageUrl { get; set; }

        [Column(TypeName = "ntext")]
        public string Decription { get; set; }

        public int Cost { get; set; }

        public int Saving_Cost { get; set; }

        public bool isActive { get; set; }

        public int CateID { get; set; }

        public DateTime? CreatedAt { get; set; }

        public DateTime? UpdatedAt { get; set; }

        public int? Wantity { get; set; }

        public String Album { get; set; }

        public virtual Category Category { get; set; }
    }
}
