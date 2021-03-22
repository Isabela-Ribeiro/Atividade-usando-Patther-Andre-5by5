using Data;
using Model;
using Proxy;
using System;
using System.Collections.Generic;

namespace Restaurante
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ReloadTable();
        }
        protected void btnLogs_Click(object sender, EventArgs e)
        {
            var pizza = new Pizza()
            {
                Descricao = txtNome.Text,
                Valor = decimal.Parse(txtValor.Text)
            };

            if (this.Crud().Insert(pizza))
            {
                lblMSG.Text = "Registro Inserido!";
                SaveLog("Registro Inserido!");
                ReloadTable();
            }
            else
            {
                lblMSG.Text = "Erro ao inserir registro!";
                SaveLog("Erro ao inserir registro!");
            }

        }
        private void ReloadTable()
        {
            GVTable.DataSource = this.Crud().Select();
            GVTable.DataBind();
            SaveLog("Consultou Informações");
        }

        private IPizzaDB Crud()
        {
            return new PizzaDB();
        }

        private void SaveLog(string msg)
        {
            IMonitore proxy = new Proxy.Proxy(new LogDB());
            proxy.SaveLog(msg);
        }

        private List<Log> GetLogs()
        {
            IMonitore proxy = new Proxy.Proxy(new LogDB());
            return proxy.Select();
        }

    }
}
