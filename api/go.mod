module sigs.k8s.io/kustomize/api

go 1.16

require (
	filippo.io/age v1.0.0-rc.3
	github.com/evanphx/json-patch v4.5.0+incompatible
	github.com/go-errors/errors v1.0.1
	github.com/google/shlex v0.0.0-20191202100458-e7afc7fbc510
	github.com/imdario/mergo v0.3.5
	github.com/pkg/errors v0.9.1
	github.com/stretchr/testify v1.5.1
	golang.org/x/crypto v0.0.0-20210616213533-5ff15b29337e
	golang.org/x/sys v0.0.0-20210616094352-59db8d763f22 // indirect
	golang.org/x/term v0.0.0-20201126162022-7de9c90e9dd1
	gopkg.in/yaml.v2 v2.4.0
	k8s.io/kube-openapi v0.0.0-20210421082810-95288971da7e
	sigs.k8s.io/kustomize/kyaml v0.10.20
	sigs.k8s.io/yaml v1.2.0
	sylr.dev/yaml/age/v3 v3.0.0-20210616065459-c2b548dbcf03
	sylr.dev/yaml/v3 v3.0.0-20210127132132-941109e4f08c
)

replace gopkg.in/yaml.v3 => gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c
