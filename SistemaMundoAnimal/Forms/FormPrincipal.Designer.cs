﻿namespace SistemaMundoAnimal.Forms {
    partial class FormPrincipal {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing) {
            if (disposing && (components != null)) {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent() {
            this.TabControl = new System.Windows.Forms.TabControl();
            this.PageRecursosHumanos = new System.Windows.Forms.TabPage();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.PainelPrincipal = new System.Windows.Forms.Panel();
            this.BtnCadastrarFuncionario = new System.Windows.Forms.Button();
            this.TabControl.SuspendLayout();
            this.PageRecursosHumanos.SuspendLayout();
            this.SuspendLayout();
            // 
            // TabControl
            // 
            this.TabControl.Controls.Add(this.PageRecursosHumanos);
            this.TabControl.Controls.Add(this.tabPage2);
            this.TabControl.Dock = System.Windows.Forms.DockStyle.Top;
            this.TabControl.Location = new System.Drawing.Point(0, 0);
            this.TabControl.Name = "TabControl";
            this.TabControl.SelectedIndex = 0;
            this.TabControl.Size = new System.Drawing.Size(1008, 100);
            this.TabControl.TabIndex = 0;
            // 
            // PageRecursosHumanos
            // 
            this.PageRecursosHumanos.Controls.Add(this.BtnCadastrarFuncionario);
            this.PageRecursosHumanos.Location = new System.Drawing.Point(4, 22);
            this.PageRecursosHumanos.Name = "PageRecursosHumanos";
            this.PageRecursosHumanos.Padding = new System.Windows.Forms.Padding(3);
            this.PageRecursosHumanos.Size = new System.Drawing.Size(1000, 74);
            this.PageRecursosHumanos.TabIndex = 0;
            this.PageRecursosHumanos.Text = "Resursos Humanos";
            this.PageRecursosHumanos.UseVisualStyleBackColor = true;
            // 
            // tabPage2
            // 
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(1000, 74);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "tabPage2";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // PainelPrincipal
            // 
            this.PainelPrincipal.Dock = System.Windows.Forms.DockStyle.Fill;
            this.PainelPrincipal.Location = new System.Drawing.Point(0, 100);
            this.PainelPrincipal.Name = "PainelPrincipal";
            this.PainelPrincipal.Size = new System.Drawing.Size(1008, 590);
            this.PainelPrincipal.TabIndex = 1;
            // 
            // BtnCadastrarFuncionario
            // 
            this.BtnCadastrarFuncionario.Location = new System.Drawing.Point(8, 6);
            this.BtnCadastrarFuncionario.Name = "BtnCadastrarFuncionario";
            this.BtnCadastrarFuncionario.Size = new System.Drawing.Size(148, 23);
            this.BtnCadastrarFuncionario.TabIndex = 0;
            this.BtnCadastrarFuncionario.Text = "Cadastrar Funcionario";
            this.BtnCadastrarFuncionario.UseVisualStyleBackColor = true;
            this.BtnCadastrarFuncionario.Click += new System.EventHandler(this.BtnCadastrarFuncionario_Click);
            // 
            // FormPrincipal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(1008, 690);
            this.Controls.Add(this.PainelPrincipal);
            this.Controls.Add(this.TabControl);
            this.MaximumSize = new System.Drawing.Size(1024, 728);
            this.MinimumSize = new System.Drawing.Size(1024, 728);
            this.Name = "FormPrincipal";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Sistema Mundo Animal";
            this.TabControl.ResumeLayout(false);
            this.PageRecursosHumanos.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl TabControl;
        private System.Windows.Forms.TabPage PageRecursosHumanos;
        private System.Windows.Forms.Button BtnCadastrarFuncionario;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.Panel PainelPrincipal;

    }
}