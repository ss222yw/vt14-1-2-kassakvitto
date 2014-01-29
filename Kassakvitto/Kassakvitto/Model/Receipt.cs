using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Kassakvitto.Model
{
    public class Receipt
    {
        //privata fältet _subtotal.
        private double _subtotal;

        //Publik egenskap DiscountRate.
        public double DiscountRate{get; private set;}

        //Publik egenskap MoneyOff.
        public double MoneyOff{get; private set;}

        //Publik egenskap Subtotal.
        public double Subtotal{get; private set;}

        //Publik metod Total.
        public double Total{get; private set;}
    }

    // Publik metod Calulate.
    public void Calculate(double subtotal)
    {

    }
     //konstruktor Receipt.
    public Receipt(double subtotal)
    {

    }


}