import bb.cascades 1.2

Page {
    Container {
        layout: StackLayout {
            
        }
        
        Label {
            text: "Máquina del tiempo"
            textStyle.textAlign: TextAlign.Center
            textStyle.fontSize: FontSize.PointValue
            textStyle.fontSizeValue: 15
            /*layoutProperties: StackLayoutProperties {
                spaceQuota: 1
            }*/
        }
        DateTimePicker {
            id: selectorTiempo
            mode: DateTimePickerMode.Date
            expanded: true
            title: "Elige fecha"
            visible: true
            /*layoutProperties: StackLayoutProperties {
                spaceQuota: 7
            }*/
        }
        
        Button {
            id: botonViajar
            text: qsTr("Viajar")
            horizontalAlignment: HorizontalAlignment.Center
            visible: true
            /*layoutProperties: StackLayoutProperties {
                spaceQuota: 10
            }*/
            property string url;
            onClicked: {
                //url = "http://web.archive.org/web" + selectorTiempo.
            }
        }
        WebView {
            id: visorWeb
        	visible: false
        	
        	preferredHeight: 760
        	preferredWidth: 760
        	
        	//url: selectorTiempo.
        }

    }
}
