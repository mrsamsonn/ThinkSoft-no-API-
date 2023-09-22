
JSON example

### Example

```
{"inventory":{"manufacturer":"Apple","serial_number":"C02DV1K5ML87","model":"MacBookPro16,2","model_order":"MWP72LL/A BTO","ram":"16 GB","cpu":"INTEL(R) CORE(TM) I7-1068NG7 CPU @ 2.30GHZ","hard_drive":"Apple APPLE SSD AP0512 [C02050200NWPCVJ10] - 500 GB - SCSI ( - GPT)","sku":"933446B-S","year":2020,"device_type":"Laptop","gpu":"2880 x 1800 (32 bits - 96 DPI - 13.3\") | (1) - ?","hard_drive_size_in_gb":512}}
```
Attributes we need:
* manufacturer: Apple
* serial_number
* model
* model_order
* ram 
* cpu
* hard_drive
* year
* device_type(not sure): Laptop
* gpu
* hard_drive_size_in_gb

```
{"inventory":{"color":"Silver","condition":"D"}}
// We only need to put the attributes we want to send. So this also works.
```

### Full data format after graded

```
{"inventory":{"color":"Silver","condition":"B","manufacturer":"Apple","serial_number":"C02DV1K5ML87","warehouse_location":"CLNG-S01-B03","warehouse_id":2,"model":"MacBookPro16,2","model_order":"MWP72LL/A BTO","ram":"16 GB","cpu":"INTEL(R) CORE(TM) I7-1068NG7 CPU @ 2.30GHZ","hard_drive":"Apple APPLE SSD AP0512 [C02050200NWPCVJ10] - 500 GB - SCSI ( - GPT)","sku":"933446B-S","description":null,"comments":"93% bat health","security_level":"Not locked","battery_count":16,"trackpad_is_working":true,"keyboard_is_working":true,"lcd_display_is_working":true,"battery_is_working":true,"tag_names":[],"year":2020,"device_type":"Laptop","asset_tag":null,"gpu":"2880 x 1800 (32 bits - 96 DPI - 13.3\") | (1) - ?","enrolled_status":"unenrolled","hard_drive_size_in_gb":512}}
```