object Form6: TForm6
  Left = 192
  Top = 125
  Width = 1007
  Height = 558
  Caption = 'Fkaryawan'
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
    Left = 8
    Top = 72
    Width = 62
    Height = 13
    Caption = 'ID Karyawan'
  end
  object Label2: TLabel
    Left = 8
    Top = 104
    Width = 36
    Height = 13
    Caption = 'ID User'
  end
  object Label3: TLabel
    Left = 8
    Top = 136
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object Label4: TLabel
    Left = 8
    Top = 168
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label5: TLabel
    Left = 8
    Top = 200
    Width = 63
    Height = 13
    Caption = 'Jenis Kelamin'
  end
  object Label6: TLabel
    Left = 8
    Top = 232
    Width = 64
    Height = 13
    Caption = 'Tanggal Lahir'
  end
  object Label7: TLabel
    Left = 8
    Top = 264
    Width = 62
    Height = 13
    Caption = 'Tempat Lahir'
  end
  object Label8: TLabel
    Left = 8
    Top = 296
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label9: TLabel
    Left = 8
    Top = 328
    Width = 20
    Height = 13
    Caption = 'Telp'
  end
  object Label10: TLabel
    Left = 8
    Top = 360
    Width = 31
    Height = 13
    Caption = 'Status'
  end
  object Label11: TLabel
    Left = 128
    Top = 16
    Width = 192
    Height = 25
    Caption = 'FORM KARYAWAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DateTimePicker1: TDateTimePicker
    Left = 104
    Top = 232
    Width = 193
    Height = 21
    Date = 45258.694700960640000000
    Time = 45258.694700960640000000
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 104
    Top = 72
    Width = 193
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 104
    Top = 136
    Width = 193
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 104
    Top = 168
    Width = 193
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 104
    Top = 264
    Width = 193
    Height = 21
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 104
    Top = 296
    Width = 193
    Height = 21
    TabOrder = 5
  end
  object Edit6: TEdit
    Left = 104
    Top = 328
    Width = 193
    Height = 21
    TabOrder = 6
  end
  object Cmb1: TComboBox
    Left = 104
    Top = 104
    Width = 193
    Height = 21
    ItemHeight = 13
    TabOrder = 7
  end
  object Cmb2: TComboBox
    Left = 104
    Top = 200
    Width = 193
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Items.Strings = (
      'L'
      'P')
  end
  object Cmb3: TComboBox
    Left = 104
    Top = 360
    Width = 193
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Items.Strings = (
      'Aktif'
      'Inaktif')
  end
  object Button1: TButton
    Left = 520
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 10
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 608
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 11
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 696
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 12
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 784
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Cetak'
    TabOrder = 13
    OnClick = Button4Click
  end
  object DBGrid1: TDBGrid
    Left = 325
    Top = 72
    Width = 625
    Height = 313
    DataSource = DS1
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ZQ1: TZQuery
    SQL.Strings = (
      'select * from karyawan')
    Params = <>
    Left = 328
    Top = 400
  end
  object DS1: TDataSource
    DataSet = ZQ1
    Left = 408
    Top = 400
  end
  object ZQ2: TZQuery
    SQL.Strings = (
      'select * from user')
    Params = <>
    Left = 328
    Top = 448
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_karyawan=id_karyawan'
      'id_user=id_user'
      'nik=nik'
      'nama=nama'
      'jk=jk'
      'tgl_lahir=tgl_lahir'
      'tmpt_lahir=tmpt_lahir'
      'alamat=alamat'
      'telp=telp'
      'status=status')
    DataSet = ZQ1
    BCDToCurrency = False
    Left = 440
    Top = 456
  end
  object frxReport1: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45258.745135358800000000
    ReportOptions.LastChange = 45258.826379120400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 368
    Top = 456
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Description = 'as'
        Height = 64.252010000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Left = 15.118120000000000000
          Width = 714.331170000000000000
          Height = 64.252010000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -48
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            'LAPORAN DATA KARYAWAN')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 105.826840000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'ID Karyawan')
        end
        object Memo3: TfrxMemoView
          Left = 79.370130000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'ID User')
        end
        object Memo4: TfrxMemoView
          Left = 154.960730000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'NIK')
        end
        object Memo5: TfrxMemoView
          Left = 230.551330000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'NAMA')
        end
        object Memo6: TfrxMemoView
          Left = 472.441250000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Jenis Kelamin')
        end
        object Memo7: TfrxMemoView
          Left = 559.370440000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Memo.UTF8 = (
            'Tanggal Lahir')
        end
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 185.196970000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1id_karyawan: TfrxMemoView
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_karyawan'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."id_karyawan"]')
          ParentFont = False
        end
        object frxDBDataset1id_user: TfrxMemoView
          Left = 79.370130000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'id_user'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."id_user"]')
          ParentFont = False
        end
        object frxDBDataset1nik: TfrxMemoView
          Left = 158.740260000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nik'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."nik"]')
          ParentFont = False
        end
        object frxDBDataset1nama: TfrxMemoView
          Left = 238.110390000000000000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'nama'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."nama"]')
          ParentFont = False
        end
        object frxDBDataset1jk: TfrxMemoView
          Left = 472.441250000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'jk'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."jk"]')
          ParentFont = False
        end
        object frxDBDataset1tgl_lahir: TfrxMemoView
          Left = 559.370440000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'tgl_lahir'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxDBDataset1."tgl_lahir"]')
          ParentFont = False
        end
      end
    end
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
    Left = 368
    Top = 400
  end
end
