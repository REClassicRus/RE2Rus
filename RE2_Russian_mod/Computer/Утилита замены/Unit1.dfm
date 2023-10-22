object Main: TMain
  Left = 192
  Top = 125
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'RE2 '#1087#1077#1088#1077#1074#1086#1076#1095#1080#1082' '#1089#1080#1084#1074#1086#1083#1086#1074' '#1082#1086#1084#1087#1100#1102#1090#1077#1088#1072
  ClientHeight = 457
  ClientWidth = 486
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MemoOrig: TMemo
    Left = 8
    Top = 8
    Width = 473
    Height = 193
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object MemoNew: TMemo
    Left = 8
    Top = 240
    Width = 473
    Height = 177
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object ToNew: TButton
    Left = 8
    Top = 208
    Width = 75
    Height = 25
    Caption = '\/'
    TabOrder = 2
    OnClick = ToNewClick
  end
  object ToOrig: TButton
    Left = 88
    Top = 208
    Width = 75
    Height = 25
    Caption = '/\'
    TabOrder = 3
    OnClick = ToOrigClick
  end
  object CopyNewToBuff: TButton
    Left = 8
    Top = 424
    Width = 121
    Height = 25
    Caption = #1057#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1074' '#1073#1091#1092#1077#1088
    TabOrder = 4
    OnClick = CopyNewToBuffClick
  end
  object About: TButton
    Left = 456
    Top = 424
    Width = 25
    Height = 25
    Caption = '?'
    TabOrder = 5
    OnClick = AboutClick
  end
  object CopyOrigToBuff: TButton
    Left = 168
    Top = 208
    Width = 129
    Height = 25
    Caption = #1057#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1074' '#1073#1091#1092#1077#1088
    TabOrder = 6
  end
  object XPManifest: TXPManifest
    Left = 16
    Top = 16
  end
end
