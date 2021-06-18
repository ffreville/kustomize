// Copyright 2019 The Kubernetes Authors.
// SPDX-License-Identifier: Apache-2.0

package build

import (
	"github.com/spf13/pflag"
	"sigs.k8s.io/kustomize/api/kv"
)

func AddFlagNotInterractive(set *pflag.FlagSet) {
	set.BoolVar(
		&kv.NotInteractive,
		"not-interactive",
		false,
		"fail if interactions are needed")
}
