﻿using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Windows;
using System.Windows.Media.Imaging;
using System.Drawing.Imaging;
using System.Drawing;
using System.Text.RegularExpressions;

namespace TextureWorker
{
    /// <summary>
    /// MainWindow.xaml 的交互逻辑
    /// </summary>
    public partial class MainWindow : Window
    {
        #region 变量
        string[] filesPath = new string[] { };
        string[] filesPath_T = new string[] { };
        string[] newFilesPath = new string[] { };
        int starRenameIndex = 0;
        #endregion
        #region 初始化
        public MainWindow()
        {
            InitializeComponent();
        }
        #endregion
        #region 实用方法
        private string[] AddToArray(string newFile, string[] filesPath)
        {
            List<String> list = new List<String>(filesPath);
            list.Add(newFile);
            filesPath = list.ToArray();
            return filesPath;
        }
        private void UpdateListBox_T()
        {
            My_ListBox_T.Items.Clear();
            foreach (var flie in filesPath_T)
            {
                System.Windows.Controls.Image img = new System.Windows.Controls.Image();
                BitmapImage bi3 = new BitmapImage();
                bi3.BeginInit();
                bi3.UriSource = new Uri(flie, UriKind.Absolute);
                bi3.EndInit();
                img.Source = bi3;
                img.Width = 50;
                img.Height = 50;
                My_ListBox_T.Items.Add(img);

            }
        }
        private void IniMyData_T()
        {
            filesPath_T = new string[] { };
            UpdateListBox_T();
            MessageBox.Show("好啦");
            My_T_ParseX.Text = "";
            My_T_ParseY.Text = "";
            My_PsText_T.Text = "拖拽图片进入";
        }
        #endregion
        #region 图片拖拽

        private void My_ListBox_T_DragEnter(object sender, DragEventArgs e)
        {
            if (e.Data.GetDataPresent(DataFormats.FileDrop, false))
            {
                e.Effects = DragDropEffects.All;
            }
        }

        private void My_ListBox_T_Drop(object sender, DragEventArgs e)
        {
            newFilesPath = (string[])e.Data.GetData(DataFormats.FileDrop);
            foreach (var newFile in newFilesPath)
            {
                
                if (filesPath_T.Contains(newFile))
                {
                }
                else
                {
                    string ext = System.IO.Path.GetExtension(newFile);
                    if (ext==".jpg"||ext == ".png"|| ext == ".tiff" || ext == ".wmf"|| ext == ".emf" || ext == ".bmp" || ext == ".gif" || ext == ".ico")
                    {
                        filesPath_T=AddToArray(newFile,filesPath_T);
                        UpdateListBox_T();
                        My_PsText_T.Text = "";
                        
                    }
                    else
                    {
                    }
                }
            }
        }


        #endregion
        #region 图片命名面板功能


        private void My_B_ConverImage_Click(object sender, RoutedEventArgs e)
        {
            if (My_ComBox.Text == "")
            {
                MessageBox.Show("先选择转换格式");
            }
            else
            {
                ConvertImage(My_ComBox.Text);
            }
        }

