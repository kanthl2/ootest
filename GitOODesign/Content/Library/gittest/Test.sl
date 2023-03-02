namespace: gittest
flow:
  name: Test
  workflow:
    - Random_Number_Generator:
        do_external:
          2c22355a-9c26-4a9e-893c-01a35e4bb0e3:
            - max: '2'
            - min: '1'
        navigate:
          - success: SUCCESS
          - failure: FAILURE_1
  results:
    - FAILURE_1
    - SUCCESS
extensions:
  graph:
    steps:
      Random_Number_Generator:
        x: 360
        'y': 160
        navigate:
          3a4246bd-063c-af32-2ee5-31e82877c5d2:
            targetId: fc949435-fbf8-83bf-3667-bd0c4625fe32
            port: success
          420f48e9-c170-903e-c3f1-23db009c804d:
            targetId: 122d95f5-44f1-ae34-3cd8-fd2ff3c608f3
            port: failure
    results:
      FAILURE_1:
        122d95f5-44f1-ae34-3cd8-fd2ff3c608f3:
          x: 200
          'y': 160
      SUCCESS:
        fc949435-fbf8-83bf-3667-bd0c4625fe32:
          x: 760
          'y': 160
