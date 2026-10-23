$ErrorActionPreference = "Stop"

# ============================================================
# CONFIGURACIÓN
# ============================================================
$envi = "LOCAL"

$collection = ".\SALUD_ALL.postman_collection.json"

$environment = ".\Autorizaciones\Autorizaciones_$envi.postman_environment.json"

$item = "dkv.api.autorizaciones.datosaux"

$outputDirectory = ".\snapshots\datosaux"

$reportFile = ".\postman-run.json"

# Bearer tokens (sin el prefijo "Bearer ")
# identity server (v1)
$tokenV1 = "eyJhbGciOiJSUzI1NiIsImtpZCI6IjVCNkMyNzhCRUYyQzFEMDVCRDBBODBBMkEzMUI5MjgxNDY3NUQ0QjUiLCJ0eXAiOiJhdCtqd3QiLCJ4NXQiOiJXMnduaS04c0hRVzlDb0Npb3h1U2dVWjExTFUifQ.eyJuYmYiOjE3OTE1NTAxMzEsImV4cCI6MTc5MTU4NjEzMSwiaXNzIjoiaHR0cHM6Ly9pZHNydjQudWF0Lmt1YmVwcm8wMS5ka3ZuZXQuY29tIiwiYXVkIjoiYXV0b3JpemFjaW9uZXMtcmVzb3VyY2UiLCJjbGllbnRfaWQiOiJka3YtYXV0b3JpemFjaW9uZXMyLXdlYi51YXQiLCJzdWIiOiI0NTAiLCJhdXRoX3RpbWUiOjE3OTE1NTAxMzAsImlkcCI6ImxvY2FsIiwibmFtZSI6InNvcG9ydGUuZGt2QGJhYmVsLmVzIiwicm9sZSI6WyIxIiwiaWRzcnY0LmFkbWluLmFkbWluaXN0cmF0b3IiLCJiYWNrb2ZmaWNlIiwicG9ydGFsY29sZWN0aXZvcyIsInJlZW1ib2xzb3MiLCJyZWVtYm9sc29zLmJ1c2NhZG9yIiwicmVlbWJvbHNvcy5udWV2byIsInJlZW1ib2xzb3MuY29uc29saWRhY2lvbiIsInRhcmVhcyIsInRhcmVhcy5idXNjYWRvciIsInRhcmVhcy5hdXRvbWF0aWNhIiwicGFyYW1ldHJpYXMiLCJzbGFzIiwic2xhcy5idXNjYWRvciIsInNsYXMuZ2VzdGlvbiIsInNsYXMuY29udHJvbCIsInNjb3JpbmciLCJyZXBvcnRpbmciLCJkb2N1bWVudG9zLmV4dGVybm8iLCJjYW5Mb2dpbkFzIl0sImVtYWlsIjoic29wb3J0ZS5ka3ZAYmFiZWwuZXMiLCJJZFBlcnNvbmEiOiI0NTAiLCJqdGkiOiJtUVBVaG1TeXlDUkF6ajNnMnZIRERRIiwic2NvcGUiOlsiYXV0b3JpemFjaW9uZXMtcmVzb3VyY2UiXSwiYW1yIjpbInB3ZCJdfQ.WUZ9LUB-CLsAsEFgjIg7JpjpcbZn8N8h7xWVBhKRjkoRTTkyTgexXeBjNb61gH3WyGJ9-W-TMSfPzuVu1TmT4PZzJqvUh8XrkhFZjvIYTPY-bNwHZpHYlOy7NYYwq6_6k-vIN6fVl5I9eLtyEzIx1Q3-htNxV56NV7tUs1VMwKvIQgluGWdOsScky44Btc6Q-ROxOa7mGnqEa18PSXW6Tfsz8LdlOOYajyT8jYJY10fh2yIA2CzOXGfb63fSKLl0RBBNNN4VvWi4umiWgJWFdYp9g0-0Ey-qhn3WB_I35BatetFtDurTE42yXuMvulbkCa2Xn3MxKxWaOg2YvLFTqwZ6pv7kcuHLS4ibwXcfAfgETPGEAeSVPUMyJrXtc4UC_M3bGaLKqLvknmmbBgnUxQ7SIC013WN_MO5gidZISmQenlWNjhWc2Di4TaYJFu0JVpZZRVaC7MwXaZIxmCO3uEpJlIZ3-z2KO7rebdccfAbyiM_lV4AAUwZBf-3QHmIIWp5HZIQcWLB1SKwOK7WB5U_qTsJvDznr_p6HQJB0Ei06_iikn9yalbavzKqYCBwoDq2uAqOyJtGpWD0hXpJ6C4rvr6iF5YngW9vYhzFauHmiXbVw0YzdXJGXdLTA0xru6E0n-AmhaAqhKQwtt4GFDZR9HtSpoWNqEPlSBWos2v0"
# Okta (v2)
$tokenV2 = "eyJraWQiOiJXc0F6WW5VeUJtX3lSbVpXQmpfLU00N0kxYkx6d2xtSUJGVjBGbXkxSVZZIiwiYWxnIjoiUlMyNTYifQ.eyJ2ZXIiOjEsImp0aSI6IkFULkozNzZNeVZoa29OV2hyYVBYb1QtTnBwY3RObEp6VVk3MWRxNHBoR3hTUmMiLCJpc3MiOiJodHRwczovL2xvZ2luLmRrdi5lcy9vYXV0aDIvYXVzcmY2Z3ZvS0pPZFNoRmQ0MTYiLCJhdWQiOiJjbGllbnRlcyIsImlhdCI6MTc5MTU1MDE3MCwiZXhwIjoxNzkxNTUzNzcwLCJjaWQiOiIwb2EyNHpicmk3NU5RM1hTUDQxNyIsInVpZCI6IjAwdTM0dGF5eGF1OHcySnliNDE3Iiwic2NwIjpbIm9wZW5pZCIsInByb2ZpbGUiXSwiYXV0aF90aW1lIjoxNzkxNTUwMTY5LCJzdWIiOiJQXzIzMzY4NjEyWiIsImxhc3ROYW1lIjoiSk9GRVhFIEdBQ0hBS1NBIiwicHJpbWFyeVBob25lIjoiKzM0ODc2Nzc4ODk5IiwiZmlyc3ROYW1lIjoiQU5PREVUIiwiYmlydGhkYXRlIjoiMTk2OC0wMS0wMSAwMDowMDowMCIsImdlbmRlciI6IkYiLCJtb2JpbGVQaG9uZSI6IiszNDY0NjY2NjY2MSIsImZ1bGxuYW1lIjoiQU5PREVUIEpPRkVYRSBHQUNIQUtTQSIsImRvY3VtZW50X2lkIjoiMjMzNjg2MTJaIiwiY29kcGVyIjoiOTg2MTE2OCIsImVtYWlsIjoiYXNkYXNkYXNkQGFzZGFzZGFzLmNvbSJ9.f_MCYU5oU5aFbyC2GvI6ZorTyW5_Jb6by_W3IhcL2pfWgymPx-7zK8rBoy_VNhazL7MUFWgm2mQwzSuH7NzzrHbcmqm6pNGQ2E7lNjWJHLn4W4CEThrM2Oy7ekWHshE7ZN7wV5CT5oy9ymm-Wk8UcVj8Z3harZx9npuKdIKse-xp265tlGnblM-paOsYLNBVyNRMGPV7cC07acfC-JuOekmjJk8iLcOU6JF7XNBD-VQkYe7hIGrx2D-pcUAovvWbhwoqtbAq17DZYL0c6KRHruFh-O8iyHKTAE64oPRfOF5SIIZY9vTrZYmJp8o5c2WIo7pPdyVpdflnkYjPgqrd6g"

