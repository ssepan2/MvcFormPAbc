Unit MainFormUnit;

interface

uses System, System.Drawing, System.Windows.Forms, Microsoft.VisualBasic, ModelBase, SomeModel, ssepan_laz_utility, ssepan_laz_application;

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
    procedure MainForm_Load(sender: Object; e: EventArgs);
    procedure MainForm_FormClosing(sender: Object; e: FormClosingEventArgs);
    procedure SomeStringEdit_TextChanged(sender: Object; e: EventArgs);
    procedure SomeIntegerEdit_TextChanged(sender: Object; e: EventArgs);
    procedure SomeBooleanCheckBox_CheckedChanged(sender: Object; e: EventArgs);
    procedure SomeDateEdit_ValueChanged(sender: Object; e: EventArgs);
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
    SomeStringLabel: &Label;
    SomeIntegerLabel: &Label;
    SomeDateLabel: &Label;
    SomeBooleanCheckBox: CheckBox;
    SomeStringEdit: TextBox;
    SomeIntegerEdit: TextBox;
    SomeDateEdit: DateTimePicker;
    lblAction: ToolStripStatusLabel;
    lblDirty: ToolStripStatusLabel;
    mnuHelp: ToolStripMenuItem;
    {$include MainFormUnit.MainForm.inc}
  {$endregion FormDesigner}
    //from here down we should be able to edit directly
    procedure delayFor(dt: double);
    function Something():Boolean;    
    procedure objModel_PropertyChanged(propertyName : String);
    function FileNew() : Boolean;
    function FileOpen() : Boolean;  
    function FileSave(bSaveAs : Boolean; var sStatusMessage:String) : Boolean;  
    function CheckForSaveOrCancel(var sStatusMessage:String) : Boolean;
    procedure ActionFileNewOnExecute(sender: Object; e: EventArgs);    
    procedure ActionFileOpenOnExecute(sender: Object; e: EventArgs);
    procedure ActionFileSaveOnExecute(sender: Object; e: EventArgs);
    procedure ActionFileSaveAsOnExecute(sender: Object; e: EventArgs);
    procedure ActionFilePrintOnExecute(sender: Object; e: EventArgs);
    procedure ActionFilePrintSetupOnExecute(sender: Object; e: EventArgs);
    procedure ActionFileExitOnExecute(sender: Object; e: EventArgs);
    procedure ActionEditUndoOnExecute(sender: Object; e: EventArgs);
    procedure ActionEditRedoOnExecute(sender: Object; e: EventArgs);
    procedure ActionEditSelectAllOnExecute(sender: Object; e: EventArgs);
    procedure ActionEditCutOnExecute(sender: Object; e: EventArgs);
    procedure ActionEditCopyOnExecute(sender: Object; e: EventArgs);
    procedure ActionEditPasteExecute(sender: Object; e: EventArgs);
    procedure ActionEditPasteSpecialOnExecute(sender: Object; e: EventArgs);
    procedure ActionEditDeleteOnExecute(sender: Object; e: EventArgs);
    procedure ActionEditFindOnExecute(sender: Object; e: EventArgs);
    procedure ActionEditReplaceOnExecute(sender: Object; e: EventArgs);
    procedure ActionEditGoToOnExecute(sender: Object; e: EventArgs);
    procedure ActionEditRefreshOnExecute(sender: Object; e: EventArgs);
    procedure ActionEditPreferencesOnExecute(sender: Object; e: EventArgs);
  public
    constructor;
    begin
      InitializeComponent;
    end;
  end;//type
  
const
    APP_TITLE_FORMAT : String = '''{0}'' - Pascal Generic GUI w/ PascalABC';
var
  objModel : TSomeModel;
  bStopControlEvents : Boolean;

implementation



{Utility}
procedure MainForm.delayFor(dt: double);
var
  tc : double;
begin
  tc := Environment.TickCount;{GetTickCount64;}
  repeat
    application.DoEvents{ProcessMessages};
  until (Environment.TickCount{GetTickCount64} > tc + dt) {or (Application.Terminated)};
end;

function MainForm.Something():Boolean;
begin
    Application.DoEvents{ProcessMessages};
    delayFor(3000);
    Something:=True;
end;


{%Region PropertyChanged Handlers}
{
<summary>
 Handler for PropertyChanged on the model field 'Dirty' and others.
</summary>
}
procedure MainForm.objModel_PropertyChanged(propertyName : String);
var
     sErrorMessage, formatResult:String;
begin
  try
    try
        bStopControlEvents := True;
        //TODO:consider using Object.Lock(controlname)/Object.Unlock(controlname)
        case propertyName  of
            'Key':
            begin
                //update when Key directly edited or when new/open/save/saveas
                formatResult:=String.Format(APP_TITLE_FORMAT,objModel.Key);
                MainForm.ActiveForm.Text := formatResult + DateTime.Now.ToString();

                formatResult:=String.Format('handled event: ''{0}'' = ''{0}'' ',propertyName,objModel.Key);
                WriteLn(formatResult);
            end;
            'SomeString':
            begin
                self.SomeStringEdit.Text := objModel.SomeString;

                formatResult:=String.Format('handled event: ''{0}'' = ''{0}'' ',propertyName,objModel.SomeString);
                WriteLn(formatResult);
            end;
            'SomeInteger':
            begin
                self.SomeIntegerEdit.Text := IntToStr(objModel.SomeInteger);

                formatResult:=String.Format('handled event: ''{0}'' = ''{0}'' ',propertyName,objModel.SomeInteger.ToString());
                WriteLn(formatResult);
            end;
            'SomeBoolean':
            begin
                self.SomeBooleanCheckBox.Checked := objModel.SomeBoolean;

                formatResult:=String.Format('handled event: ''{0}'' = ''{0}'' ',propertyName,objModel.SomeBoolean.ToString());
                WriteLn(formatResult);
            end;
            'SomeDateTime':
            begin
                self.SomeDateEdit.Value := objModel.SomeDateTime;

                formatResult:=String.Format('handled event: ''{0}'' = ''{0}'' ',propertyName,formatResult);
                WriteLn(formatResult);
            end;
            'Dirty':
            begin
                ToolStripStatusLabel(self.statusStrip.Items.Find('lblDirty', False)[0]).Visible := objModel.Dirty; //TODO:use wrapper sub in viewmodel

                formatResult:=String.Format('handled event: ''{0}'' = ''{0}'' ',propertyName,objModel.Dirty.ToString());
                WriteLn(formatResult);
            end;
            Else
            begin
                formatResult:=String.Format('unhandled event: ''{0}''',propertyName);
                WriteLn(formatResult);
            end;
        End; //case

    finally
           bStopControlEvents := False;
    end;
    except
      on Ex: Exception do
      begin
         sErrorMessage:=FormatErrorForLog(Ex.Message , 'objModel_PropertyChanged' , Ex.StackTrace.ToString);
         LogErrorToFile(sErrorMessage);
      end;
    end;
