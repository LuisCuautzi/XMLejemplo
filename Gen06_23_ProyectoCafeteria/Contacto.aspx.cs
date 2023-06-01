using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contacto : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            string nombre = Request.Form["contact_name"].ToString();
            string from = Request.Form["contact_email"].ToString();
            string personas = Request.Form["numPersonas"].ToString();
            string extra = Request.Form["extraPersonas"].ToString();
            string fecha = Request.Form["contact_fecha"].ToString();
            string hora = Request.Form["contact_hora"].ToString();
            int totalPersonas = int.Parse(personas) + int.Parse(extra);

            string mensaje = "El Cliente " + nombre + " Ha Realizado Una Reservación Para El Día: " + "Fecha: " + fecha + "A Las: " + hora + "Hrs para " +
                "Personas: " + totalPersonas.ToString();

            this.Mensaje.Text = "Se Ha Enviado Un Correo a: " + from + " " + mensaje;
        }

    }
}