box: ubuntu

build:
  steps:
    - script:
      name: good one
      code: |
        touch $WERCKER_REPORT_ARTIFACT_DIR/good
    - script:
      name: bad one
      code: |
        touch $WERCKER_REPORT_ARTIFACT_DIR/bad
        exit

