unit ssepan_laz_application;

{ $mode objfpc}{ $H+}

interface

uses
  {Classes, SysUtils,Controls,Forms,ComCtrls,
  StdCtrls, ExtCtrls, Graphics}System, System.Drawing, System.Windows.Forms, Ssepan_Laz_Utility;

//type

//procedure x();
//function z():Boolean;
Procedure StartProgressBarWithPicture
(
          sStatusMessage, sErrorMessage : String;
          isMarqueeProgressBarStyle, isCountProgressbar:Boolean;
          iProgressBarValue, iProgressBarMax:LongInt;
          var ctlStatusMessage, ctlErrorMessage: ToolStripStatusLabel;
          var ctlProgressBar:ToolStripProgressBar;
          var ctlActionIcon:ToolStripStatusLabel;
           objImage:Image
);
procedure UpdateProgressBar
(
          sStatusMessage : String;
          isMarqueeProgressBarStyle, isCountProgressbar:Boolean;
          iProgressBarValue:LongInt;
          var ctlStatusMessage: ToolStripStatusLabel;
          var ctlProgressBar:ToolStripProgressBar
);
procedure UpdateStatusBarMessages
(
          sStatusMessage, sErrorMessage : String;
          var ctlStatusMessage, ctlErrorMessage: ToolStripStatusLabel
);
procedure StopProgressBar
(
          sStatusMessage, sErrorMessage : String;
          var ctlStatusMessage, ctlErrorMessage: ToolStripStatusLabel;
          var ctlProgressBar:ToolStripProgressBar;
          var ctlActionIcon:ToolStripStatusLabel
);

implementation

//procedure x() ;
//var
//  y:String;
//begin
//  WriteLn('x');
//end;
//
//function z():Boolean ;
//var
//  q:String;
//begin
//  WriteLn('z');
//  z:=True;
//end;


// <summary>
// Use for Marquee-style progress bar, or when percentages/count must be indicated.
// </summary>
// <param name="sStatusMessage">String</param>
// <param name="serrorMessage">String</param>
// <param name="isMarqueeProgressBarStyle">Boolean</param>
// <param name="isCountProgressbar">Boolean</param>
// <param name="iProgressBarValue">LongInt</param>
// <param name="iProgressBarMax">LongInt. ignored when using marquee or using normal and not count (i.e. - percentage); defaults to 100</param>
// <param name="ctlStatusMessage">ToolStripStatusLabel</param>
// <param name="ctlErrorMessage">ToolStripStatusLabel</param>
// <param name="ctlProgressBar">ToolStripProgressBar</param>
// <param name="ctlActionIcon">ToolStripStatusLabel</param>
// <param name="objImage">Image</param>
Procedure StartProgressBarWithPicture
(
  sStatusMessage, sErrorMessage : String;
  isMarqueeProgressBarStyle, isCountProgressbar:Boolean;
  iProgressBarValue, iProgressBarMax:LongInt;
  var ctlStatusMessage, ctlErrorMessage: ToolStripStatusLabel;
  var ctlProgressBar:ToolStripProgressBar;
  var ctlActionIcon:ToolStripStatusLabel;
  objImage:Image
);
begin
  try
    try
       ctlProgressBar.Visible:=True;
       ctlProgressBar.Enabled:=True;

       if (isMarqueeProgressBarStyle) then
       begin
            //marquee
            ctlProgressBar.Style:= ProgressBarStyle.Marquee;
            ctlProgressBar.Maximum:=100;
            ctlProgressBar.Step := 1;
            ctlProgressBar.Value := 33;//one third
       end
       else
       begin
            //progress
            //if Style is not Marquee, then we are marking either a count or percentage
            ctlProgressBar.Style:=ProgressBarStyle.Blocks;
            if (isCountProgressbar) then
            begin
                 //count
                 //set to smooth if count is used.
                 ctlProgressBar.Style := ProgressBarStyle.Continuous;
                 ctlProgressBar.Maximum:=iProgressBarMax;

            end
            else
            begin
                 //percentage
                 //set to blocks if actual percentage is used.
                 ctlProgressBar.Style := ProgressBarStyle.Blocks;
                 ctlProgressBar.Maximum:=100;//

            end;

            //set to value if percentage or count used.
            ctlProgressBar.Step := 1;
            ctlProgressBar.Value := iProgressBarValue;
       end;

      if (sStatusMessage='') then ctlStatusMessage.Text := '' else ctlStatusMessage.Text := sStatusMessage;

      if (sErrorMessage='') then ctlErrorMessage.Text := '' else ctlErrorMessage.Text := sErrorMessage;
      ctlErrorMessage.ToolTipText := ctlErrorMessage.Text;

      if (objImage <> nil) then
      begin
        ctlActionIcon.Image := objImage;
        ctlActionIcon.ToolTipText := sStatusMessage;
        ctlActionIcon.Visible := True;
      end;
    finally
      //give the app time to draw the eye-candy, even if its only for an instant
      Application.DoEvents;//ProcessMessages;
    end;
  except
    on Ex: Exception do
      LogErrorToFile(FormatErrorForLog(Ex.Message , 'StartProgressBarWithPicture' , Ex.StackTrace.ToString));
    //
    //    Error.Propagate 'Throw  }
  end;
