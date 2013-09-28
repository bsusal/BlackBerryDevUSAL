import bb.cascades 1.2


NavigationPane {
    //En vez de Page usamos NavigationPane dado que esta aplicación usa pestañas
    id: navigationPane
    
    /*Esta función de JavaScript nos permite enviar argumentos a la siguiente página, y crearla,
     * dado que en QML no tenemos variables globales
     */
    
    function crearQR(text){
        //Variable auxiliar que llama a la definición de la página, y la crea
        var poppedPage = secondPageDefinition.createObject();
        //Se carga el valor de una variable de la otra página con el valor deseado
        poppedPage.aux = text;
        //Se carga la página nueva en la pila
        navigationPane.push(poppedPage);
    }
    
    Page {
        //Barra de título
        titleBar: TitleBar {
            /* Podría haber funcionado igual escribiendo "Generador QR", 
            pero de esta forma podemos traducir el texto si es necesario*/
            title: qsTr("Generador QR") + Retranslate.onLocaleOrLanguageChanged
        }

        Container {
            TextField {
                id: recogerDatos
                horizontalAlignment: HorizontalAlignment.Center
                hintText: "Introduce el texto a convertir" //Texto de sugerencia
            }

            Button {
                text: "Convertir"
                //Opciones de alineamiento
                verticalAlignment: VerticalAlignment.Center
                horizontalAlignment: HorizontalAlignment.Center
                
                //Disparador que actúa cuando se pulsa el botón
                onClicked: {       
                    // A second Page is created and pushed when this action is triggered.
                    crearQR(recogerDatos.text) //Llamada a la función
                }

            }

        }

		//Array de objetos que van adjuntos al QML, y que son accesibles desde este
        attachedObjects: [
            // Aquí definimos la página a cargar
            ComponentDefinition {
                id: secondPageDefinition
                source: "DetailsPage.qml"
            }
        ]

    }
}