End;
{%EndRegion}


function MainForm.FileNew() : Boolean;
var
   sErrorMessage:String;
   proc:  TProcArgString;
begin
  try
      try
        Application.DoEvents{ProcessMessages};

        proc := {@}objModel_PropertyChanged;

        if (objModel<>nil) then
        begin
           objModel.RemoveHandler(proc);
           objModel.Destroy{Free};
        end;
        objModel := TSomeModel.Create();
        objModel.AddHandler(proc);

        objModel.RefreshModel(False); //to update view

        FileNew := True;
      finally
        //always do this
      end;
    except
        on Ex: Exception do
        begin
           sErrorMessage:=FormatErrorForLog(Ex.Message , 'FileNew' , Ex.StackTrace.ToString);
           LogErrorToFile(sErrorMessage);
        end;
    end;
end;

function MainForm.FileOpen() : Boolean;
var
   sErrorMessage,filePath:String;
begin
  try
      try
        Application.DoEvents{ProcessMessages};

        //OPEN
        //update properties from INI
        filePath:=SomeModel.C_INI_FILE;//TSomeModel.C_INI_FILE;
        If Not TSomeModel.OpenFromSettings(objModel,filePath) Then
        begin
          raise Exception.Create('open failed.');
        End;

        objModel.RefreshModel(False); //to update view

        FileOpen := True;
      finally
        //always do this
      end;
    except
        on Ex: Exception do
        begin
           sErrorMessage:=FormatErrorForLog(Ex.Message , 'FileOpen' , Ex.StackTrace.ToString);
           LogErrorToFile(sErrorMessage);
        end;
    end;
end;

// <summary>
// Write model to settings
// </summary>
function MainForm.FileSave(bSaveAs : Boolean; var sStatusMessage:String) : Boolean;
var
   sErrorMessage,sResponse:String;
   bCancel : Boolean;
begin
  try
      try
         bCancel := False;

        Application.DoEvents{ProcessMessages};

         //SAVE
         //save properties to INI
         If (String.IsNullOrWhiteSpace(objModel.Key) Or (objModel.Key = ModelBase.KEY_NEW) Or (bSaveAs)) Then
         begin
           sResponse := Interaction.InputBox('Save...', 'Enter Name for model:', objModel.Key);
           if (Not String.IsNullOrWhiteSpace(sResponse) And (sResponse <> ModelBase.KEY_NEW)) then
           begin
              objModel.Key:= sResponse;
           end
            Else
            begin
               bCancel:=True;
            end;
         End;

         If (bCancel) Then
         begin
            sStatusMessage := 'Save cancelled.' ;
         end
         Else
         begin
            If Not TSomeModel.SaveToSettings(objModel,SomeModel.C_INI_FILE) Then
            begin
               raise Exception.Create('save failed.');
            end;
            sStatusMessage := 'Save done.';
         end;
         FileSave := True;
      finally
        //always do this
      end;
    except
        on Ex: Exception do
        begin
           sErrorMessage:=FormatErrorForLog(Ex.Message , 'FileSave' , Ex.StackTrace.ToString);
           LogErrorToFile(sErrorMessage);
        end;
    end;
end;

function MainForm.CheckForSaveOrCancel(var sStatusMessage:String) : Boolean;
var
   sErrorMessage, formatResult:String;
   cancel : Boolean;
begin
  try
      try
        cancel := False;

          If (objModel<>nil) Then
          begin
              If objModel.Dirty Then
              begin
                  //prompt before saving
                  formatResult:=String.Format('Save changes?: ''{0}'' ',[objModel.Key]);
 
                  Case Interaction.MsgBox( 'Save As...', MsgBoxStyle.YesNoCancel, formatResult) of
                       MsgBoxResult.Yes:
                       begin
                          //Yes, SAVE
                          if FileSave(True, sStatusMessage) Then
                          begin
                            cancel := False;
                          end
                          else
                          begin
                             cancel := True;
                             raise Exception.Create('save failed.');
                          end;
                       end;
                       MsgBoxResult.No:
                       begin
                          //No, skip Save-or-cancel, do target action
                          cancel := False;
                       end;
                       MsgBoxResult.Cancel:
                       begin
                          //Cancel, skip Save and target action
                          cancel := True;
                       end;
                       Else
                          raise Exception.Create('unexpected response enum');
                  End; //case
              End;
          End;
      finally
             //BUG:backwards; cancel becomes cancel
             //always do this
             CheckForSaveOrCancel := cancel;
      end;
    except
        on Ex: Exception do
        begin
           sErrorMessage:=FormatErrorForLog(Ex.Message , 'CheckSaveAndContinue' , Ex.StackTrace.ToString);
           LogErrorToFile(sErrorMessage);
        end;
    end;
end;
{ $R *.lfm}

{Actions}

//TODO:action code here
//
//{File}
procedure MainForm.ActionFileNewOnExecute(sender: Object; e: EventArgs);
var
   sStatusMessage,sStatusMessageFromCheck,sErrorMessage:String;
   bCancel : Boolean;
begin
   try
       try
          sStatusMessageFromCheck := '';
          bCancel := CheckForSaveOrCancel(sStatusMessageFromCheck);

           //clear status, error messages at beginning of every action
          sStatusMessage:='New...';
          sErrorMessage:='';

          //use progress bar (marquee) with action icon (where available) in status bar
          StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, self.mnuFileNew.Image);

          //perform sender disable/enable in all actions
          self.mnuFileNew.Enabled := False;
          self.btnFileNew.Enabled := False;

          If bCancel Then
          begin
              sStatusMessage := 'New cancelled.';
          end
          Else
          begin
              //NEW
             if Not FileNew() Then
             begin
                raise Exception.Create('New failed.');
             end;
             sStatusMessage := 'New done.';
          End;
       finally
         //always do this
          self.mnuFileNew.Enabled := True;
          self.btnFileNew.Enabled := True;
         ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
       end;
     except
         on Ex: Exception do
         begin
            sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionFileNewOnExecute' , Ex.StackTrace.ToString);
            StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
            LogErrorToFile(sErrorMessage);
         end;
     end;
end;

