   M S B A M L   `   `   `  ����E  AParkingApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null=#clr-namespace:ParkingApp.WindowPageParkingApp.WindowPage  5   	   2    ,ParkingApp.WindowPage.ParkingAreaDetailAdmin   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   5local#clr-namespace:ParkingApp.WindowPage     5   	   -   5          � Title$  ParkingAreaDetailAdmin��5   	   $	��600��6(   $
��1000��65    � 
ResizeMode$ NoResize=�5	   	    � WindowStartupLocation$ CenterScreen=�5
   	    � 	Resources 5         
backButton �� 
TargetType �� Property �� Value �� 
TargetType �� Triggers	 P� Property
 P� Value��%K  &	        �� 5   
   " ��6#   .�5      ��  � �� 5      �� 5      " ��6&   .R�5      �� #��z��6!   ._�5      �� $��Center=�6/   $��Center=�6L   5      5      5       5      P� 5      	 �@J�IsMouseOver$

 True��61   . �5      ��  � �� �#323a4f63   5      5      5      .��5      � -   5        ��5    
   �� 5!       �� ImageSource$- '../Assets/Picture/parkingBackground.png��6    j� Stretch$ UniformToFill=�6O   .+�5$   
   ��  �� Orientation$ Vertical=�6   .+�5%      �� -   5        $
��Left=�5%      $��0q�60   #���   6D   $��0,15,0,0q�6i    � Cursor$
 Hand��6{   ��5&      �� 5'       �� Color$ 	#FFDDDDDD��6&    �� Opacity$ 0Q�68   .��5)      �� $ 
Horizontal=�6   .+�5*      �� $$��../Assets/Picture/backIcon.png��6   $��50��6D   $��50��6O   �� 5+      $
��Back��6     �� TextAlignment$ Center=�6,   $��Center=�6C   $��18(�6^   $��Center=�6l   $
��Bold"�6�   
�������6�   5,      5-      �� 5/      -   5         ��Name$ tblArea��5/      
�������$	��400��6=   $��0,20,0,0q�6J   $ Vertical=�6\   .+�51      �� -   5         ��Name$ txtArea��51      $��Area A��6-   $��30(�6;   $��Center=�6I   $��Center=�6f   $
��Bold"�6�   6�   �� 53      $ 
Horizontal=�6   .+�54      �� -   5        $��
lvAreaLots��54      $��
40,20,40,0q�61   $��0q�6E    �� View 55      �� 56      .P�57   "   �� $��Position��61    �� Width$ 50��6C    �� DisplayMemberBinding 58   %   ��  �� Path$ LotPosition��� 59   "   $��Status��61   $ 75��6A    5:   %   �� $ isEmpty��� 5;   "   $��Vehicle��61   $	 150��6B    5<   %   �� $ ParkingVehicle�5=      5?      �� 5A      $	��300��6    $��10,30,10,30q�6-   
���   �$��4��6O   �� 5C      $ Vertical=�6!   .+�5E      �� $��Lot's invoices:��6    $��18(�6:   $��0,15,0,0q�6H   �� 5G      -   5        $��	lvInvoice��5G   #   $��
40,20,40,0q�64   $��0q�6H    5H      �� 5I   "   .P�5J   &   �� $��Id��65   $ 50��6A    5K   %   �� $ 	InvoiceId��� 5L   &   $��Check In Time��65   $	 150��6L    5M   %   �� $ CheckInTime��� 5N   &   $��CheckOutTime��65   $	 150��6K    5O   %   �� $ 
CheckInOut��� 5P   &   $��VehicleCode��65   $	 100��6J    5Q   %   �� $ VehicleCode��� 5R   &   $	��Lot��65   $ 50��6B    5S   %   �� $ LotId�5T   #   5V      5W      5Z      5[      5\      5]      5^      