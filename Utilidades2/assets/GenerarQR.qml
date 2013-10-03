import bb.cascades 1.2

NavigationPane {
    function crearQR(texto) {
        var paginaPop = resultadoQR.createObject();
        paginaPop.auxiliar = texto
        converQR.push(paginaPop);
    }

    id: converQR

    Page {
        Container {
            ImageView {
                id: imagenCabecera
                imageSource: "blackberry-logo.png"
                scalingMethod: ScalingMethod.AspectFill
                loadEffect: ImageViewLoadEffect.FadeZoom
                preferredWidth: 360.0
                preferredHeight: 360.0
                verticalAlignment: VerticalAlignment.Top
                horizontalAlignment: HorizontalAlignment.Center
                //imageSource: "./blackberry-logo.png"
                //imageSource: "asset:///blackberry-logo.png"
            }
            TextField {
                id: recogerDatos
                hintText: "Introduce el texto a convertir"
                inputMode: TextFieldInputMode.EmailAddress
                input.submitKey: SubmitKey.Default
                textStyle.color: Color.create("#ae2131")
                preferredHeight: 0.0
                preferredWidth: 650.0
                maximumLength: 30
                horizontalAlignment: HorizontalAlignment.Center

            }
            
            Button {
                id: botonConvertir
                text: "Convertir"
                horizontalAlignment: HorizontalAlignment.Center
                onClicked: {
                    crearQR(recogerDatos.text)
                }

            }

        }

    }

    attachedObjects: [
        ComponentDefinition {
            id: resultadoQR
            source: "resultadoQR.qml"
        }
    ]

}
