unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, ExtDlgs;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    PopupMenu1: TPopupMenu;
    A1: TMenuItem;
    S1: TMenuItem;
    S2: TMenuItem;
    C1: TMenuItem;
    E1: TMenuItem;
    R1: TMenuItem;
    ColorDialog1: TColorDialog;
    C2: TMenuItem;
    P1: TMenuItem;
    E2: TMenuItem;
    SavePictureDialog1: TSavePictureDialog;
    procedure Timer1Timer(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure S2Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure A1Click(Sender: TObject);
    procedure R1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure C2Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure P1Click(Sender: TObject);
    procedure E2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  r, g, b: Integer;
  pepe: array[1..4] of TPoint;
  d: array[1..4, 1..2] of Integer;
  i: Integer;
  x, y, dy, dd: Integer;

implementation

{$R *.dfm}

procedure Black;
begin
Form1.Image1.Canvas.Brush.Color := clBlack;
Form1.Image1.Canvas.Rectangle(0, 0, Form1.Image1.Picture.Bitmap.Width, Form1.Image1.Picture.Bitmap.Height);
end;

procedure LoadConfig;
begin
if Form1.S2.Checked
then Form1.Image1.Canvas.Brush.Color := RGB(r, g, b)
else Form1.Image1.Canvas.Brush.Color := clBlack;
if not Form1.C1.Checked
then Black;
Form1.Image1.Width := Form1.ClientWidth;
Form1.Image1.Height := Form1.ClientHeight;
Form1.Image1.Picture.Bitmap.Width := Form1.Image1.Width;
Form1.Image1.Picture.Bitmap.Height := Form1.Image1.Height;
end;

procedure DrawPolygon;
begin
Form1.Image1.Canvas.Pen.Color := RGB(r, g, b);
Form1.Image1.Canvas.Polygon(pepe);
for i := 1 to 4
do begin
pepe[i].X := pepe[i].X + d[i, 1];
pepe[i].Y := pepe[i].Y + d[i, 2];
if (pepe[i].X >= Form1.Image1.Picture.Bitmap.Width) or (pepe[i].X <= 0)
then d[i, 1] := 0 - d[i, 1];
if (pepe[i].Y >= Form1.Image1.Picture.Bitmap.Height) or (pepe[i].Y <= 0)
then d[i, 2] := 0 - d[i, 2];
end;
if Form1.C2.Checked
then begin
r := r + Random(3)-1;
g := g + Random(3)-1;
b := b + Random(3)-1;
end;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
LoadConfig;
DrawPolygon;
end;

procedure TForm1.S1Click(Sender: TObject);
begin
if ColorDialog1.Execute
then begin
r := GetRValue(ColorDialog1.Color);
g := GetGValue(ColorDialog1.Color);
b := GetBValue(ColorDialog1.Color);
end;
end;

procedure TForm1.S2Click(Sender: TObject);
begin
S2.Checked := not S2.Checked;
end;

procedure TForm1.C1Click(Sender: TObject);
begin
C1.Checked := not C1.Checked;
end;

procedure TForm1.E1Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm1.A1Click(Sender: TObject);
begin
MessageBoxA(0, 'Version 1.0'+#13+'Having fun with Delphi 7 graphics, lol'+#13+'Coded by NobootRecord', 'About Dancing Polygon', MB_ICONINFORMATION);
end;

procedure TForm1.R1Click(Sender: TObject);
begin
Randomize;
Image1.Width := Form1.ClientWidth;
Image1.Height := Form1.ClientHeight;
Image1.Picture.Bitmap.Width := Image1.Width;
Image1.Picture.Bitmap.Height := Image1.Height;
pepe[1].X := Random(Image1.Picture.Bitmap.Width);
pepe[1].Y := Random(Image1.Picture.Bitmap.Height);
pepe[2].X := Random(Image1.Picture.Bitmap.Width);
pepe[2].Y := Random(Image1.Picture.Bitmap.Height);
pepe[3].X := Random(Image1.Picture.Bitmap.Width);
pepe[3].Y := Random(Image1.Picture.Bitmap.Height);
pepe[4].X := Random(Image1.Picture.Bitmap.Width);
pepe[4].Y := Random(Image1.Picture.Bitmap.Height);
d[1, 1] := Random(3)-1;
d[1, 2] := Random(3)-1;
d[2, 1] := Random(3)-1;
d[2, 2] := Random(3)-1;
d[3, 1] := Random(3)-1;
d[3, 2] := Random(3)-1;
d[4, 1] := Random(3)-1;
d[4, 2] := Random(3)-1;
r := Random(256);
g := Random(256);
b := Random(256);
Black;
Form1.Image1.Canvas.Pen.Style := Graphics.psSolid;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Form1.R1.Click;
end;

procedure TForm1.C2Click(Sender: TObject);
begin
C2.Checked := not C2.Checked;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
Image1.Width := Form1.ClientWidth;
Image1.Height := Form1.ClientHeight;
Image1.Picture.Bitmap.Width := Image1.Width;
Image1.Picture.Bitmap.Height := Image1.Height;
Black;
end;

procedure TForm1.P1Click(Sender: TObject);
begin
Timer1.Enabled := not Timer1.Enabled;
end;

procedure TForm1.E2Click(Sender: TObject);
begin
if SavePictureDialog1.Execute
then Image1.Picture.Bitmap.SaveToFile(SavePictureDialog1.FileName);
end;

end.
