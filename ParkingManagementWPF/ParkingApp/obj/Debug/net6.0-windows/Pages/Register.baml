   M S B A M L   `   `   `  ����E  AParkingApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:ParkingApp.PagesParkingApp.Pages  5          ParkingApp.Pages.Register   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0localclr-namespace:ParkingApp.Pages     5        N� Title$  Register��5	       � 	Resources 5         
MenuButton �� 
TargetType �� Property �� Value �� 
TargetType �� Triggers P� Property P� Value��%  &	        �� 5   
   " ��6#   .�5      ��  � ��$
 0,30q�6'   �� 5       � ��$ 50��6'   �� 5       � ��$	 400��6&   �� 5       �@�Cursor$
 Hand��6'   �� 5       � �� �#4651486+   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� #��z��6!   ._�5      �� $��Center=�6/   $��Center=�6L   5      5      5       5      P� 5       �@J�IsMouseOver$
 True��61   . �5      ��  � �� �#6a746c63   5      5       5!      .��5#      � .+�5$   
   �� 	 �� Orientation$	 Vertical=�6   $��	20,0,20,0q�6,   .+�5%      �� $	 
Horizontal=�6   $��	0,20,0,10q�62   .+�5&      �� $��	Username:��6   $	��150��6,   $��22(�68   $
��50,0q�6F   
�������6i   �� 5'      -   5        
 ��Name$
 txtUsername��5'      $	��400��6/   $��22(�6;   $��Center=�6I   6f   5(      �� 5)      $	 
Horizontal=�6   $
��0,10q�62   .+�5*      �� $��	Password:��6   $	��150��6,   $��22(�68   $
��50,0q�6F   
�������6i   G� 5+      -   5         G�Name$ txtPassword��5+      $	��400��63   $��22(�6?   $��Center=�6M   6j   5,      �� 5-      $	 
Horizontal=�6   $
��0,10q�62   .+�5.      �� $��RePassword:��6   $	��150��6.   $��22(�6:   $
��50,0q�6H   
�������6k   G� 5/      -   5        $ txtRePassword��5/      $	��400��65   $��22(�6A   $��Center=�6O   6l   50      �� 51      $	 
Horizontal=�6   $
��0,10q�62   .+�52      �� $��Email:��6   $	��150��6)   $��22(�65   $
��50,0q�6C   
�������6f   �� 53      -   5        $
 txtEmail��53      $	��400��6,   $��22(�68   $��Center=�6F   6c   54      �� 56      -   5         ��Name$ btnRegister��56      $��Register��6*   #��[  6=   
�������$��22(�6t   6�   57      58      59      