procedure MainForm.ActionFileOpenOnExecute(sender: Object; e: EventArgs);
var
   sStatusMessage,sStatusMessageFromCheck,sErrorMessage,formatResult,sResponse:String;
   bCancel : Boolean;
begin
   try
     try
        sStatusMessageFromCheck := '';
        bCancel := CheckForSaveOrCancel(sStatusMessageFromCheck);

         //clear status, error messages at beginning of every action
        sStatusMessage:='Opening...';
        sErrorMessage:='';

        //use progress bar (marquee) with action icon (where available) in status bar
        StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, self.mnuFileOpen.Image);//

        //perform sender disable/enable in all actions
        self.mnuFileOpen.Enabled := False;
        self.btnFileOpen.Enabled := False;

         If bCancel Then
         begin
             sStatusMessage := 'Open cancelled during Save.';
         end
         Else
         begin
            sResponse := Interaction.InputBox('Open...', 'Please enter model name:', '');
            if (Not String.IsNullOrWhiteSpace(sResponse) And (sResponse <> ModelBase.KEY_NEW)) then
            begin
                //TODO:implement VerifyKey
                //If Not objModel.VerifyKey(nil, sResponse, 'TODO:Path') Then
                //begin
                //  FmtStr(formatResult,'ID not found in settings: Slot =''{0}''', [sResponse]);
                //  raise Exception.Create(formatResult);
                //end
                //Else
                //begin
                    objModel.Key := sResponse;
                //End;
            end
            Else
            begin
                bCancel := True;
            End;

            If bCancel Then
            begin
                sStatusMessage := 'Open cancelled during model name input.';
            end
            Else
            begin
                //OPEN
               if Not FileOpen() Then
               begin
                  raise Exception.Create('open failed.');
               end;
               sStatusMessage := sStatusMessageFromCheck +'; Open done.';//in rare cases, we will want to get a message from the check
            End;
         End;

     finally
       //always do this
        self.mnuFileOpen.Enabled := True;
        self.btnFileOpen.Enabled := True;
       StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
     end;
   except
       on Ex: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionFileOpenOnExecute' , Ex.StackTrace.ToString);
          StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
          LogErrorToFile(sErrorMessage);
       end;
   end;

end;

procedure MainForm.ActionFileSaveOnExecute(sender: Object; e: EventArgs);
var
   sStatusMessage,sErrorMessage:String;
begin
   try
     try
        //clear status, error messages at beginning of every action
        sStatusMessage:='Saving...';
        sErrorMessage:='';

        //use progress bar (marquee) with action icon (where available) in status bar
        StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, self.mnuFileSave.Image);//

        //perform sender disable/enable in all actions
        self.mnuFileSave.Enabled := False;
        self.btnFileSave.Enabled := False;

        //SAVE
        //save properties to INI
        if Not FileSave(False, sStatusMessage) Then
        begin
          raise Exception.Create('Save failed.');
        end;
     finally
         //always do this
        self.mnuFileSave.Enabled := True;
        self.btnFileSave.Enabled := True;
         StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
     end;
   except
       on Ex: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionFileSaveOnExecute' , Ex.StackTrace.ToString);
          StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
          LogErrorToFile(sErrorMessage);
       end;
   end;
end;

procedure MainForm.ActionFileSaveAsOnExecute(sender: Object; e: EventArgs);
var
   sStatusMessage,sErrorMessage:String;
begin
   try
     try
         //clear status, error messages at beginning of every action
         sStatusMessage:='Saving As...';
         sErrorMessage:='';

        //use progress bar (marquee) with action icon (where available) in status bar
        StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, self.mnuFileSaveAs.Image);//

        //perform sender disable/enable in all actions
        self.mnuFileSaveAs.Enabled := False;
        //self.btnFileSaveAs.Enabled := False;

        //SAVE
        //save properties to INI
         if Not FileSave(True, sStatusMessage) Then
         begin
            raise Exception.Create('Save As failed.');
         end;
     finally
       //always do this
        self.mnuFileSaveAs.Enabled := True;
        //self.btnFileSaveAs.Enabled := True;
       StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
     end;
   except
       on Ex: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionFileSaveAsOnExecute' , Ex.StackTrace.ToString);
          StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
          LogErrorToFile(sErrorMessage);
       end;
   end;
end;

procedure MainForm.ActionFilePrintOnExecute(sender: Object; e: EventArgs);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
         //clear status, error messages at beginning of every action
        sStatusMessage:='Print...';
        sErrorMessage:='';

        //use progress bar (marquee) with action icon (where available) in status bar
        StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, self.mnuFilePrint.Image);//

        //perform sender disable/enable in all actions
        self.mnuFilePrint.Enabled := False;
        self.btnFilePrint.Enabled := False;

        If Something() Then //TODO:TPrintDialog
        begin
           sStatusMessage := 'Print done.'  ;
        end
        Else
        begin
           sStatusMessage := 'Print cancelled.' ;
        End;
     finally
       //always do this
        self.mnuFilePrint.Enabled := True;
        self.btnFilePrint.Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
     end;
   except
       on Ex: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionFilePrintOnExecute' , Ex.StackTrace.ToString);
          StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure MainForm.ActionFilePrintSetupOnExecute(sender: Object; e: EventArgs);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='Print Setup...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, Nil);//

    //perform sender disable/enable in all actions
          self.mnuFilePrintSetup.Enabled := False;
          //self.btnFilePrintSetup.Enabled := False;

        If Something() Then  //TODO:TPrinterSetupDialog
        begin
           sStatusMessage := 'Print Setup done.'  ;
        end
        Else
        begin
           sStatusMessage := 'Print Setup cancelled.' ;
        End;
     finally
       //always do this
          self.mnuFilePrintSetup.Enabled := True;
          //self.btnFilePrintSetup.Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
     end;
   except
       on Ex: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionFilePrintSetupOnExecute' , Ex.StackTrace.ToString);
          StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure MainForm.ActionFileExitOnExecute(sender: Object; e: EventArgs);
var
   sStatusMessage,sStatusMessageFromCheck, sErrorMessage:String;
   bCancel : Boolean;
begin
   try
     try
        sStatusMessageFromCheck := '';
        bCancel := CheckForSaveOrCancel(sStatusMessageFromCheck);

        //clear status, error messages at beginning of every action
       sStatusMessage:='Exit...';
       sErrorMessage:='';

       //use progress bar (marquee) with action icon (where available) in status bar
       StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, Nil);//

       //perform sender disable/enable in all actions
          self.mnuFileExit.Enabled := False;
          //self.btnFileExit.Enabled := False;

        If bCancel Then
        begin
            sStatusMessage := 'Exit cancelled.';
        end
        Else
        begin
            //EXIT
           Self.Close();
        End;

     finally
       //always do this
          self.mnuFileExit.Enabled := True;
          //self.btnFileExit.Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
     end;
   except
       on Ex: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionFileExitOnExecute' , Ex.StackTrace.ToString);
          StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

