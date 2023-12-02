unit Fbarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Grids, DBGrids, StdCtrls, ZAbstractConnection, ZConnection;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Cmb1: TComboBox;
    Edit4: TEdit;
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
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
   ZQ1.SQL.Clear;
ZQ1.SQL.Add('insert into barang values ("'+Edit1.Text+'","'+Cmb1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+Edit4.Text+'")');ZQ1.ExecSQL;ZQ1.SQL.Clear;ZQ1.SQL.Add('select * from barang');ZQ1.Open;ShowMessage('DATA BERHASIL DISIMPAN!');
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
   ZQ1.SQL.Clear;
  ZQ1.SQL.Add('UPDATE barang SET id_barang="' + Edit1.Text + '", id_supplier="' + Cmb1.Text + '", nm_barang="' + Edit2.Text + '", hrg_barang="' + Edit3.Text + '", stok="' + Edit4.Text + '" WHERE id_barang="' + Edit1.Text + '"');  ZQ1.ExecSQL;  ZQ1.SQL.Clear;  ZQ1.SQL.Add('SELECT * FROM barang');  ZQ1.Open;  ShowMessage('DATA BERHASIL DI EDIT..');
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
   ZQ1.SQL.Clear;
  ZQ1.SQL.Add('delete from barang where id_barang="'+Edit1.Text+'"');  ZQ1.ExecSQL;  ZQ1.SQL.Clear;  ZQ1.SQL.Add('select * from barang');  ZQ1.Open;  ShowMessage('DATA BERHASIL DIHAPUS..');
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
   frxReport1.ShowReport();
end;

end.
