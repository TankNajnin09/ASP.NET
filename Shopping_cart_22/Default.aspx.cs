using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    // Product class
    public class Product
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public decimal Price { get; set; }
    }

    // Cart item class
    public class CartItem
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public decimal Price { get; set; }
        public int Quantity { get; set; }

        // Corrected Total property
        public decimal Total
        {
            get { return Price * Quantity; }
        }
    }

    // Sample product list
    private List<Product> Products
    {
        get
        {
            return new List<Product>
                {
                    new Product{ Id=1, Name="Laptop", Price=1200 },
                    new Product{ Id=2, Name="Smartphone", Price=800 },
                    new Product{ Id=3, Name="Headphones", Price=150 }
                };
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindProducts();
            BindCart();
        }
    }

    private void BindProducts()
    {
        rptProducts.DataSource = Products;
        rptProducts.DataBind();
    }

    private void BindCart()
    {
        var cart = Session["Cart"] as List<CartItem> ?? new List<CartItem>();
        gvCart.DataSource = cart;
        gvCart.DataBind();

        lblTotal.Text = "Total: $" + cart.Sum(c => c.Total).ToString("0.00");
    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        var btn = (System.Web.UI.WebControls.Button)sender;
        int productId = int.Parse(btn.CommandArgument);

        var cart = Session["Cart"] as List<CartItem> ?? new List<CartItem>();
        var product = Products.FirstOrDefault(p => p.Id == productId);

        if (product != null)
        {
            var item = cart.FirstOrDefault(c => c.Id == productId);
            if (item != null)
                item.Quantity++;
            else
                cart.Add(new CartItem
                {
                    Id = product.Id,
                    Name = product.Name,
                    Price = product.Price,
                    Quantity = 1
                });
        }

        Session["Cart"] = cart;
        BindCart();
    }

    protected void gvCart_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Remove")
        {
            int index = Convert.ToInt32(e.CommandArgument);

            var cart = Session["Cart"] as List<CartItem>;

            if (cart != null && index >= 0 && index < cart.Count)
            {
                cart.RemoveAt(index);
                Session["Cart"] = cart;
                BindCart();
            }
        }
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        Session["Cart"] = null;
        BindCart();
    }

}