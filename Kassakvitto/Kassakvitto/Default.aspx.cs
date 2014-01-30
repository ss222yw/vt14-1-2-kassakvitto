using Kassakvitto.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kassakvitto
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Receipt receipt = new Kassakvitto.Model.Receipt(double.Parse(TextBox.Text));

                SumTotal.Text = string.Format("Total: {0:c}", receipt.Subtotal);
                DiscountRate.Text = string.Format("Rabattsats: {0:p0}", receipt.DiscountRate);
                Discount.Text = string.Format("Rabatt: {0:c}", receipt.MoneyOff);
                ToPay.Text = string.Format("Att betala: {0:c}", receipt.Total);
                Panel.Visible = true;
            }
        }
    }
}