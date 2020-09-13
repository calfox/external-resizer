FROM gcr.io/distroless/static:latest
LABEL maintainers="Kubernetes Authors"
LABEL description="CSI External Resizer"

ARG TARGETPLATFORM

COPY ./bin/csi-resizer/${TARGETPLATFORM} csi-resizer
ENTRYPOINT ["/csi-resizer"]