        private void ConvertImage(string ext)
        {
            if (filesPath_T.Length > 0)
            {
                foreach (var file in filesPath_T)
                {
                    System.Drawing.Image newImage = System.Drawing.Image.FromFile(file);
                    string newImageFolder = System.IO.Path.GetDirectoryName(file);
                    string newImageName = System.IO.Path.GetFileNameWithoutExtension(file);
                    DirectoryInfo di = Directory.CreateDirectory(newImageFolder + @"/" + "格式转换");
                    string saveImagePath = newImageFolder + @"/" + "格式转换" + @"/" + newImageName + ext;
                    try
                    {
                        if (ext == ".jpg")
                        {
                            newImage.Save(saveImagePath, ImageFormat.Jpeg);
                        }
                        else if (ext == ".png")
                        {
                            newImage.Save(saveImagePath, ImageFormat.Png);
                        }
                        else if (ext == ".tiff")
                        {
                            newImage.Save(saveImagePath, ImageFormat.Tiff);
                        }
                        else if (ext == ".wmf")
                        {
                            newImage.Save(saveImagePath, ImageFormat.Wmf);
                        }
                        else if (ext == ".emf")
                        {
                            newImage.Save(saveImagePath, ImageFormat.Emf);
                        }
                        else if (ext == ".bmp")
                        {
                            newImage.Save(saveImagePath, ImageFormat.Bmp);
                        }
                        else if (ext == ".gif")
                        {
                            newImage.Save(saveImagePath, ImageFormat.Gif);
                        }
                        else if (ext == ".ico")
                        {
                            /*newImage.Save(saveImagePath, ImageFormat.Icon);*/
                            using (FileStream FS = File.OpenWrite(saveImagePath))
                            {
                                System.Drawing.Bitmap bitmap = (Bitmap)Image.FromFile(file);
                                System.Drawing.Bitmap bmp = new System.Drawing.Bitmap(bitmap, Int16.Parse("256"), Int16.Parse("256"));
                                System.Drawing.Icon.FromHandle(bmp.GetHicon()).Save(FS);
                            }
                        }
                    }
                    catch (Exception)
                    {
                    }
                }
                IniMyData_T();
            }
            else
            {
                MessageBox.Show("先拖入文件");
            }
        }



        private void My_B_ReReslutation_Click(object sender, RoutedEventArgs e)
        {
            if (filesPath_T.Length>0)
            {
                if (My_T_ParseX.Text != "" && My_T_ParseY.Text != "")
                {
                    foreach (var file in filesPath_T)
                    {
                        System.Drawing.Bitmap bitmap = new System.Drawing.Bitmap(file);
                        System.Drawing.Bitmap bmp = new System.Drawing.Bitmap(bitmap, Int16.Parse(My_T_ParseX.Text), Int16.Parse(My_T_ParseY.Text));
                        SaveImage("分辨率转换",file,bmp);
                    }
                    IniMyData_T();
                }
                else
                {
                    MessageBox.Show("先输入分辨率");
                }
            }
            else
            {
                MessageBox.Show("先拖入文件");
            }

        }

        private void SaveImage(string createFolder,string file,System.Drawing.Bitmap bitMap)
        {
            string ext = System.IO.Path.GetExtension(file);
            string newImageFolder = System.IO.Path.GetDirectoryName(file);
            string newImageName = System.IO.Path.GetFileNameWithoutExtension(file);
            DirectoryInfo di = Directory.CreateDirectory(newImageFolder + @"/" + createFolder);
            string saveImagePath = newImageFolder + @"/" + createFolder + @"/" + newImageName + ext;
            if (ext == ".jpg")
            {
                bitMap.Save(saveImagePath, ImageFormat.Jpeg);
            }
            else if (ext == ".png")
            {
                bitMap.Save(saveImagePath, ImageFormat.Png);
            }
            else if (ext == ".tiff")
            {
                bitMap.Save(saveImagePath, ImageFormat.Tiff);
            }
            else if (ext == ".wmf")
            {
                bitMap.Save(saveImagePath, ImageFormat.Wmf);
            }
            else if (ext == ".emf")
            {
                bitMap.Save(saveImagePath, ImageFormat.Emf);
            }
            else if (ext == ".bmp")
            {
                bitMap.Save(saveImagePath, ImageFormat.Bmp);
            }
            else if (ext == ".gif")
            {
                bitMap.Save(saveImagePath, ImageFormat.Gif);
            }
            else if (ext == ".ico")
            {
                bitMap.Save(saveImagePath, ImageFormat.Icon);
            }
        }

