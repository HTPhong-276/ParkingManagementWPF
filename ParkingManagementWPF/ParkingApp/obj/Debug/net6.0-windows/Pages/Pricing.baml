   M S B A M L   `   `   `  ����E  AParkingApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null3clr-namespace:ParkingApp.PagesParkingApp.Pages  5          ParkingApp.Pages.Pricing   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      0localclr-namespace:ParkingApp.Pages     5        N� Title$  Pricing��5	       � 	Resources 5         
typeButton �� 
TargetType �� Property �� Value �� 
TargetType �� Triggers P� Property P� Value  
priceTitle 	 price��%b  &	        &	 �    &	 �    �� 5   
   " ��6#   .�5      ��  � �� �#2029406+   �� 5       � ��$ 75��6'   �� 5       � ��$	 293��6&   �� 5       �@�Cursor$
 Hand��6'   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� #��z��6!   ._�5      �� $��Center=�6/   $��Center=�6L   5      5      5       5      P� 5       �@J�IsMouseOver$
 True��61   . �5      ��  � �� �#323a4f63   5      5      �� 5!   
   " ��6#   .�5"      ��  � ��$ Center=�6;   �� 5#       � ��$ 30(�6)   �� 5$       � ��$ 	0,0,0,100q�6'   �� 5%       � �� �	#FFD0AB006+   5&      �� 5(   
   " ��6   .�5)      ��  � ��$ Center=�6;   �� 5*       � ��$ 18(�6)   �� 5+       � �� �	#FFD0AB006+   5,      5-      .��5/      � -   5        ��50   
   �� 51      	 �� ImageSource$-	 '../Assets/Picture/parkingBackground.png��6   
 j� Stretch$
 UniformToFill=�6O   .+�54   
   ��  �� Orientation$ Vertical=�6   .+�55      �� $ 
Horizontal=�6   .+�56      �� -   5         ��Name$ btnCarPrice��56      #��[  6.   .��57      �� $#��../Assets/Picture/carIcon.png��6   $��50��6C   58      �� 59      -   5        $ btnBusPrice��59      #��[  6.   .��5:      �� $#��../Assets/Picture/busIcon.png��6   $��50��6C   5;      �� 5<      -   5        $ btnTruckPrice��5<      #��[  60   .��5=      �� $%��../Assets/Picture/truckIcon.png��6   $��50��6E   5>      5?      �� 5A      $ Vertical=�6   .+�5B      �� -   5         ��Name$ txtPricingTitle��5B      $��CAR PRICING��65   $��Center=�6H   $	��Top=�6e   $��40(�6}   ���	#FFD0AB00$��	0,50,0,10q�6�   6�   �� 5D      $��Center=�6   ���#202940$��3��6I   $	��700��6T   �� 5F      $ 
Horizontal=�6   $��0,70,0,0q�66   .+�5G      �� $ Vertical=�6!   $	��160��68   $
��25,0q�6D   .+�5H      �� $��Per hour��6    #��[ 63   6Y   �� 5I      -   5         ��Name$ txtHourPrice��5I       $��
Price here��66   #��[ 6K   6l   5J      �� 5K      $ Vertical=�6!   $	��160��68   .+�5L      �� $��Per day��6    #��[ 62   6X   �� 5M      -   5        $ txtDayPrice��5M       $��
Price here��65   #��[ 6J   6k   5N      �� 5O      $ Vertical=�6!   $	��160��68   .+�5P      �� $��Per week��6    #��[ 63   6Y   �� 5Q      -   5        $ txtWeekPrice��5Q       $��
Price here��66   #��[ 6K   6l   5R      �� 5S      $ Vertical=�6!   $	��160��68   .+�5T      �� $��	Per month��6    #��[ 64   6Z   �� 5U      -	   5        $ txtMonthPrice��5U       $��
Price here��67   #��[ 6L   6m   5V      �� 5W      $ Vertical=�6!   $	��160��68   .+�5X      �� $��Per year��6    #��[ 63   6Y   �� 5Y      -
   5        $ txtYearPrice��5Y       $��
Price here��66   #��[ 6K   6l   5Z      5[      5\      5]      5^      5_      