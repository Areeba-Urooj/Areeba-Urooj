Get-ChildItem -Path . -Filter "*.svg" -Recurse | ForEach-Object {
    $content = Get-Content $_.FullName -Raw
    $content = $content -replace 'muhammadhammad2005', 'AreebaUrooj'
    $content = $content -replace 'Muhammad Hammad', 'Areeba Urooj'
    Set-Content $_.FullName $content
}
