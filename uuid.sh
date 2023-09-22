echo Enter Inventory_ID:
read inventory_id
base_url='***'api-placeholder'***'

uuid=$(curl $base_url+$inventory_id -H "Origin: ***'api-placeholder'***" -H "Authorization: Bearer ***'api-placeholder'***" | cut -d '"' -f6)
echo $uuid

# output example:c6fc4c64-d848-4050-a7d3-0483d32e257c