//{Edit}
procedure MainForm.ActionEditUndoOnExecute(sender: Object; e: EventArgs);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='Undo...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, self.mnuEditUndo.Image);//

    //perform sender disable/enable in all actions
          self.mnuEditUndo.Enabled := False;
          self.btnEditUndo.Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'Undo done.'  ;
        end
        Else
        begin
           sStatusMessage := 'Undo cancelled.' ;
        End;
     finally
       //always do this
          self.mnuEditUndo.Enabled := True;
          self.btnEditUndo.Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
     end;
   except
       on Ex: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionEditUndoOnExecute' , Ex.StackTrace.ToString);
          StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure MainForm.ActionEditRedoOnExecute(sender: Object; e: EventArgs);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='Redo...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, self.mnuEditRedo.Image);//

    //perform sender disable/enable in all actions
          self.mnuEditRedo.Enabled := False;
          self.btnEditRedo.Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'Redo done.'  ;
        end
        Else
        begin
           sStatusMessage := 'Redo cancelled.' ;
        End;
     finally
       //always do this
          self.mnuEditRedo.Enabled := True;
          self.btnEditRedo.Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
     end;
   except
       on Ex: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionEditRedoOnExecute' , Ex.StackTrace.ToString);
          StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure MainForm.ActionEditSelectAllOnExecute(sender: Object; e: EventArgs);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='Select All...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, Nil);//

    //perform sender disable/enable in all actions
          self.mnuEditSelectAll.Enabled := False;
          //self.btnEditSelectAll.Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'Select All done.'  ;
        end
        Else
        begin
           sStatusMessage := 'Select All cancelled.' ;
        End;
     finally
       //always do this
          self.mnuEditSelectAll.Enabled := True;
          //self.btnEditSelectAll.Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
     end;
   except
       on Ex: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionEditSelectAllOnExecute' , Ex.StackTrace.ToString);
          StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure MainForm.ActionEditCutOnExecute(sender: Object; e: EventArgs);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
    try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='Cut...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, self.mnuEditCut.Image);//

    //perform sender disable/enable in all actions
          self.mnuEditCut.Enabled := False;
          self.btnEditCut.Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'Cut done.'  ;
        end
        Else
        begin
           sStatusMessage := 'Cut cancelled.' ;
        End;
     finally
       //always do this
          self.mnuEditCut.Enabled := True;
          self.btnEditCut.Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
     end;
   except
       on Ex: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionEditCutOnExecute' , Ex.StackTrace.ToString);
          StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure MainForm.ActionEditCopyOnExecute(sender: Object; e: EventArgs);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='Copy...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, self.mnuEditCopy.Image);//

    //perform sender disable/enable in all actions
          self.mnuEditCopy.Enabled := False;
          self.btnEditCopy.Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'Copy done.'  ;
        end
        Else
        begin
           sStatusMessage := 'Copy cancelled.' ;
        End;
     finally
       //always do this
          self.mnuEditCopy.Enabled := True;
          self.btnEditCopy.Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
     end;
   except
       on Ex: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionEditCopyOnExecute' , Ex.StackTrace.ToString);
          StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure MainForm.ActionEditPasteExecute(sender: Object; e: EventArgs);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
    try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='Paste...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, self.mnuEditPaste.Image);//

    //perform sender disable/enable in all actions
          self.mnuEditPaste.Enabled := False;
          self.btnEditPaste.Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'Paste done.'  ;
        end
        Else
        begin
           sStatusMessage := 'Paste cancelled.' ;
        End;
     finally
       //always do this
          self.mnuEditPaste.Enabled := True;
          self.btnEditPaste.Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
     end;
   except
       on Ex: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionEditPasteExecute' , Ex.StackTrace.ToString);
          StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure MainForm.ActionEditPasteSpecialOnExecute(sender: Object; e: EventArgs);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='Paste Special...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, Nil);//

    //perform sender disable/enable in all actions
          self.mnuEditPasteSpecial.Enabled := False;
          //self.btnEditPasteSpecial.Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'Paste Special done.'  ;
        end
        Else
        begin
           sStatusMessage := 'Paste Special cancelled.' ;
        End;
     finally
       //always do this
          self.mnuEditPasteSpecial.Enabled := True;
          //self.btnEditPasteSpecial.Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
     end;
   except
       on Ex: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionEditPasteSpecialOnExecute' , Ex.StackTrace.ToString);
          StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure MainForm.ActionEditDeleteOnExecute(sender: Object; e: EventArgs);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='Delete...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, self.mnuEditDelete.Image);//

    //perform sender disable/enable in all actions
          self.mnuEditDelete.Enabled := False;
          //self.btnEditDelete.Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'Delete done.'  ;
        end
        Else
        begin
           sStatusMessage := 'Delete cancelled.' ;
        End;
     finally
       //always do this
          self.mnuEditDelete.Enabled := True;
          //self.btnEditDelete.Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
     end;
   except
       on Ex: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionEditDeleteOnExecute' , Ex.StackTrace.ToString);
          StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure MainForm.ActionEditFindOnExecute(sender: Object; e: EventArgs);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
    try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='Find...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, self.mnuEditFind.Image);//

    //perform sender disable/enable in all actions
          self.mnuEditFind.Enabled := False;
          self.btnEditFind.Enabled := False;

        If Something() Then //TODO:TFindDialog
        begin
           sStatusMessage := 'Find done.'  ;
        end
        Else
        begin
           sStatusMessage := 'Find cancelled.' ;
        End;
     finally
       //always do this
          self.mnuEditFind.Enabled := True;
          self.btnEditFind.Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
     end;
   except
       on Ex: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionEditFindOnExecute' , Ex.StackTrace.ToString);
          StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure MainForm.ActionEditReplaceOnExecute(sender: Object; e: EventArgs);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='Replace...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, self.mnuEditReplace.Image);//

    //perform sender disable/enable in all actions
          self.mnuEditReplace.Enabled := False;
          self.btnEditReplace.Enabled := False;

        If Something() Then    //TODO:TReplaceDialog
        begin
           sStatusMessage := 'Replace done.'  ;
        end
        Else
        begin
           sStatusMessage := 'Replace cancelled.' ;
        End;
     finally
       //always do this
          self.mnuEditReplace.Enabled := True;
          self.btnEditReplace.Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
     end;
   except
       on Ex: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionEditReplaceOnExecute' , Ex.StackTrace.ToString);
          StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure MainForm.ActionEditGoToOnExecute(sender: Object; e: EventArgs);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
    try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='GoTo...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, Nil);//

    //perform sender disable/enable in all actions
          self.mnuEditGoTo.Enabled := False;
          //self.btnEditGoTo.Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'GoTo done.'  ;
        end
        Else
        begin
           sStatusMessage := 'GoTo cancelled.' ;
        End;
     finally
       //always do this
          self.mnuEditGoTo.Enabled := True;
          //self.btnEditGoTo.Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
     end;
   except
       on Ex: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionEditGoToOnExecute' , Ex.StackTrace.ToString);
          StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure MainForm.ActionEditRefreshOnExecute(sender: Object; e: EventArgs);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
   try
     try
         //clear status, error messages at beginning of every action
        sStatusMessage:='Refresh...';
        sErrorMessage:='';

        //use progress bar (marquee) with action icon (where available) in status bar
        StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, self.mnuEditRefresh.Image);//

        //perform sender disable/enable in all actions
          self.mnuEditRefresh.Enabled := False;
          self.btnEditRefresh.Enabled := False;

        //TODO:replace Something() with this?
        objModel.RefreshModel(False); //to update view

        If Something() Then
        begin
           sStatusMessage := 'Refresh done.'  ;
        end
        Else
        begin
           sStatusMessage := 'Refresh cancelled.' ;
        End;
     finally
       //always do this
          self.mnuEditRefresh.Enabled := True;
          self.btnEditRefresh.Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
     end;
   except
       on Ex: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionEditRefreshOnExecute' , Ex.StackTrace.ToString);
          StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

