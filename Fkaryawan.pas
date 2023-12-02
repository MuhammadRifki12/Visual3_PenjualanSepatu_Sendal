unit Fkaryawan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Grids, DBGrids, StdCtrls, ComCtrls, ZAbstractConnection,
  ZConnection;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Cmb1: TComboBox;
    Cmb2: TComboBox;
    Cmb3: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    ZQ1: TZQuery;
    DS1: TDataSource;
    ZQ2: TZQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    Zcon: TZConnection;
    Label11: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
   ZQ1.SQL.Clear;
ZQ1.SQL.Add('insert into karyawan values ("'+Edit1.Text+'","'+Cmb1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+Cmb2.Text+'","'+FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date)+'","'+Edit4.Text+'","'+Edit5.Text+'","'+Edit6.Text+'","'+Cmb3.Text+'")');ZQ1.ExecSQL;ZQ1.SQL.Clear;ZQ1.SQL.Add('select * from karyawan');ZQ1.Open;ShowMessage('DATA BERHASIL DISIMPAN!');
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
   ZQ1.SQL.Clear;
  ZQ1.SQL.Add('update karyawan set id_karyawan="'+Edit1.Text+'", id_user="'+Cmb1.Text+'", nik="'+Edit2.Text+'", nama="'+Edit3.Text+'", jk="'+Cmb2.Text+'", tgl_lahir="'+FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date)+'", tmpt_lahir="'+Edit4.Text+'", alamat="'+Edit5.Text+'", telp="'+Edit6.Text+'", status="'+Cmb3.Text+'" where id_karyawan="'+Edit1.Text+'"');  ZQ1.ExecSQL;  ZQ1.SQL.Clear;  ZQ1.SQL.Add('select * from karyawan');  ZQ1.Open;  Showmessage('DATA BERHASIL DI EDIT..');
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
   ZQ1.SQL.Clear;
  ZQ1.SQL.Add('delete from karyawan where id_karyawan="'+Edit1.Text+'"');  ZQ1.ExecSQL;  ZQ1.SQL.Clear;  ZQ1.SQL.Add('select * from karyawan');  ZQ1.Open;  ShowMessage('DATA BERHASIL DIHAPUS..');
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
  frxReport1.ShowReport();
end;

end.
