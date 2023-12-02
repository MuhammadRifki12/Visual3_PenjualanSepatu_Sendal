unit Fuser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Grids, DBGrids, StdCtrls, ZAbstractConnection, ZConnection;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
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
    Label4: TLabel;
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
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
  ZQ.SQL.Clear;
  ZQ.SQL.Add ('insert into user values("'+Edit1.Text+'", "'+Edit2.Text+'", "'+Edit3.Text+'")');  ZQ.ExecSQL;  ZQ.SQL.Clear;  ZQ.SQL.Add('select * from user');  ZQ.Open;  Showmessage('DATA BERHASIL DI SIMPAN..');
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
   ZQ.SQL.Clear;
ZQ.SQL.Add('UPDATE user SET id_user="' + Edit1.Text + '", username="' + Edit2.Text + '", password="' + Edit3.Text + '" WHERE id_user="' + Edit1.Text + '"');ZQ.ExecSQL;ZQ.SQL.Clear;ZQ.SQL.Add('SELECT * FROM user');ZQ.Open;ShowMessage('DATA BERHASIL DI EDIT..');end;

procedure TForm5.Button3Click(Sender: TObject);
begin
   ZQ.SQL.Clear;
  ZQ.SQL.Add('delete from user where id_user="'+Edit1.Text+'"');  ZQ.ExecSQL;  ZQ.SQL.Clear;  ZQ.SQL.Add('select * from user');  ZQ.Open;  ShowMessage('DATA BERHASIL DIHAPUS..');end;

procedure TForm5.Button4Click(Sender: TObject);
begin
   frxReport1.ShowReport();
end;

end.