procedure MainForm.ActionEditPreferencesOnExecute(sender: Object; e: EventArgs);
var
   sStatusMessage:String;
   sErrorMessage:String;
begin
    try
     try
     //clear status, error messages at beginning of every action
    sStatusMessage:='Preferences...';
    sErrorMessage:='';

    //use progress bar (marquee) with action icon (where available) in status bar
    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, self.mnuEditPreferences.Image);//

    //perform sender disable/enable in all actions
          self.mnuEditPreferences.Enabled := False;
          self.btnEditPreferences.Enabled := False;

        If Something() Then
        begin
           sStatusMessage := 'Preferences done.'  ;
        end
        Else
        begin
           sStatusMessage := 'Preferences cancelled.' ;
        End;
     finally
       //always do this
          self.mnuEditPreferences.Enabled := True;
          self.btnEditPreferences.Enabled := True;
       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
     end;
   except
       on Ex: Exception do
       begin
          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionEditPreferencesOnExecute' , Ex.StackTrace.ToString);
          StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
          LogErrorToFile(sErrorMessage);
       end;

   end;

end;

//{Window}
//procedure MainForm.ActionWindowCascadeOnExecute(sender: Object; e: EventArgs);
//var
//   sStatusMessage:String;
//   sErrorMessage:String;
//begin
//   try
//     try
//     //clear status, error messages at beginning of every action
//    sStatusMessage:='WindowCascade...';
//    sErrorMessage:='';
//
//    //use progress bar (marquee) with action icon (where available) in status bar
//    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, Nil);//
//
//    //perform sender disable/enable in all actions
//          self.mnuXxxYyy.Enabled := False;
//          //self.btnXxxYyy.Enabled := False;
//
//        If Something() Then
//        begin
//           sStatusMessage := 'WindowCascade done.'  ;
//        end
//        Else
//        begin
//           sStatusMessage := 'WindowCascade cancelled.' ;
//        End;
//     finally
//       //always do this
//          self.mnuXxxYyy.Enabled := True;
//          //self.btnXxxYyy.Enabled := True;
//       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
//     end;
//   except
//       on Ex: Exception do
//       begin
//          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionWindowCascadeOnExecute' , Ex.StackTrace.ToString);
//          StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
//          LogErrorToFile(sErrorMessage);
//       end;
//
//   end;
//
//end;
//
//procedure MainForm.ActionWindowHideExecute(sender: Object; e: EventArgs);
//var
//   sStatusMessage:String;
//   sErrorMessage:String;
//begin
//   try
//     try
//     //clear status, error messages at beginning of every action
//    sStatusMessage:='WindowHide...';
//    sErrorMessage:='';
//
//    //use progress bar (marquee) with action icon (where available) in status bar
//    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, Nil);//
//
//    //perform sender disable/enable in all actions
//          self.mnuXxxYyy.Enabled := False;
//          //self.btnXxxYyy.Enabled := False;
//
//        If Something() Then
//        begin
//           sStatusMessage := 'WindowHide done.'  ;
//        end
//        Else
//        begin
//           sStatusMessage := 'WindowHide cancelled.' ;
//        End;
//     finally
//       //always do this
//          self.mnuXxxYyy.Enabled := True;
//          //self.btnXxxYyy.Enabled := True;
//       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
//     end;
//   except
//       on Ex: Exception do
//       begin
//          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionWindowHideExecute' , Ex.StackTrace.ToString);
//          StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
//          LogErrorToFile(sErrorMessage);
//       end;
//
//   end;
//
//end;
//
//procedure MainForm.ActionWindowNewWindowOnExecute(sender: Object; e: EventArgs);
//var
//   sStatusMessage:String;
//   sErrorMessage:String;
//begin
//   try
//     try
//     //clear status, error messages at beginning of every action
//    sStatusMessage:='WindowNewWindow...';
//    sErrorMessage:='';
//
//    //use progress bar (marquee) with action icon (where available) in status bar
//    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, Nil);//
//
//    //perform sender disable/enable in all actions
//          self.mnuXxxYyy.Enabled := False;
//          //self.btnXxxYyy.Enabled := False;
//
//        If Something() Then
//        begin
//           sStatusMessage := 'WindowNewWindow done.'  ;
//        end
//        Else
//        begin
//           sStatusMessage := 'WindowNewWindow cancelled.' ;
//        End;
//     finally
//       //always do this
//          self.mnuXxxYyy.Enabled := True;
//          //self.btnXxxYyy.Enabled := True;
//       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
//     end;
//   except
//       on Ex: Exception do
//       begin
//          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionWindowNewWindowOnExecute' , Ex.StackTrace.ToString);
//          StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
//          LogErrorToFile(sErrorMessage);
//       end;
//
//   end;
//
//end;
//
//procedure MainForm.ActionWindowShowExecute(sender: Object; e: EventArgs);
//var
//   sStatusMessage:String;
//   sErrorMessage:String;
//begin
//    try
//     try
//     //clear status, error messages at beginning of every action
//    sStatusMessage:='WindowShow...';
//    sErrorMessage:='';
//
//    //use progress bar (marquee) with action icon (where available) in status bar
//    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, Nil);//
//
//    //perform sender disable/enable in all actions
//          self.mnuXxxYyy.Enabled := False;
//          //self.btnXxxYyy.Enabled := False;
//
//        If Something() Then
//        begin
//           sStatusMessage := 'WindowShow done.'  ;
//        end
//        Else
//        begin
//           sStatusMessage := 'WindowShow cancelled.' ;
//        End;
//     finally
//       //always do this
//          self.mnuXxxYyy.Enabled := True;
//          //self.btnXxxYyy.Enabled := True;
//       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
//     end;
//   except
//       on Ex: Exception do
//       begin
//          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionWindowShowExecute' , Ex.StackTrace.ToString);
//          StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
//          LogErrorToFile(sErrorMessage);
//       end;
//
//   end;
//
//end;
//
//procedure MainForm.ActionWindowTileOnExecute(sender: Object; e: EventArgs);
//var
//   sStatusMessage:String;
//   sErrorMessage:String;
//begin
//   try
//     try
//     //clear status, error messages at beginning of every action
//    sStatusMessage:='WindowTile...';
//    sErrorMessage:='';
//
//    //use progress bar (marquee) with action icon (where available) in status bar
//    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, Nil);//
//
//    //perform sender disable/enable in all actions
//          self.mnuXxxYyy.Enabled := False;
//          //self.btnXxxYyy.Enabled := False;
//
//        If Something() Then
//        begin
//           sStatusMessage := 'WindowTile done.'  ;
//        end
//        Else
//        begin
//           sStatusMessage := 'WindowTile cancelled.' ;
//        End;
//     finally
//       //always do this
//          self.mnuXxxYyy.Enabled := True;
//          //self.btnXxxYyy.Enabled := True;
//       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
//     end;
//   except
//       on Ex: Exception do
//       begin
//          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionWindowTileOnExecute' , Ex.StackTrace.ToString);
//          StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
//          LogErrorToFile(sErrorMessage);
//       end;
//
//   end;
//
//end;
//
//procedure MainForm.ActionWindowArrangeAllExecute(sender: Object; e: EventArgs);
//var
//   sStatusMessage:String;
//   sErrorMessage:String;
//begin
//   try
//     try
//     //clear status, error messages at beginning of every action
//    sStatusMessage:='WindowArrangeAll...';
//    sErrorMessage:='';
//
//    //use progress bar (marquee) with action icon (where available) in status bar
//    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, Nil);//
//
//    //perform sender disable/enable in all actions
//          self.mnuXxxYyy.Enabled := False;
//          //self.btnXxxYyy.Enabled := False;
//
//        If Something() Then
//        begin
//           sStatusMessage := 'WindowArrangeAll done.'  ;
//        end
//        Else
//        begin
//           sStatusMessage := 'WindowArrangeAll cancelled.' ;
//        End;
//     finally
//       //always do this
//          self.mnuXxxYyy.Enabled := True;
//          //self.btnXxxYyy.Enabled := True;
//       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
//     end;
//   except
//       on Ex: Exception do
//       begin
//          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionWindowArrangeAllExecute' , Ex.StackTrace.ToString);
//          StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
//          LogErrorToFile(sErrorMessage);
//       end;
//
//   end;
//
//end;
//
//{Help}
//procedure MainForm.ActionHelpHelpContentsOnExecute(sender: Object; e: EventArgs);
//var
//   sStatusMessage:String;
//   sErrorMessage:String;
//begin
//   try
//     try
//     //clear status, error messages at beginning of every action
//    sStatusMessage:='HelpHelpContents...';
//    sErrorMessage:='';
//
//    //use progress bar (marquee) with action icon (where available) in status bar
//    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, self.mnuHelpContents.Image);//
//
//    //perform sender disable/enable in all actions
//          self.mnuXxxYyy.Enabled := False;
//          //self.btnXxxYyy.Enabled := False;
//
//        If Something() Then
//        begin
//           sStatusMessage := 'HelpHelpContents done.'  ;
//        end
//        Else
//        begin
//           sStatusMessage := 'HelpHelpContents cancelled.' ;
//        End;
//     finally
//       //always do this
//          self.mnuXxxYyy.Enabled := True;
//          //self.btnXxxYyy.Enabled := True;
//       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
//     end;
//   except
//       on Ex: Exception do
//       begin
//          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionHelpHelpContentsOnExecute' , Ex.StackTrace.ToString);
//          StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
//          LogErrorToFile(sErrorMessage);
//       end;
//
//   end;
//end;
//
//procedure MainForm.ActionHelpHelpIndexOnExecute(sender: Object; e: EventArgs);
//var
//   sStatusMessage:String;
//   sErrorMessage:String;
//begin
//   try
//     try
//     //clear status, error messages at beginning of every action
//    sStatusMessage:='HelpHelpIndex...';
//    sErrorMessage:='';
//
//    //use progress bar (marquee) with action icon (where available) in status bar
//    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, Nil);//
//
//    //perform sender disable/enable in all actions
//          self.mnuXxxYyy.Enabled := False;
//          //self.btnXxxYyy.Enabled := False;
//
//        If Something() Then
//        begin
//           sStatusMessage := 'HelpHelpIndex done.'  ;
//        end
//        Else
//        begin
//           sStatusMessage := 'HelpHelpIndex cancelled.' ;
//        End;
//     finally
//       //always do this
//          self.mnuXxxYyy.Enabled := True;
//          //self.btnXxxYyy.Enabled := True;
//       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
//     end;
//   except
//       on Ex: Exception do
//       begin
//          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionHelpHelpIndexOnExecute' , Ex.StackTrace.ToString);
//          StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
//          LogErrorToFile(sErrorMessage);
//       end;
//
//   end;
//end;
//
//procedure MainForm.ActionHelpLicenceInformationOnExecute(sender: Object; e: EventArgs);
//var
//   sStatusMessage:String;
//   sErrorMessage:String;
//begin
//   try
//     try
//     //clear status, error messages at beginning of every action
//    sStatusMessage:='HelpLicenceInformation...';
//    sErrorMessage:='';
//
//    //use progress bar (marquee) with action icon (where available) in status bar
//    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, Nil);//
//
//    //perform sender disable/enable in all actions
//          self.mnuXxxYyy.Enabled := False;
//          //self.btnXxxYyy.Enabled := False;
//
//        If Something() Then
//        begin
//           sStatusMessage := 'HelpLicenceInformation done.'  ;
//        end
//        Else
//        begin
//           sStatusMessage := 'HelpLicenceInformation cancelled.' ;
//        End;
//     finally
//       //always do this
//          self.mnuXxxYyy.Enabled := True;
//          //self.btnXxxYyy.Enabled := True;
//       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
//     end;
//   except
//       on Ex: Exception do
//       begin
//          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionHelpLicenceInformationOnExecute' , Ex.StackTrace.ToString);
//          StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
//          LogErrorToFile(sErrorMessage);
//       end;
//
//   end;
//end;
//
//procedure MainForm.ActionHelpOnlineHelpOnExecute(sender: Object; e: EventArgs);
//var
//   sStatusMessage:String;
//   sErrorMessage:String;
//begin
//   try
//     try
//     //clear status, error messages at beginning of every action
//    sStatusMessage:='HelpOnlineHelp...';
//    sErrorMessage:='';
//
//    //use progress bar (marquee) with action icon (where available) in status bar
//    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, Nil);//
//
//    //perform sender disable/enable in all actions
//          self.mnuXxxYyy.Enabled := False;
//          //self.btnXxxYyy.Enabled := False;
//
//        If Something() Then
//        begin
//           sStatusMessage := 'HelpOnlineHelp done.'  ;
//        end
//        Else
//        begin
//           sStatusMessage := 'HelpOnlineHelp cancelled.' ;
//        End;
//     finally
//       //always do this
//          self.mnuXxxYyy.Enabled := True;
//          //self.btnXxxYyy.Enabled := True;
//       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
//     end;
//   except
//       on Ex: Exception do
//       begin
//          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionHelpOnlineHelpOnExecute' , Ex.StackTrace.ToString);
//          StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
//          LogErrorToFile(sErrorMessage);
//       end;
//
//   end;
//end;
//
//procedure MainForm.ActionHelpCheckForUpdatesOnExecute(sender: Object; e: EventArgs);
//var
//   sStatusMessage:String;
//   sErrorMessage:String;
//begin
//   try
//     try
//     //clear status, error messages at beginning of every action
//    sStatusMessage:='HelpCheckForUpdates...';
//    sErrorMessage:='';
//
//    //use progress bar (marquee) with action icon (where available) in status bar
//    StartProgressBarWithPicture(sStatusMessage, sErrorMessage, True, False, 0, 100, lblStatus, lblError, prgProgress, lblAction, Nil);//
//
//    //perform sender disable/enable in all actions
//          self.mnuXxxYyy.Enabled := False;
//          //self.btnXxxYyy.Enabled := False;
//
//        If Something() Then
//        begin
//           sStatusMessage := 'HelpCheckForUpdates done.'  ;
//        end
//        Else
//        begin
//           sStatusMessage := 'HelpCheckForUpdates cancelled.' ;
//        End;
//     finally
//       //always do this
//          self.mnuXxxYyy.Enabled := True;
//          //self.btnXxxYyy.Enabled := True;
//       ssepan_laz_application.StopProgressBar(sStatusMessage, sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
//     end;
//   except
//       on Ex: Exception do
//       begin
//          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionHelpCheckForUpdatesOnExecute' , Ex.StackTrace.ToString);
//          StopProgressBar('', sErrorMessage, lblStatus, lblError, prgProgress, lblAction);
//          LogErrorToFile(sErrorMessage);
//       end;
//
//   end;
//
//end;
//
//procedure MainForm.ActionHelpAboutOnExecute(sender: Object; e: EventArgs);
//var
//   sStatusMessage:String;
//   sErrorMessage:String;
//begin
//   try
//     try
//     //clear status, error messages at beginning of every action
//    sStatusMessage:='HelpAbout...';
//    sErrorMessage:='';
//
//    //use progress bar (marquee) with action icon (where available) in status bar
//    StartProgressBarWithPicture
//    (
//     sStatusMessage,
//     sErrorMessage,
//     True,
//     False,
//     0,
//     100,
//     lblStatusMessage,
//     lblErrorMessage,
//     ProgressBar,
//     imgActionIcon,
//     MenuHelpAbout.Bitmap
//     );//
//
//    //perform sender disable/enable in all actions
//          self.mnuXxxYyy.Enabled := False;
//          //self.btnXxxYyy.Enabled := False;
//
//        If Something() Then
//        begin
//           sStatusMessage := 'HelpAbout done.'  ;
//        end
//        Else
//        begin
//           sStatusMessage := 'HelpAbout cancelled.' ;
//        End;
//     finally
//       //always do this
//          self.mnuXxxYyy.Enabled := True;
//          //self.btnXxxYyy.Enabled := True;
//       StopProgressBar
//       (
//        sStatusMessage,
//        sErrorMessage,
//        lblStatusMessage,
//        lblErrorMessage,
//        ProgressBar,
//        imgActionIcon
//        );
//     end;
//   except
//         on Ex: Exception do
//       begin
//          sErrorMessage:=FormatErrorForLog(Ex.Message , 'ActionHelpAboutOnExecute' , Ex.StackTrace.ToString);
//          StopProgressBar
//          (
//           '',
//           sErrorMessage,
//           lblStatusMessage,
//           lblErrorMessage,
//           ProgressBar,
//           imgActionIcon
//           );
//          LogErrorToFile(sErrorMessage);
//       end;
//
//   end;
//end;


