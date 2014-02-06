using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KonverteraTemperaturer
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
                convert.Visible = true;
                tabel.Visible = true;
                var startTemp = int.Parse(StartingTemperature.Text);
                var endTemp = int.Parse(EndTemperature.Text);
                var tempStep = int.Parse(TemperatureStep.Text);

                if (FahrenheitToCelsius.Checked)
                {
                    left.Text = "&degF";
                    right.Text = "&degC";
                }

                for (int i = startTemp; i <= endTemp; i +=tempStep )
                {
                    TableRow tRow = new TableRow();
                    TableCell[] tCell = new TableCell[]
                    {
                       new TableCell(),
                       new TableCell()
                    };
                    tabel.Rows.Add(tRow);
                    tRow.Cells.AddRange(tCell);

                    tCell[0].Text = String.Format("{0}", i);
                    //tCell[1].Text = FahrenheitToCelsius.Checked?

                        if(FahrenheitToCelsius.Checked)
                        {
                            tCell[1].Text = String.Format("{0}", Model.TemperatureConverter.FahrenheitToCelsius(i));
                        }
                    else
                        {
                            tCell[1].Text = String.Format("{0}", Model.TemperatureConverter.CelsiusToFahrenheit(i));
                        }

                        //String.Format("{0}", Model.TemperatureConverter.FahrenheitToCelsius(i)):
                        //String.Format("{0}", Model.TemperatureConverter.CelsiusToFahrenheit(i));

                }
               
                

            }

        }

    }
}