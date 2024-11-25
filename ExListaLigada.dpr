program ExListaLigada;

uses
  Vcl.Forms,
  ListaLigada in 'ListaLigada.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
