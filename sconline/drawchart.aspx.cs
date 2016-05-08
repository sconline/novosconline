using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data;
using System.Data.Common;
using System.Web.Script.Serialization;
using System.Web.Services;

namespace sconline
{

    [Serializable]
    public class Retorno
    {
        public string titulo { get; set; }
        public string valor { get; set; }
    }

    public partial class drawchart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        [WebMethod]
        public static string getData(string query)
        {
            IList<Retorno> retorno = new List<Retorno>();

            Database db = DatabaseFactory.CreateDatabase("SC");
            using (IDataReader reader = db.ExecuteReader(db.GetSqlStringCommand(query)))
            {
                while (reader.Read())
                {
                    retorno.Add(
                        new Retorno()
                        {
                            titulo = reader["TITULO"].ToString(),
                            valor = reader["VALOR"].ToString()
                        }
                        );
                }
            }

            db = null;
            return Serializar(retorno);
        }

        public static string Serializar(Object o)
        {
            JavaScriptSerializer jsSerializer = new JavaScriptSerializer();
            return jsSerializer.Serialize(o);
        }
    }
}