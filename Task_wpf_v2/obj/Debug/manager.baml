   M S B A M L   `   `   `  ����F  BTask_wpf_v2, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:Task_wpf_v2Task_wpf_v2  5   	       Task_wpf_v2.manager   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:Task_wpf_v2     5   	     � Title$  manager��5   	   $	��450��6   $	��800��6&   .��5	      � 
�������.+�5
   
   �� $��Task ID��6   $
��Left=�6"   $��	10,10,0,0q�6=   $	��Top=�6P   
�������$��Times New Roman)�6{   $��24(�6�   $
��Bold"�6�   �� 5   
   $��Title��6   $
��Left=�6    $��	10,84,0,0q�6;   $	��Top=�6N   
�������$��Times New Roman)�6y   $��24(�6�   $
��Bold"�6�   �� 5   
   $��Description��6   $
��Left=�6&   $��
10,149,0,0q�6A   $	��Top=�6U   
�������$��Times New Roman)�6�   $��24(�6�   $
��Bold"�6�   �� 5   
   -   5         ��Name$ task_id_txt��5      $
��Left=�6'   $��
106,10,0,0q�6B    �� TextWrapping$
 Wrap=�6V   $	��Top=�6j   $	��120��6�   $��Comic Sans MS)�6�   $��20(�6�   $
��Bold"�6�   �� 5   
   -   5        $ 
task_title��5      $
��Left=�6&   $��	74,92,0,0q�6A   $
 Wrap=�6T   $	��Top=�6h   $	��152��6�   $��Comic Sans MS)�6�   $��20(�6�   $
��Bold"�6�   �� 5   
   -   5        $ 	task_desc��5      $
��Left=�6%   $��150,153,0,0q�6@   $
 Wrap=�6U   $	��Top=�6i   $	��152��6�   $��Comic Sans MS)�6�   $��20(�6�   $
��Bold"�6�   �� 5   
   $��State��6   $��Center=�6    $��0,6,0,0q�6=   $	��Top=�6N   
�������$��Times New Roman)�6y   $��24(�6�   $
��Bold"�6�   �� 5   
   -   5         ��Name$ 
task_state��5      $
��Left=�6'   $��	462,6,0,0q�6B   $	��Top=�6U   $	��120��6m   $��Comic Sans MS)�6y   $��20(�6�   $
��Bold"�6�   .@�5      �� $��Pending��6   6/   �� 5      $��In Progress��6   63   �� 5      $��	Completed��6   61   5      �� 5    
   $��Employee Name��6   $
��Left=�6(   $��
254,84,0,0q�6C   $	��Top=�6W   
�������$��Times New Roman)�6�   $��24(�6�   $
��Bold"�6�   �� 5"   
   -   5        $ task_emp_name_txt��5"      $
��Left=�6-   $��
462,92,0,0q�6H   $
 Wrap=�6\   $	��Top=�6p   $	��152��6�   $��Comic Sans MS)�6�   $��20(�6�   $
��Bold"�6�   �� 5#   
   -   5         ��Name$ task_add��5#      $	��ADD��6#   $
��Left=�61   $��
39,217,0,0q�6L   $	��Top=�6`   $��Cascadia Code)�6x   $��24(�6�   $
��Bold"�6�   $	��100��6�   6�   �� 5$   
   -   5        $ task_update��5$      $��Update��6&   $
��Left=�67   $��331,217,0,0q�6R   $	��Top=�6g   $��Cascadia Code)�6   $��24(�6�   $
��Bold"�6�   $	��100��6�   6�   �� 5%   
   -   5        $ task_delete��5%      $��Delete��6&   $
��Left=�67   $��647,217,0,0q�6R   $	��Top=�6g   $��Cascadia Code)�6   $��24(�6�   $
��Bold"�6�   $	��100��6�   6�   &   System.Windows.Controls.DataGrid  5&   
   -	   5          Name$ display_task��5&      $��	0,262,0,0q�6)   6<   5+      5,      