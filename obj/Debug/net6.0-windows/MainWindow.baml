   M S B A M L   `   `   `  ����B  >SMS_UOR, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:SMS_UORSMS_UOR  5   	       SMS_UOR.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:SMS_UOR     5   	     � Title$  
MainWindow��5   	   $	��540��6   $	��960��6)   
���   � � WindowStyle$ SingleBorderWindow=�5	   	    � 
ResizeMode$ CanMinimize=�6*    � DataContext 5
         SMS_UOR.MainWindowVM  5   
   .��5      �  J� OpacityMask# � ��6   ��5   
   �� 5       �� Opacity$
 0.89Q�6    �� ImageSource$P JC:\Users\acer\Documents\Semester 03\GUI\Project 2\UMS1\Images/bg_image.jpg��6(    j� Stretch$ UniformToFill=�6�    � RowDefinitions 5   
   �� 5      $
��135* �6   �� 5      $
��230* �6   �� 5      $	��98* �6   .+�5   
   �� $��Center=�6   .+�5      ��    Heading_text#��[  6   $��
20 20 20 0q�6>   
����� �Student Management System6   �� 5        SubHeading_text#��[ 6   $��20 10q�6A   
������� University of Ruhuna Sri Lanka6�   5      � 5   
   $��
20 20 20 0q�6   $��2��6#   	 � ColumnDefinitions	 5      �� 5      $
��0.1* �6#   �� 5       $
��0.1* �6#   �� 5!      $
��0.1* �6#   �� 5"      $
��0.1* �6#   �� 5#      $
��0.1* �6#   �� 5$      $
��0.1* �6#   .+�5'      ��   RoundButtonTemplate#��[ 6   $��	27,0,27,0q�5(      $��1��5)      $��50��5*   5   $��Center=�6A   $	��NaN��6\   ��6   �� *editCommand+.��6i   Add6n   �� 5+      #��[ 6   $��10q�5,      $��2��5-      ��5.      �� *RemovePersonCommand+.��6=   Edit6C   �� 5/        RoundButtonTemplate1#��[ 6   $��10q�50      $��3��51      ��52      �� *
addCommand+.��64   Delete6<   �� 53      #��[ 6   $��10q�54      $��4��55      ��56      �� *detailsCommand+.��68   	Details6A   57      �� 5:   
   $��1��6   $��Stretch=�6%   $��Disabled=�6A   $
��95 0q�6h   .��5;      �� -   5        
������ $��0q�5;   �   ��6   �� *	Persons+
 �� UpdateSourceTrigger$
 PropertyChanged=� �� SelectedItem 6\   �� *SelectedUser+$
 PropertyChanged=���5<      �� 5=      .R�5>      ��  �� Orientation$ 
Horizontal=�6%   5?      ��5A      �� 5B      .R�5D      � 
�������$	��140��66   $��10q�6B    5E      �� 5F   "   $	��150 �60   �� 5G   "   $��20 �60   �� 5H   "   $��20 �60   .+�5J      �� $��0��6$   $��UniformToFill=�6o   $��5q�6�   $	��150��6�   ��61   �� *Image+$
 PropertyChanged=�6�   �� 5K      $��1��6(   $��NoWrap=�65   $	��5 0q�6�   $��12(�6�   $
��Bold"�6�   ��6K   �� *
FullName+$
 PropertyChanged=�6�   �� 5L      $��5,16,5,4q�6(   $��8(�6:   $��1��6G   $��Regular"�6T   $��2��6�   ��6i   �� *GPA+$
 PropertyChanged=�6�   �� 5M      $��4,4,6,6q�6(   $��8(�69   $��2��6F   $��Regular"�6S   ��6h   �� *Mail+$
 PropertyChanged=�5N      5P      5R      5S      5U      5V      