Unit MainFormUnit;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  MainForm = class(Form)
    procedure pasteSepcialToolStripMenuItem_Click(sender: Object; e: EventArgs);
  {$region FormDesigner}
  internal
    {$resource MainFormUnit.MainForm.resources}
    menuStrip1: MenuStrip;
    fileToolStripMenuItem: ToolStripMenuItem;
    newToolStripMenuItem: ToolStripMenuItem;
    openToolStripMenuItem: ToolStripMenuItem;
    saveToolStripMenuItem: ToolStripMenuItem;
    saveAsToolStripMenuItem: ToolStripMenuItem;
    toolStripMenuItem1: ToolStripSeparator;
    printToolStripMenuItem: ToolStripMenuItem;
    printSetupToolStripMenuItem: ToolStripMenuItem;
    toolStripMenuItem2: ToolStripSeparator;
    exitToolStripMenuItem: ToolStripMenuItem;
    editToolStripMenuItem: ToolStripMenuItem;
    windowToolStripMenuItem: ToolStripMenuItem;
    toolStrip1: ToolStrip;
    toolStripButton1: ToolStripButton;
    statusStrip1: StatusStrip;
    lblStatus: ToolStripStatusLabel;
    lblError: ToolStripStatusLabel;
    prgProgress: ToolStripProgressBar;
    btnAction: ToolStripDropDownButton;
    btnDirty: ToolStripDropDownButton;
    undoToolStripMenuItem: ToolStripMenuItem;
    redoToolStripMenuItem: ToolStripMenuItem;
    toolStripMenuItem3: ToolStripSeparator;
    toolStripMenuItem4: ToolStripMenuItem;
    cutToolStripMenuItem: ToolStripMenuItem;
    copyToolStripMenuItem: ToolStripMenuItem;
    pasteToolStripMenuItem: ToolStripMenuItem;
    pasteSepcialToolStripMenuItem: ToolStripMenuItem;
    deleteToolStripMenuItem: ToolStripMenuItem;
    toolStripMenuItem5: ToolStripSeparator;
    findToolStripMenuItem: ToolStripMenuItem;
    replaceToolStripMenuItem: ToolStripMenuItem;
    gotoToolStripMenuItem: ToolStripMenuItem;
    toolStripMenuItem6: ToolStripSeparator;
    refreshToolStripMenuItem: ToolStripMenuItem;
    toolStripMenuItem7: ToolStripSeparator;
    propertiesToolStripMenuItem: ToolStripMenuItem;
    preferencesToolStripMenuItem: ToolStripMenuItem;
    newWindowToolStripMenuItem: ToolStripMenuItem;
    tileToolStripMenuItem: ToolStripMenuItem;
    cascadeToolStripMenuItem: ToolStripMenuItem;
    arrangeAllToolStripMenuItem: ToolStripMenuItem;
    toolStripMenuItem8: ToolStripSeparator;
    hideToolStripMenuItem: ToolStripMenuItem;
    showToolStripMenuItem: ToolStripMenuItem;
    helpContentsToolStripMenuItem: ToolStripMenuItem;
    helpIndexToolStripMenuItem: ToolStripMenuItem;
    helpOnHelpToolStripMenuItem: ToolStripMenuItem;
    toolStripMenuItem10: ToolStripSeparator;
    licenceInformationToolStripMenuItem: ToolStripMenuItem;
    checkForUpdatesToolStripMenuItem: ToolStripMenuItem;
    toolStripMenuItem9: ToolStripSeparator;
    aboutToolStripMenuItem: ToolStripMenuItem;
    toolStripButton2: ToolStripButton;
    toolStripButton3: ToolStripButton;
    toolStripButton4: ToolStripButton;
    toolStripSeparator1: ToolStripSeparator;
    toolStripButton5: ToolStripButton;
    toolStripButton6: ToolStripButton;
    toolStripButton7: ToolStripButton;
    toolStripButton8: ToolStripButton;
    toolStripButton9: ToolStripButton;
    toolStripButton10: ToolStripButton;
    toolStripButton11: ToolStripButton;
    toolStripButton12: ToolStripButton;
    toolStripButton13: ToolStripButton;
    toolStripSeparator2: ToolStripSeparator;
    toolStripButton14: ToolStripButton;
    helpToolStripMenuItem: ToolStripMenuItem;
    {$include MainFormUnit.MainForm.inc}
  {$endregion FormDesigner}
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;

implementation

procedure MainForm.pasteSepcialToolStripMenuItem_Click(sender: Object; e: EventArgs);
begin
  
end;

end.
