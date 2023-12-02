program PenjualanSepatuSendal;

uses
  Forms,
  Flogin in 'Flogin.pas' {Form1},
  Fpelanggan in 'Fpelanggan.pas' {Form2},
  Ftransaksi in 'Ftransaksi.pas' {Form3},
  Fbarang in 'Fbarang.pas' {Form4},
  Fuser in 'Fuser.pas' {Form5},
  Fkaryawan in 'Fkaryawan.pas' {Form6},
  Fsupplier in 'Fsupplier.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.Run;
end.
