procedure InitializeComponent;
    begin
        var resources: System.ComponentModel.ComponentResourceManager := new System.ComponentModel.ComponentResourceManager(typeof(MainForm));
        self.menuStrip := new System.Windows.Forms.MenuStrip();
        self.mnuFile := new System.Windows.Forms.ToolStripMenuItem();
        self.mnuFileNew := new System.Windows.Forms.ToolStripMenuItem();
        self.mnuFileOpen := new System.Windows.Forms.ToolStripMenuItem();
        self.mnuFileSave := new System.Windows.Forms.ToolStripMenuItem();
        self.mnuFileSaveAs := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem1 := new System.Windows.Forms.ToolStripSeparator();
        self.mnuFilePrint := new System.Windows.Forms.ToolStripMenuItem();
        self.mnuFilePrintSetup := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem2 := new System.Windows.Forms.ToolStripSeparator();
        self.mnuFileExit := new System.Windows.Forms.ToolStripMenuItem();
        self.mnuEdit := new System.Windows.Forms.ToolStripMenuItem();
        self.mnuEditUndo := new System.Windows.Forms.ToolStripMenuItem();
        self.mnuEditRedo := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem3 := new System.Windows.Forms.ToolStripSeparator();
        self.mnuEditSelectAll := new System.Windows.Forms.ToolStripMenuItem();
        self.mnuEditCut := new System.Windows.Forms.ToolStripMenuItem();
        self.mnuEditCopy := new System.Windows.Forms.ToolStripMenuItem();
        self.mnuEditPaste := new System.Windows.Forms.ToolStripMenuItem();
        self.mnuEditPasteSpecial := new System.Windows.Forms.ToolStripMenuItem();
        self.mnuEditDelete := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem5 := new System.Windows.Forms.ToolStripSeparator();
        self.mnuEditFind := new System.Windows.Forms.ToolStripMenuItem();
        self.mnuEditReplace := new System.Windows.Forms.ToolStripMenuItem();
        self.mnuEditGoto := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem6 := new System.Windows.Forms.ToolStripSeparator();
        self.mnuEditRefresh := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem7 := new System.Windows.Forms.ToolStripSeparator();
        self.mnuEditProperties := new System.Windows.Forms.ToolStripMenuItem();
        self.mnuEditPreferences := new System.Windows.Forms.ToolStripMenuItem();
        self.mnuWindow := new System.Windows.Forms.ToolStripMenuItem();
        self.mnuWindowNewWindow := new System.Windows.Forms.ToolStripMenuItem();
        self.mnuWindowTile := new System.Windows.Forms.ToolStripMenuItem();
        self.mnuWindowCascade := new System.Windows.Forms.ToolStripMenuItem();
        self.mnuWindowArrangeAll := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem8 := new System.Windows.Forms.ToolStripSeparator();
        self.mnuWindowHide := new System.Windows.Forms.ToolStripMenuItem();
        self.mnuWindowShow := new System.Windows.Forms.ToolStripMenuItem();
        self.mnuHelp := new System.Windows.Forms.ToolStripMenuItem();
        self.mnuHelpHelpContents := new System.Windows.Forms.ToolStripMenuItem();
        self.mnuHelpHelpIndex := new System.Windows.Forms.ToolStripMenuItem();
        self.mnuHelpHelpOnHelp := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem10 := new System.Windows.Forms.ToolStripSeparator();
        self.mnuHelpLicenceInformation := new System.Windows.Forms.ToolStripMenuItem();
        self.mnuHelpCheckForUpdates := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStripMenuItem9 := new System.Windows.Forms.ToolStripSeparator();
        self.mnuHelpAbout := new System.Windows.Forms.ToolStripMenuItem();
        self.toolStrip := new System.Windows.Forms.ToolStrip();
        self.btnFileNew := new System.Windows.Forms.ToolStripButton();
        self.btnFileOpen := new System.Windows.Forms.ToolStripButton();
        self.btnFileSave := new System.Windows.Forms.ToolStripButton();
        self.btnFilePrint := new System.Windows.Forms.ToolStripButton();
        self.toolStripSeparator1 := new System.Windows.Forms.ToolStripSeparator();
        self.btnEditUndo := new System.Windows.Forms.ToolStripButton();
        self.btnEditRedo := new System.Windows.Forms.ToolStripButton();
        self.btnEditCut := new System.Windows.Forms.ToolStripButton();
        self.btnEditCopy := new System.Windows.Forms.ToolStripButton();
        self.btnEditPaste := new System.Windows.Forms.ToolStripButton();
        self.btnEditFind := new System.Windows.Forms.ToolStripButton();
        self.btnEditReplace := new System.Windows.Forms.ToolStripButton();
        self.btnEditRefresh := new System.Windows.Forms.ToolStripButton();
        self.btnEditPreferences := new System.Windows.Forms.ToolStripButton();
        self.toolStripSeparator2 := new System.Windows.Forms.ToolStripSeparator();
        self.btnHelpContents := new System.Windows.Forms.ToolStripButton();
        self.statusStrip := new System.Windows.Forms.StatusStrip();
        self.lblStatus := new System.Windows.Forms.ToolStripStatusLabel();
        self.lblError := new System.Windows.Forms.ToolStripStatusLabel();
        self.prgProgress := new System.Windows.Forms.ToolStripProgressBar();
        self.SomeStringLabel := new System.Windows.Forms.Label();
        self.SomeIntegerLabel := new System.Windows.Forms.Label();
        self.SomeDateLabel := new System.Windows.Forms.Label();
        self.SomeBooleanCheckBox := new System.Windows.Forms.CheckBox();
        self.SomeStringEdit := new System.Windows.Forms.TextBox();
        self.SomeIntegerEdit := new System.Windows.Forms.TextBox();
        self.SomeDateEdit := new System.Windows.Forms.DateTimePicker();
        self.lblAction := new System.Windows.Forms.ToolStripStatusLabel();
        self.lblDirty := new System.Windows.Forms.ToolStripStatusLabel();
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
        self.mnuFile.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[9](self.mnuFileNew, self.mnuFileOpen, self.mnuFileSave, self.mnuFileSaveAs, self.toolStripMenuItem1, self.mnuFilePrint, self.mnuFilePrintSetup, self.toolStripMenuItem2, self.mnuFileExit));
        self.mnuFile.Name := 'mnuFile';
        self.mnuFile.Size := new System.Drawing.Size(37, 20);
        self.mnuFile.Text := '&File';
        // 
        // mnuFileNew
        // 
        self.mnuFileNew.Image := (System.Drawing.Image(resources.GetObject('mnuFileNew.Image')));
        self.mnuFileNew.Name := 'mnuFileNew';
        self.mnuFileNew.Size := new System.Drawing.Size(141, 22);
        self.mnuFileNew.Text := '&New';
        self.mnuFileNew.Click += mnuFileNew_Click;
        // 
        // mnuFileOpen
        // 
        self.mnuFileOpen.Image := (System.Drawing.Image(resources.GetObject('mnuFileOpen.Image')));
        self.mnuFileOpen.Name := 'mnuFileOpen';
        self.mnuFileOpen.Size := new System.Drawing.Size(141, 22);
        self.mnuFileOpen.Text := '&Open';
        self.mnuFileOpen.Click += mnuFileOpen_Click;
        // 
        // mnuFileSave
        // 
        self.mnuFileSave.Image := (System.Drawing.Image(resources.GetObject('mnuFileSave.Image')));
        self.mnuFileSave.Name := 'mnuFileSave';
        self.mnuFileSave.Size := new System.Drawing.Size(141, 22);
        self.mnuFileSave.Text := '&Save';
        self.mnuFileSave.Click += mnuFileSave_Click;
        // 
        // mnuFileSaveAs
        // 
        self.mnuFileSaveAs.Image := (System.Drawing.Image(resources.GetObject('mnuFileSaveAs.Image')));
        self.mnuFileSaveAs.Name := 'mnuFileSaveAs';
        self.mnuFileSaveAs.Size := new System.Drawing.Size(141, 22);
        self.mnuFileSaveAs.Text := 'Save &As...';
        self.mnuFileSaveAs.Click += mnuFileSaveAs_Click;
        // 
        // toolStripMenuItem1
        // 
        self.toolStripMenuItem1.Name := 'toolStripMenuItem1';
        self.toolStripMenuItem1.Size := new System.Drawing.Size(138, 6);
        // 
        // mnuFilePrint
        // 
        self.mnuFilePrint.Image := (System.Drawing.Image(resources.GetObject('mnuFilePrint.Image')));
        self.mnuFilePrint.Name := 'mnuFilePrint';
        self.mnuFilePrint.Size := new System.Drawing.Size(141, 22);
        self.mnuFilePrint.Text := '&Print';
        self.mnuFilePrint.Click += mnuFilePrint_Click;
        // 
        // mnuFilePrintSetup
        // 
        self.mnuFilePrintSetup.Name := 'mnuFilePrintSetup';
        self.mnuFilePrintSetup.Size := new System.Drawing.Size(141, 22);
        self.mnuFilePrintSetup.Text := 'P&rint Setup...';
        self.mnuFilePrintSetup.Click += mnuFilePrintSetup_Click;
        // 
        // toolStripMenuItem2
        // 
        self.toolStripMenuItem2.Name := 'toolStripMenuItem2';
        self.toolStripMenuItem2.Size := new System.Drawing.Size(138, 6);
        // 
        // mnuFileExit
        // 
        self.mnuFileExit.Name := 'mnuFileExit';
        self.mnuFileExit.Size := new System.Drawing.Size(141, 22);
        self.mnuFileExit.Text := 'E&xit';
        self.mnuFileExit.Click += mnuFileExit_Click;
        // 
        // mnuEdit
        // 
        self.mnuEdit.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[18](self.mnuEditUndo, self.mnuEditRedo, self.toolStripMenuItem3, self.mnuEditSelectAll, self.mnuEditCut, self.mnuEditCopy, self.mnuEditPaste, self.mnuEditPasteSpecial, self.mnuEditDelete, self.toolStripMenuItem5, self.mnuEditFind, self.mnuEditReplace, self.mnuEditGoto, self.toolStripMenuItem6, self.mnuEditRefresh, self.toolStripMenuItem7, self.mnuEditProperties, self.mnuEditPreferences));
        self.mnuEdit.Name := 'mnuEdit';
        self.mnuEdit.Size := new System.Drawing.Size(39, 20);
        self.mnuEdit.Text := '&Edit';
        // 
        // mnuEditUndo
        // 
        self.mnuEditUndo.Image := (System.Drawing.Image(resources.GetObject('mnuEditUndo.Image')));
        self.mnuEditUndo.Name := 'mnuEditUndo';
        self.mnuEditUndo.Size := new System.Drawing.Size(151, 22);
        self.mnuEditUndo.Text := '&Undo';
        self.mnuEditUndo.Click += mnuEditUndo_Click;
        // 
        // mnuEditRedo
        // 
        self.mnuEditRedo.Image := (System.Drawing.Image(resources.GetObject('mnuEditRedo.Image')));
        self.mnuEditRedo.Name := 'mnuEditRedo';
        self.mnuEditRedo.Size := new System.Drawing.Size(151, 22);
        self.mnuEditRedo.Text := '&Redo';
        self.mnuEditRedo.Click += mnuEditRedo_Click;
        // 
        // toolStripMenuItem3
        // 
        self.toolStripMenuItem3.Name := 'toolStripMenuItem3';
        self.toolStripMenuItem3.Size := new System.Drawing.Size(148, 6);
        // 
        // mnuEditSelectAll
        // 
        self.mnuEditSelectAll.Name := 'mnuEditSelectAll';
        self.mnuEditSelectAll.Size := new System.Drawing.Size(151, 22);
        self.mnuEditSelectAll.Text := 'Select &All';
        self.mnuEditSelectAll.Click += mnuEditSelectAll_Click;
        // 
        // mnuEditCut
        // 
        self.mnuEditCut.Image := (System.Drawing.Image(resources.GetObject('mnuEditCut.Image')));
        self.mnuEditCut.Name := 'mnuEditCut';
        self.mnuEditCut.Size := new System.Drawing.Size(151, 22);
        self.mnuEditCut.Text := 'Cu&t';
        self.mnuEditCut.Click += mnuEditCut_Click;
        // 
        // mnuEditCopy
        // 
        self.mnuEditCopy.Image := (System.Drawing.Image(resources.GetObject('mnuEditCopy.Image')));
        self.mnuEditCopy.Name := 'mnuEditCopy';
        self.mnuEditCopy.Size := new System.Drawing.Size(151, 22);
        self.mnuEditCopy.Text := '&Copy';
        self.mnuEditCopy.Click += mnuEditCopy_Click;
        // 
        // mnuEditPaste
        // 
        self.mnuEditPaste.Image := (System.Drawing.Image(resources.GetObject('mnuEditPaste.Image')));
        self.mnuEditPaste.Name := 'mnuEditPaste';
        self.mnuEditPaste.Size := new System.Drawing.Size(151, 22);
        self.mnuEditPaste.Text := '&Paste';
        self.mnuEditPaste.Click += mnuEditPaste_Click;
        // 
        // mnuEditPasteSpecial
        // 
        self.mnuEditPasteSpecial.Name := 'mnuEditPasteSpecial';
        self.mnuEditPasteSpecial.Size := new System.Drawing.Size(151, 22);
        self.mnuEditPasteSpecial.Text := 'Paste &Special...';
        self.mnuEditPasteSpecial.Click += mnuEditPasteSpecial_Click;
        // 
        // mnuEditDelete
        // 
        self.mnuEditDelete.Image := (System.Drawing.Image(resources.GetObject('mnuEditDelete.Image')));
        self.mnuEditDelete.Name := 'mnuEditDelete';
        self.mnuEditDelete.Size := new System.Drawing.Size(151, 22);
        self.mnuEditDelete.Text := '&Delete';
        self.mnuEditDelete.Click += mnuEditDelete_Click;
        // 
        // toolStripMenuItem5
        // 
        self.toolStripMenuItem5.Name := 'toolStripMenuItem5';
        self.toolStripMenuItem5.Size := new System.Drawing.Size(148, 6);
        // 
        // mnuEditFind
        // 
        self.mnuEditFind.Image := (System.Drawing.Image(resources.GetObject('mnuEditFind.Image')));
        self.mnuEditFind.Name := 'mnuEditFind';
        self.mnuEditFind.Size := new System.Drawing.Size(151, 22);
        self.mnuEditFind.Text := '&Find...';
        self.mnuEditFind.Click += mnuEditFind_Click;
        // 
        // mnuEditReplace
        // 
        self.mnuEditReplace.Image := (System.Drawing.Image(resources.GetObject('mnuEditReplace.Image')));
        self.mnuEditReplace.Name := 'mnuEditReplace';
        self.mnuEditReplace.Size := new System.Drawing.Size(151, 22);
        self.mnuEditReplace.Text := 'Rep&lace...';
        self.mnuEditReplace.Click += mnuEditReplace_Click;
        // 
        // mnuEditGoto
        // 
        self.mnuEditGoto.Name := 'mnuEditGoto';
        self.mnuEditGoto.Size := new System.Drawing.Size(151, 22);
        self.mnuEditGoto.Text := '&Go To...';
        self.mnuEditGoto.Click += mnuEditGoto_Click;
        // 
        // toolStripMenuItem6
        // 
        self.toolStripMenuItem6.Name := 'toolStripMenuItem6';
        self.toolStripMenuItem6.Size := new System.Drawing.Size(148, 6);
        // 
        // mnuEditRefresh
        // 
        self.mnuEditRefresh.Image := (System.Drawing.Image(resources.GetObject('mnuEditRefresh.Image')));
        self.mnuEditRefresh.Name := 'mnuEditRefresh';
        self.mnuEditRefresh.Size := new System.Drawing.Size(151, 22);
        self.mnuEditRefresh.Text := 'R&efresh';
        self.mnuEditRefresh.Click += mnuEditRefresh_Click;
        // 
        // toolStripMenuItem7
        // 
        self.toolStripMenuItem7.Name := 'toolStripMenuItem7';
        self.toolStripMenuItem7.Size := new System.Drawing.Size(148, 6);
        // 
        // mnuEditProperties
        // 
        self.mnuEditProperties.Name := 'mnuEditProperties';
        self.mnuEditProperties.Size := new System.Drawing.Size(151, 22);
        self.mnuEditProperties.Text := 'Pr&operties...';
        self.mnuEditProperties.Click += mnuEditProperties_Click;
        // 
        // mnuEditPreferences
        // 
        self.mnuEditPreferences.Image := (System.Drawing.Image(resources.GetObject('mnuEditPreferences.Image')));
        self.mnuEditPreferences.Name := 'mnuEditPreferences';
        self.mnuEditPreferences.Size := new System.Drawing.Size(151, 22);
        self.mnuEditPreferences.Text := 'Pr&eferences...';
        self.mnuEditPreferences.Click += mnuEditPreferences_Click;
        // 
        // mnuWindow
        // 
        self.mnuWindow.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[7](self.mnuWindowNewWindow, self.mnuWindowTile, self.mnuWindowCascade, self.mnuWindowArrangeAll, self.toolStripMenuItem8, self.mnuWindowHide, self.mnuWindowShow));
        self.mnuWindow.Name := 'mnuWindow';
        self.mnuWindow.Size := new System.Drawing.Size(63, 20);
        self.mnuWindow.Text := '&Window';
        // 
        // mnuWindowNewWindow
        // 
        self.mnuWindowNewWindow.Name := 'mnuWindowNewWindow';
        self.mnuWindowNewWindow.Size := new System.Drawing.Size(145, 22);
        self.mnuWindowNewWindow.Text := '&New Window';
        self.mnuWindowNewWindow.Click += mnuWindowNewWindow_Click;
        // 
        // mnuWindowTile
        // 
        self.mnuWindowTile.Name := 'mnuWindowTile';
        self.mnuWindowTile.Size := new System.Drawing.Size(145, 22);
        self.mnuWindowTile.Text := '&Tile';
        self.mnuWindowTile.Click += mnuWindowTile_Click;
        // 
        // mnuWindowCascade
        // 
        self.mnuWindowCascade.Name := 'mnuWindowCascade';
        self.mnuWindowCascade.Size := new System.Drawing.Size(145, 22);
        self.mnuWindowCascade.Text := '&Cascade';
        self.mnuWindowCascade.Click += mnuWindowCascade_Click;
        // 
        // mnuWindowArrangeAll
        // 
        self.mnuWindowArrangeAll.Name := 'mnuWindowArrangeAll';
        self.mnuWindowArrangeAll.Size := new System.Drawing.Size(145, 22);
        self.mnuWindowArrangeAll.Text := '&Arrange All';
        self.mnuWindowArrangeAll.Click += mnuWindowArrangeAll_Click;
        // 
        // toolStripMenuItem8
        // 
        self.toolStripMenuItem8.Name := 'toolStripMenuItem8';
        self.toolStripMenuItem8.Size := new System.Drawing.Size(142, 6);
        // 
        // mnuWindowHide
        // 
        self.mnuWindowHide.Name := 'mnuWindowHide';
        self.mnuWindowHide.Size := new System.Drawing.Size(145, 22);
        self.mnuWindowHide.Text := '&Hide';
        self.mnuWindowHide.Click += mnuWindowHide_Click;
        // 
        // mnuWindowShow
        // 
        self.mnuWindowShow.Name := 'mnuWindowShow';
        self.mnuWindowShow.Size := new System.Drawing.Size(145, 22);
        self.mnuWindowShow.Text := '&Show';
        self.mnuWindowShow.Click += mnuWindowShow_Click;
        // 
        // mnuHelp
        // 
        self.mnuHelp.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[8](self.mnuHelpHelpContents, self.mnuHelpHelpIndex, self.mnuHelpHelpOnHelp, self.toolStripMenuItem10, self.mnuHelpLicenceInformation, self.mnuHelpCheckForUpdates, self.toolStripMenuItem9, self.mnuHelpAbout));
        self.mnuHelp.Name := 'mnuHelp';
        self.mnuHelp.Size := new System.Drawing.Size(44, 20);
        self.mnuHelp.Text := '&Help';
        // 
        // mnuHelpHelpContents
        // 
        self.mnuHelpHelpContents.Image := (System.Drawing.Image(resources.GetObject('mnuHelpHelpContents.Image')));
        self.mnuHelpHelpContents.Name := 'mnuHelpHelpContents';
        self.mnuHelpHelpContents.Size := new System.Drawing.Size(180, 22);
        self.mnuHelpHelpContents.Text := 'Help &Contents';
        self.mnuHelpHelpContents.Click += mnuHelpHelpContents_Click;
        // 
        // mnuHelpHelpIndex
        // 
        self.mnuHelpHelpIndex.Name := 'mnuHelpHelpIndex';
        self.mnuHelpHelpIndex.Size := new System.Drawing.Size(180, 22);
        self.mnuHelpHelpIndex.Text := 'Help &Index';
        self.mnuHelpHelpIndex.Click += mnuHelpHelpIndex_Click;
        // 
        // mnuHelpHelpOnHelp
        // 
        self.mnuHelpHelpOnHelp.Name := 'mnuHelpHelpOnHelp';
        self.mnuHelpHelpOnHelp.Size := new System.Drawing.Size(180, 22);
        self.mnuHelpHelpOnHelp.Text := 'Help &On Help';
        self.mnuHelpHelpOnHelp.Click += mnuHelpHelpOnHelp_Click;
        // 
        // toolStripMenuItem10
        // 
        self.toolStripMenuItem10.Name := 'toolStripMenuItem10';
        self.toolStripMenuItem10.Size := new System.Drawing.Size(177, 6);
        // 
        // mnuHelpLicenceInformation
        // 
        self.mnuHelpLicenceInformation.Name := 'mnuHelpLicenceInformation';
        self.mnuHelpLicenceInformation.Size := new System.Drawing.Size(180, 22);
        self.mnuHelpLicenceInformation.Text := '&Licence Information';
        self.mnuHelpLicenceInformation.Click += mnuHelpLicenceInformation_Click;
        // 
        // mnuHelpCheckForUpdates
        // 
        self.mnuHelpCheckForUpdates.Name := 'mnuHelpCheckForUpdates';
        self.mnuHelpCheckForUpdates.Size := new System.Drawing.Size(180, 22);
        self.mnuHelpCheckForUpdates.Text := '&Check for Updates';
        self.mnuHelpCheckForUpdates.Click += mnuHelpCheckForUpdates_Click;
        // 
        // toolStripMenuItem9
        // 
        self.toolStripMenuItem9.Name := 'toolStripMenuItem9';
        self.toolStripMenuItem9.Size := new System.Drawing.Size(177, 6);
        // 
        // mnuHelpAbout
        // 
        self.mnuHelpAbout.Image := (System.Drawing.Image(resources.GetObject('mnuHelpAbout.Image')));
        self.mnuHelpAbout.Name := 'mnuHelpAbout';
        self.mnuHelpAbout.Size := new System.Drawing.Size(180, 22);
        self.mnuHelpAbout.Text := '&About...';
        self.mnuHelpAbout.Click += mnuHelpAbout_Click;
        // 
        // toolStrip
        // 
        self.toolStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[16](self.btnFileNew, self.btnFileOpen, self.btnFileSave, self.btnFilePrint, self.toolStripSeparator1, self.btnEditUndo, self.btnEditRedo, self.btnEditCut, self.btnEditCopy, self.btnEditPaste, self.btnEditFind, self.btnEditReplace, self.btnEditRefresh, self.btnEditPreferences, self.toolStripSeparator2, self.btnHelpContents));
        self.toolStrip.Location := new System.Drawing.Point(0, 24);
        self.toolStrip.Name := 'toolStrip';
        self.toolStrip.Size := new System.Drawing.Size(624, 25);
        self.toolStrip.TabIndex := 1;
        self.toolStrip.Text := 'toolStrip1';
        // 
        // btnFileNew
        // 
        self.btnFileNew.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.btnFileNew.Image := (System.Drawing.Image(resources.GetObject('btnFileNew.Image')));
        self.btnFileNew.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.btnFileNew.Name := 'btnFileNew';
        self.btnFileNew.Size := new System.Drawing.Size(23, 22);
        self.btnFileNew.Text := 'New';
        self.btnFileNew.Click += btnFileNew_Click;
        // 
        // btnFileOpen
        // 
        self.btnFileOpen.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.btnFileOpen.Image := (System.Drawing.Image(resources.GetObject('btnFileOpen.Image')));
        self.btnFileOpen.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.btnFileOpen.Name := 'btnFileOpen';
        self.btnFileOpen.Size := new System.Drawing.Size(23, 22);
        self.btnFileOpen.Text := 'Open';
        self.btnFileOpen.Click += btnFileOpen_Click;
        // 
        // btnFileSave
        // 
        self.btnFileSave.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.btnFileSave.Image := (System.Drawing.Image(resources.GetObject('btnFileSave.Image')));
        self.btnFileSave.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.btnFileSave.Name := 'btnFileSave';
        self.btnFileSave.Size := new System.Drawing.Size(23, 22);
        self.btnFileSave.Text := 'Save';
        self.btnFileSave.Click += btnFileSave_Click;
        // 
        // btnFilePrint
        // 
        self.btnFilePrint.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.btnFilePrint.Image := (System.Drawing.Image(resources.GetObject('btnFilePrint.Image')));
        self.btnFilePrint.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.btnFilePrint.Name := 'btnFilePrint';
        self.btnFilePrint.Size := new System.Drawing.Size(23, 22);
        self.btnFilePrint.Text := 'Print';
        self.btnFilePrint.Click += btnFilePrint_Click;
        // 
        // toolStripSeparator1
        // 
        self.toolStripSeparator1.Name := 'toolStripSeparator1';
        self.toolStripSeparator1.Size := new System.Drawing.Size(6, 25);
        // 
        // btnEditUndo
        // 
        self.btnEditUndo.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.btnEditUndo.Image := (System.Drawing.Image(resources.GetObject('btnEditUndo.Image')));
        self.btnEditUndo.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.btnEditUndo.Name := 'btnEditUndo';
        self.btnEditUndo.Size := new System.Drawing.Size(23, 22);
        self.btnEditUndo.Text := 'Undo';
        self.btnEditUndo.Click += btnEditUndo_Click;
        // 
        // btnEditRedo
        // 
        self.btnEditRedo.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.btnEditRedo.Image := (System.Drawing.Image(resources.GetObject('btnEditRedo.Image')));
        self.btnEditRedo.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.btnEditRedo.Name := 'btnEditRedo';
        self.btnEditRedo.Size := new System.Drawing.Size(23, 22);
        self.btnEditRedo.Text := 'Redo';
        self.btnEditRedo.Click += btnEditRedo_Click;
        // 
        // btnEditCut
        // 
        self.btnEditCut.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.btnEditCut.Image := (System.Drawing.Image(resources.GetObject('btnEditCut.Image')));
        self.btnEditCut.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.btnEditCut.Name := 'btnEditCut';
        self.btnEditCut.Size := new System.Drawing.Size(23, 22);
        self.btnEditCut.Text := 'Cut';
        self.btnEditCut.Click += btnEditCut_Click;
        // 
        // btnEditCopy
        // 
        self.btnEditCopy.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.btnEditCopy.Image := (System.Drawing.Image(resources.GetObject('btnEditCopy.Image')));
        self.btnEditCopy.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.btnEditCopy.Name := 'btnEditCopy';
        self.btnEditCopy.Size := new System.Drawing.Size(23, 22);
        self.btnEditCopy.Text := 'Copy';
        self.btnEditCopy.Click += btnEditCopy_Click;
        // 
        // btnEditPaste
        // 
        self.btnEditPaste.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.btnEditPaste.Image := (System.Drawing.Image(resources.GetObject('btnEditPaste.Image')));
        self.btnEditPaste.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.btnEditPaste.Name := 'btnEditPaste';
        self.btnEditPaste.Size := new System.Drawing.Size(23, 22);
        self.btnEditPaste.Text := 'Paste';
        self.btnEditPaste.Click += btnEditPaste_Click;
        // 
        // btnEditFind
        // 
        self.btnEditFind.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.btnEditFind.Image := (System.Drawing.Image(resources.GetObject('btnEditFind.Image')));
        self.btnEditFind.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.btnEditFind.Name := 'btnEditFind';
        self.btnEditFind.Size := new System.Drawing.Size(23, 22);
        self.btnEditFind.Text := 'Find';
        self.btnEditFind.Click += btnEditFind_Click;
        // 
        // btnEditReplace
        // 
        self.btnEditReplace.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.btnEditReplace.Image := (System.Drawing.Image(resources.GetObject('btnEditReplace.Image')));
        self.btnEditReplace.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.btnEditReplace.Name := 'btnEditReplace';
        self.btnEditReplace.Size := new System.Drawing.Size(23, 22);
        self.btnEditReplace.Text := 'Replace';
        self.btnEditReplace.Click += btnEditReplace_Click;
        // 
        // btnEditRefresh
        // 
        self.btnEditRefresh.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.btnEditRefresh.Image := (System.Drawing.Image(resources.GetObject('btnEditRefresh.Image')));
        self.btnEditRefresh.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.btnEditRefresh.Name := 'btnEditRefresh';
        self.btnEditRefresh.Size := new System.Drawing.Size(23, 22);
        self.btnEditRefresh.Text := 'Refresh';
        self.btnEditRefresh.Click += btnEditRefresh_Click;
        // 
        // btnEditPreferences
        // 
        self.btnEditPreferences.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.btnEditPreferences.Image := (System.Drawing.Image(resources.GetObject('btnEditPreferences.Image')));
        self.btnEditPreferences.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.btnEditPreferences.Name := 'btnEditPreferences';
        self.btnEditPreferences.Size := new System.Drawing.Size(23, 22);
        self.btnEditPreferences.Text := 'Preferences';
        self.btnEditPreferences.Click += btnEditPreferences_Click;
        // 
        // toolStripSeparator2
        // 
        self.toolStripSeparator2.Name := 'toolStripSeparator2';
        self.toolStripSeparator2.Size := new System.Drawing.Size(6, 25);
        // 
        // btnHelpContents
        // 
        self.btnHelpContents.DisplayStyle := System.Windows.Forms.ToolStripItemDisplayStyle.Image;
        self.btnHelpContents.Image := (System.Drawing.Image(resources.GetObject('btnHelpContents.Image')));
        self.btnHelpContents.ImageTransparentColor := System.Drawing.Color.Magenta;
        self.btnHelpContents.Name := 'btnHelpContents';
        self.btnHelpContents.Size := new System.Drawing.Size(23, 22);
        self.btnHelpContents.Text := 'Help';
        self.btnHelpContents.Click += btnHelpContents_Click;
        // 
        // statusStrip
        // 
        self.statusStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[5](self.lblStatus, self.lblError, self.prgProgress, self.lblAction, self.lblDirty));
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
        self.lblStatus.Size := new System.Drawing.Size(0, 17);
        // 
        // lblError
        // 
        self.lblError.ForeColor := System.Drawing.Color.Red;
        self.lblError.Name := 'lblError';
        self.lblError.Size := new System.Drawing.Size(0, 17);
        // 
        // prgProgress
        // 
        self.prgProgress.Name := 'prgProgress';
        self.prgProgress.Size := new System.Drawing.Size(100, 16);
        self.prgProgress.Visible := false;
        // 
        // SomeStringLabel
        // 
        self.SomeStringLabel.Location := new System.Drawing.Point(30, 52);
        self.SomeStringLabel.Name := 'SomeStringLabel';
        self.SomeStringLabel.Size := new System.Drawing.Size(100, 23);
        self.SomeStringLabel.TabIndex := 3;
        self.SomeStringLabel.Text := 'Some String:';
        self.SomeStringLabel.TextAlign := System.Drawing.ContentAlignment.MiddleRight;
        // 
        // SomeIntegerLabel
        // 
        self.SomeIntegerLabel.Location := new System.Drawing.Point(30, 75);
        self.SomeIntegerLabel.Name := 'SomeIntegerLabel';
        self.SomeIntegerLabel.Size := new System.Drawing.Size(100, 23);
        self.SomeIntegerLabel.TabIndex := 4;
        self.SomeIntegerLabel.Text := 'Some Integer:';
        self.SomeIntegerLabel.TextAlign := System.Drawing.ContentAlignment.MiddleRight;
        // 
        // SomeDateLabel
        // 
        self.SomeDateLabel.Location := new System.Drawing.Point(30, 134);
        self.SomeDateLabel.Name := 'SomeDateLabel';
        self.SomeDateLabel.Size := new System.Drawing.Size(100, 23);
        self.SomeDateLabel.TabIndex := 5;
        self.SomeDateLabel.Text := 'Some Date:';
        self.SomeDateLabel.TextAlign := System.Drawing.ContentAlignment.MiddleRight;
        // 
        // SomeBooleanCheckBox
        // 
        self.SomeBooleanCheckBox.CheckAlign := System.Drawing.ContentAlignment.MiddleRight;
        self.SomeBooleanCheckBox.Location := new System.Drawing.Point(52, 104);
        self.SomeBooleanCheckBox.Name := 'SomeBooleanCheckBox';
        self.SomeBooleanCheckBox.Size := new System.Drawing.Size(98, 24);
        self.SomeBooleanCheckBox.TabIndex := 6;
        self.SomeBooleanCheckBox.Text := 'Some Boolean:';
        self.SomeBooleanCheckBox.UseVisualStyleBackColor := true;
        self.SomeBooleanCheckBox.CheckedChanged += SomeBooleanCheckBox_CheckedChanged;
        // 
        // SomeStringEdit
        // 
        self.SomeStringEdit.Location := new System.Drawing.Point(136, 52);
        self.SomeStringEdit.Name := 'SomeStringEdit';
        self.SomeStringEdit.Size := new System.Drawing.Size(100, 20);
        self.SomeStringEdit.TabIndex := 7;
        self.SomeStringEdit.TextChanged += SomeStringEdit_TextChanged;
        // 
        // SomeIntegerEdit
        // 
        self.SomeIntegerEdit.Location := new System.Drawing.Point(136, 78);
        self.SomeIntegerEdit.Name := 'SomeIntegerEdit';
        self.SomeIntegerEdit.Size := new System.Drawing.Size(100, 20);
        self.SomeIntegerEdit.TabIndex := 8;
        self.SomeIntegerEdit.TextChanged += SomeIntegerEdit_TextChanged;
        // 
        // SomeDateEdit
        // 
        self.SomeDateEdit.Location := new System.Drawing.Point(136, 134);
        self.SomeDateEdit.Name := 'SomeDateEdit';
        self.SomeDateEdit.Size := new System.Drawing.Size(200, 20);
        self.SomeDateEdit.TabIndex := 9;
        self.SomeDateEdit.ValueChanged += SomeDateEdit_ValueChanged;
        // 
        // lblAction
        // 
        self.lblAction.Image := (System.Drawing.Image(resources.GetObject('lblAction.Image')));
        self.lblAction.Name := 'lblAction';
        self.lblAction.Size := new System.Drawing.Size(16, 17);
        self.lblAction.ToolTipText := 'Action';
        self.lblAction.Visible := false;
        // 
        // lblDirty
        // 
        self.lblDirty.Image := (System.Drawing.Image(resources.GetObject('lblDirty.Image')));
        self.lblDirty.Name := 'lblDirty';
        self.lblDirty.Size := new System.Drawing.Size(16, 17);
        self.lblDirty.ToolTipText := 'Dirty';
        self.lblDirty.Visible := false;
        // 
        // MainForm
        // 
        self.ClientSize := new System.Drawing.Size(624, 442);
        self.Controls.Add(self.SomeDateEdit);
        self.Controls.Add(self.SomeIntegerEdit);
        self.Controls.Add(self.SomeStringEdit);
        self.Controls.Add(self.SomeBooleanCheckBox);
        self.Controls.Add(self.SomeDateLabel);
        self.Controls.Add(self.SomeIntegerLabel);
        self.Controls.Add(self.SomeStringLabel);
        self.Controls.Add(self.statusStrip);
        self.Controls.Add(self.toolStrip);
        self.Controls.Add(self.menuStrip);
        self.MainMenuStrip := self.menuStrip;
        self.Name := 'MainForm';
        self.Text := '(new) - Pascal Generic GUI w/ PascalABC';
        self.FormClosing += MainForm_FormClosing;
        self.Load += MainForm_Load;
        self.menuStrip.ResumeLayout(false);
        self.menuStrip.PerformLayout();
        self.toolStrip.ResumeLayout(false);
        self.toolStrip.PerformLayout();
        self.statusStrip.ResumeLayout(false);
        self.statusStrip.PerformLayout();
        self.ResumeLayout(false);
        self.PerformLayout();
    end;
