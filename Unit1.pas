unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  System.Math.Vectors, FMX.Ani, FMX.MaterialSources, FMX.Controls3D,
  FMX.Objects3D, FMX.Viewport3D;

type
  TForm1 = class(TForm)
    Viewport3D1: TViewport3D;
    Sphere1: TSphere;
    TextureMaterialSource1: TTextureMaterialSource;
    FloatAnimation1: TFloatAnimation;
    procedure Sphere1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Sphere1Click(Sender: TObject);
begin
  if Sphere1.Position.Z < 0 then
    TAnimator.AnimateFloat(Sphere1, 'Position.Z', 0)
  else
    TAnimator.AnimateFloat(Sphere1, 'Position.Z', -3);
end;

end.