        private void My_B_Gray_Click(object sender, RoutedEventArgs e)
        {
            if (filesPath_T.Length>0)
            {
                foreach (var file in filesPath_T)
                {
                    System.Drawing.Bitmap bitmap = new System.Drawing.Bitmap(file);
                    for (int x = 0; x < bitmap.Width; x++)
                    {
                        for (int y = 0; y < bitmap.Height; y++)
                        {
                            Color orginalColor = bitmap.GetPixel(x,y);
                            //浮点数运算
                            //int grayScale = (int)((orginalColor.R * .3) + (orginalColor.G * .59) + (orginalColor.B * .11));
                            //避免低速的浮点运算，所以需要整数算法。
                            int grayScale = ((int)orginalColor.R * 299 + (int)orginalColor.G * 587 + (int)orginalColor.B * 115 + 500) / 1000;
                            //RGB一般是8位精度，现在缩放1000倍，所以上面的运算是32位整型的运算。注意后面那个除法是整数除法，所以需要加上500来实现四舍五入。
                            Color newColor = Color.FromArgb(bitmap.GetPixel(x,y).A, grayScale, grayScale, grayScale);
                            bitmap.SetPixel(x, y, newColor);
                        }
                    }
                    SaveImage("灰度转换",file,bitmap);
                }
                IniMyData_T();
            }
            else
            {
                MessageBox.Show("先拖入文件");
            }
        }


        private void My_B_Blur_Click(object sender, RoutedEventArgs e)
        {
            
            if (filesPath_T.Length > 0)
            {
                
                int blurIntensity = (int)My_T_BlurSlider.Value;
                foreach (var file in filesPath_T)
                {
                    System.Drawing.Bitmap bitmap = new System.Drawing.Bitmap(file);
                    for (int x = 0; x < bitmap.Width; x++)
                    {
                        for (int y = 0; y < bitmap.Height; y++)
                        {
                            for (int i = 0; i != blurIntensity; i++)
                            {
                                try
                                {
                                    Color prevX = bitmap.GetPixel(x - blurIntensity, y);
                                    Color nextX = bitmap.GetPixel(x + blurIntensity, y);
                                    Color prevY = bitmap.GetPixel(x, y - blurIntensity);
                                    Color nextY = bitmap.GetPixel(x, y + blurIntensity);


                                    int avgR = (int)((prevX.R + nextX.R + prevY.R + nextY.R) / 4);
                                    int avgG = (int)((prevX.G + nextX.G + prevY.G + nextY.G) / 4);
                                    int avgB = (int)((prevX.B + nextX.B + prevY.B + nextY.B) / 4);
                                    int avgA = (int)((prevX.A + nextX.A + prevY.A + nextY.A) / 4);

                                    bitmap.SetPixel(x, y, Color.FromArgb(avgA, avgR, avgG, avgB));
                                }
                                catch (Exception)
                                {
                                    ;
                                }
                            }
                        }
                    }
                    SaveImage("批量模糊", file, bitmap);
                }
                IniMyData_T();
            }
            else
            {
                MessageBox.Show("先拖入文件");
            }
        }

        private void My_B_Invert_Click(object sender, RoutedEventArgs e)
        {
            if (filesPath_T.Length > 0)
            {

                foreach (var file in filesPath_T)
                {
                    System.Drawing.Bitmap bitmap = new System.Drawing.Bitmap(file);
                    for (int x = 0; x < bitmap.Width; x++)
                    {
                        for (int y = 0; y < bitmap.Height; y++)
                        {
                            Color pixel = bitmap.GetPixel(x,y);
                            int red = pixel.R;
                            int green = pixel.G;
                            int blue = pixel.B;
                            int alpha = pixel.A;
                            if (My_T_CB_R.IsChecked == true)
                            {
                                red = 255 - red;
                            }
                            if (My_T_CB_G.IsChecked == true)
                            {
                                green = 255 - green;
                            }
                            if (My_T_CB_B.IsChecked == true)
                            {
                                blue = 255 - blue;
                            }
                            if (My_T_CB_A.IsChecked == true)
                            {
                                blue = 255 - blue;
                            }
                            bitmap.SetPixel(x, y, Color.FromArgb(alpha, red,green,blue)) ;
                        }
                    }
                    SaveImage("批量反色", file, bitmap);
                }
                IniMyData_T();
            }
            else
            {
                MessageBox.Show("先拖入文件");
            }
        }
        #endregion
    }
}