{
Events
}
{
Menu
}
procedure MainForm.mnuFileNew_Click(sender: Object; e: EventArgs);
begin
  ActionFileNewOnExecute(sender, e);
end;

procedure MainForm.mnuFileOpen_Click(sender: Object; e: EventArgs);
begin
  ActionFileOpenOnExecute(sender, e);
end;

procedure MainForm.mnuFileSave_Click(sender: Object; e: EventArgs);
begin
  ActionFileSaveOnExecute(sender, e);
end;

procedure MainForm.mnuFileSaveAs_Click(sender: Object; e: EventArgs);
begin
  ActionFileSaveAsOnExecute(sender, e);
end;

procedure MainForm.mnuFilePrint_Click(sender: Object; e: EventArgs);
begin
  ActionFilePrintOnExecute(sender, e);
end;

procedure MainForm.mnuFilePrintSetup_Click(sender: Object; e: EventArgs);
begin
  ActionFilePrintSetupOnExecute(sender, e);
end;

procedure MainForm.mnuFileExit_Click(sender: Object; e: EventArgs);
begin
  ActionFileExitOnExecute(sender, e);
end;

procedure MainForm.mnuEditUndo_Click(sender: Object; e: EventArgs);
begin
  ActionEditUndoOnExecute(sender, e);
