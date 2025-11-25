# Script de Recuperación de Proyecto IntelliJ IDEA
# Ejecutar este script si IntelliJ no muestra correctamente la estructura de carpetas

Write-Host "=== Verificando estructura del proyecto ===" -ForegroundColor Cyan

# Verificar carpetas
$folders = @("src\code", "src\component", "src\container", "src\context")
foreach ($folder in $folders) {
    if (Test-Path $folder) {
        $count = (Get-ChildItem -Path $folder -Filter "*.puml").Count
        Write-Host "[OK] $folder ($count archivos .puml)" -ForegroundColor Green
    } else {
        Write-Host "[ERROR] $folder no existe" -ForegroundColor Red
    }
}

# Verificar archivos de configuración IntelliJ
Write-Host "`n=== Verificando configuración de IntelliJ ===" -ForegroundColor Cyan

$configFiles = @(".idea\modules.xml", ".idea\misc.xml", "siries-c4-model.iml")
foreach ($file in $configFiles) {
    if (Test-Path $file) {
        Write-Host "[OK] $file" -ForegroundColor Green
    } else {
        Write-Host "[ERROR] $file no existe" -ForegroundColor Red
    }
}

Write-Host "`n=== Lista de archivos .puml ===" -ForegroundColor Cyan
Get-ChildItem -Path "src" -Filter "*.puml" -Recurse | ForEach-Object {
    Write-Host "  - $($_.FullName.Replace($PWD.Path + '\', ''))" -ForegroundColor Yellow
}

Write-Host "`n=== Pasos para resolver problemas de visualización ===" -ForegroundColor Magenta
Write-Host "1. Cerrar IntelliJ IDEA completamente"
Write-Host "2. Abrir IntelliJ IDEA"
Write-Host "3. File > Invalidate Caches / Restart > Invalidate and Restart"
Write-Host "4. Esperar a que IntelliJ reindexe el proyecto"
Write-Host "5. Hacer clic en el botón 'Refresh' del panel Project"
Write-Host "`nSi el problema persiste:"
Write-Host "6. File > Project Structure > Modules"
Write-Host "7. Verificar que 'src' esté marcada como 'Sources Root'"

Write-Host "`n=== Verificación completada ===" -ForegroundColor Cyan

