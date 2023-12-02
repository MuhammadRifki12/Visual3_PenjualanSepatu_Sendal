program PenjualanSepatuSendal;

uses
  Forms,
  Flogin in 'Flogin.pas' {Form1},
  Fpelanggan in 'Fpelanggan.pas' {Form2},
  Ftransaksi in 'Ftransaksi.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
