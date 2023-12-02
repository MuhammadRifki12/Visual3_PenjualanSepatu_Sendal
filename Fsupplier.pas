unit Fsupplier;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Grids, DBGrids, StdCtrls, ZAbstractConnection, ZConnection;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    id: TEdit;
    nama: TEdit;
    alamat: TEdit;
    telp: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    ZQ: TZQuery;
    DS1: TDataSource;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    Zcon: TZConnection;
    Label5: TLabel;
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
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
    ZQ.SQL.Clear;
  ZQ.SQL.Add ('insert into supplier values("'+id.Text+'", "'+nama.Text+'", "'+alamat.Text+'", "'+telp.Text+'")');  ZQ.ExecSQL;  ZQ.SQL.Clear;  ZQ.SQL.Add('select * from supplier');  ZQ.Open;  Showmessage('DATA BERHASIL DI SIMPAN..');
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
   ZQ.SQL.Clear;
  ZQ.SQL.Add('update supplier set id_supplier="'+id.Text+'", nm_supplier="'+nama.Text+'", alamat="'+alamat.Text+'", telp="'+telp.Text+'"  where id_supplier="'+id.Text+'"');  ZQ.ExecSQL;  ZQ.SQL.Clear;  ZQ.SQL.Add('select * from supplier');  ZQ.Open;  Showmessage('DATA BERHASIL DI EDIT..');
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
   ZQ.SQL.Clear;
  ZQ.SQL.Add('delete from supplier where id_supplier="'+id.Text+'"');  ZQ.ExecSQL;  ZQ.SQL.Clear;  ZQ.SQL.Add('select * from supplier');  ZQ.Open;  ShowMessage('DATA BERHASIL DIHAPUS..');
end;

procedure TForm7.Button4Click(Sender: TObject);
begin
   frxReport1.ShowReport();
end;

end.
