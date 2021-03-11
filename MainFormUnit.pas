Unit MainFormUnit;

interface

uses System, System.Drawing, System.Windows.Forms;

type
  MainForm = class(Form)
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
    toolStripStatusLabel1: ToolStripStatusLabel;
    toolStripStatusLabel2: ToolStripStatusLabel;
    toolStripProgressBar1: ToolStripProgressBar;
    toolStripDropDownButton1: ToolStripDropDownButton;
    toolStripDropDownButton2: ToolStripDropDownButton;
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

end.
