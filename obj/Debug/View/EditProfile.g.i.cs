﻿#pragma checksum "..\..\..\View\EditProfile.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "99433623734D001816916925A9B4E914873DC7ECFF4CDFB75D1F7E1AE64222A5"
//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

using ChineseCheckersClient.Properties;
using ChineseCheckersClient.ServiceReference;
using ChineseCheckersClient.Validations;
using ChineseCheckersClient.View;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace ChineseCheckersClient.View {
    
    
    /// <summary>
    /// EditProfile
    /// </summary>
    public partial class EditProfile : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 29 "..\..\..\View\EditProfile.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock textBlockRegisterUser;
        
        #line default
        #line hidden
        
        
        #line 36 "..\..\..\View\EditProfile.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock textBlockName;
        
        #line default
        #line hidden
        
        
        #line 37 "..\..\..\View\EditProfile.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox textBoxGamertag;
        
        #line default
        #line hidden
        
        
        #line 61 "..\..\..\View\EditProfile.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock textBlockEmail;
        
        #line default
        #line hidden
        
        
        #line 62 "..\..\..\View\EditProfile.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox textBoxEmail;
        
        #line default
        #line hidden
        
        
        #line 89 "..\..\..\View\EditProfile.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock textBlockImageProfile;
        
        #line default
        #line hidden
        
        
        #line 90 "..\..\..\View\EditProfile.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Image imageDisplay;
        
        #line default
        #line hidden
        
        
        #line 91 "..\..\..\View\EditProfile.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Slider sliderImage;
        
        #line default
        #line hidden
        
        
        #line 94 "..\..\..\View\EditProfile.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button buttonSaveChanges;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/ChineseCheckersClient;component/view/editprofile.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\View\EditProfile.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 26 "..\..\..\View\EditProfile.xaml"
            ((System.Windows.Controls.Image)(target)).MouseDown += new System.Windows.Input.MouseButtonEventHandler(this.BackWindow);
            
            #line default
            #line hidden
            return;
            case 2:
            this.textBlockRegisterUser = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 3:
            this.textBlockName = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 4:
            this.textBoxGamertag = ((System.Windows.Controls.TextBox)(target));
            
            #line 37 "..\..\..\View\EditProfile.xaml"
            this.textBoxGamertag.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.ValidateTextBox);
            
            #line default
            #line hidden
            return;
            case 5:
            this.textBlockEmail = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 6:
            this.textBoxEmail = ((System.Windows.Controls.TextBox)(target));
            
            #line 62 "..\..\..\View\EditProfile.xaml"
            this.textBoxEmail.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.ValidateTextBox);
            
            #line default
            #line hidden
            return;
            case 7:
            
            #line 85 "..\..\..\View\EditProfile.xaml"
            ((System.Windows.Controls.TextBlock)(target)).MouseDown += new System.Windows.Input.MouseButtonEventHandler(this.ChangePassword);
            
            #line default
            #line hidden
            return;
            case 8:
            this.textBlockImageProfile = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 9:
            this.imageDisplay = ((System.Windows.Controls.Image)(target));
            return;
            case 10:
            this.sliderImage = ((System.Windows.Controls.Slider)(target));
            
            #line 91 "..\..\..\View\EditProfile.xaml"
            this.sliderImage.ValueChanged += new System.Windows.RoutedPropertyChangedEventHandler<double>(this.ImageSliderValueChanged);
            
            #line default
            #line hidden
            return;
            case 11:
            this.buttonSaveChanges = ((System.Windows.Controls.Button)(target));
            
            #line 94 "..\..\..\View\EditProfile.xaml"
            this.buttonSaveChanges.Click += new System.Windows.RoutedEventHandler(this.SaveChanges);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

