# Faucet R Base Image (`faucet-r-base`)

Este repositorio mantiene la **imagen base de Docker** para [Faucet](https://github.com/ixpantia/faucet). 

 Contiene el entorno de R preconfigurado, herramientas de compilación de C/C++ y todos los paquetes pesados de R requeridos por Faucet. Su objetivo es evitar recompilar paquetes en cada build de Faucet, reduciendo el tiempo de CI/CD de minutos a segundos.

## USO EN FAUCET

En el `Dockerfile` principal de Faucet:

```dockerfile
FROM ghcr.io/ixpantia/faucet-r-base:latest
