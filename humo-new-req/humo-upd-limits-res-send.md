# /v2/get-limit-balance
```json
{
    "id": "7d06a8a0-09cf-4904-9f45-4fdd65ac30d4",
    "params": {
        "codeOwner": "CMS",
        "limitType": "LIM_CRD_CSH_1OPER",
        "limitKeyType": "CARD",
        "limitKeyValue": "9860170121736616"
    }
}
```
```bash
curl -X POST "http://192.168.35.138:7202/cardblock/v2/get-limit-balance" -H "Content-Type: application/json; charset=utf-8" -H "Accept: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzUxMiJ9.eyJpYXQiOjE2OTU5OTAwOTMsImNsaWVudF9pZCI6NjF9.Fm0MkVPWsv-XJWtk0yJ_iwDPNFhFEyjPnULu2D_3L9A7-lXlnwZWnHxZg-STHVED5efUi7ITDWhkGTqt8eG80Q" -d "{\"id\":\"7d06a8a0-09cf-4904-9f45-4fdd65ac30d4\",\"params\":{\"codeOwner\":\"CMS\",\"limitType\":\"LIM_CRD_PURCH_1DAY\",\"limitKeyType\":\"CARD\",\"limitKeyValue\":\"9860170121736616\"}}"
```
# /v2/get-ref-data
```bash
curl -X POST "http://192.168.35.138:7202/cardblock/v2/get-ref-data" -H "Content-Type: application/json; charset=utf-8" -H "Accept: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzUxMiJ9.eyJpYXQiOjE2OTU5OTAwOTMsImNsaWVudF9pZCI6NjF9.Fm0MkVPWsv-XJWtk0yJ_iwDPNFhFEyjPnULu2D_3L9A7-lXlnwZWnHxZg-STHVED5efUi7ITDWhkGTqt8eG80Q"
```
# /v2/set-any-limit
```json
{
    "params": {
        "cardNumber": "9860170121736616",
        "amount": "1000",
        "limitType": "LIM_CRD_PURCH_1DAY",
        "limitName": "LIM_CRD_PURCH_1DAY TEST",
        "dateFrom": "2025-03-19T16:25:33",
        "dateTo": "2025-03-19T16:38:43"
    }
}
```
```bash
curl -X POST "http://192.168.35.138:7202/cardblock/v2/set-any-limit" -H "Content-Type: application/json; charset=utf-8" -H "Accept: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzUxMiJ9.eyJpYXQiOjE2OTU5OTAwOTMsImNsaWVudF9pZCI6NjF9.Fm0MkVPWsv-XJWtk0yJ_iwDPNFhFEyjPnULu2D_3L9A7-lXlnwZWnHxZg-STHVED5efUi7ITDWhkGTqt8eG80Q" -d "{\"params\":{\"cardNumber\":\"9860170121736616\",\"amount\":\"1000\",\"limitType\":\"LIM_CRD_PURCH_1DAY\",\"limitName\":\"LIM_CRD_PURCH_1DAY TEST\",\"dateFrom\":\"2025-03-19T16:25:33\",\"dateTo\":\"2025-05-19T16:38:43\"}}"
```
# /v2/edit-any-limit
```json
{
    "params": {
        "cardNumber": "9860170121736616",
        "amount": "1000",
        "limitType": "LIM_CRD_PURCH_1DAY",
        "limitName": "LIM_CRD_PURCH_1DAY TEST",
        "dateFrom": "2025-03-19T16:25:33",
        "dateTo": "2025-03-19T16:38:43"
    }
}
```
```bash
curl -X POST "http://192.168.35.138:7202/cardblock/v2/edit-any-limit" -H "Content-Type: application/json; charset=utf-8" -H "Accept: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzUxMiJ9.eyJpYXQiOjE2OTU5OTAwOTMsImNsaWVudF9pZCI6NjF9.Fm0MkVPWsv-XJWtk0yJ_iwDPNFhFEyjPnULu2D_3L9A7-lXlnwZWnHxZg-STHVED5efUi7ITDWhkGTqt8eG80Q" -d "{\"params\":{\"cardNumber\":\"9860170121736616\",\"amount\":\"1000\",\"limitType\":\"LIM_CRD_PURCH_1DAY\",\"limitName\":\"LIM_CRD_PURCH_1DAY TEST\",\"dateFrom\":\"2025-03-19T16:25:33\",\"dateTo\":\"2025-05-19T16:38:43\"}}"
```
# /v2/get-subject-value
```json
{
    "id": "7d06a8a0-09cf-4904-9f45-4fdd65ac30d4",
    "params": {
        "cardNumber": "9860170121736616"
    }
}
```
```bash
curl -X POST "http://192.168.35.138:7202/cardblock/v2/get-subject-value" -H "Content-Type: application/json; charset=utf-8" -H "Accept: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzUxMiJ9.eyJpYXQiOjE2OTU5OTAwOTMsImNsaWVudF9pZCI6NjF9.Fm0MkVPWsv-XJWtk0yJ_iwDPNFhFEyjPnULu2D_3L9A7-lXlnwZWnHxZg-STHVED5efUi7ITDWhkGTqt8eG80Q" -d "{\"id\":\"7d06a8a0-09cf-4904-9f45-4fdd65ac30d4\",\"params\":{\"cardNumber\":\"9860170121736616\"}}"
```
# /v2/delete-limit
```json
{
    "id": "7d06a8a0-09cf-4904-9f45-4fdd65ac30d4",
    "params": {
        "cardNumber": "9860170121736616",
        "limitName": "LIM_CRD_PURCH_1DAY"
    }
}
```
```bash
curl -X POST "http://192.168.35.138:7202/cardblock/v2/delete-limit" -H "Content-Type: application/json; charset=utf-8" -H "Accept: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzUxMiJ9.eyJpYXQiOjE2OTU5OTAwOTMsImNsaWVudF9pZCI6NjF9.Fm0MkVPWsv-XJWtk0yJ_iwDPNFhFEyjPnULu2D_3L9A7-lXlnwZWnHxZg-STHVED5efUi7ITDWhkGTqt8eG80Q" -d "{\"id\":\"7d06a8a0-09cf-4904-9f45-4fdd65ac30d4\",\"params\":{\"cardNumber\":\"9860170121736616\",\"limitName\":\"LIM_CRD_PURCH_1DAY\"}}"
```
# /v2/delete-all-limit
```json
{
    "id": "7d06a8a0-09cf-4904-9f45-4fdd65ac30d4",
    "params": {
        "cardNumber": "9860170121736616"
    }
}
```
```bash
curl -X POST "http://192.168.35.138:7202/cardblock/v2/delete-all-limit" -H "Content-Type: application/json; charset=utf-8" -H "Accept: application/json" -H "Authorization: Bearer eyJhbGciOiJIUzUxMiJ9.eyJpYXQiOjE2OTU5OTAwOTMsImNsaWVudF9pZCI6NjF9.Fm0MkVPWsv-XJWtk0yJ_iwDPNFhFEyjPnULu2D_3L9A7-lXlnwZWnHxZg-STHVED5efUi7ITDWhkGTqt8eG80Q" -d "{\"id\":\"7d06a8a0-09cf-4904-9f45-4fdd65ac30d4\",\"params\":{\"cardNumber\":\"9860170121736616\"}}"
```
