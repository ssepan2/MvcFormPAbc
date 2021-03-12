Unit MainFormUnit;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  MainForm = class(Form)
    procedure mnuFileNew_Click(sender: Object; e: EventArgs);
    procedure mnuFileOpen_Click(sender: Object; e: EventArgs);
    procedure mnuFileSave_Click(sender: Object; e: EventArgs);
    procedure mnuFileSaveAs_Click(sender: Object; e: EventArgs);
    procedure mnuFilePrint_Click(sender: Object; e: EventArgs);
    procedure mnuFilePrintSetup_Click(sender: Object; e: EventArgs);
    procedure mnuFileExit_Click(sender: Object; e: EventArgs);
    procedure mnuEditUndo_Click(sender: Object; e: EventArgs);
    procedure mnuEditRedo_Click(sender: Object; e: EventArgs);
    procedure mnuEditSelectAll_Click(sender: Object; e: EventArgs);
    procedure mnuEditCut_Click(sender: Object; e: EventArgs);
    procedure mnuEditCopy_Click(sender: Object; e: EventArgs);
    procedure mnuEditPaste_Click(sender: Object; e: EventArgs);
    procedure mnuEditPasteSpecial_Click(sender: Object; e: EventArgs);
    procedure mnuEditDelete_Click(sender: Object; e: EventArgs);
    procedure mnuEditFind_Click(sender: Object; e: EventArgs);
    procedure mnuEditReplace_Click(sender: Object; e: EventArgs);
    procedure mnuEditGoto_Click(sender: Object; e: EventArgs);
    procedure mnuEditRefresh_Click(sender: Object; e: EventArgs);
    procedure mnuEditProperties_Click(sender: Object; e: EventArgs);
    procedure mnuEditPreferences_Click(sender: Object; e: EventArgs);
    procedure mnuWindowNewWindow_Click(sender: Object; e: EventArgs);
    procedure mnuWindowTile_Click(sender: Object; e: EventArgs);
    procedure mnuWindowCascade_Click(sender: Object; e: EventArgs);
    procedure mnuWindowArrangeAll_Click(sender: Object; e: EventArgs);
    procedure mnuWindowHide_Click(sender: Object; e: EventArgs);
    procedure mnuWindowShow_Click(sender: Object; e: EventArgs);
    procedure mnuHelpHelpContents_Click(sender: Object; e: EventArgs);
    procedure mnuHelpHelpIndex_Click(sender: Object; e: EventArgs);
    procedure mnuHelpHelpOnHelp_Click(sender: Object; e: EventArgs);
    procedure mnuHelpLicenceInformation_Click(sender: Object; e: EventArgs);
    procedure mnuHelpCheckForUpdates_Click(sender: Object; e: EventArgs);
    procedure mnuHelpAbout_Click(sender: Object; e: EventArgs);
    procedure btnFileNew_Click(sender: Object; e: EventArgs);
    procedure btnFileOpen_Click(sender: Object; e: EventArgs);
    procedure btnFileSave_Click(sender: Object; e: EventArgs);
    procedure btnFilePrint_Click(sender: Object; e: EventArgs);
    procedure btnEditUndo_Click(sender: Object; e: EventArgs);
    procedure btnEditRedo_Click(sender: Object; e: EventArgs);
    procedure btnEditCut_Click(sender: Object; e: EventArgs);
    procedure btnEditCopy_Click(sender: Object; e: EventArgs);
    procedure btnEditPaste_Click(sender: Object; e: EventArgs);
    procedure btnEditFind_Click(sender: Object; e: EventArgs);
    procedure btnEditReplace_Click(sender: Object; e: EventArgs);
    procedure btnEditRefresh_Click(sender: Object; e: EventArgs);
    procedure btnEditPreferences_Click(sender: Object; e: EventArgs);
    procedure btnHelpContents_Click(sender: Object; e: EventArgs);
  {$region FormDesigner}
  internal
    {$resource MainFormUnit.MainForm.resources}
    menuStrip: MenuStrip;
    mnuFile: ToolStripMenuItem;
    mnuFileNew: ToolStripMenuItem;
    mnuFileOpen: ToolStripMenuItem;
    mnuFileSave: ToolStripMenuItem;
    mnuFileSaveAs: ToolStripMenuItem;
    toolStripMenuItem1: ToolStripSeparator;
    mnuFilePrint: ToolStripMenuItem;
    mnuFilePrintSetup: ToolStripMenuItem;
    toolStripMenuItem2: ToolStripSeparator;
    mnuFileExit: ToolStripMenuItem;
    mnuEdit: ToolStripMenuItem;
    mnuWindow: ToolStripMenuItem;
    toolStrip: ToolStrip;
    btnFileNew: ToolStripButton;
    statusStrip: StatusStrip;
    lblStatus: ToolStripStatusLabel;
    lblError: ToolStripStatusLabel;
    prgProgress: ToolStripProgressBar;
    btnAction: ToolStripDropDownButton;
    btnDirty: ToolStripDropDownButton;
    mnuEditUndo: ToolStripMenuItem;
    mnuEditRedo: ToolStripMenuItem;
    toolStripMenuItem3: ToolStripSeparator;
    mnuEditSelectAll: ToolStripMenuItem;
    mnuEditCut: ToolStripMenuItem;
    mnuEditCopy: ToolStripMenuItem;
    mnuEditPaste: ToolStripMenuItem;
    mnuEditPasteSpecial: ToolStripMenuItem;
    mnuEditDelete: ToolStripMenuItem;
    toolStripMenuItem5: ToolStripSeparator;
    mnuEditFind: ToolStripMenuItem;
    mnuEditReplace: ToolStripMenuItem;
    mnuEditGoto: ToolStripMenuItem;
    toolStripMenuItem6: ToolStripSeparator;
    mnuEditRefresh: ToolStripMenuItem;
    toolStripMenuItem7: ToolStripSeparator;
    mnuEditProperties: ToolStripMenuItem;
    mnuEditPreferences: ToolStripMenuItem;
    mnuWindowNewWindow: ToolStripMenuItem;
    mnuWindowTile: ToolStripMenuItem;
    mnuWindowCascade: ToolStripMenuItem;
    mnuWindowArrangeAll: ToolStripMenuItem;
    toolStripMenuItem8: ToolStripSeparator;
    mnuWindowHide: ToolStripMenuItem;
    mnuWindowShow: ToolStripMenuItem;
    mnuHelpHelpContents: ToolStripMenuItem;
    mnuHelpHelpIndex: ToolStripMenuItem;
    mnuHelpHelpOnHelp: ToolStripMenuItem;
    toolStripMenuItem10: ToolStripSeparator;
    mnuHelpLicenceInformation: ToolStripMenuItem;
    mnuHelpCheckForUpdates: ToolStripMenuItem;
    toolStripMenuItem9: ToolStripSeparator;
    mnuHelpAbout: ToolStripMenuItem;
    btnFileOpen: ToolStripButton;
    btnFileSave: ToolStripButton;
    btnFilePrint: ToolStripButton;
    toolStripSeparator1: ToolStripSeparator;
    btnEditUndo: ToolStripButton;
    btnEditRedo: ToolStripButton;
    btnEditCut: ToolStripButton;
    btnEditCopy: ToolStripButton;
    btnEditPaste: ToolStripButton;
    btnEditFind: ToolStripButton;
    btnEditReplace: ToolStripButton;
    btnEditRefresh: ToolStripButton;
    btnEditPreferences: ToolStripButton;
    toolStripSeparator2: ToolStripSeparator;
    btnHelpContents: ToolStripButton;
    mnuHelp: ToolStripMenuItem;
    {$include MainFormUnit.MainForm.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;

implementation

{
Events
}
{
Menu
}
procedure MainForm.mnuFileNew_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='FileNew';
end;

procedure MainForm.mnuFileOpen_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='FileOpen';
end;

procedure MainForm.mnuFileSave_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='FileSave';
end;

procedure MainForm.mnuFileSaveAs_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='FileSaveAs';
end;

procedure MainForm.mnuFilePrint_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='FilePrint';
end;

procedure MainForm.mnuFilePrintSetup_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='FilePrintSetup';
end;

procedure MainForm.mnuFileExit_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='FileExit';
end;

procedure MainForm.mnuEditUndo_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='EditUndo';
end;

procedure MainForm.mnuEditRedo_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='EditRedo';
end;

procedure MainForm.mnuEditSelectAll_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='EditSelectAll';
end;

procedure MainForm.mnuEditCut_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='EditCut';
end;

procedure MainForm.mnuEditCopy_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='EditCopy';
end;

procedure MainForm.mnuEditPaste_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='EditPaste';
end;

procedure MainForm.mnuEditPasteSpecial_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='EditPasteSpecial';
end;

procedure MainForm.mnuEditDelete_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='EditDelete';
end;

procedure MainForm.mnuEditFind_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='EditFind';
end;

procedure MainForm.mnuEditReplace_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='EditReplace';
end;

procedure MainForm.mnuEditGoto_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='EditGoto';
end;

procedure MainForm.mnuEditRefresh_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='EditRefresh';
end;

procedure MainForm.mnuEditProperties_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='EditProperties';
end;

procedure MainForm.mnuEditPreferences_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='EditPreferences';
end;

procedure MainForm.mnuWindowNewWindow_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='WindowNewWindow';
end;

procedure MainForm.mnuWindowTile_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='WindowTile';
end;

procedure MainForm.mnuWindowCascade_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='WindowCascade';
end;

procedure MainForm.mnuWindowArrangeAll_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='WindowArrangeAll';
end;

procedure MainForm.mnuWindowHide_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='WindowHide';
end;

procedure MainForm.mnuWindowShow_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='WindowShow';
end;

procedure MainForm.mnuHelpHelpContents_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='HelpHelpContents';
end;

procedure MainForm.mnuHelpHelpIndex_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='HelpHelpIndex';
end;

procedure MainForm.mnuHelpHelpOnHelp_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='HelpHelpOnHelp';
end;

procedure MainForm.mnuHelpLicenceInformation_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='HelpLicenceInformation';
end;

procedure MainForm.mnuHelpCheckForUpdates_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='HelpCheckForUpdates';
end;

procedure MainForm.mnuHelpAbout_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='HelpAbout';
end;

{
Toolbar
}

procedure MainForm.btnFileNew_Click(sender: Object; e: EventArgs);
begin
  mnuFileNew_Click(sender, e);
end;

procedure MainForm.btnFileOpen_Click(sender: Object; e: EventArgs);
begin
  mnuFileOpen_Click(sender, e);
end;

procedure MainForm.btnFileSave_Click(sender: Object; e: EventArgs);
begin
  mnuFileSave_Click(sender, e);
end;

procedure MainForm.btnFilePrint_Click(sender: Object; e: EventArgs);
begin
  mnuFilePrint_Click(sender, e);
end;

procedure MainForm.btnEditUndo_Click(sender: Object; e: EventArgs);
begin
  mnuEditUndo_Click(sender, e);
end;

procedure MainForm.btnEditRedo_Click(sender: Object; e: EventArgs);
begin
  mnuEditRedo_Click(sender, e);
end;

procedure MainForm.btnEditCut_Click(sender: Object; e: EventArgs);
begin
  mnuEditCut_Click(sender, e);
end;

procedure MainForm.btnEditCopy_Click(sender: Object; e: EventArgs);
begin
  mnuEditCopy_Click(sender, e);
end;

procedure MainForm.btnEditPaste_Click(sender: Object; e: EventArgs);
begin
  mnuEditPaste_Click(sender, e);
end;

procedure MainForm.btnEditFind_Click(sender: Object; e: EventArgs);
begin
  mnuEditFind_Click(sender, e);
end;

procedure MainForm.btnEditReplace_Click(sender: Object; e: EventArgs);
begin
  mnuEditReplace_Click(sender, e);
end;

procedure MainForm.btnEditRefresh_Click(sender: Object; e: EventArgs);
begin
  mnuEditRefresh_Click(sender, e);
end;

procedure MainForm.btnEditPreferences_Click(sender: Object; e: EventArgs);
begin
  mnuEditPreferences_Click(sender, e);
end;

procedure MainForm.btnHelpContents_Click(sender: Object; e: EventArgs);
begin
  mnuHelpHelpContents_Click(sender, e);
end;

end.