end;

procedure MainForm.mnuEditRedo_Click(sender: Object; e: EventArgs);
begin
  ActionEditRedoOnExecute(sender, e);
end;

procedure MainForm.mnuEditSelectAll_Click(sender: Object; e: EventArgs);
begin
  ActionEditSelectAllOnExecute(sender, e);
end;

procedure MainForm.mnuEditCut_Click(sender: Object; e: EventArgs);
begin
  ActionEditCutOnExecute(sender, e);
end;

procedure MainForm.mnuEditCopy_Click(sender: Object; e: EventArgs);
begin
  ActionEditCopyOnExecute(sender, e);
end;

procedure MainForm.mnuEditPaste_Click(sender: Object; e: EventArgs);
begin
  ActionEditPasteExecute(sender, e);
end;

procedure MainForm.mnuEditPasteSpecial_Click(sender: Object; e: EventArgs);
begin
  ActionEditPasteSpecialOnExecute(sender, e);
end;

procedure MainForm.mnuEditDelete_Click(sender: Object; e: EventArgs);
begin
  ActionEditDeleteOnExecute(sender, e);
end;

procedure MainForm.mnuEditFind_Click(sender: Object; e: EventArgs);
begin
  ActionEditFindOnExecute(sender, e);
end;

procedure MainForm.mnuEditReplace_Click(sender: Object; e: EventArgs);
begin
  ActionEditReplaceOnExecute(sender, e);
