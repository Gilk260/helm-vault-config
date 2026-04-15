{{/*
Chart name, with override support.
*/}}
{{- define "vault-config.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Fully qualified app name.
If fullnameOverride is set, use it. Otherwise combine release name + chart name,
unless the release name already contains the chart name.
Always truncated to 63 characters.
*/}}
{{- define "vault-config.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Resource name: <fullname>-<resourceName>-<resourceType>
Truncated to 63 characters (K8s name limit).

Usage:
  {{ include "vault-config.resourceName" (dict "context" . "resourceName" "my-db" "resourceType" "randomsecret") }}
*/}}
{{- define "vault-config.resourceName" -}}
{{- $fullname := include "vault-config.fullname" .context -}}
{{- printf "%s-%s-%s" $fullname .resourceName .resourceType | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Chart label value.
*/}}
{{- define "vault-config.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels applied to all resources.
*/}}
{{- define "vault-config.labels" -}}
helm.sh/chart: {{ include "vault-config.chart" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
{{- end }}
