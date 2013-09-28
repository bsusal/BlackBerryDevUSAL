import bb.cascades 1.0


//En vez de página, TabbedPane para operar con pestañas
TabbedPane {
    showTabsOnActionBar: true
    Tab { //First tab
        // Localized text with the dynamic translation and locale updates support
        title: qsTr("Tab 1") + Retranslate.onLocaleOrLanguageChanged
        
        //En vez de definir el contenido dentro del archivo QML, lo vinculamos al archivo donde está la información de la pestaña (ficheros más pequeños)
        content: ConversorTemp{
        }
            
    } //End of first tab
    Tab { //Second tab
        title: qsTr("Tab 2") + Retranslate.onLocaleOrLanguageChanged
        Page {
            Container {
                Label {
                    text: qsTr("Second tab") + Retranslate.onLocaleOrLanguageChanged
                }
            }
        }
    } //End of second tab
}
