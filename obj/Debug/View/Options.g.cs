﻿#pragma checksum "..\..\..\View\Options.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "2CDDB7A0862BDA8398CA3AD98D76F30DD1087CDABD114EE31881A2C144B90775"
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
    /// Options
    /// </summary>
    public partial class Options : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 31 "..\..\..\View\Options.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Image imageProfile;
        
        #line default
        #line hidden
        
        
        #line 32 "..\..\..\View\Options.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock textBlockGamertag;
        
        #line default
        #line hidden
        
        
        #line 36 "..\..\..\View\Options.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock textBlockOptions;
        
        #line default
        #line hidden
        
        
        #line 44 "..\..\..\View\Options.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock textBlockSound;
        
        #line default
        #line hidden
        
        
        #line 56 "..\..\..\View\Options.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock textBlockLanguaje;
        
        #line default
        #line hidden
        
        
        #line 57 "..\..\..\View\Options.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ComboBox comboBoxLanguaje;
        
        #line default
        #line hidden
        
        
        #line 71 "..\..\..\View\Options.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock textBlockVisual;
        
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
            System.Uri resourceLocater = new System.Uri("/ChineseCheckersClient;component/view/options.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\View\Options.xaml"
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
            this.imageProfile = ((System.Windows.Controls.Image)(target));
            return;
            case 2:
            this.textBlockGamertag = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 3:
            this.textBlockOptions = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 4:
            this.textBlockSound = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 5:
            this.textBlockLanguaje = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 6:
            this.comboBoxLanguaje = ((System.Windows.Controls.ComboBox)(target));
            
            #line 57 "..\..\..\View\Options.xaml"
            this.comboBoxLanguaje.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.LanguajeSelected);
            
            #line default
            #line hidden
            return;
            case 7:
            this.textBlockVisual = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 8:
            
            #line 78 "..\..\..\View\Options.xaml"
            ((System.Windows.Controls.Image)(target)).MouseDown += new System.Windows.Input.MouseButtonEventHandler(this.BackWindow);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}
