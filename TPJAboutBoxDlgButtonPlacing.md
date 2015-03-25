<a href='Hidden comment: 
$Rev$
$Date$
'></a>

# ButtonPlacing property #

**Project:** [About Box Component](AboutBoxComponent.md).

**Unit:** _PJAbout_.

**Class:** _[TPJAboutBoxDlg](TPJAboutBoxDlg.md)_

```
property ButtonPlacing: TPJAboutBtnPlacing;

type TPJAboutBtnPlacing = (abpLeft, abpCentre, abpRight);
```

## Description ##

The About box contains one button which is used to close the dialog box. The button is positioned at the bottom of the dialog box, but can be aligned left, centre or right. The _ButtonPlacing_ property is used to determine which position the button occupies. Valid values for the property and their meanings are as follows:

| **Value** | **Meaning** |
|:----------|:------------|
| `abpLeft` | Display the button at the bottom left of the dialog box. |
| `abpCentre` | Display the button at the bottom centre  of the dialog box. |
| `abpRight` | Display the button at the bottom right of the dialog box. |

The default value is `abpCentre`.