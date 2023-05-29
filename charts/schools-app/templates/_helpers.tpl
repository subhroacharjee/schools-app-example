{{/* Annotations for stakater/Reloader to rolling-update upon changes in static resources (Secret, ConfigMap, ...) */}}
{{- define "reloader-annotations" }}
  annotations:
    reloader.stakater.com/auto: "true"
{{- end }}

{{/* Environment variables for pod introspection at build-time (include) */}}
{{- define "deployment-env" }}
env:
  - name: POD_NAME
    valueFrom:
      fieldRef:
        fieldPath: metadata.name
  - name: SERVICE_NAME
    valueFrom:
      fieldRef:
        fieldPath: metadata.labels['app']
  - name: POD_NAMESPACE
    valueFrom:
      fieldRef:
        fieldPath: metadata.namespace
{{- end }}