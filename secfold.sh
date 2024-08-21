#!/bin/bash

# Función para mostrar ayuda
function show_help {
    echo "Uso: $0 [-e] [-d]"
    echo "-e Encriptar la carpeta"
    echo "-d Desencriptar la carpeta"
    exit 1
}

# Verificar si no se pasó ningún parámetro
if [ $# -eq 0 ]; then
    show_help
fi

# Procesar las opciones
while getopts "ed" opt; do
    case "$opt" in
        e)
            echo "Ingrese la ruta del directorio: "
            read folder_path
            echo "Ingrese la clave para encriptar: "
            read -s password

            # Encriptar la carpeta
            tar -czf - "$folder_path" | gpg --symmetric --cipher-algo AES256 --passphrase "$password" -o "${folder_path}.tar.gz.gpg"
            rm -rf "$folder_path"

            echo "El directorio ha sido encriptada con éxito."
            ;;
        d)
            echo "Ingrese la ruta del directorio encriptado:"
            read encrypted_file

            echo "Ingrese la clave para desencriptar:"
            read -s password

            # Desencriptar la carpeta
            gpg --decrypt --passphrase "$password" -o "${encrypted_file%.gpg}" "$encrypted_file"
            tar -xzf "${encrypted_file%.gpg}"
            echo "El directorio ha sido desencriptado con éxito."

            ;;
        *)
            show_help
            ;;
    esac
done