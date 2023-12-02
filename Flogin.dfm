object Form1: TForm1
  Left = 192
  Top = 125
  Width = 398
  Height = 450
  Caption = 'Flogin'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 96
    Top = 64
    Width = 197
    Height = 25
    Caption = 'LOGIN PENGGUNA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 104
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label3: TLabel
    Left = 16
    Top = 136
    Width = 46
    Height = 13
    Caption = 'Password'
  end
  object username: TEdit
    Left = 88
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object password: TEdit
    Left = 88
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 88
    Top = 168
    Width = 121
    Height = 25
    Caption = 'Masuk'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Zcon: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'penjualansepatu'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Program Files (x86)\Borland\Delphi7\Projects\Visual3_Penjuala' +
      'nSepatuSendal\libmysql.dll'
    Left = 80
    Top = 240
  end
  object ZQ1: TZQuery
    Connection = Zcon
    Active = True
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 168
    Top = 240
  end
end
