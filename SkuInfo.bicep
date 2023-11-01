// Calculated using this resource: https://github.com/joelverhagen/data-azure-spot-vms/blob/main/vm-skus.csv
// If a SKU has both a CacheDisk and a ResourceDisk with a capacity of a least 30 GB, the larger is selected.
var skuInfo = {
  Standard_A4_v2: {
    diskSizeGB: 40
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_A4m_v2: {
    diskSizeGB: 40
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_A8_v2: {
    diskSizeGB: 80
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_A8m_v2: {
    diskSizeGB: 80
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D1: {
    diskSizeGB: 50
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D1_v2: {
    diskSizeGB: 50
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D11: {
    diskSizeGB: 100
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D11_v2: {
    diskSizeGB: 100
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D12: {
    diskSizeGB: 200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D12_v2: {
    diskSizeGB: 200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D13: {
    diskSizeGB: 400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D13_v2: {
    diskSizeGB: 400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D14: {
    diskSizeGB: 800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D14_v2: {
    diskSizeGB: 800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D15_v2: {
    diskSizeGB: 1000
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D16_v3: {
    diskSizeGB: 400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D16_v4: {
    diskSizeGB: 400
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D16a_v4: {
    diskSizeGB: 400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D16ads_v5: {
    diskSizeGB: 600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D16as_v4: {
    diskSizeGB: 400
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D16d_v4: {
    diskSizeGB: 600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D16d_v5: {
    diskSizeGB: 600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D16ds_v4: {
    diskSizeGB: 600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D16ds_v5: {
    diskSizeGB: 600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D16lds_v5: {
    diskSizeGB: 600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D16pds_v5: {
    diskSizeGB: 600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D16plds_v5: {
    diskSizeGB: 600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D16pls_v5: {
    diskSizeGB: 400
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D16ps_v5: {
    diskSizeGB: 400
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D16s_v3: {
    diskSizeGB: 400
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D16s_v4: {
    diskSizeGB: 400
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D2: {
    diskSizeGB: 100
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D2_v2: {
    diskSizeGB: 100
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D2_v3: {
    diskSizeGB: 50
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D2_v4: {
    diskSizeGB: 50
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D2a_v4: {
    diskSizeGB: 50
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D2ads_v5: {
    diskSizeGB: 75
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D2as_v4: {
    diskSizeGB: 50
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D2d_v4: {
    diskSizeGB: 75
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D2d_v5: {
    diskSizeGB: 75
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D2ds_v4: {
    diskSizeGB: 75
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D2ds_v5: {
    diskSizeGB: 75
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D2lds_v5: {
    diskSizeGB: 75
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D2pds_v5: {
    diskSizeGB: 75
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D2plds_v5: {
    diskSizeGB: 75
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D2pls_v5: {
    diskSizeGB: 50
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D2ps_v5: {
    diskSizeGB: 50
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D2s_v3: {
    diskSizeGB: 50
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D2s_v4: {
    diskSizeGB: 50
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D3: {
    diskSizeGB: 200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D3_v2: {
    diskSizeGB: 200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D32_v3: {
    diskSizeGB: 800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D32_v4: {
    diskSizeGB: 800
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D32a_v4: {
    diskSizeGB: 800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D32ads_v5: {
    diskSizeGB: 1200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D32as_v4: {
    diskSizeGB: 800
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D32d_v4: {
    diskSizeGB: 1200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D32d_v5: {
    diskSizeGB: 1200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D32ds_v4: {
    diskSizeGB: 1200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D32ds_v5: {
    diskSizeGB: 1200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D32lds_v5: {
    diskSizeGB: 1200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D32pds_v5: {
    diskSizeGB: 1200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D32plds_v5: {
    diskSizeGB: 1200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D32pls_v5: {
    diskSizeGB: 800
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D32ps_v5: {
    diskSizeGB: 800
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D32s_v3: {
    diskSizeGB: 800
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D32s_v4: {
    diskSizeGB: 800
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D4: {
    diskSizeGB: 400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D4_v2: {
    diskSizeGB: 400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D4_v3: {
    diskSizeGB: 100
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D4_v4: {
    diskSizeGB: 100
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D48_v3: {
    diskSizeGB: 1200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D48_v4: {
    diskSizeGB: 1200
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D48a_v4: {
    diskSizeGB: 1200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D48ads_v5: {
    diskSizeGB: 1800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D48as_v4: {
    diskSizeGB: 1200
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D48d_v4: {
    diskSizeGB: 1800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D48d_v5: {
    diskSizeGB: 1800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D48ds_v4: {
    diskSizeGB: 1800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D48ds_v5: {
    diskSizeGB: 1800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D48lds_v5: {
    diskSizeGB: 1800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D48pds_v5: {
    diskSizeGB: 1800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D48plds_v5: {
    diskSizeGB: 1800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D48pls_v5: {
    diskSizeGB: 1200
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D48ps_v5: {
    diskSizeGB: 1200
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D48s_v3: {
    diskSizeGB: 1200
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D48s_v4: {
    diskSizeGB: 1200
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D4a_v4: {
    diskSizeGB: 100
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D4ads_v5: {
    diskSizeGB: 150
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D4as_v4: {
    diskSizeGB: 100
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D4d_v4: {
    diskSizeGB: 150
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D4d_v5: {
    diskSizeGB: 150
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D4ds_v4: {
    diskSizeGB: 150
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D4ds_v5: {
    diskSizeGB: 150
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D4lds_v5: {
    diskSizeGB: 150
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D4pds_v5: {
    diskSizeGB: 150
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D4plds_v5: {
    diskSizeGB: 150
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D4pls_v5: {
    diskSizeGB: 100
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D4ps_v5: {
    diskSizeGB: 100
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D4s_v3: {
    diskSizeGB: 100
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D4s_v4: {
    diskSizeGB: 100
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D5_v2: {
    diskSizeGB: 800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D64_v3: {
    diskSizeGB: 1600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D64_v4: {
    diskSizeGB: 1600
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D64a_v4: {
    diskSizeGB: 1600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D64ads_v5: {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D64as_v4: {
    diskSizeGB: 1600
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D64d_v4: {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D64d_v5: {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D64ds_v4: {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D64ds_v5: {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D64lds_v5: {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D64pds_v5: {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D64plds_v5: {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D64pls_v5: {
    diskSizeGB: 1600
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D64ps_v5: {
    diskSizeGB: 1600
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D64s_v3: {
    diskSizeGB: 1600
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D64s_v4: {
    diskSizeGB: 1600
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D8_v3: {
    diskSizeGB: 200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D8_v4: {
    diskSizeGB: 200
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D8a_v4: {
    diskSizeGB: 200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D8ads_v5: {
    diskSizeGB: 300
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D8as_v4: {
    diskSizeGB: 200
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D8d_v4: {
    diskSizeGB: 300
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D8d_v5: {
    diskSizeGB: 300
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D8ds_v4: {
    diskSizeGB: 300
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D8ds_v5: {
    diskSizeGB: 300
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D8lds_v5: {
    diskSizeGB: 300
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D8pds_v5: {
    diskSizeGB: 300
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D8plds_v5: {
    diskSizeGB: 300
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D8pls_v5: {
    diskSizeGB: 200
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D8ps_v5: {
    diskSizeGB: 200
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D8s_v3: {
    diskSizeGB: 200
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D8s_v4: {
    diskSizeGB: 200
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D96a_v4: {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D96ads_v5: {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D96as_v4: {
    diskSizeGB: 1600
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_D96d_v5: {
    diskSizeGB: 3600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D96ds_v5: {
    diskSizeGB: 3600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_D96lds_v5: {
    diskSizeGB: 3600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_DC16ads_cc_v5: {
    diskSizeGB: 600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_DC16ads_v5: {
    diskSizeGB: 600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_DC16ds_v3: {
    diskSizeGB: 1200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_DC1ds_v3: {
    diskSizeGB: 75
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_DC1s_v2: {
    diskSizeGB: 50
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_DC24ds_v3: {
    diskSizeGB: 1800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_DC2ads_v5: {
    diskSizeGB: 75
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_DC2ds_v3: {
    diskSizeGB: 150
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_DC2s_v2: {
    diskSizeGB: 100
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_DC32ads_cc_v5: {
    diskSizeGB: 1200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_DC32ads_v5: {
    diskSizeGB: 1200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_DC32ds_v3: {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_DC48ads_cc_v5: {
    diskSizeGB: 1800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_DC48ads_v5: {
    diskSizeGB: 1800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_DC48ds_v3: {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_DC4ads_cc_v5: {
    diskSizeGB: 150
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_DC4ads_v5: {
    diskSizeGB: 150
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_DC4ds_v3: {
    diskSizeGB: 300
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_DC4s_v2: {
    diskSizeGB: 200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_DC64ads_cc_v5: {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_DC64ads_v5: {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_DC8_v2: {
    diskSizeGB: 400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_DC8ads_cc_v5: {
    diskSizeGB: 300
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_DC8ads_v5: {
    diskSizeGB: 300
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_DC8ds_v3: {
    diskSizeGB: 600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_DC96ads_cc_v5: {
    diskSizeGB: 3600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_DC96ads_v5: {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_DS1: {
    diskSizeGB: 43
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_DS1_v2: {
    diskSizeGB: 43
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_DS11: {
    diskSizeGB: 72
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_DS11_v2: {
    diskSizeGB: 72
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_DS11-1_v2': {
    diskSizeGB: 72
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_DS12: {
    diskSizeGB: 144
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_DS12_v2: {
    diskSizeGB: 144
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_DS12-1_v2': {
    diskSizeGB: 144
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_DS12-2_v2': {
    diskSizeGB: 144
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_DS13: {
    diskSizeGB: 288
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_DS13_v2: {
    diskSizeGB: 288
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_DS13-2_v2': {
    diskSizeGB: 288
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_DS13-4_v2': {
    diskSizeGB: 288
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_DS14: {
    diskSizeGB: 576
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_DS14_v2: {
    diskSizeGB: 576
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_DS14-4_v2': {
    diskSizeGB: 576
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_DS14-8_v2': {
    diskSizeGB: 576
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_DS15_v2: {
    diskSizeGB: 720
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_DS2: {
    diskSizeGB: 86
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_DS2_v2: {
    diskSizeGB: 86
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_DS3: {
    diskSizeGB: 172
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_DS3_v2: {
    diskSizeGB: 172
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_DS4: {
    diskSizeGB: 344
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_DS4_v2: {
    diskSizeGB: 344
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_DS5_v2: {
    diskSizeGB: 688
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E104id_v5: {
    diskSizeGB: 3800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E104ids_v5: {
    diskSizeGB: 3800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E112iads_v5: {
    diskSizeGB: 3800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E112ibds_v5: {
    diskSizeGB: 3800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E16_v3: {
    diskSizeGB: 400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E16_v4: {
    diskSizeGB: 400
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_E16-4ads_v5': {
    diskSizeGB: 600
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_E16-4as_v4': {
    diskSizeGB: 400
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_E16-4ds_v4': {
    diskSizeGB: 600
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_E16-4ds_v5': {
    diskSizeGB: 600
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_E16-4s_v3': {
    diskSizeGB: 400
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_E16-4s_v4': {
    diskSizeGB: 400
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_E16-8ads_v5': {
    diskSizeGB: 600
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_E16-8as_v4': {
    diskSizeGB: 400
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_E16-8ds_v4': {
    diskSizeGB: 600
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_E16-8ds_v5': {
    diskSizeGB: 600
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_E16-8s_v3': {
    diskSizeGB: 400
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_E16-8s_v4': {
    diskSizeGB: 400
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E16a_v4: {
    diskSizeGB: 400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E16ads_v5: {
    diskSizeGB: 600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E16as_v4: {
    diskSizeGB: 400
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E16bds_v5: {
    diskSizeGB: 600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E16d_v4: {
    diskSizeGB: 600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E16d_v5: {
    diskSizeGB: 600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E16ds_v4: {
    diskSizeGB: 600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E16ds_v5: {
    diskSizeGB: 600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E16ps_v5: {
    diskSizeGB: 400
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E16s_v3: {
    diskSizeGB: 400
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E16s_v4: {
    diskSizeGB: 400
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E2_v3: {
    diskSizeGB: 50
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E2_v4: {
    diskSizeGB: 50
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E20_v3: {
    diskSizeGB: 500
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E20_v4: {
    diskSizeGB: 400
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E20a_v4: {
    diskSizeGB: 500
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E20ads_v5: {
    diskSizeGB: 750
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E20as_v4: {
    diskSizeGB: 400
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E20d_v4: {
    diskSizeGB: 750
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E20d_v5: {
    diskSizeGB: 750
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E20ds_v4: {
    diskSizeGB: 750
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E20ds_v5: {
    diskSizeGB: 750
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E20ps_v5: {
    diskSizeGB: 500
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E20s_v3: {
    diskSizeGB: 400
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E20s_v4: {
    diskSizeGB: 400
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E2a_v4: {
    diskSizeGB: 50
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E2ads_v5: {
    diskSizeGB: 75
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E2as_v4: {
    diskSizeGB: 50
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E2bds_v5: {
    diskSizeGB: 75
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E2d_v4: {
    diskSizeGB: 75
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E2d_v5: {
    diskSizeGB: 75
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E2ds_v4: {
    diskSizeGB: 75
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E2ds_v5: {
    diskSizeGB: 75
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E2ps_v5: {
    diskSizeGB: 50
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E2s_v3: {
    diskSizeGB: 50
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E2s_v4: {
    diskSizeGB: 50
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E32_v3: {
    diskSizeGB: 800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E32_v4: {
    diskSizeGB: 800
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_E32-16ads_v5': {
    diskSizeGB: 1200
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_E32-16as_v4': {
    diskSizeGB: 799
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_E32-16ds_v4': {
    diskSizeGB: 1200
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_E32-16ds_v5': {
    diskSizeGB: 1200
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_E32-16s_v3': {
    diskSizeGB: 800
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_E32-16s_v4': {
    diskSizeGB: 800
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_E32-8ads_v5': {
    diskSizeGB: 1200
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_E32-8as_v4': {
    diskSizeGB: 799
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_E32-8ds_v4': {
    diskSizeGB: 1200
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_E32-8ds_v5': {
    diskSizeGB: 1200
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_E32-8s_v3': {
    diskSizeGB: 800
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_E32-8s_v4': {
    diskSizeGB: 800
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E32a_v4: {
    diskSizeGB: 800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E32ads_v5: {
    diskSizeGB: 1200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E32as_v4: {
    diskSizeGB: 800
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E32bds_v5: {
    diskSizeGB: 1200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E32d_v4: {
    diskSizeGB: 1200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E32d_v5: {
    diskSizeGB: 1200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E32ds_v4: {
    diskSizeGB: 1200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E32ds_v5: {
    diskSizeGB: 1200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E32ps_v5: {
    diskSizeGB: 800
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E32s_v3: {
    diskSizeGB: 800
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E32s_v4: {
    diskSizeGB: 800
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E4_v3: {
    diskSizeGB: 100
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E4_v4: {
    diskSizeGB: 100
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_E4-2ads_v5': {
    diskSizeGB: 150
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_E4-2as_v4': {
    diskSizeGB: 99
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_E4-2ds_v4': {
    diskSizeGB: 150
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_E4-2ds_v5': {
    diskSizeGB: 150
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_E4-2s_v3': {
    diskSizeGB: 100
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_E4-2s_v4': {
    diskSizeGB: 100
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E48_v3: {
    diskSizeGB: 1200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E48_v4: {
    diskSizeGB: 1200
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E48a_v4: {
    diskSizeGB: 1200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E48ads_v5: {
    diskSizeGB: 1800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E48as_v4: {
    diskSizeGB: 1200
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E48bds_v5: {
    diskSizeGB: 1800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E48d_v4: {
    diskSizeGB: 1800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E48d_v5: {
    diskSizeGB: 1800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E48ds_v4: {
    diskSizeGB: 1800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E48ds_v5: {
    diskSizeGB: 1800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E48s_v3: {
    diskSizeGB: 1200
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E48s_v4: {
    diskSizeGB: 1200
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E4a_v4: {
    diskSizeGB: 100
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E4ads_v5: {
    diskSizeGB: 150
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E4as_v4: {
    diskSizeGB: 100
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E4bds_v5: {
    diskSizeGB: 150
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E4d_v4: {
    diskSizeGB: 150
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E4d_v5: {
    diskSizeGB: 150
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E4ds_v4: {
    diskSizeGB: 150
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E4ds_v5: {
    diskSizeGB: 150
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E4ps_v5: {
    diskSizeGB: 100
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E4s_v3: {
    diskSizeGB: 100
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E4s_v4: {
    diskSizeGB: 100
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E64_v3: {
    diskSizeGB: 1600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E64_v4: {
    diskSizeGB: 1600
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_E64-16ads_v5': {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_E64-16as_v4': {
    diskSizeGB: 1600
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_E64-16ds_v4': {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_E64-16ds_v5': {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_E64-16s_v3': {
    diskSizeGB: 1600
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_E64-16s_v4': {
    diskSizeGB: 1600
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_E64-32ads_v5': {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_E64-32as_v4': {
    diskSizeGB: 1600
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_E64-32ds_v4': {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_E64-32ds_v5': {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_E64-32s_v3': {
    diskSizeGB: 1600
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_E64-32s_v4': {
    diskSizeGB: 1600
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E64a_v4: {
    diskSizeGB: 1600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E64ads_v5: {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E64as_v4: {
    diskSizeGB: 1600
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E64bds_v5: {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E64d_v4: {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E64d_v5: {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E64ds_v4: {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E64ds_v5: {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E64i_v3: {
    diskSizeGB: 1600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E64is_v3: {
    diskSizeGB: 1600
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E64s_v3: {
    diskSizeGB: 1600
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E64s_v4: {
    diskSizeGB: 1600
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E8_v3: {
    diskSizeGB: 200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E8_v4: {
    diskSizeGB: 200
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_E8-2ads_v5': {
    diskSizeGB: 300
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_E8-2as_v4': {
    diskSizeGB: 199
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_E8-2ds_v4': {
    diskSizeGB: 300
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_E8-2ds_v5': {
    diskSizeGB: 300
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_E8-2s_v3': {
    diskSizeGB: 200
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_E8-2s_v4': {
    diskSizeGB: 200
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_E8-4ads_v5': {
    diskSizeGB: 300
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_E8-4as_v4': {
    diskSizeGB: 199
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_E8-4ds_v4': {
    diskSizeGB: 300
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_E8-4ds_v5': {
    diskSizeGB: 300
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_E8-4s_v3': {
    diskSizeGB: 200
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_E8-4s_v4': {
    diskSizeGB: 200
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E80ids_v4: {
    diskSizeGB: 4260
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E80is_v4: {
    diskSizeGB: 1600
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E8a_v4: {
    diskSizeGB: 200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E8ads_v5: {
    diskSizeGB: 300
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E8as_v4: {
    diskSizeGB: 200
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E8bds_v5: {
    diskSizeGB: 300
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E8d_v4: {
    diskSizeGB: 300
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E8d_v5: {
    diskSizeGB: 300
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E8ds_v4: {
    diskSizeGB: 300
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E8ds_v5: {
    diskSizeGB: 300
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E8ps_v5: {
    diskSizeGB: 200
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E8s_v3: {
    diskSizeGB: 200
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E8s_v4: {
    diskSizeGB: 200
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_E96-24ads_v5': {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_E96-24as_v4': {
    diskSizeGB: 1600
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_E96-24ds_v5': {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_E96-48ads_v5': {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_E96-48as_v4': {
    diskSizeGB: 1600
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_E96-48ds_v5': {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E96a_v4: {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E96ads_v5: {
    diskSizeGB: 3600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E96as_v4: {
    diskSizeGB: 1600
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_E96bds_v5: {
    diskSizeGB: 3600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E96d_v5: {
    diskSizeGB: 3600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E96ds_v5: {
    diskSizeGB: 3600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_E96ias_v4: {
    diskSizeGB: 1344
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_EC16ads_cc_v5: {
    diskSizeGB: 600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_EC16ads_v5: {
    diskSizeGB: 600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_EC20ads_cc_v5: {
    diskSizeGB: 750
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_EC20ads_v5: {
    diskSizeGB: 750
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_EC2ads_v5: {
    diskSizeGB: 75
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_EC32ads_cc_v5: {
    diskSizeGB: 1200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_EC32ads_v5: {
    diskSizeGB: 1200
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_EC48ads_cc_v5: {
    diskSizeGB: 1800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_EC48ads_v5: {
    diskSizeGB: 1800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_EC4ads_cc_v5: {
    diskSizeGB: 150
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_EC4ads_v5: {
    diskSizeGB: 150
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_EC64ads_cc_v5: {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_EC64ads_v5: {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_EC8ads_cc_v5: {
    diskSizeGB: 300
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_EC8ads_v5: {
    diskSizeGB: 300
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_EC96ads_cc_v5: {
    diskSizeGB: 3600
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_EC96ads_v5: {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_EC96iads_v5: {
    diskSizeGB: 2400
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_F16: {
    diskSizeGB: 256
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_F16s: {
    diskSizeGB: 192
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_F16s_v2: {
    diskSizeGB: 256
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_F2: {
    diskSizeGB: 32
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_F2s_v2: {
    diskSizeGB: 32
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_F32s_v2: {
    diskSizeGB: 512
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_F4: {
    diskSizeGB: 64
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_F48s_v2: {
    diskSizeGB: 768
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_F4s: {
    diskSizeGB: 48
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_F4s_v2: {
    diskSizeGB: 64
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_F64s_v2: {
    diskSizeGB: 1024
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_F72s_v2: {
    diskSizeGB: 1520
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_F8: {
    diskSizeGB: 128
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_F8s: {
    diskSizeGB: 96
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_F8s_v2: {
    diskSizeGB: 128
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_FX12mds: {
    diskSizeGB: 540
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_FX24mds: {
    diskSizeGB: 1079
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_FX36mds: {
    diskSizeGB: 1619
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_FX48mds: {
    diskSizeGB: 2159
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_FX4mds: {
    diskSizeGB: 180
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_G1: {
    diskSizeGB: 384
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_G2: {
    diskSizeGB: 768
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_G3: {
    diskSizeGB: 1536
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_G4: {
    diskSizeGB: 3072
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_G5: {
    diskSizeGB: 6144
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_GS1: {
    diskSizeGB: 264
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_GS2: {
    diskSizeGB: 528
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_GS3: {
    diskSizeGB: 1056
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_GS4: {
    diskSizeGB: 2112
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_GS4-4': {
    diskSizeGB: 2112
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_GS4-8': {
    diskSizeGB: 2112
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_GS5: {
    diskSizeGB: 4224
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_GS5-16': {
    diskSizeGB: 4224
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_GS5-8': {
    diskSizeGB: 4224
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_HB120-16rs_v2': {
    diskSizeGB: 480
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_HB120-16rs_v3': {
    diskSizeGB: 480
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_HB120-32rs_v2': {
    diskSizeGB: 480
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_HB120-32rs_v3': {
    diskSizeGB: 480
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_HB120-64rs_v2': {
    diskSizeGB: 480
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_HB120-64rs_v3': {
    diskSizeGB: 480
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_HB120-96rs_v2': {
    diskSizeGB: 480
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_HB120-96rs_v3': {
    diskSizeGB: 480
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_HB120rs_v2: {
    diskSizeGB: 480
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_HB120rs_v3: {
    diskSizeGB: 480
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_HB176-144rs_v4': {
    diskSizeGB: 480
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_HB176-24rs_v4': {
    diskSizeGB: 480
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_HB176-48rs_v4': {
    diskSizeGB: 480
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_HB176-96rs_v4': {
    diskSizeGB: 480
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_HB176rs_v4: {
    diskSizeGB: 480
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_HB60-15rs': {
    diskSizeGB: 700
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_HB60-30rs': {
    diskSizeGB: 700
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_HB60-45rs': {
    diskSizeGB: 700
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_HB60rs: {
    diskSizeGB: 700
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_HC44-16rs': {
    diskSizeGB: 700
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_HC44-32rs': {
    diskSizeGB: 700
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_HC44rs: {
    diskSizeGB: 700
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_HX176-144rs': {
    diskSizeGB: 480
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_HX176-24rs': {
    diskSizeGB: 480
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_HX176-48rs': {
    diskSizeGB: 480
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_HX176-96rs': {
    diskSizeGB: 480
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_HX176rs: {
    diskSizeGB: 480
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_L16as_v3: {
    diskSizeGB: 160
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_L16s: {
    diskSizeGB: 2807
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_L16s_v2: {
    diskSizeGB: 160
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_L16s_v3: {
    diskSizeGB: 160
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_L32as_v3: {
    diskSizeGB: 320
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_L32s: {
    diskSizeGB: 5630
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_L32s_v2: {
    diskSizeGB: 320
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_L32s_v3: {
    diskSizeGB: 320
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_L48as_v3: {
    diskSizeGB: 480
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_L48s_v2: {
    diskSizeGB: 480
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_L48s_v3: {
    diskSizeGB: 480
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_L4s: {
    diskSizeGB: 678
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_L64as_v3: {
    diskSizeGB: 640
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_L64s_v2: {
    diskSizeGB: 640
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_L64s_v3: {
    diskSizeGB: 640
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_L80as_v3: {
    diskSizeGB: 800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_L80s_v2: {
    diskSizeGB: 800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_L80s_v3: {
    diskSizeGB: 800
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_L8as_v3: {
    diskSizeGB: 80
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_L8s: {
    diskSizeGB: 1388
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_L8s_v2: {
    diskSizeGB: 80
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_L8s_v3: {
    diskSizeGB: 80
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_M128: {
    diskSizeGB: 16000
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_M128-32ms': {
    diskSizeGB: 12696
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_M128-64ms': {
    diskSizeGB: 12696
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_M128dms_v2: {
    diskSizeGB: 12665
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_M128ds_v2: {
    diskSizeGB: 12665
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_M128m: {
    diskSizeGB: 16000
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_M128ms: {
    diskSizeGB: 12696
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_M128ms_v2: {
    diskSizeGB: 12665
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_M128s: {
    diskSizeGB: 12696
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_M128s_v2: {
    diskSizeGB: 12665
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_M16-4ms': {
    diskSizeGB: 1587
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_M16-8ms': {
    diskSizeGB: 1587
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_M16ms: {
    diskSizeGB: 1587
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_M192idms_v2: {
    diskSizeGB: 12665
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_M192ids_v2: {
    diskSizeGB: 12665
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_M192ims_v2: {
    diskSizeGB: 12665
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_M192is_v2: {
    diskSizeGB: 12665
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_M208ms_v2: {
    diskSizeGB: 4096
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_M208s_v2: {
    diskSizeGB: 4096
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_M32-16ms': {
    diskSizeGB: 3174
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_M32-8ms': {
    diskSizeGB: 3174
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_M32dms_v2: {
    diskSizeGB: 3175
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_M32ls: {
    diskSizeGB: 3174
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_M32ms: {
    diskSizeGB: 3174
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_M32ms_v2: {
    diskSizeGB: 3175
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_M32ts: {
    diskSizeGB: 3174
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_M416-208ms_v2': {
    diskSizeGB: 14079
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_M416-208s_v2': {
    diskSizeGB: 14079
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_M416ms_v2: {
    diskSizeGB: 8192
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_M416s_8_v2: {
    diskSizeGB: 14080
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_M416s_v2: {
    diskSizeGB: 8192
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_M64: {
    diskSizeGB: 8000
    diffDiskPlacement: 'ResourceDisk'
  }
  'Standard_M64-16ms': {
    diskSizeGB: 6348
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_M64-32ms': {
    diskSizeGB: 6348
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_M64dms_v2: {
    diskSizeGB: 6351
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_M64ds_v2: {
    diskSizeGB: 6351
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_M64ls: {
    diskSizeGB: 6348
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_M64m: {
    diskSizeGB: 8000
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_M64ms: {
    diskSizeGB: 6348
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_M64ms_v2: {
    diskSizeGB: 6351
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_M64s: {
    diskSizeGB: 6348
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_M64s_v2: {
    diskSizeGB: 6351
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_M8-2ms': {
    diskSizeGB: 793
    diffDiskPlacement: 'CacheDisk'
  }
  'Standard_M8-4ms': {
    diskSizeGB: 793
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_M8ms: {
    diskSizeGB: 793
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_NC12: {
    diskSizeGB: 680
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NC12s_v2: {
    diskSizeGB: 1474
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NC12s_v3: {
    diskSizeGB: 672
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NC16ads_A10_v4: {
    diskSizeGB: 1440
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NC16as_T4_v3: {
    diskSizeGB: 352
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NC24: {
    diskSizeGB: 1440
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NC24ads_A100_v4: {
    diskSizeGB: 256
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_NC24r: {
    diskSizeGB: 1440
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NC24rs_v2: {
    diskSizeGB: 2948
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NC24rs_v3: {
    diskSizeGB: 2948
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NC24s_v2: {
    diskSizeGB: 2948
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NC24s_v3: {
    diskSizeGB: 1344
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NC32ads_A10_v4: {
    diskSizeGB: 2880
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NC48ads_A100_v4: {
    diskSizeGB: 512
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_NC4as_T4_v3: {
    diskSizeGB: 176
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NC6: {
    diskSizeGB: 340
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NC64as_T4_v3: {
    diskSizeGB: 2816
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NC6s_v2: {
    diskSizeGB: 736
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NC6s_v3: {
    diskSizeGB: 336
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NC8ads_A10_v4: {
    diskSizeGB: 720
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NC8as_T4_v3: {
    diskSizeGB: 352
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NC96ads_A100_v4: {
    diskSizeGB: 1024
    diffDiskPlacement: 'CacheDisk'
  }
  Standard_ND12s: {
    diskSizeGB: 672
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_ND24rs: {
    diskSizeGB: 2948
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_ND24s: {
    diskSizeGB: 1344
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_ND40rs_v2: {
    diskSizeGB: 2900
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_ND6s: {
    diskSizeGB: 336
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NG16ads_V620_v1: {
    diskSizeGB: 512
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NG32adms_V620_v1: {
    diskSizeGB: 1024
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NG32ads_V620_v1: {
    diskSizeGB: 1024
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NG8ads_V620_v1: {
    diskSizeGB: 256
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NP10s: {
    diskSizeGB: 736
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NP20s: {
    diskSizeGB: 1474
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NP40s: {
    diskSizeGB: 2948
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NV12: {
    diskSizeGB: 680
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NV12ads_A10_v5: {
    diskSizeGB: 360
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NV12s_v3: {
    diskSizeGB: 336
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NV16as_v4: {
    diskSizeGB: 352
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NV18ads_A10_v5: {
    diskSizeGB: 720
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NV24: {
    diskSizeGB: 1440
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NV24s_v3: {
    diskSizeGB: 672
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NV32as_v4: {
    diskSizeGB: 704
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NV36adms_A10_v5: {
    diskSizeGB: 2880
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NV36ads_A10_v5: {
    diskSizeGB: 1440
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NV48s_v3: {
    diskSizeGB: 2948
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NV4as_v4: {
    diskSizeGB: 88
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NV6: {
    diskSizeGB: 380
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NV6ads_A10_v5: {
    diskSizeGB: 180
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NV72ads_A10_v5: {
    diskSizeGB: 2880
    diffDiskPlacement: 'ResourceDisk'
  }
  Standard_NV8as_v4: {
    diskSizeGB: 176
    diffDiskPlacement: 'ResourceDisk'
  }
}
