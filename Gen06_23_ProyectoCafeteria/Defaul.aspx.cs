using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Agregar librerias
using System.Configuration;
using System.IO;
using System.Net;
using System.Text;
using System.Xml;
using System.Xml.Xsl;
using System.Security.Cryptography.X509Certificates;

public partial class Defaul : System.Web.UI.Page
{
    //Variable para el id del menu
    public String TipoMenu = String.Empty;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] == null)
        {
            TipoMenu = "0";
        }
        else
        {
            TipoMenu = Request.QueryString["id"];
        }

        //Llamada al metodo que transforma el XML
        TransformaXML();
        
    }

    private void TransformaXML()
    {
        string xmlPath = ConfigurationManager.AppSettings["FileServe"].ToString() + "xml/menu.xml";
        string xsltPath = ConfigurationManager.AppSettings["FileServe"].ToString() + "xslt/Template.xslt";

        XmlTextReader trMenu = new XmlTextReader(xmlPath);

        //credenciales
        //Se actualizan credenciales
        XmlUrlResolver resolver = new XmlUrlResolver();
        resolver.Credentials = CredentialCache.DefaultCredentials;

        //crear la configuracion para acceder al XSLT
        //los parametros true son para poder tratar al XSLT
        //como documento y poder transformarlo
        XsltSettings setting = new XsltSettings(true, true);

        //Leer XSLT
        XslCompiledTransform xslt = new XslCompiledTransform();
        xslt.Load(xsltPath, setting, resolver);

        //creamos a donde enviar la transformacion
        StringBuilder sBuilder = new StringBuilder();
        TextWriter tWriter = new StringWriter(sBuilder);

        XsltArgumentList xsltArgs = new XsltArgumentList();
        xsltArgs.AddParam("TipoMenu", "", TipoMenu);

        xslt.Transform(trMenu, xsltArgs, tWriter);
        string resuelto = sBuilder.ToString();
        Response.Write(resuelto);

    }
}