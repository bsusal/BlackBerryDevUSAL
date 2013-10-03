import bb.cascades 1.2

NavigationPane {
    id: converQR

    Page {
        Container {
            ImageView {
                id: imagenCabecera
                preferredWidth: 360.0
                preferredHeight: 360.0
                
                imageSource: "file://assets//images//blackberry-logo.png"
                scalingMethod: ScalingMethod.AspectFill

            }
            
            TextField {
                id: recogerDatos
                horizontalAlignment: HorizontalAlignment.Center
                verticalAlignment: VerticalAlignment.Center
                hintText: "Introduce el texto a convertir"
                maximumLength: 30
                preferredWidth: 650.0

            }

            Button {
                id: botonConvertir
                text: "Convertir"
                verticalAlignment: VerticalAlignment.Center
                horizontalAlignment: HorizontalAlignment.Center
                
                onClicked: {
                    // A second Page is created and pushed when this action is triggered.
                    crearQR(recogerDatos.text) //Llamada a la función
                }

            }
        }
    }

    attachedObjects: [
        ComponentDefinition {
            id: resultado
            source: "resultadoQR.qml"
        }
    ]

    onPopTransitionEnded: {
        page.deleteLater();
    }
    
    
    function crearQR(text){
        //Variable auxiliar que llama a la definición de la página, y la crea
        var poppedPage = resultado.createObject();
        //Se carga el valor de una variable de la otra página con el valor deseado
        poppedPage.auxiliar = text;
        //Se carga la página nueva en la pila
        converQR.push(poppedPage);
    }
    
}
