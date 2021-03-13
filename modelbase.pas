unit ModelBase;

{ $mode objfpc}{$H+}

interface

uses
  System, ssepan_laz_utility;

type
  TProcArgString = procedure(propertyName : String);// of object;
  THandlers = {specialize} {TFPG}List<TProcArgString>;
  TModelBase=class//(TObject)
  private
    {
    Fields
    }

    FDirty: Boolean;
    FKey : String;
    FHandlers: THandlers;
    {
    Properties
    }
  protected
    {
    Events
    }
    {
    Properties
    }

    function GetDirty():Boolean;
    procedure SetDirty(Value: Boolean);
    function GetKey():String;
    procedure SetKey(Value: String);
  public

    {
    ctor
    }
    constructor Create(); 
    destructor Destroy; 
    {
    Events
    }
    procedure NotifyPropertyChanged(propertyName : String);


    {
    Methods
    }
    procedure AddHandler(f:TProcArgString);
    procedure RemoveHandler(f:TProcArgString);
    procedure OnNotifyPropertyChanged(propertyName:String);

    {
    Properties
    }
    property Dirty : Boolean read GetDirty write SetDirty;
    Property Key : String read GetKey write SetKey;
  //class var


end;
    const
     KEY_NEW = '(new)';

//var
//  test1:string;
implementation

  {
  ctor
  }
  //default constructor
  constructor TModelBase.Create();
  begin
     FDirty := false;
     FKey := KEY_NEW;
     FHandlers := THandlers.Create;
  end;

  destructor TModelBase.Destroy;
  begin
       FHandlers.Clear{Free};
       FHandlers:=nil;
  end;
  {
  Events
  }
  //re-visit http://docwiki.appmethod.com/appmethod/1.13/topics/en/Events
  //to sort out its event alternative;
  procedure TModelBase.NotifyPropertyChanged(propertyName : String);
  var
    sErrorMessage, formatResult:String;
    bResult : Boolean;
  begin
    try
      try
         bResult := False;

         formatResult:=String.Format('PropertyChanged firing: ''{0}''',propertyName);
         WriteLn(formatResult);

         OnNotifyPropertyChanged(propertyName);

       finally

          formatResult:=String.Format('PropertyChanged fired: ''{0}''',propertyName);
          WriteLn(formatResult);
       end;
       except
         on Ex: Exception do
         begin
            sErrorMessage:=FormatErrorForLog(Ex.Message , 'NotifyPropertyChanged' , Ex.StackTrace.ToString);
            LogErrorToFile(sErrorMessage);
         end;
       end;
  end;

  {
  Properties
  }
  function TModelBase.GetDirty():Boolean;
  begin
    GetDirty := FDirty;
  end;
  procedure TModelBase.SetDirty(Value: Boolean);
  begin
    FDirty := Value;
    NotifyPropertyChanged('Dirty');
  end;

  function TModelBase.GetKey():String;
  begin
    GetKey := FKey;
  end;
  procedure TModelBase.SetKey(Value: String);
  begin
    FKey := Value;
    NotifyPropertyChanged('Key');
    Dirty := true;
  end;

  {
  Methods
  }

  procedure TModelBase.AddHandler(f:TProcArgString);
  var
    sErrorMessage, formatResult:String;
  begin
    try
      try
        formatResult:=String.Format('FHandlers.Count (before): ''{0}''',FHandlers.Count.ToString());
        WriteLn(formatResult);

        //f('Key');
        if FHandlers.IndexOf(f) = -1 then
        begin
             FHandlers.Add(f);
        end;

        formatResult:=String.Format('FHandlers.Count (after): ''{0}''',FHandlers.Count.ToString());
        WriteLn(formatResult);
      finally
           //
      end;
      except
        on Ex: Exception do
        begin
           sErrorMessage:=FormatErrorForLog(Ex.Message , 'AddHandler' , Ex.StackTrace.ToString);
           LogErrorToFile(sErrorMessage);
        end;
      end;
  end;

  procedure TModelBase.RemoveHandler(f:TProcArgString);
  var
    sErrorMessage, formatResult:String;
    extracted: Boolean{Pointer};
  begin
    try
      try
          formatResult:=String.Format('FHandlers.Count (before): ''{0}''',FHandlers.Count.ToString());
          WriteLn(formatResult);

          extracted := FHandlers.Remove(f){Extract(f)};
          if (extracted) Then
          begin
            formatResult:=String.Format('item not extracted from FHandlers: ''{0}''',FHandlers.Count.ToString());
            WriteLn(formatResult);
          end
          else
          begin
            formatResult:=String.Format('FHandlers.Count (after): ''{0}''',FHandlers.Count.ToString());
            WriteLn(formatResult);
          end;
      finally
           //
      end;
      except
        on Ex: Exception do
        begin
           sErrorMessage:=FormatErrorForLog(Ex.Message , 'RemoveHandler' , Ex.StackTrace.ToString);
           LogErrorToFile(sErrorMessage);
        end;
      end;
  end;


  procedure TModelBase.OnNotifyPropertyChanged(propertyName : String);
  var
    sErrorMessage, formatResult:String;
    proc:  TProcArgString;
  begin
    try
      try
        //if (propertyName='SomeInteger') Then
        //begin
        //  formatResult:=String.Format('OnNotifyPropertyChanged: propertyName (before): ''{0}''',[propertyName]);
        //  WriteLn(formatResult);
        //end;

        foreach proc in FHandlers do
        begin
             proc(propertyName);
        end;
      finally
         //if (propertyName='SomeInteger') Then
         //begin
         //  formatResult:=String.Format('OnNotifyPropertyChanged: propertyName (after): ''{0}''',[propertyName]);
         //  WriteLn(formatResult);
         //end;
      end;
      except
        on Ex: Exception do
        begin
           WriteLn(sErrorMessage);
           sErrorMessage:=FormatErrorForLog(Ex.Message , 'OnNotifyPropertyChanged' , Ex.StackTrace.ToString);
           LogErrorToFile(sErrorMessage);
        end;
      end;
  end;


end.

