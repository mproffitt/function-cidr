render:
			@for file in examples/xr-*.yaml; do \
			 	echo ""; \
				echo "Rendering $$file..."; \
				crossplane beta render \
					"$$file" \
					apis/composition.yaml \
					examples/functions.yaml; \
			done

debug:
			go run . --insecure --debug