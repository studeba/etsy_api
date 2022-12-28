# EtsyApi::PaymentAccountLedgerEntry

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **entry_id** | **Integer** | The ledger entry&#39;s numeric ID. | [optional] |
| **ledger_id** | **Integer** | The ledger&#39;s numeric ID. | [optional] |
| **sequence_number** | **Integer** | The sequence allows ledger entries to be sorted chronologically. The higher the sequence, the more recent the entry. | [optional] |
| **amount** | **Integer** | The amount of money credited to the ledger. | [optional] |
| **currency** | **String** | The currency of the entry on the ledger. | [optional] |
| **description** | **String** | Details what kind of ledger entry this is: a payment, refund, reversal of a failed refund, disbursement, returned disbursement, recoupment, miscellaneous credit, miscellaneous debit, or bill payment. | [optional] |
| **balance** | **Integer** | The amount of money in the shop&#39;s ledger the moment after this entry was applied. | [optional] |
| **create_date** | **Integer** | The date and time the ledger entry was created in Epoch seconds. | [optional] |
| **created_timestamp** | **Integer** | The date and time the ledger entry was created in Epoch seconds. | [optional] |
| **ledger_type** | **String** | The original reference type for the ledger entry. | [optional] |
| **reference_type** | **String** | The object type the ledger entry refers to. | [optional] |
| **reference_id** | **String** | The object id the ledger entry refers to. | [optional] |
| **payment_adjustments** | [**Array&lt;PaymentAccountLedgerEntryPaymentAdjustmentsInner&gt;**](PaymentAccountLedgerEntryPaymentAdjustmentsInner.md) | List of refund objects on an Etsy Payments transaction. All monetary amounts are in USD pennies unless otherwise specified. | [optional] |

## Example

```ruby
require 'etsy_api'

instance = EtsyApi::PaymentAccountLedgerEntry.new(
  entry_id: null,
  ledger_id: null,
  sequence_number: null,
  amount: null,
  currency: null,
  description: null,
  balance: null,
  create_date: null,
  created_timestamp: null,
  ledger_type: null,
  reference_type: null,
  reference_id: null,
  payment_adjustments: null
)
```

