using System.Collections.Generic;

namespace AnkietaMarty.Domain.Queries
{
    public class Result
    {
        public string GroupName { get; set; }
        public int TotalQuantity { get; set; }

        public List<ResultItem> Items { get; set; }
    }

    public class ResultItem
    {
        public string Name { get; set; }
        public int Quantity { get; set; }
        public decimal Percentage { get; set; }
    }
}