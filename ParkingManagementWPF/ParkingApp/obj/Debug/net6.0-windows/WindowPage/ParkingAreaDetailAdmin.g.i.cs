﻿#pragma checksum "..\..\..\..\WindowPage\ParkingAreaDetailAdmin.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "EF8E8FCE7DC80862BEE3705B8C004EBAE4A6FE1B"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using ParkingApp.WindowPage;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Controls.Ribbon;
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


namespace ParkingApp.WindowPage {
    
    
    /// <summary>
    /// ParkingAreaDetailAdmin
    /// </summary>
    public partial class ParkingAreaDetailAdmin : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 47 "..\..\..\..\WindowPage\ParkingAreaDetailAdmin.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.StackPanel tblArea;
        
        #line default
        #line hidden
        
        
        #line 49 "..\..\..\..\WindowPage\ParkingAreaDetailAdmin.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock txtArea;
        
        #line default
        #line hidden
        
        
        #line 52 "..\..\..\..\WindowPage\ParkingAreaDetailAdmin.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListView lvAreaLots;
        
        #line default
        #line hidden
        
        
        #line 71 "..\..\..\..\WindowPage\ParkingAreaDetailAdmin.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListView lvInvoice;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "6.0.4.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/ParkingApp;component/windowpage/parkingareadetailadmin.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\WindowPage\ParkingAreaDetailAdmin.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "6.0.4.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 10 "..\..\..\..\WindowPage\ParkingAreaDetailAdmin.xaml"
            ((ParkingApp.WindowPage.ParkingAreaDetailAdmin)(target)).Closed += new System.EventHandler(this.Window_Closed);
            
            #line default
            #line hidden
            return;
            case 2:
            
            #line 31 "..\..\..\..\WindowPage\ParkingAreaDetailAdmin.xaml"
            ((System.Windows.Controls.Grid)(target)).Loaded += new System.Windows.RoutedEventHandler(this.Grid_Loaded);
            
            #line default
            #line hidden
            return;
            case 3:
            
            #line 37 "..\..\..\..\WindowPage\ParkingAreaDetailAdmin.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Button_Click);
            
            #line default
            #line hidden
            return;
            case 4:
            this.tblArea = ((System.Windows.Controls.StackPanel)(target));
            return;
            case 5:
            this.txtArea = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 6:
            this.lvAreaLots = ((System.Windows.Controls.ListView)(target));
            
            #line 52 "..\..\..\..\WindowPage\ParkingAreaDetailAdmin.xaml"
            this.lvAreaLots.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.lvAreaLots_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 7:
            this.lvInvoice = ((System.Windows.Controls.ListView)(target));
            
            #line 71 "..\..\..\..\WindowPage\ParkingAreaDetailAdmin.xaml"
            this.lvInvoice.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.lvAreaLots_SelectionChanged);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

