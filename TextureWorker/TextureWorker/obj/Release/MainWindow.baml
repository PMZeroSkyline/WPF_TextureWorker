   M S B A M L   `   `   `  ���� H  DTextureWorker, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:TextureWorkerTextureWorker      TextureWorker.MainWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     -localclr-namespace:TextureWorker       � Title$  TextureWorker��$	��350��$	��255�����	#FF454545 � 
ResizeMode$ NoResize=� � Icon$ icon.png��.���� $
��Left=�$	��315��$	��Top=�$	��240��.��� -    �Name$ My_reTextrueGrid��$
��Left=�$	��850��$	��Top=�$	��220��$��0q�.+��� -    ��Name$ My_PsText_T��$
��Left=�$
��Wrap=�$��拖拽图片进入��$	��Top=�$��	50,95,0,0q�$	��120�����	#FFBFBFBF �� TextAlignment$ Center=��� -    ��Name$ My_ListBox_T��$
��Left=�$	��190��$	��Top=�$	��200��$��	10,10,0,0q����	#FFBFBFBF���	#7F1D1D1D J� 	AllowDrop . �� -    ��Name$ 	My_ComBox��$
��Left=�$	��Top=�$	��120��$��
80,225,0,0q�
���   ����	#FF2A2A2A���	#FF2A2A2A.@��� $
��.jpg���� $
��.png���� $��.tiff���� $
��.wmf���� $
��.emf���� $
��.bmp���� $
��.gif���� $
��.ico���� $
��Left=�$
��Wrap=�$��转换为：��$	��Top=�$��
20,230,0,0q�$��60�����	#FFBFBFBF$ Center=��� -   	 ��Name$	 My_B_ConverImage��$��批量转换格式��$
��Left=�$	��Top=�$	��200��$��25�����	#FF595959���	#FFBFBFBF$��
10,275,0,0q��� -   
 ��Name$
 My_T_ParseX��$
��Left=�$��25�� �� TextWrapping$
 Wrap=�$	��Top=�$��50��$��
80,375,0,0q����	#7F1D1D1D���	#FFBFBFBF�� -   $
 My_T_ParseY��$
��Left=�$��25��$
 Wrap=�$	��Top=�$��50��$��150,375,0,0q����	#7F1D1D1D���	#FFBFBFBF�� $
��Left=�$
��Wrap=�$��x��$	��Top=�$��132.5,380,0,0q�$��15�����	#FFBFBFBF$ Center=��� -   $	 My_B_ReReslutation��$��批量转换分辨率��$
��Left=�$	��Top=�$	��200��$��25�����	#FF595959���	#FFBFBFBF$��
10,425,0,0q��� -	   $	 	My_B_Gray��$��批量转换为灰度图��$
��Left=�$	��Top=�$	��200��$��25�����	#FF595959���	#FFBFBFBF$��
10,500,0,0q��� $
��Left=�$
��Wrap=�$	��Top=�$��
20,380,0,0q�$��60�����	#FFBFBFBF$ Center=��� $�	分辨率���� $	�：���� -
   $	 	My_B_Blur��$'��!批量模糊（慢，不建议）��$
��Left=�$	��Top=�$	��200��$��25�����	#FF595959���	#FFBFBFBF$��10,625,10,70.5q� � Cursor$  ���� $
��Left=�$
��Wrap=�$	��Top=�$��
20,575,0,0q�$��60�����	#FFBFBFBF$ Center=�$��模糊强度：���� -    ��Name$ My_T_BlurSlider��$	��Top=�$
��Left=�$	��100��$��100,575,20,104q� � Minimum$ 1Q� � Value$ 1Q�
������� � Maximum$ 4Q��� -   $	 My_B_Invert��$��批量反色��$
��Left=�$	��Top=�$	��200��$��25�����	#FF595959���	#FFBFBFBF$��
10,750,0,0q�$  ���� -    ��Name$ 	My_T_CB_R��$��R��$��Center=�$	��Top=�$��-150,700,0,0q����	#FFBFBFBF d� 	IsChecked$
 TrueY��� -   $ 	My_T_CB_G��$��G��$��Center=�$	��Top=�$��-50,700,0,0q����	#FFBFBFBF$
 TrueY��� -   $ 	My_T_CB_B��$��B��$��Center=�$	��Top=�$��
50,700,0,0q����	#FFBFBFBF$
 TrueY��� -   $ 	My_T_CB_A��$��A��$��Center=�$	��Top=�$��150,700,0,0q����	#FFBFBFBF$
 TrueY��� $
��Left=�$
��Wrap=�$	��Top=�$��
70,800,0,0q�$��80�����	#FFBFBFBF$ Center=�$�� -ZeroSkyline-��$��10(