program isPalindrome;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

function _IsPalindrome(AInputString: string): Boolean;
var
  x, y, c: Integer;
  lCleanText: String;
begin
  lCleanText := EmptyStr;

  { Remove os espa�os em branco e converte para letras min�sculas }
  for x := 1 to Length(AInputString) do
    if not (AInputString[x] = ' ') then
      lCleanText := lCleanText + LowerCase(AInputString[x]);

  c := Length(lCleanText);
  { Verifica se a string � igual a sua vers�o invertida }
  for y := 1 to Length(lCleanText) div 2 do
  begin

    if (lCleanText[y] <> lCleanText[c]) then
    begin
      Result := False;
      Exit;
    end;

    Dec(c);
  end;

  Result := True;
end;

var
  FInput: string;
begin
  while True do
  begin
    Write('Escreva uma palavra ou frase: ');
    ReadLn(FInput);

    if _IsPalindrome(FInput) then
      WriteLn('� um pal�ndromo!')
    else
      WriteLn('N�o � um pal�ndromo');
  end;
end.
