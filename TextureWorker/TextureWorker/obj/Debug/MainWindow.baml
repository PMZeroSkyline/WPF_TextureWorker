   M S B A M L   `   `   `  ����H  DTextureWorker, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:TextureWorkerTextureWorker  5   	       TextureWorker.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:TextureWorker     5   	     � Title$  TextureWorker��5   	   $	��350��6   $	��255��6,   ���	#FF454545 � WindowStyle$ 
ToolWindow=�6O    � 
ResizeMode$ NoResize=�6h    � Icon$ icon.png��6~   .��5	      �� $
��Left=�6   $	��315��6.   $	��Top=�6;   $	��240��6S   .��5
   
   � -   5         �Name$ My_reTextrueGrid��5
      $
��Left=�6)   $	��850��6D   $	��Top=�6Q   $	��220��6i   $��0q�6u   .+�5      �� -   5         ��Name$ My_PsText_T��5      $
��Left=�6-   $
��Wrap=�6H   $��拖拽图片进入��6\   $	��Top=�6j   $��	50,95,0,0q�6�   $	��120��6�   ���	#FFBFBFBF �� TextAlignment$ Center=�6�   �� 5      -   5         ��Name$ My_ListBox_T��5      $
��Left=�6,   $	��190��6G   $	��Top=�6T   $	��200��6l   $��	10,10,0,0q�6x   ���	#FFBFBFBF���	#7F1D1D1D J� 	AllowDrop . 6�   �� 5      -   5        	 ��Name$	 	My_ComBox��5      $
��Left=�6*   $	��Top=�6E   $	��120��6]   $��
80,225,0,0q�6i   
���   ����	#FF2A2A2A���	#FF2A2A2A.@�5      �� $
��.jpg��6   �� 5      $
��.png��6   �� 5      $��.tiff��6   �� 5      $
��.wmf��6   �� 5      $
��.emf��6   �� 5      $
��.bmp��6   �� 5      $
��.gif��6   �� 5      $
��.ico��6   5      �� 5      $
��Left=�6   $
��Wrap=�63   $��转换为：��6G   $	��Top=�6S   $��
20,230,0,0q�6k   $��60��6   ���	#FFBFBFBF$ Center=�6�   �� 5      -   5        
 ��Name$
 My_B_ConverImage��5      $��批量转换格式��6/   $
��Left=�6@   $	��Top=�6[   $	��200��6s   $��25��6   ���	#FF595959���	#FFBFBFBF$��
10,275,0,0q�6�   6�   �� 5      -   5         ��Name$ My_T_ParseX��5      $
��Left=�6+   $��25��6F    �� TextWrapping$
 Wrap=�6R   $	��Top=�6f   $��50��6~   $��
80,375,0,0q�6�   ���	#7F1D1D1D���	#FFBFBFBF6�   �� 5      -   5        $ My_T_ParseY��5      $
��Left=�6+   $��25��6F   $
 Wrap=�6R   $	��Top=�6f   $��50��6~   $��150,375,0,0q�6�   ���	#7F1D1D1D���	#FFBFBFBF6�   �� 5      $
��Left=�6   $
��Wrap=�63   $��x��6G   $	��Top=�6P   $��132.5,380,0,0q�6h   $��15��6   ���	#FFBFBFBF$ Center=�6�   �� 5      -   5        $
 My_B_ReReslutation��5      $��批量转换分辨率��61   $
��Left=�6C   $	��Top=�6^   $	��200��6v   $��25��6�   ���	#FF595959���	#FFBFBFBF$��
10,425,0,0q�6�   6�   �� 5      -	   5        $
 	My_B_Gray��5      $��批量转换为灰度图��6(   $
��Left=�6;   $	��Top=�6V   $	��200��6n   $��25��6z   ���	#FF595959���	#FFBFBFBF$��
10,500,0,0q�6�   6�   �� 5      $
��Left=�6   $
��Wrap=�63   $	��Top=�6G   $��
20,380,0,0q�6_   $��60��6s   ���	#FFBFBFBF$ Center=�6�   �� 6�   $�	分辨率��6�   �� 6�   $	�：��6�   6�   �� 5      -
   5        $
 	My_B_Blur��5      $��批量模糊��6(   $
��Left=�67   $	��Top=�6R   $	��200��6j   $��25��6v   ���	#FF595959���	#FFBFBFBF$��10,625,10,70.5q�6�    � Cursor$  ��6�   �� 5       $
��Left=�6   $
��Wrap=�63   $	��Top=�6G   $��
20,575,0,0q�6_   $��60��6s   ���	#FFBFBFBF$ Center=�6�   $��模糊强度：��6�   �� 5!      -   5         ��Name$ My_T_BlurSlider��5!      $	��Top=�6.   $
��Left=�6F   $	��100��6a   $��100,575,20,104q�6m    � Minimum$ 1Q�6�    � Value$ 1Q�6�   
�������6�   �� 5"      -   5        $
 My_B_Invert��5"      $��批量反色��6*   $
��Left=�69   $	��Top=�6T   $	��200��6l   $��25��6x   ���	#FF595959���	#FFBFBFBF$��
10,750,0,0q�6�   $  ��6�   6�   �� 5#      -   5         ��Name$ 	My_T_CB_R��5#      $��R��6*   $
��Left=�66   $	��Top=�6Q   $��
60,700,0,0q�6i   ���	#FFBFBFBF d� 	IsChecked$
 TrueY�6�   �� 5$      -   5        $ 	My_T_CB_G��5$      $��G��6*   $
��Left=�66   $	��Top=�6Q   $��100,700,0,0q�6i   ���	#FFBFBFBF$
 TrueY�6�   �� 5%      -   5        $ 	My_T_CB_B��5%      $��B��6*   $
��Left=�66   $	��Top=�6Q   $��140,700,0,0q�6i   ���	#FFBFBFBF$
 TrueY�6�   �� 5&      $
��Left=�6   $
��Wrap=�63   $	��Top=�6G   $��
70,800,0,0q�6_   $��80��6s   ���	#FFBFBFBF$ Center=�6�   $�� -ZeroSkyline-��6�   $��10(�6�   5'      5(      5)      