# ============================================================
# PREPARAR CARPETAS
# ============================================================

if (-not (Test-Path $outputDirectory)) {
    New-Item -ItemType Directory -Path $outputDirectory | Out-Null
}


# ============================================================
# EJECUTAR POSTMAN
# ============================================================

Write-Host ""
Write-Host "============================================" -ForegroundColor Cyan
Write-Host " Ejecutando Postman" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""

$postmanArgs = @(
    "collection", "run", $collection,
    "-e", $environment,
    "-i", $item,
    "-r", "json",
    "--reporter-json-export", $reportFile
)

# Postman CLI no puede hacer el flujo OAuth2 interactivo: los tokens se pasan como variables de entorno de Postman
$tokens = [ordered]@{
    tokenV1 = $tokenV1
    tokenV2 = $tokenV2
}

foreach ($name in $tokens.Keys) {

    if ([string]::IsNullOrWhiteSpace($tokens[$name])) {
        Write-Error "Falta rellenar `$$name en la configuración del script."
        exit 1
    }

    $postmanArgs += @("--env-var", "$name=$($tokens[$name])")
}

# localhost usa un certificado autofirmado
if ($envi -eq "LOCAL") {
    $postmanArgs += "--insecure"
}

postman @postmanArgs


# ============================================================
# COMPROBAR REPORT
# ============================================================

if (-not (Test-Path $reportFile)) {
    Write-Error "No se encontró el reporte de Postman: $reportFile"
    exit 1
}

Write-Host ""
Write-Host "Reporte encontrado: $reportFile" -ForegroundColor Green


# ============================================================
# LEER JSON DE POSTMAN
# ============================================================

$report = Get-Content $reportFile -Raw | ConvertFrom-Json

$executions = $report.run.executions

if ($null -eq $executions -or $executions.Count -eq 0) {
    Write-Error "El reporte no contiene ejecuciones."
    exit 1
}


# ============================================================
# FUNCIONES AUXILIARES
# ============================================================

