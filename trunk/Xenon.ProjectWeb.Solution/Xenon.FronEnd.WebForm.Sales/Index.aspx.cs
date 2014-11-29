using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EasyCallback;
using Xenon.Core.Entity.Sales;
using Xenon.Core.Logic.Sales;


namespace Xenon.FronEnd.WebForm.Sales
{
    public partial class Index : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected override void OnInit(EventArgs e)
        {

            if (Session["DataUser"] == null)
            {
                Response.Redirect("InicioSession/Login.aspx");
            }
            base.OnInit(e);
            EasyCallback.CallbackManager.Register(GenerarMenu);
            EasyCallback.CallbackManager.Register(IdentificarUsuario);
            EasyCallback.CallbackManager.Register(CerrarSession);
        }


        public string CerrarSession(string arg) {
            try
            {
                Session.Clear();
                 return Json.JsonSerializer.ToJson(new
                 {
                    data = ""
                 });
            }
            catch (Exception ex)
            {

                return Json.JsonSerializer.ToJson(new
                {
                    data = ex.Message
                });
            }
        }
        public string IdentificarUsuario(string arg)
        {

            try
            {
                if (Session["DataUser"] != null)
                {
                    return Json.JsonSerializer.ToJson(new
                    {
                        data = Session["DataUser"]
                    });
                }
                else {
                    return Json.JsonSerializer.ToJson(new
                    {
                        data = ""
                    });
                }

            }
            catch (Exception)
            {
                
                return Json.JsonSerializer.ToJson(new { 
                    data = ""
                });
            }

        }

        public string GenerarMenu(string arg)
        {

            try
            {
                var menu = MenuLogic.GetInstance.GeneraMenu(arg);
                return Json.JsonSerializer.ToJson(new { 
                    data = menu
                });
            }
            catch (Exception)
            {
                var menu = MenuLogic.GetInstance.GeneraMenu(arg);
                return Json.JsonSerializer.ToJson(new
                {
                    data = ""
                });
            }

        }
        
    }
}