end;

procedure MainForm.mnuEditGoto_Click(sender: Object; e: EventArgs);
begin
  ActionEditGoToOnExecute(sender, e);
end;

procedure MainForm.mnuEditRefresh_Click(sender: Object; e: EventArgs);
begin
  ActionEditRefreshOnExecute(sender, e);
end;

procedure MainForm.mnuEditProperties_Click(sender: Object; e: EventArgs);
begin
  lblStatus.Text:='EditProperties';
end;

procedure MainForm.mnuEditPreferences_Click(sender: Object; e: EventArgs);
begin
  ActionEditPreferencesOnExecute(sender, e);
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
{
Form
}
procedure MainForm.MainForm_Load(sender: Object; e: EventArgs);
var
   sErrorMessage:String;
   //proc:  TProcArgString;
begin
  try
      try
         bStopControlEvents := False;

          //temporary?; do in form show?
        if Not FileNew() Then
        begin
           raise Exception.Create('new failed.');
        end;
      finally
        //always do this
      end;
    except
        on Ex: Exception do
        begin
           sErrorMessage:=FormatErrorForLog(Ex.Message , 'FileNew' , Ex.StackTrace.ToString);
           LogErrorToFile(sErrorMessage);
        end;
    end;
end;

procedure MainForm.MainForm_FormClosing(sender: Object; e: FormClosingEventArgs);
var
   sErrorMessage:String;
   proc:  TProcArgString;
begin
  try
      try
        proc := {@}objModel_PropertyChanged;
        objModel.RemoveHandler(proc);
        objModel := Nil;
      finally
        //always do this
      end;
    except
        on Ex: Exception do
        begin
           sErrorMessage:=FormatErrorForLog(Ex.Message , 'FileNew' , Ex.StackTrace.ToString);
           LogErrorToFile(sErrorMessage);
        end;
    end;
end;
{
Controls
}

procedure MainForm.SomeStringEdit_TextChanged(sender: Object; e: EventArgs);
var
     sErrorMessage{, formatResult}:String;
begin
  try
    try
    If not bStopControlEvents Then
    begin
        objModel.SomeString := TextBox(sender).Text;
    End;
    finally
      //Note: don't put off field assignment until finally; something fires in between and causes control to rewrite old value over model field
    end;
    except
      on Ex: Exception do
      begin
         sErrorMessage:=FormatErrorForLog(Ex.Message , 'SomeStringEdit_TextChanged' , Ex.StackTrace.ToString);
         LogErrorToFile(sErrorMessage);
      end;
    end;
end;

procedure MainForm.SomeIntegerEdit_TextChanged(sender: Object; e: EventArgs);
var
     sErrorMessage{, formatResult, blah}:String;
     //BUG:removing unused 'blah' causes Sender to have value '1' in Text during New (stack corruption?)
begin
  try
    try
      If not bStopControlEvents Then
      begin
            objModel.SomeInteger := StrToInt(TextBox(sender).Text);
      End;
    finally
      //Note: don't put off field assignment until finally; something fires in between and causes control to rewrite old value over model field
    end;
    except
      on Ex: Exception do
      begin
         sErrorMessage:=FormatErrorForLog(Ex.Message , 'SomeIntegerEdit_TextChanged' , Ex.StackTrace.ToString);
         LogErrorToFile(sErrorMessage);
      end;
    end;
end;

procedure MainForm.SomeBooleanCheckBox_CheckedChanged(sender: Object; e: EventArgs);
var
     sErrorMessage{, formatResult}:String;
begin
  try
    try
      If not bStopControlEvents Then
      begin
            objModel.SomeBoolean := CheckBox(Sender).Checked;
      End;
    finally
      //Note: don't put off field assignment until finally; something fires in between and causes control to rewrite old value over model field
    end;
    except
      on Ex: Exception do
      begin
         sErrorMessage:=FormatErrorForLog(Ex.Message , 'SomeBooleanCheckBox_CheckedChanged' , Ex.StackTrace.ToString);
         LogErrorToFile(sErrorMessage);
      end;
    end;
end;

procedure MainForm.SomeDateEdit_ValueChanged(sender: Object; e: EventArgs);
var
     sErrorMessage{, formatResult}:String;
begin
  try
    try
      If not bStopControlEvents Then
      begin
            objModel.SomeDateTime := DateTimePicker(Sender).Value;
      End;
    finally
      //Note: don't put off field assignment until finally; something fires in between and causes control to rewrite old value over model field
    end;
    except
      on Ex: Exception do
      begin
         sErrorMessage:=FormatErrorForLog(Ex.Message , 'SomeDateEdit_ValueChanged' , Ex.StackTrace.ToString);
         LogErrorToFile(sErrorMessage);
      end;
    end;
end;

//begin
//  System.Windows.Forms.Application.EnableVisualStyles();
//  System.Windows.Forms.Application.SetCompatibleTextRenderingDefault(false);
////  frmMain := new MainForm();
////  System.Windows.Forms.Application.Run(frmMain)
//  System.Windows.Forms.Application.Run(new MainForm)
//end;

end.
