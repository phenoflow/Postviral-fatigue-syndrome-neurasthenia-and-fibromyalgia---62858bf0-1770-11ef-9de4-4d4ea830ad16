cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  postviral-fatigue-syndrome-neurasthenia-and-fibromyalgia---primary:
    run: postviral-fatigue-syndrome-neurasthenia-and-fibromyalgia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  fibromyalgia---primary:
    run: fibromyalgia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: postviral-fatigue-syndrome-neurasthenia-and-fibromyalgia---primary/output
  postviral-fatigue-syndrome-neurasthenia-and-fibromyalgia-fibrositis---primary:
    run: postviral-fatigue-syndrome-neurasthenia-and-fibromyalgia-fibrositis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: fibromyalgia---primary/output
  chronic-postviral-fatigue-syndrome-neurasthenia-and-fibromyalgia---primary:
    run: chronic-postviral-fatigue-syndrome-neurasthenia-and-fibromyalgia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: postviral-fatigue-syndrome-neurasthenia-and-fibromyalgia-fibrositis---primary/output
  postviral-fatigue-syndrome-neurasthenia-and-fibromyalgia-debility---primary:
    run: postviral-fatigue-syndrome-neurasthenia-and-fibromyalgia-debility---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: chronic-postviral-fatigue-syndrome-neurasthenia-and-fibromyalgia---primary/output
  fatigue---primary:
    run: fatigue---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: postviral-fatigue-syndrome-neurasthenia-and-fibromyalgia-debility---primary/output
  postviral-fatigue-syndrome-neurasthenia-and-fibromyalgia-management---primary:
    run: postviral-fatigue-syndrome-neurasthenia-and-fibromyalgia-management---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: fatigue---primary/output
  postviral---primary:
    run: postviral---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: postviral-fatigue-syndrome-neurasthenia-and-fibromyalgia-management---primary/output
  postviral-fatigue-syndrome-neurasthenia-and-fibromyalgia-encephalomyelitis---primary:
    run: postviral-fatigue-syndrome-neurasthenia-and-fibromyalgia-encephalomyelitis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: postviral---primary/output
  referral-postviral-fatigue-syndrome-neurasthenia-and-fibromyalgia---primary:
    run: referral-postviral-fatigue-syndrome-neurasthenia-and-fibromyalgia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: postviral-fatigue-syndrome-neurasthenia-and-fibromyalgia-encephalomyelitis---primary/output
  encephalopathy-postviral-fatigue-syndrome-neurasthenia-and-fibromyalgia---primary:
    run: encephalopathy-postviral-fatigue-syndrome-neurasthenia-and-fibromyalgia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: referral-postviral-fatigue-syndrome-neurasthenia-and-fibromyalgia---primary/output
  neurasthenia---primary:
    run: neurasthenia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: encephalopathy-postviral-fatigue-syndrome-neurasthenia-and-fibromyalgia---primary/output
  postviral-fatigue-syndrome-neurasthenia-and-fibromyalgia-history---primary:
    run: postviral-fatigue-syndrome-neurasthenia-and-fibromyalgia-history---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: neurasthenia---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: postviral-fatigue-syndrome-neurasthenia-and-fibromyalgia-history---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
