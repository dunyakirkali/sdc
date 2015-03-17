LANBOX DMX TESTER

How to exit the program??   press F10

Use:

This program uses RPN. So you must first give a value and then the operand.

Value  Operand   Result

1      ENTER
255    *
                 DMX address 1 at level 255

!! Levels are between 0 and 255
!! When level is 0, no level value is displayed

5      ENTER
16     -
128    *
                 DMX address 5 to 16 at level 128


9      ENTER
                 Selects address 9

!! Selected addresses are displayed with a yellow background
!! Not selected addresses are displayed with a gray background
!! You can only change the level of selected addresses, so
   first select a address or multiple addresses and then 
   change value with *

9      /        Deselect address 9

0      ENTER    Select all

0      /        Deselect all

       ESC      Place all addresses on level 0 and deselect all

Arrow Up        Increase level of selected addresses with 50
Arrow Down      Decrease level of selected addresses with 50
Arrow Left      Set level of selected addresses to 0 
Arrow Right     Set level of selected addresses to 255

+               Select next
-               Select previous

5      ENTER
128    *
       +
13     *
       +
255    *
                Address 5 on level 128, address 6 on 13, address 7 on 255


addr   +        Add given address to current selection
addr   -        Select all addresses between current selection and 
                 given (including) address


10     ENTER
16     +
21     +
               Select addresses 10, 16 and 21

25     ENTER
32     -
               Select addresses 25-32


Page Up        Scroll screen to lower addresses
Page Down      Scroll screen to higher addresses
Home           Display screen with address 0
End            Display screen with address 512



Enjoy,


Kurt Steckx