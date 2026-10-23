# Faucet R Base Image (`faucet-r-base`)

Este repositorio mantiene la **imagen base de Docker** para [Faucet](https://github.com/ixpantia/faucet). 

 Contiene el entorno de R preconfigurado, herramientas de compilación de C/C++ y todos los paquetes pesados de R requeridos por Faucet. Su objetivo es evitar recompilar paquetes en cada build de Faucet, reduciendo el tiempo de CI/CD de minutos a segundos.

## USO EN FAUCET

En el `Dockerfile` principal de Faucet:

```dockerfile
FROM ghcr.io/ixpantia/faucet-r-base:latest

## IMÁGENES PUBLICADAS

| Tag | Versión de R |
|---|---|
| `ghcr.io/ixpantia/faucet-r-base:r4.1` | 4.1.3 |
| `ghcr.io/ixpantia/faucet-r-base:r4.2` | 4.2.2 |
| `ghcr.io/ixpantia/faucet-r-base:r4.3` | 4.3.3 |
| `ghcr.io/ixpantia/faucet-r-base:r4.4` | 4.4.1 |
| `ghcr.io/ixpantia/faucet-r-base:r4.5` | 4.5.0 |
| `ghcr.io/ixpantia/faucet-r-base:r4.6` | 4.6.0 |
| `ghcr.io/ixpantia/faucet-r-base:latest` | igual a `r4.6` (la más nueva) |

Las imágenes se construyen con una matriz de GitHub Actions (`.github/workflows/build-base.yml`)
en cada push a `main`. Para agregar una versión nueva de R, agrega una entrada a la matriz.
