#
# Powershell version of check_packages.sh for WIndows 10 users.
#

# hybridview:
# TODO: Add support for saving results to json file.
# TODO: Only output mismatches similar to original sh script.

foreach ($pkg in Get-Content packages.list) {
  #newman run $line
  # write-host $line
  #$ret = python npm-manifest-check.py "$pkg"
  python npm-manifest-check.py "$pkg"
}

#ForEach ($line in Get-Content [File]) {[Command]) $line}