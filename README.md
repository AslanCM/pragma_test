# pragma_catbreeds

Aplicación de listado de razas de gatos con Clean Architecture.

## Getting Started

Tener instalado y configurado lo siguiente la máquina:
- **Flutter SDK**
- **Java JDK** (Versión 17 recomendada o superior, la OpenJDK 24 es compatible).
- **Android Studio / VS Code.** Android Studio / VS Code
- **Xcode** (Solo si desea ejecutar en iOS desde una Mac).

Para verificar tu entorno, ejecuta:
```bash
flutter doctor
java -version
```

El proyecto requiere un archivo .env para funcionar
- Pégar el archivo en la raíz del proyecto (al mismo nivel que pubspec.yaml).

Pasos
1. Instalación de Dependencias
2. Configuración e inyeccion de Dependencias
3. Correr el proyecto

Instalación de Dependencias
- correr en la terminal de comandos estando en la carpeta del proyecto pragma_catbreeds command: **flutter pub get**

**Importante**
Configuración e inyección de Dependencia
- correr en la terminal de comandos estando en la carpeta del proyecto pragma_catbreeds command: **dart run build_runner build --delete-conflicting-outputs**

Correr el proyecto
-   Despues de que todo lo anterior está satisfecho de la manera correcta y aber corregido los problemas dados con **flutter doctor**
    podrá correr la aplicación con el comando **flutter run** en caso tal de tener vscode, puede lanzar con el debug mode dando F5 o corriendo el entorno
    **Pragma App (DEV)**

-   Para correr el proyecto en mac con ios emulator **open -a Simulator** una vez cargue el emulador de mac correr el comando **flutter run**
-   Para correr el proyecto en android se debe **flutter emulators** tomar el id del emulador **flutter emulators --launch <IdEmulador>**  y luego correr el comando **flutter run**

Generar la apk en android
- command: **flutter build apk --debug**

**Aún más importante**
Por razones de no poder facilitar el .env se dejan las variables necesarias para realizar la prueba
CAT_API_KEY=live_99Qe4Ppj34NdplyLW67xCV7Ds0oSLKGgcWWYnSzMJY9C0QOu0HUR4azYxWkyW2nr
- por favor craer el archivo .env y lanzar la app