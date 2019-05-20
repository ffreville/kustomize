// Code generated by pluginator on NameTransformer; DO NOT EDIT.
package builtin

import (
	"sigs.k8s.io/kustomize/pkg/ifc"
	"sigs.k8s.io/kustomize/pkg/resmap"
	"sigs.k8s.io/kustomize/pkg/transformers"
	"sigs.k8s.io/kustomize/pkg/transformers/config"
	"sigs.k8s.io/yaml"
)

// Add the given prefix and suffix to the resource name.
type NameTransformerPlugin struct {
	Prefix     string             `json:"prefix,omitempty" yaml:"prefix,omitempty"`
	Suffix     string             `json:"suffix,omitempty" yaml:"suffix,omitempty"`
	FieldSpecs []config.FieldSpec `json:"fieldSpecs,omitempty" yaml:"fieldSpecs,omitempty"`
}

func NewNameTransformerPlugin() *NameTransformerPlugin {
  return &NameTransformerPlugin{}
}

func (p *NameTransformerPlugin) Config(
	ldr ifc.Loader, rf *resmap.Factory, c []byte) (err error) {
	p.Prefix = ""
	p.Suffix = ""
	p.FieldSpecs = nil
	return yaml.Unmarshal(c, p)
}

func (p *NameTransformerPlugin) Transform(m resmap.ResMap) error {
	t, err := transformers.NewNamePrefixSuffixTransformer(
		p.Prefix,
		p.Suffix,
		p.FieldSpecs,
	)
	if err != nil {
		return err
	}
	return t.Transform(m)
}
