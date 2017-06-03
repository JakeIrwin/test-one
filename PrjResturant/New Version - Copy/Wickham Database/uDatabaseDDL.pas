unit uDatabaseDDL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DB, ADODB, ComObj, jpeg;

type
  TfrmDatabase = class(TForm)
    lblHeading: TLabel;
    pnlExit: TPanel;
    adoConDatabase: TADOConnection;
    adoCommDatabase: TADOCommand;
    btnCreateDatabase: TButton;
    btnCreateTables: TButton;
    lblTablesMessage: TLabel;
    procedure pnlExitClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnCreateDatabaseClick(Sender: TObject);
    procedure btnCreateTablesClick(Sender: TObject);
  private
  public
  end;

var
  frmDatabase: TfrmDatabase;

implementation

{$R *.dfm}

procedure TfrmDatabase.btnCreateDatabaseClick(Sender: TObject);
var dbase : OLEVariant;
    nameDatabase : string;
begin
  nameDatabase := 'WickhamBar.accdb';
  dbase := CreateOLEObject('ADOX.Catalog');
  dbase.create('Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+nameDatabase+';');
  dbase := null;
  adoCommDatabase.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+
                                       nameDatabase+';';
  btnCreateTables.Visible := true;
end;

procedure TfrmDatabase.btnCreateTablesClick(Sender: TObject);
begin
  adoCommDatabase.CommandText := 'CREATE TABLE tblCustomer (CustomerID short, '+
            'Name char(30), Address char(50), ContactNumber integer, '+
            'primary key(CustomerID))';
  adoCommDatabase.Execute; //Creates the customer table.

  adoCommDatabase.CommandText := 'CREATE TABLE tblBooking (BookingID short, CustomerID short, '+
            ' TimeDate Date, TotalCost real, PaymentType char(4), primary key(BookingID), '+
            'Foreign Key(CustomerID) references tblCustomer(CustomerID))';
  adoCommDatabase.Execute; //Creates the booking table.

  adoCommDatabase.CommandText := 'CREATE TABLE tblMenuItem (MenuNO short,'+
            'ItemDescription char(100), Price real, primary key (MenuNO))';
  adoCommDatabase.Execute; //Creates the customer table.

  adoCommDatabase.CommandText := 'CREATE TABLE tblBookingMenuOrder (BookingID short, '+
            'MenuNO short, Quantity integer, ChildPortion YesNo, Foreign Key(BookingID) '+
            'references tblbooking(bookingID), Foreign Key(MenuNO) references tblmenuitem(MenuNO))';
  adoCommDatabase.Execute;//Creates the Booking menu order table.

  adoCommDatabase.CommandText := 'CREATE TABLE tblIngredient (IngredientID short, '+
            'IngredientName char(30), RemainingAmount integer, UnitOfMeasure char(10), '+
            'RestockAmount integer, AmountToOrder integer, primary key(IngredientID))'  ;
  adoCommDatabase.Execute;//Creates the ingredient table

  adoCommDatabase.CommandText := 'CREATE TABLE tblMenuIngredient (MenuNO short, '+
            'IngredientID short, AmountNeeded real, Foreign Key(MenuNO) references '+
            'tblMenuItem (MenuNO), Foreign Key(IngredientID) references '+
            'tblingredient(IngredientID))';
  adoCommDatabase.Execute;//Creates the Menu ingredient table
end;

procedure TfrmDatabase.FormActivate(Sender: TObject);
begin
  Left := (Screen.Width - Width) DIV 2;
  Top := (Screen.Height - Height) DIV 2;
end;

procedure TfrmDatabase.pnlExitClick(Sender: TObject);
begin
  application.Terminate;
end;

end.

