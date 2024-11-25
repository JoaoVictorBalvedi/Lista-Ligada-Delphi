unit ListaLigada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, system.Generics.Collections;

type
  Departamento = class
    Numero: Integer;
    Inicio: Integer;
    constructor Create(ANumero: integer);
  end;


  Funcionario = class
  private
  public
    linha: integer;
    numero: integer;
    departamento: integer;
    ligacao: integer;
    constructor Create(ANumero: integer; ADepartamento: integer; ALigacao: integer);
    procedure Admitir(AFuncionario: Funcionario);
    procedure Demitir(numeroFuncionario: integer);
    procedure trocarDepartamento(numeroFuncionario: integer; novoDepartamento: integer);
  end;


  TForm3 = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  MatrizA: TObjectList<Funcionario>;
  MatrizB: TObjectList<Departamento>;
  departamento1: Departamento;
  departamento2: Departamento;
  departamento3: Departamento;

implementation

{$R *.dfm}

constructor Funcionario.Create(ANumero: integer; ADepartamento: integer; ALigacao: integer);
begin
  numero:=ANumero;
  departamento:=ADepartamento;
  ligacao:=ALigacao;
end;

constructor Departamento.Create(ANumero: integer);
begin
  Numero:=ANumero;
end;

procedure Funcionario.Admitir(AFuncionario: Funcionario);
begin
  MatrizA.Add(AFuncionario);
  if matrizA.Count<=3 then begin
    MatrizB[AFuncionario.departamento].Inicio:=AFuncionario.linha;
  end;
end;

procedure Funcionario.Demitir(numeroFuncionario: integer);
var funcionarioX: funcionario;
  i: Integer;
begin
  for i := 0 to MatrizA.Count-1 do begin
    if MatrizA[i].numero=numeroFuncionario then begin
      funcionarioX:=MatrizA[i];
    end;
  end;
  if MatrizB[funcionarioX.departamento].inicio=funcionarioX.linha then begin
    MatrizB[funcionarioX.departamento].inicio:=funcionarioX.linha;
    MatrizA[i].ligacao:=-2;
  end else begin
    for i := 0 to MatrizA.Count-1 do begin
      if MatrizA[i].ligacao=funcionarioX.linha then begin
        MatrizA[i].ligacao:=funcionarioX.ligacao;
        break
      end;
    end;
  end;

end;

procedure Funcionario.trocarDepartamento(numeroFuncionario: integer; novoDepartamento: departamento);
var i: integer;
begin
  for i := 0 to MatrizA.Count-1 do begin

  end;

end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  MatrizA:=TObjectList<Funcionario>.Create;
  MatrizB:=TobjectList<Departamento>.Create;

  departamento1:=Departamento.Create(1);
  departamento2:=Departamento.Create(2);
  departamento3:=Departamento.Create(3);

  MatrizB.Add(departamento1);
  MatrizB.Add(departamento2);
  MatrizB.Add(departamento3);
end;

end.
