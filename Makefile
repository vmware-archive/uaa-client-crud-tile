cwd=.

version=0.0.3

metadata:
	kiln bake \
	  --metadata "${cwd}/base.yml" \
	  --instance-groups-directory "${cwd}/instance-groups" \
	  --icon "${cwd}/icon.png" \
	  --jobs-directory "${cwd}/jobs" \
	  --releases-directory "${cwd}/releases" \
	  --version "${version}" \
	  --stemcells-directory "${cwd}/stemcells" \
	  --metadata-only \
	  > metadata.yml

tile:
	kiln bake \
	  --metadata "${cwd}/base.yml" \
	  --instance-groups-directory "${cwd}/instance-groups" \
	  --icon "${cwd}/icon.png" \
	  --jobs-directory "${cwd}/jobs" \
	  --releases-directory "${cwd}/releases" \
	  --version "${version}" \
	  --stemcells-directory "${cwd}/stemcells" \
	  --output-file "${cwd}/uaa-client-create-${version}.pivotal"

