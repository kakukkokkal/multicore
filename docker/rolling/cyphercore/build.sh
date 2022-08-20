#!/bin/bash
cd /source 
dotnet build
dotnet publish -o /install --sc