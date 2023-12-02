unit Futama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
begin
Form1.ShowModal;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
Form2.ShowModal;
end;

procedure TForm8.Button3Click(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm8.Button4Click(Sender: TObject);
begin
Form4.ShowModal;
end;

procedure TForm8.Button5Click(Sender: TObject);
begin
Form5.ShowModal;
end;

procedure TForm8.Button6Click(Sender: TObject);
begin
Form6.ShowModal;
end;

procedure TForm8.Button7Click(Sender: TObject);
begin
Form7.ShowModal;
end;

end.
