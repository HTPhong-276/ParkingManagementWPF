   M S B A M L   `   `   `  ����E  AParkingApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:ParkingApp.PagesParkingApp.Pages  5          ParkingApp.Pages.Login   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0localclr-namespace:ParkingApp.Pages     5        N� Title$  Login��5	       � 	Resources 5         
MenuButton �� 
TargetType �� Property �� Value �� 
TargetType �� Triggers P� Property P� Value��%  &	        �� 5   
   " ��6#   .�5      ��  � ��$
 0,30q�6'   �� 5       � ��$ 50��6'   �� 5       � ��$	 160��6&   �� 5       �@�Cursor$
 Hand��6'   �� 5       � �� �#4651486+   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� #��z��6!   ._�5      �� $��Center=�6/   $��Center=�6L   5      5      5       5      P� 5       �@J�IsMouseOver$
 True��61   . �5      ��  � �� �#6a746c63   5      5       5!      .��5#      � .+�5$   
   �� 	 �� Orientation$	 Vertical=�6   $��20,50,20,20q�6,   .+�5%      �� $	 
Horizontal=�6   $
��0,20q�62   .+�5&      �� $��	Username:��6   $	��150��6,   $��22(�68   $
��50,0q�6F   
�������6i   �� 5'      -   5        
 ��Name$
 txtUsername��5'      $	��400��6/   $��22(�6;   $��Center=�6I   6f   5(      �� 5)      $	 
Horizontal=�6   $
��0,20q�62   .+�5*      �� $��	Password:��6   $	��150��6,   $��22(�68   $
��50,0q�6F   
�������6i   G� 5+      -   5         G�Name$ txtPassword��5+      $	��400��63   $��22(�6?   $��Center=�6M   6j   5,      �� 5-      -   5         ��Name$ btnLogin��5-      $��Log in��6'   #��[  68   ���#f1c50e
�������$��24(�6�   $
��Bold"�6�   6�   5.      5/      50      