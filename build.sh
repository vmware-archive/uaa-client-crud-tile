cwd="$(pwd)"

version=0.0.1

kiln bake \
  --metadata "${cwd}/base.yml" \
  --instance-groups-directory "${cwd}/instance-groups" \
  --jobs-directory "${cwd}/jobs" \
  --releases-directory "${cwd}/releases" \
  --version "${version}" \
  --stemcells-directory "${cwd}/stemcells" \
  --output-file "${cwd}/uaa-client-create-${version}.pivotal"

