module sigs.k8s.io/kustomize/cmd/config

go 1.16

require (
	github.com/go-errors/errors v1.0.1
	github.com/google/go-cmp v0.5.2 // indirect
	github.com/google/uuid v1.1.2 // indirect
	github.com/kr/text v0.2.0 // indirect
	github.com/olekukonko/tablewriter v0.0.4
	github.com/spf13/cobra v1.0.0
	github.com/stretchr/testify v1.6.1
	golang.org/x/net v0.0.0-20210226172049-e18ecbb05110 // indirect
	golang.org/x/text v0.3.4 // indirect
	gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c // indirect
	gopkg.in/inf.v0 v0.9.1
	k8s.io/kube-openapi v0.0.0-20210421082810-95288971da7e
	sigs.k8s.io/kustomize/kyaml v0.11.1
)

replace sigs.k8s.io/kustomize/kyaml => ../../kyaml