End; //procedure



// <summary>
// Update percentage changes.
// </summary>
// <param name="sStatusMessage">String. If Null, do nothing, otherwise update.</param>
// <param name="isMarqueeProgressBarStyle">Boolean</param>
// <param name="isCountProgressbar">Boolean</param>
// <param name="iProgressBarValue">LongInt. UpdateProgressBar does not manage the value, other than checking that it is within the range, and adjusting the Max for counting mode.</param>
// <param name="ctlStatusMessage">ToolStripStatusLabel</param>
// <param name="ctlProgressBar">ToolStripProgressBar</param>
procedure UpdateProgressBar
(
          sStatusMessage : String;
          isMarqueeProgressBarStyle, isCountProgressbar:Boolean;
          iProgressBarValue:LongInt;
          var ctlStatusMessage: ToolStripStatusLabel;
          var ctlProgressBar:ToolStripProgressBar
);
begin
  try
    try

    if (sStatusMessage='') then {ctlStatusMessage.Text := ''} else ctlStatusMessage.Text := sStatusMessage;

    if (isMarqueeProgressBarStyle) then
     begin
          //do nothing with progressbar
     end
     else
     begin
         //update count or percentage
          //if Style is not Marquee, then we are marking either a count or percentage
          //if we are simply counting, the progress bar will periodically need to adjust the Maximum.
          if (isCountProgressbar) then
          begin
            If (iProgressBarValue > ctlProgressBar.Maximum) Then
            begin
                 ctlProgressBar.Maximum := iProgressBarValue * 2;
            end;
          end;

          ctlProgressBar.Value := iProgressBarValue;
    end;

    finally
      //give the app time to draw the eye-candy, even if its only for an instant
        Application.DoEvents;
    end;
  except
    on Ex: Exception do
      LogErrorToFile(FormatErrorForLog(Ex.Message , 'UpdateProgressBar' , Ex.StackTrace.ToString));
    //
    //    Error.Propagate //Throw
  end;
end; //Sub

// <summary>
// Update message(s) only, without changing progress bar.
// Null parameter will leave a message unchanged; '' will clear it.
// </summary>
// <param name="sStatusMessage">String</param>
// <param name="serrorMessage">String</param>
// <param name="ctlStatusMessage">ToolStripStatusLabel</param>
// <param name="ctlErrorMessage">ToolStripStatusLabel</param>
procedure UpdateStatusBarMessages
(
          sStatusMessage, sErrorMessage : String;
          var ctlStatusMessage, ctlErrorMessage: ToolStripStatusLabel
);
begin
  try
    try
       if (sStatusMessage='') then {ctlStatusMessage.Text := ''} else ctlStatusMessage.Text := sStatusMessage;

       if (sErrorMessage='') then {ctlErrorMessage.Text := ''} else ctlErrorMessage.Text := sErrorMessage;
       ctlErrorMessage.ToolTipText := ctlErrorMessage.Text;

    finally
      //give the app time to draw the eye-candy, even if its only for an instant
      Application.DoEvents;
    end;

  except
    on Ex: Exception do
      LogErrorToFile(FormatErrorForLog(Ex.Message , 'UpdateStatusBarMessages' , Ex.StackTrace.ToString));
    //
    //    Error.Propagate 'Throw
  end;

End; //Sub


// <summary>
// Stop progress bar and display messages.
// Application.ProcessMessages will ensure messages are processed before continuing.
// </summary>
// <param name="sStatusMessage">String</param>
// <param name="serrorMessage">String</param>
// <param name="ctlStatusMessage">ToolStripStatusLabel</param>
// <param name="ctlErrorMessage">ToolStripStatusLabel</param>
// <param name="ctlProgressBar">ToolStripProgressBar</param>
// <param name="ctlActionIcon">ToolStripStatusLabel</param>
procedure StopProgressBar
(
          sStatusMessage, sErrorMessage : String;
          var ctlStatusMessage, ctlErrorMessage: ToolStripStatusLabel;
          var ctlProgressBar:ToolStripProgressBar;
          var ctlActionIcon:ToolStripStatusLabel
);
begin
    try
       try

          if (sStatusMessage='') then ctlStatusMessage.Text := '' else ctlStatusMessage.Text := sStatusMessage;

          //do not clear error at end of operation, clear it at start of operation
          if (sErrorMessage='') then {do nothing} else ctlErrorMessage.Text := sErrorMessage;
          //sync
          ctlErrorMessage.ToolTipText := ctlErrorMessage.Text;

          ctlProgressBar.Enabled:=False;
          ctlProgressBar.Visible:=False;

          ctlActionIcon.Visible := False;

        finally
           ctlProgressBar.Enabled:=False;
           ctlProgressBar.Visible:=False;

          //give the app time to draw the eye-candy, even if its only for an instant
          Application.DoEvents;
        end;

     except
       on Ex: Exception do
         LogErrorToFile(FormatErrorForLog(Ex.Message , 'StopProgressBar' , Ex.StackTrace.ToString));
         //
         //    Error.Propagate 'Throw
     end;

End; //Sub



initialization
begin
end;

finalization
begin
end;


end.

