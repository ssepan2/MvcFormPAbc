unit Ssepan_Laz_Utility;

{ $mode objfpc}{ $H+}

interface

uses
  System,System.Diagnostics{Classes}{, SysUtils}{,LazLoggerBase};//,Controls,Forms,ComCtrls,StdCtrls, ExtCtrls;

//type

//procedure x();
//function z():Boolean;
//Function FormatErrorForScreen(sMessage : String, sContext : String, sHelp : String) : String;
Function FormatErrorForLog(sMessage , sContext , sHelp : String) : String;
Procedure LogErrorToFile(sMessage: String);

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

Function FormatErrorForLog(sMessage , sContext , sHelp : String) : String;

    var
      sResult : String;
begin
  try
    try
      sResult:=String.Format('Error: {0}\r\nContext: {1}\r\nHelp:{2}.',sMessage,sContext,sHelp);
    finally
           FormatErrorForLog:= sResult;
    end;
    except
      on E: Exception do
        LogErrorToFile(E.Message);
    end;
End;

Procedure LogErrorToFile(sMessage: String);
begin
  try
    try
      //TODO:write to log
      Debug.WriteLine{DebugLn}(sMessage);

    finally
       //also write to console
       WriteLn(sMessage);
    end;
    except
      on E: Exception do
        WriteLn(E.Message);
    end;

end;

initialization
begin
end;

finalization
begin
end;


end.

