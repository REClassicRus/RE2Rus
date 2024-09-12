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
  s:=StringReplace(s, '�', 'A', [rfReplaceALl]);
  s:=StringReplace(s, '�', 'B', [rfReplaceALl]);
  s:=StringReplace(s, '�', 'C', [rfReplaceALl]);
  s:=StringReplace(s, '�', 'E', [rfReplaceALl]);
  s:=StringReplace(s, '�', 'H', [rfReplaceALl]);
  s:=StringReplace(s, '�', 'K', [rfReplaceALl]);
  s:=StringReplace(s, '�', 'M', [rfReplaceALl]);
  s:=StringReplace(s, '�', 'O', [rfReplaceALl]);
  s:=StringReplace(s, '�', 'P', [rfReplaceALl]);
  s:=StringReplace(s, '�', 'T', [rfReplaceALl]);
  s:=StringReplace(s, '�', 'X', [rfReplaceALl]);

  s:=StringReplace(s, '�', 'a', [rfReplaceALl]);
  s:=StringReplace(s, '�', 'b', [rfReplaceALl]);
  s:=StringReplace(s, '�', 'c', [rfReplaceALl]);
  s:=StringReplace(s, '�', 'd', [rfReplaceALl]);
  s:=StringReplace(s, '�', 'e', [rfReplaceALl]);
  s:=StringReplace(s, '�', 'f', [rfReplaceALl]);
  s:=StringReplace(s, '�', 'g', [rfReplaceALl]);
  s:=StringReplace(s, '�', 'h', [rfReplaceALl]);
  s:=StringReplace(s, '�', 'i', [rfReplaceALl]);
  s:=StringReplace(s, '�', 'j', [rfReplaceALl]);
  s:=StringReplace(s, '�', 'k', [rfReplaceALl]);
  s:=StringReplace(s, '�', 'l', [rfReplaceALl]);
  s:=StringReplace(s, '�', 'm', [rfReplaceALl]);
  s:=StringReplace(s, '�', 'n', [rfReplaceALl]);
  s:=StringReplace(s, '�', 'o', [rfReplaceALl]);
  s:=StringReplace(s, '�', 'p', [rfReplaceALl]);
  s:=StringReplace(s, '�', 'q', [rfReplaceALl]);
  s:=StringReplace(s, '�', 'r', [rfReplaceALl]);
  s:=StringReplace(s, '�', 's', [rfReplaceALl]);
  s:=StringReplace(s, '�', 't', [rfReplaceALl]);
  s:=StringReplace(s, '�', 'u', [rfReplaceALl]);
  s:=StringReplace(s, '�', 'v', [rfReplaceALl]);

  MemoNew.Text:=s;
end;

procedure TMain.ToOrigClick(Sender: TObject);
var
  s: string;
begin
  s:=MemoNew.Text;
  s:=StringReplace(s, 'A', '�', [rfReplaceALl]);
  s:=StringReplace(s, 'B', '�', [rfReplaceALl]);
  s:=StringReplace(s, 'C', '�', [rfReplaceALl]);
  s:=StringReplace(s, 'E', '�', [rfReplaceALl]);
  s:=StringReplace(s, 'H', '�', [rfReplaceALl]);
  s:=StringReplace(s, 'K', '�', [rfReplaceALl]);
  s:=StringReplace(s, 'M', '�', [rfReplaceALl]);
  s:=StringReplace(s, 'O', '�', [rfReplaceALl]);
  s:=StringReplace(s, 'P', '�', [rfReplaceALl]);
  s:=StringReplace(s, 'T', '�', [rfReplaceALl]);
  s:=StringReplace(s, 'X', '�', [rfReplaceALl]);

  s:=StringReplace(s, 'a', '�', [rfReplaceALl]);
  s:=StringReplace(s, 'b', '�', [rfReplaceALl]);
  s:=StringReplace(s, 'c', '�', [rfReplaceALl]);
  s:=StringReplace(s, 'd', '�', [rfReplaceALl]);
  s:=StringReplace(s, 'e', '�', [rfReplaceALl]);
  s:=StringReplace(s, 'f', '�', [rfReplaceALl]);
  s:=StringReplace(s, 'g', '�', [rfReplaceALl]);
  s:=StringReplace(s, 'h', '�', [rfReplaceALl]);
  s:=StringReplace(s, 'i', '�', [rfReplaceALl]);
  s:=StringReplace(s, 'j', '�', [rfReplaceALl]);
  s:=StringReplace(s, 'k', '�', [rfReplaceALl]);
  s:=StringReplace(s, 'l', '�', [rfReplaceALl]);
  s:=StringReplace(s, 'm', '�', [rfReplaceALl]);
  s:=StringReplace(s, 'n', '�', [rfReplaceALl]);
  s:=StringReplace(s, 'o', '�', [rfReplaceALl]);
  s:=StringReplace(s, 'p', '�', [rfReplaceALl]);
  s:=StringReplace(s, 'q', '�', [rfReplaceALl]);
  s:=StringReplace(s, 'r', '�', [rfReplaceALl]);
  s:=StringReplace(s, 's', '�', [rfReplaceALl]);
  s:=StringReplace(s, 't', '�', [rfReplaceALl]);
  s:=StringReplace(s, 'u', '�', [rfReplaceALl]);
  s:=StringReplace(s, 'v', '�', [rfReplaceALl]);

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
