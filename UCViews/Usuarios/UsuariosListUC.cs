﻿using DomainLayer.Usuarios;

using InfraStructure;
using InfraStructure.Repository.Usuarios;

using ServiceLayer.CommonServices;

using ServicesLayer.Usuarios;

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MLicencas.UCViews.Usuarios
{
    public partial class UsuariosListUC : UserControl
    {
        //MODELS AND LISTMODELS
        private IUsuarioModel usuario;
        private IEnumerable<IUsuarioModel> usuarioListModel;


        //SERVICES
        private QueryStringServices _queryString;
        private UsuariosServices _usuariosServices;

        public UsuariosListUC()
        {

            LoadServices();
            InitializeComponent();
            LoadModels();
            LoadDGVUsuarios();
        }

        private void LoadDGVUsuarios()
        {


            DataTable tableUsuarios = ModelaTableGrid();
            DataRow row = ModelaRowTable(tableUsuarios, usuarioListModel);
            dgvUsuarios.DataSource = tableUsuarios;
            ConfiguraDataGridView();

        }


        private DataTable ModelaTableGrid()
        {
            DataTable table = new DataTable();
            table.Columns.Add("Id", typeof(int));
            table.Columns.Add("Login", typeof(string));
            table.Columns.Add("Nome", typeof(string));
            table.Columns.Add("Cargo", typeof(string));
            table.Columns.Add("Ativo", typeof(bool));

            return table;

        }

        private DataRow ModelaRowTable(DataTable tableUsuarios, IEnumerable<IUsuarioModel> usuarioListModel)
        {
            DataRow row = null;
            if (usuarioListModel.Any())
            {
                foreach (var usuario in usuarioListModel)
                {
                    row = tableUsuarios.NewRow();
                    row["Id"] = usuario.Id;
                    row["Login"] = usuario.Login;
                    row["Nome"] = usuario.Nome;
                    row["Cargo"] = usuario.Cargo;
                    row["Ativo"] = bool.Parse(usuario.Ativo.ToString());

                    tableUsuarios.Rows.Add(row);
                }
            }
            return row;
        }
        private void ConfiguraDataGridView()
        {
            dgvUsuarios.Columns["Id"].Width = 30;
            dgvUsuarios.Columns["Ativo"].Width = 40;
            dgvUsuarios.Columns["Nome"].Width = 225;


        }

        private void LoadModels()
        {
            usuarioListModel = new List<IUsuarioModel>();
            usuarioListModel = (List<IUsuarioModel>)_usuariosServices.GetAll();
        }

        private void LoadServices()
        {
            _queryString = new QueryStringServices(new QueryString());
            _usuariosServices = new UsuariosServices(new UsuarioRepository(_queryString.GetQueryApp()), new ModelDataAnnotationCheck());
        }
    }
}