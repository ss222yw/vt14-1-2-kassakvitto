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

        //Publik auto-implementerade egenskap DiscountRate används till att representera rabatten i procent.
        public double DiscountRate{get; private set;}

        //Publik auto-implementerade egenskap MoneyOff används till att representera rabatten i kronor.
        public double MoneyOff { get; private set; }

        //Publik egenskap Subtotal  .
        public double Subtotal{
            get
            {
                return _subtotal;
            }
            private set
            {
                if (value <= 0)
                {
                    throw new ArgumentOutOfRangeException();
                }
                _subtotal = value;
            }
        }

        //Publik auto-implementerade egenskap Total används till att representera beloppet efter att rabatten dragits från den totala köpesumman.
        public double Total{get; private set;}

        // Publik metod Calulate.
        public void Calculate(double subtotal)
        {
            Subtotal = subtotal;

            if (subtotal < 500)
            {
                DiscountRate = 0;
            }
            else if(subtotal < 1000)
            {
                DiscountRate = 0.05;
            }
            else if (subtotal < 5000)
            {
                DiscountRate = 0.10;
            }
            else
            {
                DiscountRate = 0.15;
            }

            MoneyOff = subtotal * DiscountRate;

            Total = subtotal - MoneyOff;
        }
        //konstruktor Receipt.
        public Receipt(double subtotal)
        {
            Calculate(subtotal);
        }
    }

    


}