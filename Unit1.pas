unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TCountry = (ltGB, ltBE);
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
    FCountry: TCountry;
    FCountryText: string;
    function GetCountryFromText(ThisName: string): TCountry;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  if (FCountry = ltGB) then ShowMessage('GB');
  if (FCountry = ltBE) then ShowMessage('BE');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  FCountry := ltGB;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  FCountry := ltBE;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  FCountry := GetCountryFromText('GB');
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  FCountry := GetCountryFromText('BE');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FCountryText := 'GB|BE';
end;

function TForm1.GetCountryFromText(ThisName: string): TCountry;
var
  arrCountry: TArray<string>;
  index: integer;
begin
  arrCountry := FCountryText.Split(['|']);
  for index := 0 to Length(arrCountry) - 1 do begin
    if (arrCountry[index] = thisName) then begin
      Result := TCountry (index);
    end;
  end;
end;

end.
