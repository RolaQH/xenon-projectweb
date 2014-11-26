using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EasyCallback;
using System.Web.Script.Serialization;
using System.Web.Services;
using System.Web.Script.Services;
using Xenon.Core.Entity.Sales;
using Xenon.Core.Logic.Sales;
using System.IO;

namespace Xenon.FronEnd.WebForm.Sales
{
    public class PageBase : System.Web.UI.Page
    {
        //public Auditoria auditoria = new Auditoria();

        /// <summary>
        /// Deserializa con JSon
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="context"></param>
        /// <returns></returns>
        public T Deserialize<T>(HttpContext context)
        {
            //read the json string
            string jsonData = new StreamReader(context.Request.InputStream).ReadToEnd();

            //cast to specified objectType
            var obj = (T)new JavaScriptSerializer().Deserialize<T>(jsonData);

            //return the object
            return obj;
        }

        /// <summary>
        /// Deserializa con JSon
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="context"></param>
        /// <returns></returns>
        public T Deserialize<T>(string context)
        {
            //cast to specified objectType
            var obj = (T)new JavaScriptSerializer().Deserialize<T>(context);

            //return the object
            return obj;
        }
    }
}