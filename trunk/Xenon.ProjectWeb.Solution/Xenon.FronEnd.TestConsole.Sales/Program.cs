using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Xenon.Core.Entity.Sales;
using Xenon.Core.Logic.Sales;
namespace Xenon.FronEnd.TestConsole.Sales
{
    class Program
    {
        static void Main(string[] args)
        {
            //var data = SintomasLogic.GetInstance.Buscar("", "");
            //foreach (Sintomas sin in data) {
            //    Console.WriteLine(sin.IdSintoma + " " + sin.Estado.ToString());
            //}


            string cod = SintomasLogic.GetInstance.GenerarCorrelativo();
            Console.WriteLine(cod);
            Console.ReadKey();
        }
    }
}
