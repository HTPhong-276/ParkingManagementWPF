   M S B A M L   `   `   `  ����E  AParkingApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:ParkingApp.WindowPageParkingApp.WindowPage  5   	   -    'ParkingApp.WindowPage.ParkingAreaDetail   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:ParkingApp.WindowPage     5   	   -   5          � Title$  ParkingAreaDetail��5   	   $	��600��6#   $
��1000��60    � 
ResizeMode$ NoResize=�5	   	    � WindowStartupLocation$ CenterScreen=�5
   	    � 	Resources 5         
backButton �� 
TargetType �� Property �� Value �� 
TargetType �� Triggers	 P� Property
 P� Value��%K  &	        �� 5   
   " ��6#   .�5      ��  � �� 5      �� 5      " ��6&   .R�5      �� #��z��6!   ._�5      �� $��Center=�6/   $��Center=�6L   5      5      5       5      P� 5      	 �@J�IsMouseOver$

 True��61   . �5      ��  � �� �#323a4f63   5      5      5      .��5       � -   5        ��5!   
   �� 5"       �� ImageSource$- '../Assets/Picture/parkingBackground.png��6    j� Stretch$ UniformToFill=�6O   .+�5%   
   ��  �� Orientation$ Vertical=�6   .+�5&      �� -   5        $
��Left=�5&      $��0q�60   #���   6D   $��0,15,0,0q�6i    � Cursor$
 Hand��6{   ��5'      �� 5(       �� Color$ 	#FFDDDDDD��6&    �� Opacity$ 0Q�68   .��5*      �� $ 
Horizontal=�6   .+�5+      �� $$��../Assets/Picture/backIcon.png��6   $��50��6D   $��50��6O   �� 5,      $
��Back��6     �� TextAlignment$ Center=�6,   $��Center=�6C   $��18(�6^   $��Center=�6l   $
��Bold"�6�   
�������6�   5-      5.      �� 50      -   5         ��Name$ tblArea��50      
�������$	��400��6=   $��0,20,0,0q�6J   $ Vertical=�6\   .+�52      �� -   5         ��Name$ txtArea��52      $��Area A��6-   $��30(�6;   $��Center=�6I   $��Center=�6f   $
��Bold"�6�   6�   �� 54      $ 
Horizontal=�6   .+�55      �� -   5        $��
lvAreaLots��55      $��
40,20,40,0q�61   $��0q�6E    �� View 56      �� 57      .P�58   "   �� $��Position��61    �� Width$ 50��6C    �� DisplayMemberBinding 59   %   ��  �� Path$ LotPosition��� 5:   "   $��Status��61   $ 75��6A    5;   %   �� $ isEmpty��� 5<   "   $��Vehicle��61   $	 150��6B    5=   %   �� $ ParkingVehicle�5>      5@      �� 5B      $	��300��6    $��10,30,10,30q�6-   
���   �$��4��6O   �� 5D      $ Vertical=�6!   $��
40,20,40,0q�68   .+�5E      �� $ 
Horizontal=�6%   .+�5F      �� $��Position��6$   $	��100��67   $��20(�6F   �� 5G      -   5         ��Name$ 
txtPositon��5G   &   $	��100��6:   $��20(�6I   $��
0,10,30,10q�6W    �� 
IsReadOnly$
 True��6k   $��Center=�6}   6�   �� 5H      $��Vehicle��6$   $	��100��66   $��20(�6E   �� 5I      -   5        $��
cmbVehicle��5I   '   $	��170��69   $��30��6H   $��Center=�6T    �� SelectedIndex$ 0��6o   ��5J   "   �� 5K   &   .R�5L   *   �� ��64   �� $ VehicleCode�5M   '   5O      5P      �� 5Q      $ 
Horizontal=�6%   .+�5R      �� $��Checkin��6$   $	��100��66   $��20(�6E   �� 5S      -	   5        $ txtCheckInTime��5S   &   $	��400��6>   $��20(�6M   $��	0,10,0,10q�6[   $
 True��6n   $��Center=�6�   6�   5T      �� 5U      $ 
Horizontal=�6%   .+�5V      �� $��Current��6$   $	��100��66   $��20(�6E   �� 5W      -
   5        $ txtCurrentTime��5W   &   $	��400��6>   $��20(�6M   $��	0,10,0,10q�6[   $
 True��6n   $��Center=�6�   6�   5X      �� 5Y      $ 
Horizontal=�6%   .+�5Z      �� $��	Total pay��6$   $	��100��68   $��20(�6G   �� 5[      -   5        $ txtPaid��5[   &   $	��400��67   $��20(�6F   $��	0,10,0,10q�6T   $
 True��6g   $��Center=�6y   6�   5\      �� 5^      -   5         ��Name$ btnPark��5^   !   $�� ��62   $��22(�6=   $��50q�6K   ${�False��6W   5`      �� 5a      -   5        $ txtInvoiceId��5a   "   $	��400��68   $��20(�6G   $��	0,10,0,10q�6U   $
 True��6h   $��Center=�6z   $y�Hidden=�6�   6�   5c      5d      5e      5f      5g      5h      