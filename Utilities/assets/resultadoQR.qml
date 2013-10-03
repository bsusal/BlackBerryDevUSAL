import bb.cascades 1.2
import bb.cascades.multimedia 1.0

Page {
    id: resultadoQR
    
    property string auxiliar
    
    titleBar: TitleBar {
        title: qsTr("Resultado para \"") + auxiliar + "\""
    }
    
    Container {
        layout: AbsoluteLayout {
            
        }
    	QrCodeView {
         id: resultado
         preferredHeight: 500
         preferredWidth: 500
         horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center

            data: auxiliar
            layoutProperties: AbsoluteLayoutProperties {
                positionX: 141.4
                positionY: 300.0

            }
        }
    }
}
