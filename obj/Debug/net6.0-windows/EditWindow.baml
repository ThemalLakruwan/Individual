   M S B A M L   `   `   `  ����B  >SMS_UOR, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:SMS_UORSMS_UOR  5   	       SMS_UOR.EditWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:SMS_UOR     5   	     � Title$  
EditWindow��5   	   $	��450��6   $	��800��6)    � DataContext 5	         SMS_UOR.EditWindowVM  5
   
   .��5      � ��5   
   �� 5       �� Opacity$
 0.89Q�6    �� ImageSource$Q KC:/Users/acer/Documents/Semester 03/GUI/Project 2/UMS1/Images/bg_image1.jpg��6(    j� Stretch$ UniformToFill=�6�    � ColumnDefinitions 5   
   �� 5      $��1* �6   �� 5      $
��1.2* �6   .+�5   
   � $��1��6   $��10 55 10 30q�6    � RowDefinitions 5      �� 5      $��30 �6    �� 5      $��30 �6    �� 5      $��30 �6    �� 5      $��30 �6    �� 5      $��30 �6    �� 5      $��30 �6    �� 5      $	��110 �6    �� 5      $��30 �6    .+�5"      �� $��0��6    �� Orientation$ 
Horizontal=�6&   .+�5#      ��    Normal_text#��[  6   $��First Name :��6A   $��5q�6U   �� 5$        Normal_textBox#��[ 6   $��5q�5&      $	��265��6%   ��5%      �� *	Firstname+ �� UpdateSourceTrigger$ PropertyChanged=�5&   %   5'      �� 5(      $��1��6   $ 
Horizontal=�6&   .+�5)      �� #��[  6   $��Last Name :��6A   $��5q�6T   �� 5*      #��[ 6   $��5q�5,      $	��266��6%   ��5+      �� *
Lastname+$ PropertyChanged=�5,   %   5-      �� 5.      $��2��6   $ 
Horizontal=�6&   .+�5/      �� #��[  6   $��GPA :��6A   $��5q�6N   �� 50      #��[ 6   $��5q�52      $	��326��6%   ��51      �� *Dob+$ PropertyChanged=�52   %   53      �� 54      $��3��6   $ 
Horizontal=�6&   .+�55      �� #��[  6   $��E-Mail :��6A   $��5q�6Q   �� 56      #��[ 6   $��5q�58      $	��304��6%   ��57      �� *Email+$ PropertyChanged=�58   %   59      �� 5:      $��4��6   $ 
Horizontal=�6&   .+�5;      �� #��[  6   $��DOB :��6A   $��5q�6N   �� 5<      #��[ 6   $��5q�5=   U   $	��322��6`   ��6   �� *Gpa+$ PropertyChanged=�6`   5>      �� 5?      $��5��6   $ 
Horizontal=�6&   .+�5@      �� #��[  6   $��More Info :��6A   $��5q�6T   5A      � 5B      $��6��6   
������ $��2q�69    5C      �� 5D      $	��89* �6'   �� 5E      $
��324* �6'   .+�5G      �� #��[ 6   	 �� TextAlignment$
	 Left=�5H      
 �� TextWrapping$

 Wrap=�5I      
���   �$��2��5K   /   $��	0,0,18,33q�6C   ��5J      �� *Other+$ PropertyChanged=�5K   C   5L      �� 5M      $��7��6   $��30��6"     RoundButtonTemplate#��[ 5N      $
��Save��5O      $��158,19,158,-19q�5P   5   ��6   �� *SaveCommand+65   5Q      � 5S   
   $��30 50 20 50q�6   $��0��6$   ��5T      �� 5U      $R LC:/Users/acer/Documents/Semester 03/GUI/Project 2/UMS1/Images/image_icon.png��6   $ 1Q�6x   $ UniformToFill=�6�   .+�5W      � ��5X      �� 5Y      $ UniformToFill=�6G    6!   �� *SelectedImage+6G   5[      �� 5\        ImageChangeButtonTemplate#��[ 6   $��
-24,0,0,10q�6l   $
��Left=�6�   $	��314��6�   ��6H   �� *OpenFileCommand+6�   5^      5a      5b      