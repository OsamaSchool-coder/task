   M S B A M L   `   `   `  ����F  BTask_wpf_v2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:Task_wpf_v2Task_wpf_v2  5   	       Task_wpf_v2.emp   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:Task_wpf_v2     5   	     � Title$	  emp��5   	   $	��450��6   $	��800��6"   .��5	      � 
�������.+�5
   
   �� $��In Peogress / Pending��6   $
��Left=�60   $��	10,10,0,0q�6K   $	��Top=�6^   $��Times New Roman)�6v   $��24(�6�   $
��Bold"�6�   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$  display_pending_inProgress��5      $��
0,48,0,266q�67   6K   �� 5   
   $��Task ID��6   $
��Left=�6"   $��10,0,0,0q�6=   $��Center=�6O   $��Times New Roman)�6j   $��24(�6�   $
��Bold"�6�   �� 5   
   $��State��6   $
��Left=�6    $��	259,0,0,0q�6;   $��Center=�6N   $��Times New Roman)�6i   $��24(�6�   $
��Bold"�6�   �� 5   
   -   5         ��Name$ task_id_txt��5      $
��Left=�6'   $��	106,0,0,0q�6B    �� TextWrapping$
 Wrap=�6U   $��Center=�6i   $	��120��6�   $��Comic Sans MS)�6�   $��20(�6�   $
��Bold"�6�   �� 5   
   -   5         ��Name$ 
task_state��5      $
��Left=�6'   $��326,209,0,0q�6B   $	��Top=�6W   $	��120��6o   .@�5      �� $��Pending��6   6/   �� 5      $��In Progress��6   63   �� 5      $��	Completed��6   61   5      �� 5   
   -   5         ��Name$ Save_btn��5      $
��Save��6#   $
��Left=�62   $��531,203,0,0q�6M   $	��Top=�6b   $��Calibri)�6z   $��24(�6�   $
��Bold"�6�   $	��122��6�   6�   �� 5   
   $��	Completed��6   $
��Left=�6$   $��	0,241,0,0q�6?   $	��Top=�6R   $��Times New Roman)�6j   $��24(�6�   $
��Bold"�6�     5   
   -   5        $ display_completed��5      $��	0,279,0,0q�6.   5      5      