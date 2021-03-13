unit SomeModel;

{ $mode objfpc}{ $H+}

interface

uses
  System, ModelBase, Ssepan_Laz_Utility;
type
  TSomeModel=Class(TModelBase)
  private
    FForceNotify : Boolean; //:= False;

    {
    Fields
    }
    FSomeString : String;// := '';
    FSomeBoolean : Boolean;// := False;
    FSomeInteger : LongInt;// := 0;
    FSomeDateTime : DateTime;// := Now();
    {
    Properties
    }

  protected
    {
    Properties
    }
    Function GetSomeString() : String;
    procedure SetSomeString(Value : String);

    Function GetSomeBoolean() : Boolean;
    procedure SetSomeBoolean(Value : Boolean);

    Function GetSomeInteger() : LongInt;
    procedure SetSomeInteger(Value : LongInt);

    Function GetSomeDateTime() : DateTime;
    procedure SetSomeDateTime(Value : DateTime);

  public
    {
    ctor
    }
    constructor Create(); 
    destructor Destroy; 

    {
    Properties
    }


    Property SomeString : String read GetSomeString write SetSomeString;
    Property SomeBoolean : Boolean read GetSomeBoolean write SetSomeBoolean;
    Property SomeInteger : LongInt read GetSomeInteger write SetSomeInteger;
    Property SomeDateTime : DateTime read GetSomeDateTime write SetSomeDateTime;
    {
    Methods
    }
    procedure RefreshModel(bPreserveDirty : Boolean );
    Function VerifyKey(objModel : TSomeModel; sKey,sFilePath : String) : Boolean;
    {
    Static
    }
  //class //var
    
    {
    Methods
    }
    class Function OpenFromSettings(var objModel : TSomeModel; sFilePath : String) : Boolean;
    class Function SaveToSettings(var objModel : TSomeModel; sFilePath:String) : Boolean;

  end;

    const //static?
        C_INI_FILE = 'SomeIni.ini';


//var
//  test2:string;
implementation
  {
  ctor
  }
  constructor TSomeModel.Create();
  begin
      Inherited Create();

      SomeString:='';
      SomeInteger:=0;
      SomeBoolean:=False;
      SomeDateTime:=System.DateTime.Now;
  end;

  destructor TSomeModel.Destroy;
  begin
       Inherited Destroy;
  end;

  {
  Properties
  }

  Function TSomeModel.GetSomeString() : String;
  begin

      GetSomeString :=  FSomeString;

  End;
  procedure TSomeModel.SetSomeString(Value : String);
  var
       sErrorMessage, formatResult:String;
  begin
      try
        try

          If (FSomeString <> Value) Or FForceNotify Then
          begin
              FSomeString := Value;
              NotifyPropertyChanged('SomeString');
              Dirty := true;
          End;
      finally
        //
      end;
    except
      on Ex: Exception do
      begin
         sErrorMessage:=FormatErrorForLog(Ex.Message , 'SetSomeString' , Ex.StackTrace.ToString);
         LogErrorToFile(sErrorMessage);
      end;
    end;

  End;

  Function TSomeModel.GetSomeBoolean() : Boolean;
  begin

      GetSomeBoolean :=  FSomeBoolean;

  End;
  procedure TSomeModel.SetSomeBoolean(Value : Boolean);
  var
       sErrorMessage, formatResult:String;
  begin
      try
        try

          If (FSomeBoolean <> Value) Or FForceNotify Then
          begin
              FSomeBoolean := Value;
              NotifyPropertyChanged('SomeBoolean');
              Dirty := true;
          End;
      finally
        //
      end;
    except
      on Ex: Exception do
      begin
         sErrorMessage:=FormatErrorForLog(Ex.Message , 'SetSomeBoolean' , Ex.StackTrace.ToString);
         LogErrorToFile(sErrorMessage);
      end;
    end;

  End;

  Function TSomeModel.GetSomeInteger() : LongInt;
  begin

      GetSomeInteger :=  FSomeInteger;

  End;
  procedure TSomeModel.SetSomeInteger(Value : LongInt);
  var
       sErrorMessage, formatResult:String;
  begin
      try
        try

          If (FSomeInteger <> Value) Or FForceNotify Then
          begin
              FSomeInteger := Value;
              NotifyPropertyChanged('SomeInteger');
              Dirty := true;
          End;
      finally
        //
      end;
    except
      on Ex: Exception do
      begin
         sErrorMessage:=FormatErrorForLog(Ex.Message , 'SetSomeInteger' , Ex.StackTrace.ToString);
         LogErrorToFile(sErrorMessage);
      end;
    end;

  End;

  Function TSomeModel.GetSomeDateTime() : DateTime;
  begin

      GetSomeDateTime :=  FSomeDateTime;

  End;
  procedure TSomeModel.SetSomeDateTime(Value : DateTime);
  var
       sErrorMessage, formatResult:String;
  begin
    //Watch out for TDateEdit.DefaultToday set to True;
    //causes changed property to fire before Create of TSomeModel,
    //which causes an access violation in the corresponding set-property of the model
    try
      try
        If (FSomeDateTime <> Value) Or FForceNotify Then
        begin
            FSomeDateTime := Value ;
            NotifyPropertyChanged('SomeDateTime');
            Dirty := true;
        End;
      finally
        //
      end;
    except
      on Ex: Exception do
      begin
         sErrorMessage:=FormatErrorForLog(Ex.Message , 'SetSomeDateTime' , Ex.StackTrace.ToString);
         LogErrorToFile(sErrorMessage);
      end;
    end;

  End;


  {
  Methods
  }


  procedure TSomeModel.RefreshModel(bPreserveDirty : Boolean );
  var
     sErrorMessage:String;
     SaveDirty : Boolean;
  begin
      try
         try
            FForceNotify := True;//will get past <> check in property set

            SaveDirty := Dirty;
            //setting these will set Dirty property...
            Key := Key;
            SomeString := SomeString;
            SomeBoolean := SomeBoolean;
            SomeInteger := SomeInteger;
            SomeDateTime := SomeDateTime;

            //...so clear dirty flag after refreshing values
            If (bPreserveDirty) then Dirty := SaveDirty else Dirty := False;
         finally
           FForceNotify := False;//don't want this on all the time
         end;
      except
        on Ex: Exception do
        begin
           sErrorMessage:=FormatErrorForLog(Ex.Message , 'RefreshModel' , Ex.StackTrace.ToString);
           LogErrorToFile(sErrorMessage);
        end;
      end;
  end;

  Function TSomeModel.VerifyKey(objModel : TSomeModel; sKey,sFilePath : String) : Boolean;//Static;
  var
    sErrorMessage,formattedString:String;
    //readValue : Variant;
     bReturnValue : Boolean;
     slot : String;
     slots : List<String>{TStrings};
  begin
      try
         try
           bReturnValue := False;
           //readValue := False;
           slots := New List<string>;

         If (sKey = nil) Then
          begin
              raise Exception.Create('model.Key is null');
          End;

