using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EasyCallback;
using Xenon.Core.Entity.Sales;
using Xenon.Core.Logic.Sales;

namespace Xenon.FronEnd.WebForm.Sales.InicioSession
{
    public partial class Login : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            CallbackManager.Register(ValidarIngreso);
        }

        public string ValidarIngreso(string arg) {
            try
            {
                Ingreso entidad = this.Deserialize<Ingreso>(arg);
                var usuario = UsuarioLogic.GetInstance.ValidarIngreso(entidad.user, entidad.contrasena);
                if(usuario != null)
                {
                    Session["DataUser"] = usuario;
                    return Json.JsonSerializer.ToJson(new {
                        data = "Ok"
                    });
                }
                else
                {
                    return Json.JsonSerializer.ToJson(new
                    {
                        data = "No"
                    });
                }
            }
            catch (Exception)
            {
                return Json.JsonSerializer.ToJson(new
                {
                    data = "",
                });
            }
        }
    }

    public class Ingreso
    {

        public string user { get; set; }
        public string contrasena { get; set; }
    }
}