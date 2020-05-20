unit UnitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, XPMan;
const
  MaxN = 100;
type
  TFormMain = class(TForm)
    PC: TPageControl;
    Panel: TPanel;
    TSIn: TTabSheet;
    TSRes: TTabSheet;
    MemoIn: TMemo;
    MemoRes: TMemo;
    OpenDialog: TOpenDialog;
    BtnOpenFile: TButton;
    BtnClose: TButton;
    BtnSolve: TButton;
    BtnClear: TButton;
    XPManifest1: TXPManifest;
    procedure BtnOpenFileClick(Sender: TObject);
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnClearClick(Sender: TObject);
    procedure BtnSolveClick(Sender: TObject);
  private
    procedure Clear;
  public
    procedure SearchMax(glub:integer; ch:char);
  end;
  Tsequance = record
      Mas:array [1..MaxN] of integer;
      Len:integer;
    end;

var
  FormMain: TFormMain;
  CurOtv,Otvet:TSequance;
  YorN:array [0..MaxN-1] of boolean;

implementation

{$R *.dfm}

procedure TFormMain.Clear;
begin
  MemoIn.Clear;
end;

procedure TFormMain.BtnOpenFileClick(Sender: TObject);
begin
  if OpenDialog.Execute then
    begin
      Clear;
      MemoIn.Lines.LoadFromFile(OpenDialog.FileName);
      PC.TabIndex:=0;
    end;
end;

procedure TFormMain.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TFormMain.BtnClearClick(Sender: TObject);
begin
  MemoIn.Clear;
  MemoRes.Clear;
end;

procedure TFormMain.SearchMax(glub:integer; ch:char);
var i,j :integer; str:string;
begin
  for i := 0 to MemoIn.Lines.Count-1 do
     begin
      str:=MemoIn.Lines[i];
      if YorN[i] = false then
        if (ch = #0) or (ch = str[1]) then
          begin
            YorN[i]:=true;
            CurOtv.Mas[glub]:=i;
            CurOtv.Len:=glub;
            SearchMax(glub+1,str[length(str)]);
            CurOtv.Len:=glub-1;
            YorN[i]:=false;
          end;
     end;
     if CurOtv.Len>Otvet.Len then
          begin
            for j := 1 to glub-1 do
              Otvet.Mas[j]:=CurOtv.Mas[j];
            Otvet.Len:=CurOtv.Len;
          end;
end;

procedure TFormMain.BtnSolveClick(Sender: TObject);
var i:integer;
begin
  for i := 0 to MaxN-1 do YorN[i]:=false;
  Otvet.Len:=0;
  CurOtv.Len:=0;
  SearchMax(1, #0);
  for i := 0 to Otvet.Len-1 do
    MemoRes.Lines.Add(MemoIn.Lines[Otvet.Mas[i+1]]);
  PC.TabIndex:=1;
end;

end.
