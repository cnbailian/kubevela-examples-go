outputs: application: {
	apiVersion: "core.oam.dev/v1beta1"
	kind:       "Application"
	metadata: {
		name: context.name
		annotations: {
			"app.oam.dev/revision-only": "true"
			"wating-for-completed":      context.output.metadata.name
		}
	}
	spec: parameter.application
}
outputs: appdeploy: {
	apiVersion: "core.oam.dev/v1beta1"
	kind:       "AppDeployment"
	metadata:
		name: context.name
	spec: parameter.appdeployment
}

parameter: {
	// +usage=Application spec
	application: {}

	// +usage=AppDeployment spec
	appdeployment: {}
}
