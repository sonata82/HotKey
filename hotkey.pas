unit HotKey;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, LResources, Forms, Controls, Graphics, Dialogs;

type
  THKModifier = (
    hkShift,
    hkCtrl,
    hkAlt,
    hkExt
  );

  THKModifiers = set of THKModifier;

  THotKey = class(TWinControl)
  private
    FAutoSize: Boolean;
    FHotkey: TShortCut;
    FModifiers: THKModifiers;
  protected

  public

  published
    property Left;
    property Top;
    property Width;
    property Height;
    property TabOrder;
    property AutoSize: Boolean read FAutoSize write FAutoSize;
    property Hotkey: TShortcut read FHotkey write FHotkey;
    property Modifiers: THKModifiers read FModifiers write FModifiers;
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Additional',[THotKey]);
end;

end.
