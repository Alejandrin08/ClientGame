﻿#pragma checksum "..\..\..\View\FriendInvitation.xaml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "2C24175F64377182F8C3557708D7AF340F86E5E24C2DD64F06F872A190C7BA59"
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
    /// FriendInvitation
    /// </summary>
    public partial class FriendInvitation : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector {
        
        
        #line 19 "..\..\..\View\FriendInvitation.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock txtBMessage;
        
        #line default
        #line hidden
        
        
        #line 23 "..\..\..\View\FriendInvitation.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock txtBAdd;
        
        #line default
        #line hidden
        
        
        #line 24 "..\..\..\View\FriendInvitation.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock txtBReject;
        
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
            System.Uri resourceLocater = new System.Uri("/ChineseCheckersClient;component/view/friendinvitation.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\View\FriendInvitation.xaml"
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
            this.txtBMessage = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 2:
            this.txtBAdd = ((System.Windows.Controls.TextBlock)(target));
            
            #line 23 "..\..\..\View\FriendInvitation.xaml"
            this.txtBAdd.MouseDown += new System.Windows.Input.MouseButtonEventHandler(this.AceptRequest);
            
            #line default
            #line hidden
            return;
            case 3:
            this.txtBReject = ((System.Windows.Controls.TextBlock)(target));
            
            #line 24 "..\..\..\View\FriendInvitation.xaml"
            this.txtBReject.MouseDown += new System.Windows.Input.MouseButtonEventHandler(this.RejectRequest);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}
