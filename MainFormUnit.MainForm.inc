procedure InitializeComponent;
    begin
        var resources: System.ComponentModel.ComponentResourceManager := new System.ComponentModel.ComponentResourceManager(typeof(MainForm));
        self.menuStrip1 := new System.Windows.Forms.MenuStrip();
        self.fileToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.editToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.windowToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.helpToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.newToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.openToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.saveToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.saveAsToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem1 := new System.Windows.Forms.ToolStripSeparator();
        self.printToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.printSetupToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem2 := new System.Windows.Forms.ToolStripSeparator();
        self.exitToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStrip1 := new System.Windows.Forms.ToolStrip();
        self.toolStripButton1 := new System.Windows.Forms.ToolStripButton();
        self.statusStrip1 := new System.Windows.Forms.StatusStrip();
        self.toolStripStatusLabel1 := new System.Windows.Forms.ToolStripStatusLabel();
        self.toolStripStatusLabel2 := new System.Windows.Forms.ToolStripStatusLabel();
        self.toolStripProgressBar1 := new System.Windows.Forms.ToolStripProgressBar();
        self.toolStripDropDownButton1 := new System.Windows.Forms.ToolStripDropDownButton();
        self.toolStripDropDownButton2 := new System.Windows.Forms.ToolStripDropDownButton();
        self.menuStrip1.SuspendLayout();
        self.toolStrip1.SuspendLayout();
        self.statusStrip1.SuspendLayout();
        self.SuspendLayout();
        // 
        // menuStrip1
        // 
        self.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[4](self.fileToolStripMenuItem, self.editToolStripMenuItem, self.windowToolStripMenuItem, self.helpToolStripMenuItem));
        self.menuStrip1.Location := new System.Drawing.Point(0, 0);
        self.menuStrip1.Name := 'menuStrip1';
        self.menuStrip1.Size := new System.Drawing.Size(476, 24);
        self.menuStrip1.TabIndex := 0;
        self.menuStrip1.Text := 'menuStrip1';
        // 
        // fileToolStripMenuItem
        // 
        self.fileToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[9](self.newToolStripMenuItem, self.openToolStripMenuItem, self.saveToolStripMenuItem, self.saveAsToolStripMenuItem, self.toolStripMenuItem1, self.printToolStripMenuItem, self.printSetupToolStripMenuItem, self.toolStripMenuItem2, self.exitToolStripMenuItem));
        self.fileToolStripMenuItem.Name := 'fileToolStripMenuItem';
        self.fileToolStripMenuItem.Size := new System.Drawing.Size(37, 20);
        self.fileToolStripMenuItem.Text := '&File';
        // 
        // editToolStripMenuItem
        // 
        self.editToolStripMenuItem.Name := 'editToolStripMenuItem';
        self.editToolStripMenuItem.Size := new System.Drawing.Size(39, 20);
        self.editToolStripMenuItem.Text := '&Edit';
        // 
        // windowToolStripMenuItem
        // 
        self.windowToolStripMenuItem.Name := 'windowToolStripMenuItem';
        self.windowToolStripMenuItem.Size := new System.Drawing.Size(63, 20);
        self.windowToolStripMenuItem.Text := '&Window';
        // 
        // helpToolStripMenuItem
        // 
        self.helpToolStripMenuItem.Name := 'helpToolStripMenuItem';
        self.helpToolStripMenuItem.Size := new System.Drawing.Size(44, 20);
        self.helpToolStripMenuItem.Text := '&Help';
        // 
        // newToolStripMenuItem
        // 
        self.newToolStripMenuItem.Name := 'newToolStripMenuItem';
        self.newToolStripMenuItem.Size := new System.Drawing.Size(152, 22);
        self.newToolStripMenuItem.Text := '&New';
        // 
        // openToolStripMenuItem
        // 
        self.openToolStripMenuItem.Name := 'openToolStripMenuItem';
        self.openToolStripMenuItem.Size := new System.Drawing.Size(152, 22);
        self.openToolStripMenuItem.Text := '&Open';
        // 
        // saveToolStripMenuItem
        // 
        self.saveToolStripMenuItem.Name := 'saveToolStripMenuItem';
        self.saveToolStripMenuItem.Size := new System.Drawing.Size(152, 22);
        self.saveToolStripMenuItem.Text := '&Save';
        // 
        // saveAsToolStripMenuItem
        // 
        self.saveAsToolStripMenuItem.Name := 'saveAsToolStripMenuItem';
        self.saveAsToolStripMenuItem.Size := new System.Drawing.Size(152, 22);
        self.saveAsToolStripMenuItem.Text := 'Save &As...';
        // 
        // toolStripMenuItem1
        // 
        self.toolStripMenuItem1.Name := 'toolStripMenuItem1';
        self.toolStripMenuItem1.Size := new System.Drawing.Size(149, 6);
        // 
        // printToolStripMenuItem
        // 
        self.printToolStripMenuItem.Name := 'printToolStripMenuItem';
        self.printToolStripMenuItem.Size := new System.Drawing.Size(152, 22);
        self.printToolStripMenuItem.Text := '&Print';
        // 
        // printSetupToolStripMenuItem
        // 
        self.printSetupToolStripMenuItem.Name := 'printSetupToolStripMenuItem';
        self.printSetupToolStripMenuItem.Size := new System.Drawing.Size(152, 22);
        self.printSetupToolStripMenuItem.Text := 'P&rint Setup...';
        // 
        // toolStripMenuItem2
        // 
        self.toolStripMenuItem2.Name := 'toolStripMenuItem2';
        self.toolStripMenuItem2.Size := new System.Drawing.Size(149, 6);
        // 
        // exitToolStripMenuItem
        // 
        self.exitToolStripMenuItem.Name := 'exitToolStripMenuItem';
        self.exitToolStripMenuItem.Size := new System.Drawing.Size(152, 22);
        self.exitToolStripMenuItem.Text := 'E&xit';
        // 
        // toolStrip1
        // 
        self.toolStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[1](self.toolStripButton1));
        self.toolStrip1.Location := new System.Drawing.Point(0, 24);
        self.toolStrip1.Name := 'toolStrip1';
        self.toolStrip1.Size := new System.Drawing.Size(476, 25);
        self.toolStrip1.TabIndex := 1;
        self.toolStrip1.Text := 'toolStrip1';
        // 
        // toolStripButton1
        // 
        self.toolStripButton1.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.toolStripButton1.Image := (System.Drawing.Image(resources.GetObject('toolStripButton1.Image')));
        self.toolStripButton1.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.toolStripButton1.Name := 'toolStripButton1';
        self.toolStripButton1.Size := new System.Drawing.Size(23, 22);
        self.toolStripButton1.Text := 'toolStripButton1';
        // 
        // statusStrip1
        // 
        self.statusStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[5](self.toolStripStatusLabel1, self.toolStripStatusLabel2, self.toolStripProgressBar1, self.toolStripDropDownButton1, self.toolStripDropDownButton2));
        self.statusStrip1.Location := new System.Drawing.Point(0, 350);
        self.statusStrip1.Name := 'statusStrip1';
        self.statusStrip1.Size := new System.Drawing.Size(476, 22);
        self.statusStrip1.TabIndex := 2;
        self.statusStrip1.Text := 'statusStrip1';
        // 
        // toolStripStatusLabel1
        // 
        self.toolStripStatusLabel1.Name := 'toolStripStatusLabel1';
        self.toolStripStatusLabel1.Size := new System.Drawing.Size(118, 17);
        self.toolStripStatusLabel1.Text := 'toolStripStatusLabel1';
        // 
        // toolStripStatusLabel2
        // 
        self.toolStripStatusLabel2.Name := 'toolStripStatusLabel2';
        self.toolStripStatusLabel2.Size := new System.Drawing.Size(118, 17);
        self.toolStripStatusLabel2.Text := 'toolStripStatusLabel2';
        // 
        // toolStripProgressBar1
        // 
        self.toolStripProgressBar1.Name := 'toolStripProgressBar1';
        self.toolStripProgressBar1.Size := new System.Drawing.Size(100, 16);
        // 
        // toolStripDropDownButton1
        // 
        self.toolStripDropDownButton1.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.toolStripDropDownButton1.Image := (System.Drawing.Image(resources.GetObject('toolStripDropDownButton1.Image')));
        self.toolStripDropDownButton1.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.toolStripDropDownButton1.Name := 'toolStripDropDownButton1';
        self.toolStripDropDownButton1.Size := new System.Drawing.Size(29, 20);
        self.toolStripDropDownButton1.Text := 'toolStripDropDownButton1';
        // 
        // toolStripDropDownButton2
        // 
        self.toolStripDropDownButton2.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.toolStripDropDownButton2.Image := (System.Drawing.Image(resources.GetObject('toolStripDropDownButton2.Image')));
        self.toolStripDropDownButton2.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.toolStripDropDownButton2.Name := 'toolStripDropDownButton2';
        self.toolStripDropDownButton2.Size := new System.Drawing.Size(29, 20);
        self.toolStripDropDownButton2.Text := 'toolStripDropDownButton2';
        // 
        // MainForm
        // 
        self.ClientSize := new System.Drawing.Size(476, 372);
        self.Controls.Add(self.statusStrip1);
        self.Controls.Add(self.toolStrip1);
        self.Controls.Add(self.menuStrip1);
        self.MainMenuStrip := self.menuStrip1;
        self.Name := 'MainForm';
        self.Text := 'MainForm';
        self.menuStrip1.ResumeLayout(false);
        self.menuStrip1.PerformLayout();
        self.toolStrip1.ResumeLayout(false);
        self.toolStrip1.PerformLayout();
        self.statusStrip1.ResumeLayout(false);
        self.statusStrip1.PerformLayout();
        self.ResumeLayout(false);
        self.PerformLayout();
    end;
