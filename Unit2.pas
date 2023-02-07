unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, UniProvider,
  InterBaseUniProvider, Data.DB, DBAccess, Uni, Vcl.Mask, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    koneksi: TUniConnection;
    InterBaseUniProvider1: TInterBaseUniProvider;
    btnkonek: TButton;
    Memo1: TMemo;
    EDDB: TLabeledEdit;
    procedure btnkonekClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnkonekClick(Sender: TObject);
begin
if koneksi.Connected then
  koneksi.Connected := false ;

koneksi.Database := eddb.Text ;
koneksi.Username := 'SYSDBA';

koneksi.Server := '';
koneksi.Password := 'masterkey';
koneksi.SpecificOptions.Values['InterBase.ClientLibrary'] := GetCurrentDir + '\fbclient.dll';

try
      koneksi.Connected := true ;
    if koneksi.Connected then
    begin
      Memo1.Lines.Add('terkoneksi');
    end;
except on e:Exception do
begin
  Memo1.Lines.Add('gagal '+ e.Message);
end;

end;



end;

end.
