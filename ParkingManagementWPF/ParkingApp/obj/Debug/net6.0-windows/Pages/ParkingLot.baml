   M S B A M L   `   `   `  ����E  AParkingApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:ParkingApp.PagesParkingApp.Pages  5      !    ParkingApp.Pages.ParkingLot   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0localclr-namespace:ParkingApp.Pages     5        N� Title$  
ParkingLot��5	       � 	Resources 5         	lotButton �� 
TargetType �� Property �� Value �� 
TargetType �� Triggers P� Property P� Value��%H  &	        �� 5   
   " ��6"   .�5      ��  � �� �	#FF2029406+   �� 5       �@J�Opacity$
 0.75Q�6(   �� 5       � ��$ 
40,0,20,20q�6'   �� 5       � ��$	 200��6'   �� 5       � ��$	 200��6&   �� 5       �@�Cursor$
 Hand��6'   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� #��z��6!   ._�5      �� $��Center=�6/   $��Center=�6L   5      5      5       5      P� 5       �@J�IsMouseOver$
 True��61   . �5      ��  � �� �#323a4f63   5      5!      5"      .��5$      � ��5%   
   �� 5&      	 �� ImageSource$-	 '../Assets/Picture/parkingBackground.png��6   
 j� Stretch$
 UniformToFill=�6O   .+�5)   
   �� $��CHOOSE THE PARKING AREA��6   $��36(�63   $
��Bold"�6A   ���	#FF202940$��10,10,10,533q�6j   6�   �� 5+   
    �� Orientation$ Vertical=�6   $��
0,100,0,50q�6,   .+�5,      �� $ 
Horizontal=�6   .+�5-      �� -   5         ��Name$ 
btnCarLotA��5-      #��[  6-   .��5.      �� $ Vertical=�6!   $	��200��68   .+�5/      �� $��A��6$   $��0,10,0,0q�6-    �� TextAlignment$ Center=�6?   $��72(�6V   
�������6y   �� 50      $#��../Assets/Picture/carIcon.png��6    $��50��6G   51      52      �� 53      -   5        $ 
btnCarlotB��53      #��[  6-   .��54      �� $ Vertical=�6!   $	��200��68   .+�55      �� $��B��6$   $��0,10,0,0q�6-   $ Center=�6?   $��72(�6V   
�������6y   �� 56      $#��../Assets/Picture/carIcon.png��6    $��50��6G   57      58      �� 59      -   5        $ 
btnCarlotC��59      #��[  6-   .��5:      �� $ Vertical=�6!   $	��200��68   .+�5;      �� $��C��6$   $��0,10,0,0q�6-   $ Center=�6?   $��72(�6V   
�������6y   �� 5<      $#��../Assets/Picture/carIcon.png��6    $��50��6G   5=      5>      5?      �� 5A      $ 
Horizontal=�6   .+�5B      �� -   5        $ 
btnBusLotD��5B      #��[  6-   .��5C      �� $ Vertical=�6!   $	��200��68   .+�5D      �� $��D��6$   $��0,10,0,0q�6-   $ Center=�6?   $��72(�6V   
�������6y   �� 5E      $#��../Assets/Picture/busIcon.png��6    $��50��6G   5F      5G      �� 5H      -   5        $ btnTruckLotE��5H      #��[  6/   .��5I      �� $ Vertical=�6!   $	��200��68   .+�5J      �� $��E��6$   $��0,10,0,0q�6-   $ Center=�6?   $��72(�6V   
�������6y   �� 5K      $%��../Assets/Picture/truckIcon.png��6    $��50��6I   5L      5M      5N      5O      5P      5Q      