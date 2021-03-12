procedure InitializeComponent;
    begin
        var resources: System.ComponentModel.ComponentResourceManager := new System.ComponentModel.ComponentResourceManager(typeof(MainForm));
        self.menuStrip := new System.Windows.Forms.MenuStrip();
        self.mnuFile := new System.Windows.Forms.ToolStripMenuItem();
        self.newToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.openToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.saveToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.saveAsToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem1 := new System.Windows.Forms.ToolStripSeparator();
        self.printToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.printSetupToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem2 := new System.Windows.Forms.ToolStripSeparator();
        self.exitToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.mnuEdit := new System.Windows.Forms.ToolStripMenuItem();
        self.undoToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.redoToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem3 := new System.Windows.Forms.ToolStripSeparator();
        self.toolStripMenuItem4 := new System.Windows.Forms.ToolStripMenuItem();
        self.cutToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.copyToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.pasteToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.pasteSepcialToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.deleteToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem5 := new System.Windows.Forms.ToolStripSeparator();
        self.findToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.replaceToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.gotoToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem6 := new System.Windows.Forms.ToolStripSeparator();
        self.refreshToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem7 := new System.Windows.Forms.ToolStripSeparator();
        self.propertiesToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.preferencesToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.mnuWindow := new System.Windows.Forms.ToolStripMenuItem();
        self.newWindowToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.tileToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.cascadeToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.arrangeAllToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem8 := new System.Windows.Forms.ToolStripSeparator();
        self.hideToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.showToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.mnuHelp := new System.Windows.Forms.ToolStripMenuItem();
        self.helpContentsToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.helpIndexToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.helpOnHelpToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem10 := new System.Windows.Forms.ToolStripSeparator();
        self.licenceInformationToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.checkForUpdatesToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem9 := new System.Windows.Forms.ToolStripSeparator();
        self.aboutToolStripMenuItem := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStrip := new System.Windows.Forms.ToolStrip();
        self.toolStripButton1 := new System.Windows.Forms.ToolStripButton();
        self.toolStripButton2 := new System.Windows.Forms.ToolStripButton();
        self.toolStripButton3 := new System.Windows.Forms.ToolStripButton();
        self.toolStripButton4 := new System.Windows.Forms.ToolStripButton();
        self.toolStripSeparator1 := new System.Windows.Forms.ToolStripSeparator();
        self.toolStripButton5 := new System.Windows.Forms.ToolStripButton();
        self.toolStripButton6 := new System.Windows.Forms.ToolStripButton();
        self.toolStripButton7 := new System.Windows.Forms.ToolStripButton();
        self.toolStripButton8 := new System.Windows.Forms.ToolStripButton();
        self.toolStripButton9 := new System.Windows.Forms.ToolStripButton();
        self.toolStripButton10 := new System.Windows.Forms.ToolStripButton();
        self.toolStripButton11 := new System.Windows.Forms.ToolStripButton();
        self.toolStripButton12 := new System.Windows.Forms.ToolStripButton();
        self.toolStripButton13 := new System.Windows.Forms.ToolStripButton();
        self.toolStripSeparator2 := new System.Windows.Forms.ToolStripSeparator();
        self.toolStripButton14 := new System.Windows.Forms.ToolStripButton();
        self.statusStrip := new System.Windows.Forms.StatusStrip();
        self.lblStatus := new System.Windows.Forms.ToolStripStatusLabel();
        self.lblError := new System.Windows.Forms.ToolStripStatusLabel();
        self.prgProgress := new System.Windows.Forms.ToolStripProgressBar();
        self.btnAction := new System.Windows.Forms.ToolStripDropDownButton();
        self.btnDirty := new System.Windows.Forms.ToolStripDropDownButton();
        self.menuStrip.SuspendLayout();
        self.toolStrip.SuspendLayout();
        self.statusStrip.SuspendLayout();
        self.SuspendLayout();
        // 
        // menuStrip
        // 
        self.menuStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[4](self.mnuFile, self.mnuEdit, self.mnuWindow, self.mnuHelp));
        self.menuStrip.Location := new System.Drawing.Point(0, 0);
        self.menuStrip.Name := 'menuStrip';
        self.menuStrip.Size := new System.Drawing.Size(624, 24);
        self.menuStrip.TabIndex := 0;
        self.menuStrip.Text := 'menuStrip1';
        // 
        // mnuFile
        // 
        self.mnuFile.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[9](self.newToolStripMenuItem, self.openToolStripMenuItem, self.saveToolStripMenuItem, self.saveAsToolStripMenuItem, self.toolStripMenuItem1, self.printToolStripMenuItem, self.printSetupToolStripMenuItem, self.toolStripMenuItem2, self.exitToolStripMenuItem));
        self.mnuFile.Name := 'mnuFile';
        self.mnuFile.Size := new System.Drawing.Size(37, 20);
        self.mnuFile.Text := '&File';
        // 
        // newToolStripMenuItem
        // 
        self.newToolStripMenuItem.Image := (System.Drawing.Image(resources.GetObject('newToolStripMenuItem.Image')));
        self.newToolStripMenuItem.Name := 'newToolStripMenuItem';
        self.newToolStripMenuItem.Size := new System.Drawing.Size(152, 22);
        self.newToolStripMenuItem.Text := '&New';
        // 
        // openToolStripMenuItem
        // 
        self.openToolStripMenuItem.Image := (System.Drawing.Image(resources.GetObject('openToolStripMenuItem.Image')));
        self.openToolStripMenuItem.Name := 'openToolStripMenuItem';
        self.openToolStripMenuItem.Size := new System.Drawing.Size(152, 22);
        self.openToolStripMenuItem.Text := '&Open';
        // 
        // saveToolStripMenuItem
        // 
        self.saveToolStripMenuItem.Image := (System.Drawing.Image(resources.GetObject('saveToolStripMenuItem.Image')));
        self.saveToolStripMenuItem.Name := 'saveToolStripMenuItem';
        self.saveToolStripMenuItem.Size := new System.Drawing.Size(152, 22);
        self.saveToolStripMenuItem.Text := '&Save';
        // 
        // saveAsToolStripMenuItem
        // 
        self.saveAsToolStripMenuItem.Image := (System.Drawing.Image(resources.GetObject('saveAsToolStripMenuItem.Image')));
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
        self.printToolStripMenuItem.Image := (System.Drawing.Image(resources.GetObject('printToolStripMenuItem.Image')));
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
        // mnuEdit
        // 
        self.mnuEdit.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[18](self.undoToolStripMenuItem, self.redoToolStripMenuItem, self.toolStripMenuItem3, self.toolStripMenuItem4, self.cutToolStripMenuItem, self.copyToolStripMenuItem, self.pasteToolStripMenuItem, self.pasteSepcialToolStripMenuItem, self.deleteToolStripMenuItem, self.toolStripMenuItem5, self.findToolStripMenuItem, self.replaceToolStripMenuItem, self.gotoToolStripMenuItem, self.toolStripMenuItem6, self.refreshToolStripMenuItem, self.toolStripMenuItem7, self.propertiesToolStripMenuItem, self.preferencesToolStripMenuItem));
        self.mnuEdit.Name := 'mnuEdit';
        self.mnuEdit.Size := new System.Drawing.Size(39, 20);
        self.mnuEdit.Text := '&Edit';
        // 
        // undoToolStripMenuItem
        // 
        self.undoToolStripMenuItem.Image := (System.Drawing.Image(resources.GetObject('undoToolStripMenuItem.Image')));
        self.undoToolStripMenuItem.Name := 'undoToolStripMenuItem';
        self.undoToolStripMenuItem.Size := new System.Drawing.Size(152, 22);
        self.undoToolStripMenuItem.Text := '&Undo';
        // 
        // redoToolStripMenuItem
        // 
        self.redoToolStripMenuItem.Image := (System.Drawing.Image(resources.GetObject('redoToolStripMenuItem.Image')));
        self.redoToolStripMenuItem.Name := 'redoToolStripMenuItem';
        self.redoToolStripMenuItem.Size := new System.Drawing.Size(152, 22);
        self.redoToolStripMenuItem.Text := '&Redo';
        // 
        // toolStripMenuItem3
        // 
        self.toolStripMenuItem3.Name := 'toolStripMenuItem3';
        self.toolStripMenuItem3.Size := new System.Drawing.Size(149, 6);
        // 
        // toolStripMenuItem4
        // 
        self.toolStripMenuItem4.Name := 'toolStripMenuItem4';
        self.toolStripMenuItem4.Size := new System.Drawing.Size(152, 22);
        self.toolStripMenuItem4.Text := 'Select &All';
        // 
        // cutToolStripMenuItem
        // 
        self.cutToolStripMenuItem.Image := (System.Drawing.Image(resources.GetObject('cutToolStripMenuItem.Image')));
        self.cutToolStripMenuItem.Name := 'cutToolStripMenuItem';
        self.cutToolStripMenuItem.Size := new System.Drawing.Size(152, 22);
        self.cutToolStripMenuItem.Text := 'Cu&t';
        // 
        // copyToolStripMenuItem
        // 
        self.copyToolStripMenuItem.Image := (System.Drawing.Image(resources.GetObject('copyToolStripMenuItem.Image')));
        self.copyToolStripMenuItem.Name := 'copyToolStripMenuItem';
        self.copyToolStripMenuItem.Size := new System.Drawing.Size(152, 22);
        self.copyToolStripMenuItem.Text := '&Copy';
        // 
        // pasteToolStripMenuItem
        // 
        self.pasteToolStripMenuItem.Image := (System.Drawing.Image(resources.GetObject('pasteToolStripMenuItem.Image')));
        self.pasteToolStripMenuItem.Name := 'pasteToolStripMenuItem';
        self.pasteToolStripMenuItem.Size := new System.Drawing.Size(152, 22);
        self.pasteToolStripMenuItem.Text := '&Paste';
        // 
        // pasteSepcialToolStripMenuItem
        // 
        self.pasteSepcialToolStripMenuItem.Name := 'pasteSepcialToolStripMenuItem';
        self.pasteSepcialToolStripMenuItem.Size := new System.Drawing.Size(152, 22);
        self.pasteSepcialToolStripMenuItem.Text := 'Paste &Special...';
        self.pasteSepcialToolStripMenuItem.Click += pasteSepcialToolStripMenuItem_Click;
        // 
        // deleteToolStripMenuItem
        // 
        self.deleteToolStripMenuItem.Image := (System.Drawing.Image(resources.GetObject('deleteToolStripMenuItem.Image')));
        self.deleteToolStripMenuItem.Name := 'deleteToolStripMenuItem';
        self.deleteToolStripMenuItem.Size := new System.Drawing.Size(152, 22);
        self.deleteToolStripMenuItem.Text := '&Delete';
        // 
        // toolStripMenuItem5
        // 
        self.toolStripMenuItem5.Name := 'toolStripMenuItem5';
        self.toolStripMenuItem5.Size := new System.Drawing.Size(149, 6);
        // 
        // findToolStripMenuItem
        // 
        self.findToolStripMenuItem.Image := (System.Drawing.Image(resources.GetObject('findToolStripMenuItem.Image')));
        self.findToolStripMenuItem.Name := 'findToolStripMenuItem';
        self.findToolStripMenuItem.Size := new System.Drawing.Size(152, 22);
        self.findToolStripMenuItem.Text := '&Find...';
        // 
        // replaceToolStripMenuItem
        // 
        self.replaceToolStripMenuItem.Image := (System.Drawing.Image(resources.GetObject('replaceToolStripMenuItem.Image')));
        self.replaceToolStripMenuItem.Name := 'replaceToolStripMenuItem';
        self.replaceToolStripMenuItem.Size := new System.Drawing.Size(152, 22);
        self.replaceToolStripMenuItem.Text := 'Rep&lace...';
        // 
        // gotoToolStripMenuItem
        // 
        self.gotoToolStripMenuItem.Name := 'gotoToolStripMenuItem';
        self.gotoToolStripMenuItem.Size := new System.Drawing.Size(152, 22);
        self.gotoToolStripMenuItem.Text := '&Go To...';
        // 
        // toolStripMenuItem6
        // 
        self.toolStripMenuItem6.Name := 'toolStripMenuItem6';
        self.toolStripMenuItem6.Size := new System.Drawing.Size(149, 6);
        // 
        // refreshToolStripMenuItem
        // 
        self.refreshToolStripMenuItem.Image := (System.Drawing.Image(resources.GetObject('refreshToolStripMenuItem.Image')));
        self.refreshToolStripMenuItem.Name := 'refreshToolStripMenuItem';
        self.refreshToolStripMenuItem.Size := new System.Drawing.Size(152, 22);
        self.refreshToolStripMenuItem.Text := 'R&efresh';
        // 
        // toolStripMenuItem7
        // 
        self.toolStripMenuItem7.Name := 'toolStripMenuItem7';
        self.toolStripMenuItem7.Size := new System.Drawing.Size(149, 6);
        // 
        // propertiesToolStripMenuItem
        // 
        self.propertiesToolStripMenuItem.Name := 'propertiesToolStripMenuItem';
        self.propertiesToolStripMenuItem.Size := new System.Drawing.Size(152, 22);
        self.propertiesToolStripMenuItem.Text := 'Pr&operties...';
        // 
        // preferencesToolStripMenuItem
        // 
        self.preferencesToolStripMenuItem.Image := (System.Drawing.Image(resources.GetObject('preferencesToolStripMenuItem.Image')));
        self.preferencesToolStripMenuItem.Name := 'preferencesToolStripMenuItem';
        self.preferencesToolStripMenuItem.Size := new System.Drawing.Size(152, 22);
        self.preferencesToolStripMenuItem.Text := 'Pr&eferences...';
        // 
        // mnuWindow
        // 
        self.mnuWindow.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[7](self.newWindowToolStripMenuItem, self.tileToolStripMenuItem, self.cascadeToolStripMenuItem, self.arrangeAllToolStripMenuItem, self.toolStripMenuItem8, self.hideToolStripMenuItem, self.showToolStripMenuItem));
        self.mnuWindow.Name := 'mnuWindow';
        self.mnuWindow.Size := new System.Drawing.Size(63, 20);
        self.mnuWindow.Text := '&Window';
        // 
        // newWindowToolStripMenuItem
        // 
        self.newWindowToolStripMenuItem.Name := 'newWindowToolStripMenuItem';
        self.newWindowToolStripMenuItem.Size := new System.Drawing.Size(152, 22);
        self.newWindowToolStripMenuItem.Text := '&New Window';
        // 
        // tileToolStripMenuItem
        // 
        self.tileToolStripMenuItem.Name := 'tileToolStripMenuItem';
        self.tileToolStripMenuItem.Size := new System.Drawing.Size(152, 22);
        self.tileToolStripMenuItem.Text := '&Tile';
        // 
        // cascadeToolStripMenuItem
        // 
        self.cascadeToolStripMenuItem.Name := 'cascadeToolStripMenuItem';
        self.cascadeToolStripMenuItem.Size := new System.Drawing.Size(152, 22);
        self.cascadeToolStripMenuItem.Text := '&Cascade';
        // 
        // arrangeAllToolStripMenuItem
        // 
        self.arrangeAllToolStripMenuItem.Name := 'arrangeAllToolStripMenuItem';
        self.arrangeAllToolStripMenuItem.Size := new System.Drawing.Size(152, 22);
        self.arrangeAllToolStripMenuItem.Text := '&Arrange All';
        // 
        // toolStripMenuItem8
        // 
        self.toolStripMenuItem8.Name := 'toolStripMenuItem8';
        self.toolStripMenuItem8.Size := new System.Drawing.Size(149, 6);
        // 
        // hideToolStripMenuItem
        // 
        self.hideToolStripMenuItem.Name := 'hideToolStripMenuItem';
        self.hideToolStripMenuItem.Size := new System.Drawing.Size(152, 22);
        self.hideToolStripMenuItem.Text := '&Hide';
        // 
        // showToolStripMenuItem
        // 
        self.showToolStripMenuItem.Name := 'showToolStripMenuItem';
        self.showToolStripMenuItem.Size := new System.Drawing.Size(152, 22);
        self.showToolStripMenuItem.Text := '&Show';
        // 
        // mnuHelp
        // 
        self.mnuHelp.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[8](self.helpContentsToolStripMenuItem, self.helpIndexToolStripMenuItem, self.helpOnHelpToolStripMenuItem, self.toolStripMenuItem10, self.licenceInformationToolStripMenuItem, self.checkForUpdatesToolStripMenuItem, self.toolStripMenuItem9, self.aboutToolStripMenuItem));
        self.mnuHelp.Name := 'mnuHelp';
        self.mnuHelp.Size := new System.Drawing.Size(44, 20);
        self.mnuHelp.Text := '&Help';
        // 
        // helpContentsToolStripMenuItem
        // 
        self.helpContentsToolStripMenuItem.Image := (System.Drawing.Image(resources.GetObject('helpContentsToolStripMenuItem.Image')));
        self.helpContentsToolStripMenuItem.Name := 'helpContentsToolStripMenuItem';
        self.helpContentsToolStripMenuItem.Size := new System.Drawing.Size(180, 22);
        self.helpContentsToolStripMenuItem.Text := 'Help &Contents';
        // 
        // helpIndexToolStripMenuItem
        // 
        self.helpIndexToolStripMenuItem.Name := 'helpIndexToolStripMenuItem';
        self.helpIndexToolStripMenuItem.Size := new System.Drawing.Size(180, 22);
        self.helpIndexToolStripMenuItem.Text := 'Help &Index';
        // 
        // helpOnHelpToolStripMenuItem
        // 
        self.helpOnHelpToolStripMenuItem.Name := 'helpOnHelpToolStripMenuItem';
        self.helpOnHelpToolStripMenuItem.Size := new System.Drawing.Size(180, 22);
        self.helpOnHelpToolStripMenuItem.Text := 'Help &On Help';
        // 
        // toolStripMenuItem10
        // 
        self.toolStripMenuItem10.Name := 'toolStripMenuItem10';
        self.toolStripMenuItem10.Size := new System.Drawing.Size(177, 6);
        // 
        // licenceInformationToolStripMenuItem
        // 
        self.licenceInformationToolStripMenuItem.Name := 'licenceInformationToolStripMenuItem';
        self.licenceInformationToolStripMenuItem.Size := new System.Drawing.Size(180, 22);
        self.licenceInformationToolStripMenuItem.Text := '&Licence Information';
        // 
        // checkForUpdatesToolStripMenuItem
        // 
        self.checkForUpdatesToolStripMenuItem.Name := 'checkForUpdatesToolStripMenuItem';
        self.checkForUpdatesToolStripMenuItem.Size := new System.Drawing.Size(180, 22);
        self.checkForUpdatesToolStripMenuItem.Text := '&Check for Updates';
        // 
        // toolStripMenuItem9
        // 
        self.toolStripMenuItem9.Name := 'toolStripMenuItem9';
        self.toolStripMenuItem9.Size := new System.Drawing.Size(177, 6);
        // 
        // aboutToolStripMenuItem
        // 
        self.aboutToolStripMenuItem.Image := (System.Drawing.Image(resources.GetObject('aboutToolStripMenuItem.Image')));
        self.aboutToolStripMenuItem.Name := 'aboutToolStripMenuItem';
        self.aboutToolStripMenuItem.Size := new System.Drawing.Size(180, 22);
        self.aboutToolStripMenuItem.Text := '&About...';
        // 
        // toolStrip
        // 
        self.toolStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[16](self.toolStripButton1, self.toolStripButton2, self.toolStripButton3, self.toolStripButton4, self.toolStripSeparator1, self.toolStripButton5, self.toolStripButton6, self.toolStripButton7, self.toolStripButton8, self.toolStripButton9, self.toolStripButton10, self.toolStripButton11, self.toolStripButton12, self.toolStripButton13, self.toolStripSeparator2, self.toolStripButton14));
        self.toolStrip.Location := new System.Drawing.Point(0, 24);
        self.toolStrip.Name := 'toolStrip';
        self.toolStrip.Size := new System.Drawing.Size(624, 25);
        self.toolStrip.TabIndex := 1;
        self.toolStrip.Text := 'toolStrip1';
        // 
        // toolStripButton1
        // 
        self.toolStripButton1.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.toolStripButton1.Image := (System.Drawing.Image(resources.GetObject('toolStripButton1.Image')));
        self.toolStripButton1.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.toolStripButton1.Name := 'toolStripButton1';
        self.toolStripButton1.Size := new System.Drawing.Size(23, 22);
        self.toolStripButton1.Text := 'New';
        // 
        // toolStripButton2
        // 
        self.toolStripButton2.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.toolStripButton2.Image := (System.Drawing.Image(resources.GetObject('toolStripButton2.Image')));
        self.toolStripButton2.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.toolStripButton2.Name := 'toolStripButton2';
        self.toolStripButton2.Size := new System.Drawing.Size(23, 22);
        self.toolStripButton2.Text := 'Open';
        // 
        // toolStripButton3
        // 
        self.toolStripButton3.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.toolStripButton3.Image := (System.Drawing.Image(resources.GetObject('toolStripButton3.Image')));
        self.toolStripButton3.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.toolStripButton3.Name := 'toolStripButton3';
        self.toolStripButton3.Size := new System.Drawing.Size(23, 22);
        self.toolStripButton3.Text := 'Save';
        // 
        // toolStripButton4
        // 
        self.toolStripButton4.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.toolStripButton4.Image := (System.Drawing.Image(resources.GetObject('toolStripButton4.Image')));
        self.toolStripButton4.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.toolStripButton4.Name := 'toolStripButton4';
        self.toolStripButton4.Size := new System.Drawing.Size(23, 22);
        self.toolStripButton4.Text := 'Print';
        // 
        // toolStripSeparator1
        // 
        self.toolStripSeparator1.Name := 'toolStripSeparator1';
        self.toolStripSeparator1.Size := new System.Drawing.Size(6, 25);
        // 
        // toolStripButton5
        // 
        self.toolStripButton5.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.toolStripButton5.Image := (System.Drawing.Image(resources.GetObject('toolStripButton5.Image')));
        self.toolStripButton5.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.toolStripButton5.Name := 'toolStripButton5';
        self.toolStripButton5.Size := new System.Drawing.Size(23, 22);
        self.toolStripButton5.Text := 'Undo';
        // 
        // toolStripButton6
        // 
        self.toolStripButton6.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.toolStripButton6.Image := (System.Drawing.Image(resources.GetObject('toolStripButton6.Image')));
        self.toolStripButton6.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.toolStripButton6.Name := 'toolStripButton6';
        self.toolStripButton6.Size := new System.Drawing.Size(23, 22);
        self.toolStripButton6.Text := 'Redo';
        // 
        // toolStripButton7
        // 
        self.toolStripButton7.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.toolStripButton7.Image := (System.Drawing.Image(resources.GetObject('toolStripButton7.Image')));
        self.toolStripButton7.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.toolStripButton7.Name := 'toolStripButton7';
        self.toolStripButton7.Size := new System.Drawing.Size(23, 22);
        self.toolStripButton7.Text := 'Cut';
        // 
        // toolStripButton8
        // 
        self.toolStripButton8.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.toolStripButton8.Image := (System.Drawing.Image(resources.GetObject('toolStripButton8.Image')));
        self.toolStripButton8.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.toolStripButton8.Name := 'toolStripButton8';
        self.toolStripButton8.Size := new System.Drawing.Size(23, 22);
        self.toolStripButton8.Text := 'Copy';
        // 
        // toolStripButton9
        // 
        self.toolStripButton9.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.toolStripButton9.Image := (System.Drawing.Image(resources.GetObject('toolStripButton9.Image')));
        self.toolStripButton9.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.toolStripButton9.Name := 'toolStripButton9';
        self.toolStripButton9.Size := new System.Drawing.Size(23, 22);
        self.toolStripButton9.Text := 'Paste';
        // 
        // toolStripButton10
        // 
        self.toolStripButton10.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.toolStripButton10.Image := (System.Drawing.Image(resources.GetObject('toolStripButton10.Image')));
        self.toolStripButton10.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.toolStripButton10.Name := 'toolStripButton10';
        self.toolStripButton10.Size := new System.Drawing.Size(23, 22);
        self.toolStripButton10.Text := 'Find';
        // 
        // toolStripButton11
        // 
        self.toolStripButton11.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.toolStripButton11.Image := (System.Drawing.Image(resources.GetObject('toolStripButton11.Image')));
        self.toolStripButton11.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.toolStripButton11.Name := 'toolStripButton11';
        self.toolStripButton11.Size := new System.Drawing.Size(23, 22);
        self.toolStripButton11.Text := 'Replace';
        // 
        // toolStripButton12
        // 
        self.toolStripButton12.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.toolStripButton12.Image := (System.Drawing.Image(resources.GetObject('toolStripButton12.Image')));
        self.toolStripButton12.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.toolStripButton12.Name := 'toolStripButton12';
        self.toolStripButton12.Size := new System.Drawing.Size(23, 22);
        self.toolStripButton12.Text := 'Refresh';
        // 
        // toolStripButton13
        // 
        self.toolStripButton13.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.toolStripButton13.Image := (System.Drawing.Image(resources.GetObject('toolStripButton13.Image')));
        self.toolStripButton13.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.toolStripButton13.Name := 'toolStripButton13';
        self.toolStripButton13.Size := new System.Drawing.Size(23, 22);
        self.toolStripButton13.Text := 'Preferences';
        // 
        // toolStripSeparator2
        // 
        self.toolStripSeparator2.Name := 'toolStripSeparator2';
        self.toolStripSeparator2.Size := new System.Drawing.Size(6, 25);
        // 
        // toolStripButton14
        // 
        self.toolStripButton14.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.toolStripButton14.Image := (System.Drawing.Image(resources.GetObject('toolStripButton14.Image')));
        self.toolStripButton14.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.toolStripButton14.Name := 'toolStripButton14';
        self.toolStripButton14.Size := new System.Drawing.Size(23, 22);
        self.toolStripButton14.Text := 'Help';
        // 
        // statusStrip
        // 
        self.statusStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[5](self.lblStatus, self.lblError, self.prgProgress, self.btnAction, self.btnDirty));
        self.statusStrip.Location := new System.Drawing.Point(0, 420);
        self.statusStrip.Name := 'statusStrip';
        self.statusStrip.Size := new System.Drawing.Size(624, 22);
        self.statusStrip.TabIndex := 2;
        self.statusStrip.Text := 'statusStrip1';
        // 
        // lblStatus
        // 
        self.lblStatus.ForeColor := System.Drawing.Color.Green;
        self.lblStatus.Name := 'lblStatus';
        self.lblStatus.Size := new System.Drawing.Size(39, 17);
        self.lblStatus.Text := 'Status';
        // 
        // lblError
        // 
        self.lblError.ForeColor := System.Drawing.Color.Red;
        self.lblError.Name := 'lblError';
        self.lblError.Size := new System.Drawing.Size(32, 17);
        self.lblError.Text := 'Error';
        // 
        // prgProgress
        // 
        self.prgProgress.Name := 'prgProgress';
        self.prgProgress.Size := new System.Drawing.Size(100, 16);
        // 
        // btnAction
        // 
        self.btnAction.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.btnAction.Image := (System.Drawing.Image(resources.GetObject('btnAction.Image')));
        self.btnAction.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.btnAction.Name := 'btnAction';
        self.btnAction.Size := new System.Drawing.Size(29, 20);
        self.btnAction.Text := 'toolStripDropDownButton1';
        // 
        // btnDirty
        // 
        self.btnDirty.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.btnDirty.Image := (System.Drawing.Image(resources.GetObject('btnDirty.Image')));
        self.btnDirty.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.btnDirty.Name := 'btnDirty';
        self.btnDirty.Size := new System.Drawing.Size(29, 20);
        self.btnDirty.Text := 'toolStripDropDownButton2';
        // 
        // MainForm
        // 
        self.ClientSize := new System.Drawing.Size(624, 442);
        self.Controls.Add(self.statusStrip);
        self.Controls.Add(self.toolStrip);
        self.Controls.Add(self.menuStrip);
        self.MainMenuStrip := self.menuStrip;
        self.Name := 'MainForm';
        self.Text := '(new) - Pascal Generic GUI w/ PascalABC';
        self.menuStrip.ResumeLayout(false);
        self.menuStrip.PerformLayout();
        self.toolStrip.ResumeLayout(false);
        self.toolStrip.PerformLayout();
        self.statusStrip.ResumeLayout(false);
        self.statusStrip.PerformLayout();
        self.ResumeLayout(false);
        self.PerformLayout();
    end;
