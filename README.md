# **Script de Encriptación y Desencriptación de Directorios**

Este script en Shell permite encriptar y desencriptar directorios usando `tar` para empaquetar y `gpg` para encriptar. Es una herramienta útil para proteger datos sensibles almacenados en directorios.

## **Descripción**

El script realiza las siguientes operaciones:
- **Encriptación**: Empaqueta un directorio en un archivo tar comprimido y lo encripta utilizando `gpg` con un algoritmo de cifrado simétrico (AES256). Luego, elimina el directorio original para mantener la seguridad.
- **Desencriptación**: Desencripta un archivo encriptado y lo extrae en su formato original.

## **Requisitos**

- `bash` (Shell)
- `tar` (Utilidad de archivado)
- `gpg` (Herramienta de cifrado)

## **Uso**

El script acepta dos opciones: `-e` para encriptar y `-d` para desencriptar. A continuación se detallan los pasos para utilizar el script:

### **Encriptar un Directorio**

```bash
./script.sh -e
```

1. Se te pedirá que ingreses la ruta del directorio que deseas encriptar.
2. A continuación, se te pedirá que ingreses una clave para la encriptación.
3. El directorio será empaquetado, encriptado y luego eliminado.

### **Desencriptar un Archivo Encriptado**

```bash
./script.sh -d
```

1. Se te pedirá que ingreses la ruta del archivo encriptado que deseas desencriptar.
2. A continuación, se te pedirá que ingreses la clave utilizada para encriptar el archivo.
3. El archivo será desencriptado y extraído en su formato original.

## **Ejemplo**

### **Encriptar un Directorio**

```bash
./script.sh -e
Ingrese la ruta del directorio: /ruta/a/directorio
Ingrese la clave para encriptar: 
```

### **Desencriptar un Archivo**

```bash
./script.sh -d
Ingrese la ruta del directorio encriptado: /ruta/a/directorio.tar.gz.gpg
Ingrese la clave para desencriptar: 
```

## **Notas**
- Puedes usar rutas relativas con `./directorio`.
- Asegúrate de tener `gpg` instalado en tu sistema para encriptar y desencriptar archivos.
- El script elimina el directorio original después de encriptarlo. Asegúrate de que tienes una copia de seguridad si es necesario.
- La clave de encriptación debe ser guardada en un lugar seguro y no debe compartirse con personas no autorizadas.

## **Contribuciones**

Las contribuciones son bienvenidas. Si encuentras errores o tienes sugerencias para mejorar el script, por favor, abre un issue o envía un pull request.

## **Licencia**

Este proyecto está licenciado bajo la Licencia MIT. Consulta el archivo [LICENSE](/LICENCE) para más detalles.
