   M S B A M L   `   `   `  ����B  >SMS_UOR, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:SMS_UORSMS_UOR  5   	       SMS_UOR.DetailsWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:SMS_UOR     5   	     � Title$  Details��5   	   $	��450��6   $	��800��6&    � DataContext 5	         SMS_UOR.DetailsWindowVM  5
   
   .��5      � ��5   
   �� 5       �� Opacity$
 0.89Q�6    �� ImageSource$Q KC:/Users/acer/Documents/Semester 03/GUI/Project 2/UMS1/Images/bg_image1.jpg��6(    j� Stretch$ UniformToFill=�6�    � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   � $��1��6   $��10 55 10 30q�6    � RowDefinitions 5      �� 5      $��30 �6    �� 5      $��30 �6    �� 5      $��30 �6    �� 5      $��30 �6    �� 5      $��30 �6    �� 5      $��30 �6    �� 5      $	��110 �6    �� 5      $��30 �6    .+�5"      �� $��0��6    �� Orientation$ 
Horizontal=�6&   .+�5#      ��    Normal_text#��[  6   $��First Name :��6A   $��5q�6U   �� 5$      #��[  6   $��5q�6�   ��6A   �� *	Firstname+ �� UpdateSourceTrigger$ PropertyChanged=�6�   5%      �� 5&      $��1��6   $ 
Horizontal=�6&   .+�5'      �� #��[  6   $��Last Name :��6A   $��5q�6T   �� 5(      #��[  6   $��5q�6�   ��6A   �� *
Lastname+$ PropertyChanged=�6�   5)      �� 5*      $��2��6   $ 
Horizontal=�6&   .+�5+      �� #��[  6   $��GPA :��6A   $��5q�6N   �� 5,      #��[  6   $��5q�6|   ��6A   �� *Dob+$ PropertyChanged=�6|   5-      �� 5.      $��3��6   $ 
Horizontal=�6&   .+�5/      �� #��[  6   $��E-Mail :��6A   $��5q�6Q   �� 50      #��[  6   $��5q�6~   ��6A   �� *Email+$ PropertyChanged=�6~   51      �� 52      $��4��6   $ 
Horizontal=�6&   .+�53      �� #��[  6   $��DOB :��6A   $��5q�6N   �� 54      #��[  6   $��5q�6|   ��6A   �� *Gpa+$ PropertyChanged=�6|   55      �� 56      $��5��6   $ 
Horizontal=�6&   .+�57      �� #��[  6   $��More Info :��6A   $��5q�6T   58      � 59      $��6��6   
�������$��5q�67    5:      �� 5;      $	��63* �6'   �� 5<      $
��307* �6'   .+�5>      �� #��[  6   $
��Left=�5?      	 �� TextAlignment$
	 Left=�5@      $
��Wrap=�5A      
���   �$��5,5,0,5q�5C   /   $	��355��6@   $��2��6L   ��5B      �� *Other+$ PropertyChanged=�5C   L   5D      �� 5E      $��7��6   $��30��6"     RoundButtonTemplate#��[ 5F      $��OK��5G      $��140,29,140,-29q�5H   3   ��6   �� *	OKCommand+63   5I      �� 5K   
   $��0��6   $��
50 50 0 50q�6:   ��6    �� *ImgURL+6:   5N      5O      