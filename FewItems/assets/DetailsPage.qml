import bb.cascades 1.2
import bb.cascades.multimedia 1.0
import bb.cascades.maps 1.0

Page {
    id: secondPageDefinition
    //Variable auxiliar
    property string aux;
    
    titleBar: TitleBar {
        // Localized text with the dynamic translation and locale updates support
        title: qsTr("Código") + Retranslate.onLocaleOrLanguageChanged
    }
    
    Container {
        Label {
            id: texto
            text: qsTr("Resultado para: ") + "\""+aux+"\""
            textStyle.fontSizeValue: 60
        }
        
        //Visor del QR generado
        QrCodeView {
            data: aux
            preferredHeight: 400
            preferredWidth: 400
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center
        }

    }
}
