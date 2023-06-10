{{/*
Expand the name of the chart.
*/}}
{{- define "my_awesome_app.name" -}}
{{- printf "%s" .fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "my_awesome_app.labels" -}}
{{ include "my_awesome_app.selectorLabels" . }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "my_awesome_app.selectorLabels" -}}
app.kubernetes.io/name: {{ include "my_awesome_app.name" . }}
{{- end }}