//         with TIniFile.Create(sFilePath) do
//         begin
//            {TIniFile}ReadSections(slots);
//            ForEach   slot  In slots Do
//            begin
//               //FmtStr(formattedString,'Slot: ''{0}'' ', [slot]);
//               //WriteLn(formattedString);
//               If slot = sKey Then
//                begin
//                    bReturnValue := True;
//                    Break;
//                End;
//            end;
//
//            //{TIniFile}UpdateFile; // Not needed
//            {TIniFile}Free;
//         end;

         finally
           VerifyKey := bReturnValue;
         end;
      except
        on Ex: Exception do
        begin
           sErrorMessage:=FormatErrorForLog(Ex.Message , 'VerifyKey' , Ex.StackTrace.ToString);
           LogErrorToFile(sErrorMessage);
        end;
      end;

 End;

  {
  Static
  }
  class Function TSomeModel.OpenFromSettings(var objModel : TSomeModel; sFilePath : String) : Boolean;
  var
          sErrorMessage,formatResult:String;
          readValue : Object{Variant};
          bAllowDirty : Boolean;//model should implicitly be Not Dirty after Open (unless null/missing values were replaced with defaults)
  begin
      try
         try
            readValue := False;
            bAllowDirty := False;

             If (String.IsNullOrWhiteSpace(objModel.Key)) Then
             begin
                 raise Exception.Create('model.Key is null');
             End
             Else If (objModel.Key = KEY_NEW) Then
             begin
                 raise Exception.Create('model.Key is still new');
             end;

