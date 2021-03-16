unit SomeModel;

{ $mode objfpc}{ $H+}

interface

uses
  System, System.IO, System.Runtime.Serialization, System.Xml.Serialization, ModelBase, Ssepan_Laz_Utility;

type
  {$TypeConverter(typeof(ExpandableObjectConverter))}
  {$Serializable}
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
    class Function OpenFromSettings(var objModel : TSomeModel; sFilePath : String) : TSomeModel;
    class Function SaveToSettings(var objModel : TSomeModel; sFilePath:String) : Boolean;

  end;

    const //static?
        //NOTE:no inherent .net support for INI
        C_INI_FILE : String = 'SomeIni.ini';
        //TODO:use xml i/o in .net  like vb/c#
        //TODO:use filename handling like  my sample netbeans project
        C_XML_FILE : String = 'somemodel_{0}.xml';


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
  class Function TSomeModel.OpenFromSettings(var objModel : TSomeModel; sFilePath : String) : TSomeModel;
  var
          sErrorMessage,formatResult:String;
          bAllowDirty : Boolean;//model should implicitly be Not Dirty after Open (unless null/missing values were replaced with defaults)
            returnValue : TSomeModel := nil;
            returnValueType : System.Type := typeof(Object);
            xs : XmlSerializer;
            sr : StreamReader;
  begin
      try
         try
            println('OpenFromSettings:sFilePath:', sFilePath);
            bAllowDirty := False;

             If (String.IsNullOrWhiteSpace(objModel.Key)) Then
             begin
                 raise Exception.Create('model.Key is null');
             End
             Else If (objModel.Key = KEY_NEW) Then
             begin
                 raise Exception.Create('model.Key is still new');
             end;

            //XML Serializer of type Settings
            returnValueType := typeof(TSomeModel);//returnValue.GetType();
            xs := new XmlSerializer(returnValueType);

            //Stream reader for file
            sr := new StreamReader(sFilePath);

            //de-serialize into Settings
            returnValue := TSomeModel(xs.Deserialize(sr));
//            println('OpenFromSettings:Deserialize:returnValue.SomeString:', returnValue.SomeString);
//            println('OpenFromSettings:Deserialize:returnValue.SomeInteger:', returnValue.SomeInteger);
//            println('OpenFromSettings:Deserialize:returnValue.SomeBoolean:', returnValue.SomeBoolean);
//            println('OpenFromSettings:Deserialize:returnValue.SomeDateTime:', returnValue.SomeDateTime);
            returnValue.RefreshModel(False);//Sync();
//            println('OpenFromSettings:RefreshModel:returnValue.SomeString:', returnValue.SomeString);
//            println('OpenFromSettings:RefreshModel:returnValue.SomeInteger:', returnValue.SomeInteger);
//            println('OpenFromSettings:RefreshModel:returnValue.SomeBoolean:', returnValue.SomeBoolean);
//            println('OpenFromSettings:RefreshModel:returnValue.SomeDateTime:', returnValue.SomeDateTime);
            
            //close file
            sr.Close();

           //...so clear dirty flag after retrieving saved values (if no Null replacements were handled)
           If Not bAllowDirty Then
           begin
               objModel.Dirty := False;
           End;

         finally
           OpenFromSettings := returnValue;
         end;
    except
      on Ex: Exception do
      begin
         sErrorMessage:=FormatErrorForLog(Ex.Message , 'OpenFromSettings' , Ex.StackTrace.ToString);
         LogErrorToFile(sErrorMessage);
      end;
    end;
  End;

class function TSomeModel.SaveToSettings(var objModel : TSomeModel; sFilePath:String) : Boolean;
var
   sErrorMessage, formatResult:String;
   xs : XmlSerializer;
   sw : StreamWriter;
begin
    try
      try
          println('SaveToSettings:sFilePath:', sFilePath);
          If (String.IsNullOrWhiteSpace(objModel.Key)) Then
          begin
              raise Exception.Create('model.Key is null');
          End
          Else If (objModel.Key = KEY_NEW) Then
          begin
              raise Exception.Create('model.Key is still new');
          end;

          //XML Serializer of type Settings
           xs := new XmlSerializer(objModel.GetType());

          //Stream writer for file
           sw := new StreamWriter(sFilePath);

          //serialize out of Settings
          xs.Serialize(sw, objModel);

          //close file
          sw.Close();

          objModel.RefreshModel(False);//Sync();

      finally
             objModel.Dirty := False;
             SaveToSettings := True;
      end;
    except
      on Ex: Exception do
      begin
         formatResult:=String.Format('Key: ''{0}''',objModel.Key);
         WriteLn(formatResult);
         sErrorMessage:=FormatErrorForLog(Ex.Message , 'SaveToSettings' , Ex.StackTrace.ToString);
         LogErrorToFile(sErrorMessage);
      end;
    end;
    
End;

end.

