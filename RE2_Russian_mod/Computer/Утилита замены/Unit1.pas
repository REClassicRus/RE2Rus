unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan, ClipBrd;

type
  TMain = class(TForm)
    MemoOrig: TMemo;
    MemoNew: TMemo;
    ToNew: TButton;
    ToOrig: TButton;
    CopyNewToBuff: TButton;
    About: TButton;
    XPManifest: TXPManifest;
    CopyOrigToBuff: TButton;
    procedure ToNewClick(Sender: TObject);
    procedure ToOrigClick(Sender: TObject);
    procedure AboutClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CopyNewToBuffClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

{$R *.dfm}

procedure TMain.ToNewClick(Sender: TObject);
var
  s: string;
begin
  s:=AnsiUpperCase(MemoOrig.Text);
  s:=StringReplace(s, 'À', 'A', [rfReplaceALl]);
  s:=StringReplace(s, 'Â', 'B', [rfReplaceALl]);
  s:=StringReplace(s, 'Ñ', 'C', [rfReplaceALl]);
  s:=StringReplace(s, 'Å', 'E', [rfReplaceALl]);
  s:=StringReplace(s, 'Í', 'H', [rfReplaceALl]);
  s:=StringReplace(s, 'Ê', 'K', [rfReplaceALl]);
  s:=StringReplace(s, 'Ì', 'M', [rfReplaceALl]);
  s:=StringReplace(s, 'Î', 'O', [rfReplaceALl]);
  s:=StringReplace(s, 'Ð', 'P', [rfReplaceALl]);
  s:=StringReplace(s, 'Ò', 'T', [rfReplaceALl]);
  s:=StringReplace(s, 'Õ', 'X', [rfReplaceALl]);

  s:=StringReplace(s, 'Á', 'a', [rfReplaceALl]);
  s:=StringReplace(s, 'Ã', 'b', [rfReplaceALl]);
  s:=StringReplace(s, 'Ä', 'c', [rfReplaceALl]);
  s:=StringReplace(s, 'Æ', 'd', [rfReplaceALl]);
  s:=StringReplace(s, 'Ç', 'e', [rfReplaceALl]);
  s:=StringReplace(s, 'È', 'f', [rfReplaceALl]);
  s:=StringReplace(s, 'É', 'g', [rfReplaceALl]);
  s:=StringReplace(s, 'Ê', 'h', [rfReplaceALl]);
  s:=StringReplace(s, 'Ë', 'i', [rfReplaceALl]);
  s:=StringReplace(s, 'Ï', 'j', [rfReplaceALl]);
  s:=StringReplace(s, 'Ó', 'k', [rfReplaceALl]);
  s:=StringReplace(s, 'Ô', 'l', [rfReplaceALl]);
  s:=StringReplace(s, 'Ö', 'm', [rfReplaceALl]);
  s:=StringReplace(s, '×', 'n', [rfReplaceALl]);
  s:=StringReplace(s, 'Ø', 'o', [rfReplaceALl]);
  s:=StringReplace(s, 'Ù', 'p', [rfReplaceALl]);
  s:=StringReplace(s, 'Ú', 'q', [rfReplaceALl]);
  s:=StringReplace(s, 'Û', 'r', [rfReplaceALl]);
  s:=StringReplace(s, 'Ü', 's', [rfReplaceALl]);
  s:=StringReplace(s, 'Ý', 't', [rfReplaceALl]);
  s:=StringReplace(s, 'Þ', 'u', [rfReplaceALl]);
  s:=StringReplace(s, 'ß', 'v', [rfReplaceALl]);

  MemoNew.Text:=s;
end;

procedure TMain.ToOrigClick(Sender: TObject);
var
  s: string;
begin
  s:=MemoNew.Text;
  s:=StringReplace(s, 'A', 'À', [rfReplaceALl]);
  s:=StringReplace(s, 'B', 'Â', [rfReplaceALl]);
  s:=StringReplace(s, 'C', 'Ñ', [rfReplaceALl]);
  s:=StringReplace(s, 'E', 'Å', [rfReplaceALl]);
  s:=StringReplace(s, 'H', 'Í', [rfReplaceALl]);
  s:=StringReplace(s, 'K', 'Ê', [rfReplaceALl]);
  s:=StringReplace(s, 'M', 'Ì', [rfReplaceALl]);
  s:=StringReplace(s, 'O', 'Î', [rfReplaceALl]);
  s:=StringReplace(s, 'P', 'Ð', [rfReplaceALl]);
  s:=StringReplace(s, 'T', 'Ò', [rfReplaceALl]);
  s:=StringReplace(s, 'X', 'Õ', [rfReplaceALl]);

  s:=StringReplace(s, 'a', 'Á', [rfReplaceALl]);
  s:=StringReplace(s, 'b', 'Ã', [rfReplaceALl]);
  s:=StringReplace(s, 'c', 'Ä', [rfReplaceALl]);
  s:=StringReplace(s, 'd', 'Æ', [rfReplaceALl]);
  s:=StringReplace(s, 'e', 'Ç', [rfReplaceALl]);
  s:=StringReplace(s, 'f', 'È', [rfReplaceALl]);
  s:=StringReplace(s, 'g', 'É', [rfReplaceALl]);
  s:=StringReplace(s, 'h', 'Ê', [rfReplaceALl]);
  s:=StringReplace(s, 'i', 'Ë', [rfReplaceALl]);
  s:=StringReplace(s, 'j', 'Ï', [rfReplaceALl]);
  s:=StringReplace(s, 'k', 'Ó', [rfReplaceALl]);
  s:=StringReplace(s, 'l', 'Ô', [rfReplaceALl]);
  s:=StringReplace(s, 'm', 'Ö', [rfReplaceALl]);
  s:=StringReplace(s, 'n', '×', [rfReplaceALl]);
  s:=StringReplace(s, 'o', 'Ø', [rfReplaceALl]);
  s:=StringReplace(s, 'p', 'Ù', [rfReplaceALl]);
  s:=StringReplace(s, 'q', 'Ú', [rfReplaceALl]);
  s:=StringReplace(s, 'r', 'Û', [rfReplaceALl]);
  s:=StringReplace(s, 's', 'Ü', [rfReplaceALl]);
  s:=StringReplace(s, 't', 'Ý', [rfReplaceALl]);
  s:=StringReplace(s, 'u', 'Þ', [rfReplaceALl]);
  s:=StringReplace(s, 'v', 'ß', [rfReplaceALl]);

  MemoOrig.Text:=s;
end;

procedure TMain.AboutClick(Sender: TObject);
begin
  Application.MessageBox('by CasperPRO', PChar(Caption), MB_ICONINFORMATION)
end;

procedure TMain.FormCreate(Sender: TObject);
begin
  Application.Title:=Caption;
end;

procedure TMain.CopyNewToBuffClick(Sender: TObject);
begin
  Clipboard.AsText:=MemoNew.Text;
end;

end.
