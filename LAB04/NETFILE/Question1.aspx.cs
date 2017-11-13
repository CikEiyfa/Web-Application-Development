using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Question1 : System.Web.UI.Page
{
    
  
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        lblDescript0.Text = "Thank you for choosing us ! Here are your order details :";
        
        lblName0.Text = "Name :";
        lblName1.Text = txtName.Text;
        lblContactNum0.Text = "Contact Number :";
        lblContactNum1.Text = txtContactNum.Text;
        lblEmail0.Text = "Email : ";
        lblEmail1.Text = txtEmail.Text;
        lblOrderDetails0.Text = "Order Details : ";
        lblCapacity0.Text = "Quantity : ";
        lblRice0.Text = "Rice :";
        lblRice1.Text = DropDownList1.SelectedItem.Text;
        lblRice2.Text = txtQttyRice.Text;
        lblSideDishes0.Text = "Side Dishes ";
        lblSideDishes1.Text = "Chicken Curry";
        lblSideDishes2.Text = txtQttyChicken.Text;
        lblSideDishes7.Text = "Mixed Vegetable";
        lblSideDishes8.Text = txtMixed.Text;
        lblSideDishes9.Text = "Grilled Fish";
        lblSideDishes10.Text = txtQttyFish.Text;
        lblSideDishes11.Text = "Condiment";
        lblSideDishes12.Text = txtQttyCondiment.Text;
        lblbeverages1.Text = "Mango Juice";
        lblbeverages2.Text = txtQttyJuice.Text;
        lblbeverages5.Text = "Cendol ";
        lblbeverages6.Text = txtQttyCendol.Text ;
        lblDelivery0.Text = "Delivery :";
        lblDelivery1.Text = DropDownList2.SelectedItem.Text;
        

        int Rice = Convert.ToInt16(txtQttyRice.Text);
        int Curry = Convert.ToInt16(txtQttyChicken.Text);
        int Mixed = Convert.ToInt16(txtMixed.Text);
        int Fish = Convert.ToInt16(txtQttyFish.Text);
        int Condiment = Convert.ToInt16(txtQttyCondiment.Text);
        int Juice = Convert.ToInt16(txtQttyJuice.Text);
        int Cendol = Convert.ToInt16(txtQttyCendol.Text);

        double Total = (Rice * 1.5) + (Curry * 4.5) + (Mixed * 2) + (Fish * 4) + (Condiment * 1.5) + (Juice * 3) + (Cendol * 3);

        lblTotal0.Text = "Total :";
        if (DropDownList1.Items[1].Selected)
        {
            lblTotal.Text = "RM " + Total.ToString();
        }
        else
        {
            double total = Total * 1.5;
            lblTotal.Text = "RM " + total.ToString();
        }
       

    }


    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.Items[2].Selected)
        {
            txtQttyRice.Text = DropDownList1.SelectedItem.Value;
        }
        else
        {
            txtQttyRice.Text = "";

        }
    }
}