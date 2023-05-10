terraform {
  source = "../../../modules//bucket"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  env = "lab"
}