//            with TIniFile.Create(sFilePath) do
//            begin
//
//             //need to clear values after failure, in case an error during opening leaves data in inconsistent state; see if caller can check/handle this
//
//             //setting these will set Dirty property...
//             readValue := {TIniFile}ReadString(objModel.Key,'SomeString','');
//             If (readValue = Null) Then
//             begin
//                 formatResult:=String.Format('Error opening key=''{0}'', SomeString=Null',[objModel.Key]);
//                 WriteLn(formatResult);
//                 objModel.SomeString := ''; //String.Default
//                 bAllowDirty := True;
//             end
//             Else
//             begin
//                 objModel.SomeString := readValue;
//                 //formatResult:=String.Format('opened key=''{0}'', SomeString=''{0}''',[objModel.Key, objModel.SomeString]);
//                 //WriteLn(formatResult);
//             End;
//
//             readValue := {TIniFile}ReadBool(objModel.Key,'SomeBoolean',False);
//             If (readValue = Null) Then
//             begin
//                 formatResult:=String.Format('Error opening key=''{0}'', SomeBoolean=Null',[objModel.Key]);
//                 WriteLn(formatResult);
//                 objModel.SomeBoolean := False; //Boolean.Default
//                 bAllowDirty := True;
//             end
//             Else
//             begin
//                 objModel.SomeBoolean := readValue;
//                 //formatResult:=String.Format('opened key=''{0}'', SomeBoolean=''{0}''',[objModel.Key, objModel.SomeBoolean.ToString()]);
//                 //WriteLn(formatResult);
//             End;
//
//             readValue := {TIniFile}ReadInteger(objModel.Key,'SomeInteger',0);
//             If (readValue = Null) Then
//             begin
//                 formatResult:=String.Format('Error opening key=''{0}'', SomeInteger=Null',[objModel.Key]);
//                 WriteLn(formatResult);
//                 objModel.SomeInteger := 0; //Integer.Default
//                 bAllowDirty := True;
//             end
//             Else
//             begin
//                 objModel.SomeInteger := readValue;
//                 //formatResult:=String.Format('opened key=''{0}'', SomeInteger=''{0}''',[objModel.Key, objModel.SomeInteger.ToString()]);
//                 //WriteLn(formatResult);
//             End;
//
//             //readValue := {TIniFile}ReadString{ReadDateTime}(objModel.Key,'SomeDateTime',''{DateTimeToStr(Date)});
//             readValue := {TIniFile}ReadDateTime(objModel.Key,'SomeDateTime',Date);
//             If (readValue = Null) Then
//             begin
//                 formatResult:=String.Format('Error opening key=''{0}'', SomeDateTime=Null',[objModel.Key]);
//                 WriteLn(formatResult);
//                 objModel.SomeDateTime := Date; //Date.Default
//                 bAllowDirty := True;
//             end
//             Else
//             begin
//                 objModel.SomeDateTime := readValue;
//                 //formatResult:=String.Format('opened key=''{0}'', SomeDateTime=''{0}''',[objModel.Key, DateTimeToStr(objModel.SomeDateTime)]);
//                 //WriteLn(formatResult);
//             End;
//
//             //{TIniFile}UpdateFile; // Not needed
//             {TIniFile}Free;
//           end;

           //...so clear dirty flag after retrieving saved values (if no Null replacements were handled)
           If Not bAllowDirty Then
           begin
               objModel.Dirty := False;
           End;

         finally
           OpenFromSettings := True;
         end;
      except
        on Ex: Exception do
        begin
           sErrorMessage:=FormatErrorForLog(Ex.Message , 'OpenFromSettings' , Ex.StackTrace.ToString);
           LogErrorToFile(sErrorMessage);

           raise Ex;
        end;
      end;

  End;

class function TSomeModel.SaveToSettings(var objModel : TSomeModel; sFilePath:String) : Boolean;
var
   sErrorMessage, formatResult:String;
begin
    try
      try
        If (String.IsNullOrWhiteSpace(objModel.Key)) Then
        begin
            raise Exception.Create('model.Key is null');
        End
        Else If (objModel.Key = KEY_NEW) Then
        begin
            raise Exception.Create('model.Key is still new');
        end;

//        with TIniFile.Create(sFilePath) do
//        begin
//
//           WriteString(objModel.Key, 'SomeString', objModel.SomeString);
//           WriteBool(objModel.Key, 'SomeBoolean', objModel.SomeBoolean);
//           WriteInteger(objModel.Key, 'SomeInteger', objModel.SomeInteger);
//           WritedateTime(objModel.Key, 'SomeDateTime', objModel.SomeDateTime);
//           formatResult:=String.Format('saved key=''{0}'', SomeString=''{0}''',[objModel.Key, objModel.SomeString]);
//           WriteLn(formatResult);
//           formatResult:=String.Format('saved key=''{0}'', SomeBoolean=''{0}''',[objModel.Key, objModel.SomeBoolean.ToString()]);
//           WriteLn(formatResult);
//           formatResult:=String.Format('saved key=''{0}'', SomeInteger=''{0}''',[objModel.Key, objModel.SomeInteger.ToString()]);
//           WriteLn(formatResult);
//           formatResult:=String.Format('saved key=''{0}'', SomeDateTime=''{0}''',[objModel.Key, DateTimeToStr(objModel.SomeDateTime)]);
//           WriteLn(formatResult);
//
//           UpdateFile; // Not needed
//           Free;
//         end;


      finally
             objModel.Dirty := False;
             SaveToSettings := True;
      end;
    except
      on Ex: Exception do
      begin
         formatResult:=String.Format('Key: ''{0}''',[objModel.Key]);
         WriteLn(formatResult);
         sErrorMessage:=FormatErrorForLog(Ex.Message , 'SaveToSettings' , Ex.StackTrace.ToString);
         LogErrorToFile(sErrorMessage);

         raise Ex;
      end;
    end;
End;

end.

