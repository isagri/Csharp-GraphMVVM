   M S B A M L   `   `   `  ����G  CWpfApp2_MVVM, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:WpfApp2_MVVMWpfApp2_MVVM  5   	       WpfApp2_MVVM.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:WpfApp2_MVVM     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      � $��0,0,0,-3q�6    � ColumnDefinitions 5
   
   �� 5      �� 5      $��0* �6   .+�5   
   �� $
��Left=�6   $��30��6-   $��	80,81,0,0q�69    �� TextWrapping$
 Wrap=�6L   $	��Top=�6`   $	��149��6x   ��5      �� *Lat+�� 5   
   $
��Left=�6   $��30��6-   $��
80,128,0,0q�69   $
 Wrap=�6M   $	��Top=�6a   $	��149��6y   ��5      �� *Lon+�� 5   
   -   5        $
��dist��5      $
��Left=�5      $��30��6-   $��
80,184,0,0q�69   $
 Wrap=�6M   $	��Top=�6a   $	��149��6y   ��5      �� *Dist+�� 5   
   -   5        $'��!Afficher les lignes de transports��5      $
��Left=�6T   $��31��6o   $��
10,275,0,0q�6{   $	��Top=�6�   $	��220��6�   �� 5   
   $��	Lattitude��6   $
��Left=�6$   $��29��6?   $��0,77,0,0q�6K   $	��Top=�6]   $��67��6u   �� 5   
   $��	Longitude��6   $
��Left=�6$   $��30��6?   $��	0,124,0,0q�6K   $	��Top=�6^   $��67��6v   �� 5   
   $��Distance��6   $
��Left=�6#   $��33��6>   $��	0,180,0,0q�6J   $	��Top=�6]   $��67��6u   �� 5   
   $����Pour rechercher les lignes de transports autour de votre position, veuillez indiquer votre position (lattitude et longitude) et la distance maximale des arrêts de bus 
��6   $
��Left=�6�   $��	10,10,0,0q�6�   $	��Top=�6�   $	��772��6  $��33��6  �� 5   
   $��	Arrêts :��6   $
��Left=�6#   $��27��6>   $��
253,49,0,0q�6J   $	��Top=�6^   $	��173��6v   &   System.Windows.Controls.DataGrid  5   
   -   5        $��gridtls��5      $
��Left=�6"   $	��138��6=   $��
251,79,0,0q�6J   $	��Top=�6^   $	��505��6v      
IsReadOnly .    AutoGenerateColumns .  ��5      �� *LineStopsVM+   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$
 Code��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 63   �� *id+6M     5      $	 Nom��6%    62   �� *name+6N     5      $ 	longitude��6%    68   �� *lon+6S     5       $ latitude��6%    67   �� *lat+6R   5"      �� 5$   
   $%��Lignes passant par l'arrêt :
��6   $
��Left=�6A   $��27��6\   $��253,249,0,0q�6h   $	��Top=�6}   $	��149��6�   �� 5%   
   -   5        $��tlsName��5%      $
��Left=�6!   $��23��6<   $��407,252,0,0q�6H   $
 Wrap=�6]   $	��Top=�6q   $	��347��6�     5&   
   -   5        $��gridtl��5&      $
��Left=�6!   $	��121��6<   $��251,276,0,0q�6I   $	��Top=�6^   $	��503��6v   5(      5)      