unit uComponents;

interface

uses StdCtrls, Graphics;

//Declaration of the procedures used in this unit
procedure LabelsSetUp(AllLabels : TLabel; top : integer; cap : string);
procedure headingSetUp(Heading : TLabel);
procedure EditBoxSetUp(AllEdits : TEdit; top : integer);
procedure ButtonsSetUp(AllButtons : TButton; top, left : integer; cap : string);

implementation

uses uLogin;                                               //Link to uLogin unit

//Procedure to set up basic properties of buttons
procedure ButtonsSetUp(AllButtons : TButton; top, left : integer; cap : string);
begin
  AllButtons.Width := 120;
  AllButtons.Height := 40;
  AllButtons.Font.Size := 8;
  AllButtons.Top := top;
  AllButtons.Left := left;
  AllButtons.Caption := cap;
end;

//Procedure to set up basic properties of edit boxes
procedure EditBoxSetUp(AllEdits : TEdit; top : integer);
begin
  AllEdits.Width := 200;
  AllEdits.Height := 40;
  AllEdits.Font.Size := 14;
  AllEdits.Font.Color := clBlack;
  AllEdits.Left := 270;
  AllEdits.Top := top;
  AllEdits.Text := '';
end;

//Procedure to set up basic properties of both labels
procedure LabelsSetUp(AllLabels : TLabel; top : integer; cap : string);
begin
  AllLabels.Width := 200;
  AllLabels.Height := 40;
  AllLabels.Font.Size := 14;
  AllLabels.Font.Color := clBlack;
  AllLabels.Left := 140;
  AllLabels.Top := top;
  AllLabels.Caption := cap;
end;

//Procedure to set up basic properties of the heading
procedure headingSetUp(Heading : TLabel);
begin
  Heading.Width := 500;
  Heading.Height := 70;
  Heading.Font.Size := 30;
  Heading.Font.Color := clBlack;
  Heading.Left := 210;
  Heading.Top := 40;
  Heading.Caption := 'Login Program';
end;

end.
