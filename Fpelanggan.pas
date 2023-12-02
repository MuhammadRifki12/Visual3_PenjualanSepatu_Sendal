unit Fpelanggan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, Grids, DBGrids, StdCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractConnection,
  ZConnection;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Cmb1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    DS1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    Zcon: TZConnection;
    ZQ1: TZQuery;
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
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
   ZQ.SQL.Clear;
  ZQ.SQL.Add ('insert into pelanggan values("'+Edit1.Text+'", "'+Edit2.Text+'", "'+Cmb1.Text+'", "'+Edit3.Text+'", "'+Edit4.Text+'")');  ZQ.ExecSQL;  ZQ.SQL.Clear;  ZQ.SQL.Add('select * from pelanggan');  ZQ.Open;  Showmessage('DATA BERHASIL DI SIMPAN..');
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
   ZQ.SQL.Clear;
  ZQ.SQL.Add('update pelanggan set id_pelanggan="'+Edit1.Text+'", nm_pelanggan="'+Edit2.Text+'", jk="'+Cmb1.Text+'", no_telp="'+Edit3.Text+'", alamat="'+Edit4.Text+'"  where id_pelanggan="'+Edit1.Text+'"');  ZQ.ExecSQL;  ZQ.SQL.Clear;  ZQ.SQL.Add('select * from pelanggan');  ZQ.Open;  Showmessage('DATA BERHASIL DI EDIT..');
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
    ZQ.SQL.Clear;
  ZQ.SQL.Add('delete from pelanggan where id_pelanggan="'+Edit1.Text+'"');  ZQ.ExecSQL;  ZQ.SQL.Clear;  ZQ.SQL.Add('select * from pelanggan');  ZQ.Open;  ShowMessage('DATA BERHASIL DIHAPUS..');end;

procedure TForm2.Button4Click(Sender: TObject);
begin
   frxReport1.ShowReport();
end;

end.
