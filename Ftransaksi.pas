unit Ftransaksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Grids, DBGrids, StdCtrls, ComCtrls, ZAbstractConnection,
  ZConnection;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DateTimePicker1: TDateTimePicker;
    Edit1: TEdit;
    c1: TComboBox;
    c2: TComboBox;
    c3: TComboBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    DBGrid1: TDBGrid;
    Edit2: TEdit;
    ZQ1: TZQuery;
    ZQ2: TZQuery;
    ZQ3: TZQuery;
    ZQ4: TZQuery;
    DS1: TDataSource;
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
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
    ZQ1.SQL.Clear;
  ZQ1.SQL.Add ('insert into transaksi values("'+Edit1.Text+'", "'+c1.Text+'", "'+c2.Text+'", "'+c3.Text+'", "'+FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date)+'", "'+Edit2.Text+'")');  ZQ1.ExecSQL;  ZQ1.SQL.Clear;  ZQ1.SQL.Add('select * from transaksi');  ZQ1.Open;  Showmessage('DATA BERHASIL DI SIMPAN..');
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
   ZQ1.SQL.Clear;
  ZQ1.SQL.Add('update transaksi set id_transaksi="'+Edit1.Text+'", id_laptop="'+c1.Text+'", id_pelanggan="'+c2.Text+'", id_karyawan="'+c3.Text+'", tanggal="'+FormatDateTime('yyyy-mm-dd',DateTimePicker1.Date)+'", keterangan="'+Edit2.Text+'" where id_transaksi="'+Edit1.Text+'"');  ZQ1.ExecSQL;  ZQ1.SQL.Clear;  ZQ1.SQL.Add('select * from transaksi');  ZQ1.Open;  Showmessage('DATA BERHASIL DI EDIT..');end;

procedure TForm3.Button3Click(Sender: TObject);
begin
   ZQ1.SQL.Clear;
  ZQ1.SQL.Add('delete from transaksi where id_transaksi="'+Edit1.Text+'"');  ZQ1.ExecSQL;  ZQ1.SQL.Clear;  ZQ1.SQL.Add('select * from transaksi');  ZQ1.Open;  ShowMessage('DATA BERHASIL DIHAPUS..');end;

procedure TForm3.Button4Click(Sender: TObject);
begin
  frxReport1.ShowReport();
end;

end.
