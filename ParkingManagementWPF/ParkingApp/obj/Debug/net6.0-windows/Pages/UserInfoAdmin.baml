   M S B A M L   `   `   `  ����E  AParkingApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:ParkingApp.PagesParkingApp.Pages  5      $    ParkingApp.Pages.UserInfoAdmin   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0localclr-namespace:ParkingApp.Pages     5        N� Title$  UserInfoAdmin��5	       � 	Resources 5         
typeButton �� 
TargetType �� Property �� Value �� 
TargetType �� Triggers P� Property P� Value��%  &	        �� 5   
   " ��6#   .�5      ��  � �� �	#FFD0AB006+   �� 5       � ��$ 30��6'   �� 5       � ��$	 200��6&   �� 5       �@�Cursor$
 Hand��6'   �� 5       � ��$ 	325,0,0,0q�6'   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� #��z��6!   ._�5      �� $��Center=�6/   $��Center=�6L   5      5      5       5      P� 5       �@J�IsMouseOver$
 True��61   . �5      ��  � �� �	#FFF9D84163   5      5       5!      .��5#      � -   5        ��5$   
   �� 5%      	 �� ImageSource$-	 '../Assets/Picture/parkingBackground.png��6   
 j� Stretch$
 UniformToFill=�6O   .+�5(   
   ��  �� Orientation$ Vertical=�6   $��0,0,0,0q�6,   .+�5)      �� $��0,20,0,0q�6   .+�5*      �� $��MANAGE INFORMATION��6   $��24(�65   ���	#FFD0AB00$
��Bold"�6Z   $��Center=�6l   6�   5+      �� 5,      $ 
Horizontal=�6   $��20,20,30,10q�62   .+�5-      �� $��	Username:��6   $��20(�6,   $	��125��6:   ���	#FFD0AB00$
��Bold"�6]   6q   �� 5.      -   5         ��Name$ txtUsername��5.      $	��275��6/    �� 
IsReadOnly$
 True��6;   $��20(�6M   $��Center=�6[   �� 5/      $��Email:��6   $��20(�6)   $	��125��67   $��30,0,0,0q�6C   ���	#FFD0AB00$
��Bold"�6l   6�   �� 50      -   5        $ txtEmail��50      $	��275��6,   $��Center=�68   $��20(�6S   51      �� 52      $ 
Horizontal=�6   $��20,20,30,10q�62   .+�53      �� $��Phone:��6   $��20(�6)   $	��125��67   ���	#FFD0AB00$
��Bold"�6Z   6n   �� 54      -   5        $ txtPhone��54      $	��275��6,   $��20(�68   $��Center=�6F   56      �� 57      $ 
Horizontal=�6   $��20,10,30,10q�62   .+�58      �� -   5         ��Name$ 	btnUpdate��58      $��Update��6,   #��[  6=   
�������$��20(�6t   $
��Bold"�6�   6�   59      �� 5:      $ 
Horizontal=�6   $��20,20,30,10q�62   .+�5;      �� 
���   �$��3��6)   $	��750��64   $
��50,0q�6@   5<      �� 5=      .+�5>      �� $��	USER LIST��6   $��24(�6,   ���	#FFD0AB00$
��Bold"�6Q   $��Center=�6c   6�   5?      �� 5@      $ 
Horizontal=�6   $��20,10,30,10q�62   .+�5A      �� -   5         ��Name$ lvUser��5A      $��	50,0,20,0q�6+   $��0q�6>    �� View 5B      �� 5C      .P�5D      �� $��Id��6-    �� Width$ 50��69    �� DisplayMemberBinding 5E   %   ��  �� Path$ UserId��� 5F      $��Username��6-   $	 150��6?    5G   %   �� $ Username��� 5H      $��Email��6-   $	 150��6<    5I   %   �� $ Email��� 5J      $��Address��6-   $	 250��6>    5K   %   �� $ Address��� 5L      $��Phone��6-   $	 150��6<    5M   %   �� $ Phone�5N      5P      5Q      5R      5S      5T      