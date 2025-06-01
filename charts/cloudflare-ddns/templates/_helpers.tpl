{{/*
Create the name of the service account to use
*/}}
{{- define "template.serviceAccountName" -}}
{{- if .value.create }}
{{- default (include "common.names.fullname" .context) .value.name }}
{{- else }}
{{- default "default" .value.name }}
{{- end }}
{{- end }}
