unit uspComponentesRegistro;

interface

uses
  System.Classes, uspQuery;

procedure register;

type
  TspQueryDT = class(TspQuery)

  end;

implementation

procedure register;
begin
  RegisterComponents('spComponentes', [TspQuery]);
end;

end.
