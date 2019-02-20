unit Age1;

{$mode objfpc}{$H+}

interface

uses
  SysUtils, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    ScrollBar1: TScrollBar;
    Label1: TLabel;
    AgeLabel: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

procedure TForm1.Button1Click(Sender: TObject);
{========= START OF TUTORIAL CODE ========}
{ Declare variables }
var
   age : Integer;
   teenager : Boolean;
   youngMan : Boolean;
   middleAgedMan : Boolean;
   oldMan : Boolean;

begin
{ Initialise variables with some value     }
   age := ScrollBar1.Position;
   teenager := false;
   youngMan :=false;
   middleAgedMan :=false;
   oldMan := false;
{ Test the value of the age variable       }
{ and set the teenager variable to         }
{ True if age is between 13 and 19         }
   if (age > 12) and (age < 20) then
      teenager := true;
   if(age > 20) and (age <30) then
      youngMan := true;
   if(age > 30 ) and (age <50) then
      middleAgedMan := true;
   if (age >70) then
      oldMan := true;



{ Now test the value of the teenager       }
{ variable. Display one message if it      }
{ is true, another if it is false          }
   if teenager then   { if teenager = True }
      ShowMessage('You are a teenager.')
   else               {if teenager = False }
      ShowMessage('You are no teenager!');
   if youngMan then
      ShowMessage('You are a YoungMan.');
   if middleAgedMan then
      ShowMessage('You are a Middel aged man.');
   if oldMan then
      ShowMessage('You are a old man.');


{========= END OF TUTORIAL CODE ========== }
end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
   AgeLabel.Caption := IntToStr(ScrollBar1.Position);
end;

end.