function Get-HeaderValue {
    param(
        $Headers,
        [string]$Name
    )

    foreach ($header in $Headers) {
        if ($header.key -ieq $Name) {
            return $header.value
        }
    }

    return $null
}


function Convert-ResponseBody {
    param(
        $Stream
    )

    if ($null -eq $Stream) {
        return @{
            bodyType = "empty"
            body     = $null
        }
    }

    if ($null -eq $Stream.data) {
        return @{
            bodyType = "empty"
            body     = $null
        }
    }

    try {

        # Convertir los bytes del Buffer de Postman a texto
        $bytes = [byte[]]$Stream.data

        $text = [System.Text.Encoding]::UTF8.GetString($bytes)

        # Intentar interpretar como JSON
        try {

            $jsonBody = $text | ConvertFrom-Json

            return @{
                bodyType = "json"
                body     = $jsonBody
            }

        }
        catch {

            return @{
                bodyType = "text"
                body     = $text
            }
        }

    }
    catch {

        return @{
            bodyType = "binary"
            body     = "[BINARY RESPONSE]"
        }
    }
}


# ============================================================
# PROCESAR RESPUESTAS
# ============================================================

$snapshots = @()

foreach ($execution in $executions) {

    $request = $execution.requestExecuted
    $response = $execution.response

    if ($null -eq $request -or $null -eq $response) {
        continue
    }


    # --------------------------------------------------------
    # URL
    # --------------------------------------------------------

    $url = $request.url

    if ($url -is [string]) {

        $requestUrl = $url

    }
    else {

        $protocol = $url.protocol

        $hostName = ($url.host -join ".")

        $path = ($url.path -join "/")

        $requestUrl = "${protocol}://${hostName}/${path}"

        if ($url.query -and $url.query.Count -gt 0) {

            $queryParts = @()

            foreach ($queryParameter in $url.query) {

                $queryParts += "$($queryParameter.key)=$($queryParameter.value)"
            }

            $requestUrl += "?" + ($queryParts -join "&")
        }
    }


    # --------------------------------------------------------
    # HEADERS
    # --------------------------------------------------------

    $headersToKeep = @(
        "Content-Type",
        "Content-Encoding",
        "Content-Length",
        "Transfer-Encoding",
        "Server",
        "Date",
        "X-Response-Time"
    )

    $headers = [ordered]@{}

    foreach ($headerName in $headersToKeep) {

        $value = Get-HeaderValue `
            -Headers $response.headers `
            -Name $headerName

        if ($null -ne $value) {

            $headers[$headerName] = $value
        }
    }


    # --------------------------------------------------------
    # BODY
    # --------------------------------------------------------

    $bodyResult = Convert-ResponseBody $response.stream


    # --------------------------------------------------------
    # TESTS
    # --------------------------------------------------------

    $tests = @()

    if ($null -ne $execution.tests) {

        foreach ($test in $execution.tests) {

            $tests += [ordered]@{
                name   = $test.name
                status = $test.status
            }
        }
    }


    # --------------------------------------------------------
    # SNAPSHOT DE ESTA REQUEST
    # --------------------------------------------------------

    $snapshot = [ordered]@{

        timestamp = (Get-Date).ToUniversalTime().ToString("o")

        request = [ordered]@{
            name   = $request.name
            method = $request.method
            url    = $requestUrl
        }

        response = [ordered]@{
            status       = $response.code
            statusText   = $response.status
            responseTime = $response.responseTime
            responseSize = $response.responseSize
            headers      = $headers
            bodyType     = $bodyResult.bodyType
            body         = $bodyResult.body
        }

        tests = $tests
    }


    $snapshots += $snapshot
}


# ============================================================
# CREAR SNAPSHOT FINAL
# ============================================================

$timestamp = Get-Date

$snapshotDocument = [ordered]@{

    snapshotDate = $timestamp.ToUniversalTime().ToString("o")

    collection = "SALUD_ALL"

    environment = "Autorizaciones_$envi"

    item = $item

    requestCount = $snapshots.Count

    requests = $snapshots
}


# ============================================================
# GUARDAR SNAPSHOT
# ============================================================

$fileTimestamp = $timestamp.ToString("yyyy-MM-dd_HH-mm-ss")

$outputFile = Join-Path `
    $outputDirectory `
    "SALUD_ALL-datosaux-$envi-$fileTimestamp.json"


$snapshotDocument |
    ConvertTo-Json -Depth 30 |
    Set-Content `
        -Path $outputFile `
        -Encoding UTF8


# ============================================================
# RESULTADO
# ============================================================

Write-Host ""
Write-Host "============================================" -ForegroundColor Green
Write-Host " Snapshot generado correctamente" -ForegroundColor Green
Write-Host "============================================" -ForegroundColor Green
Write-Host ""

Write-Host "Requests: $($snapshots.Count)" -ForegroundColor Green

Write-Host ""
Write-Host "Archivo:" -ForegroundColor Yellow
Write-Host $outputFile -ForegroundColor Yellow

Write-Host ""