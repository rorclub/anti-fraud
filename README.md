# Software Engineer - risk test

## 1st Chalenge- Understand the Industry

### Explain the money flow and the information flow in the acquirer market and the role of the main players.

Money flow and information flow in the acquirer market for payment gateways involve several key players. Let's break down these concepts and the roles of the main players:

**Money Flow:**
1. **Merchant:** The primary player in payment gateway transactions is the merchant, which is a business or individual selling goods or services. When a customer makes a payment, the money flow starts with the merchant, as they receive the payment.
2. **Payment Gateway:** The payment gateway is a service provider that acts as an intermediary between the merchant and various financial institutions, such as banks and card networks (e.g., Visa, MasterCard). The payment gateway securely processes the customer's payment information and initiates the transfer of funds from the customer's bank account to the merchant's account.
3. **Customer:** The customer is the individual or entity making a purchase. They provide their payment information, such as credit card details or bank account information, to the payment gateway during the transaction. The money flows from the customer's account to the merchant's account through the payment gateway.
4. **Acquiring Bank:** The acquiring bank, also known as the merchant bank, is responsible for the merchant's account. It receives the funds from the payment gateway on behalf of the merchant. The acquiring bank plays a key role in underwriting and risk management for the merchant.
5. **Issuing Bank:** The issuing bank is the financial institution that issued the customer's credit or debit card. When a transaction occurs, the issuing bank may be involved in authorizing and validating the payment. If the customer has sufficient funds or credit, the issuing bank transfers the funds to the acquiring bank through the card network.

**Information Flow:**
1. **Merchant:** The merchant provides product or service information to the customer, including pricing, product details, and payment options. They also relay transaction data to the payment gateway.
2. **Customer:** Customers provide their payment information and initiate the transaction by choosing a payment method, entering details, and confirming the purchase. This information is securely transmitted to the payment gateway.
3. **Payment Gateway:** The payment gateway is responsible for securely transmitting payment information between the customer and the merchant. It also conducts fraud checks, encrypts sensitive data, and routes the transaction information to the acquiring bank.
4. **Acquiring Bank:** The acquiring bank receives transaction data from the payment gateway and verifies the legitimacy of the transaction. It communicates with the issuing bank through card networks to facilitate fund transfers.
5. **Issuing Bank:** The issuing bank validates the customer's payment method, checks for available funds or credit, and either approves or declines the transaction. It communicates with the acquiring bank through card networks to facilitate the transfer of funds.

**Role of Main Players:**
1. **Merchant:** The business or individual selling goods or services and receiving payments through the payment gateway.
2. **Payment Gateway:** The intermediary responsible for securely transmitting payment information, verifying transactions, and processing payments.
3. **Customer:** The individual or entity making a purchase and providing payment information.
4. **Acquiring Bank (Merchant Bank):** The bank that handles the merchant's account and receives funds from the payment gateway on behalf of the merchant.
5. **Issuing Bank:** The bank that issued the customer's credit or debit card and authorizes and facilitates fund transfers during the transaction.

Effective coordination and communication among these main players are essential to ensure secure, efficient, and reliable payment processing in the acquirer market for payment gateways. Information must flow securely to validate and process transactions, while the money must flow accurately and quickly to complete the payment.

### Explain the difference between acquirer, sub-acquirer and payment gateway and how the flow explained in question 1 changes for these players.

Acquirer, sub-acquirer, and payment gateway are all entities involved in processing electronic payments, but they serve distinct roles in the payment processing ecosystem. Here are the key differences between them:

**Acquirer:**
1. **Role:** The acquirer is a financial institution, typically a bank, that enters into agreements with merchants to accept electronic payments on their behalf.
2. **Responsibilities:** Acquirers are responsible for underwriting and onboarding merchants, providing them with the necessary infrastructure and services to accept card payments.
3. **Merchant Relationship:** Acquirers have a direct relationship with the merchant. They handle the merchant's payment processing, including authorizing transactions, settling funds, and managing chargebacks.
4. **Regulation:** Acquirers are heavily regulated financial institutions and are required to comply with industry and government regulations, such as PCI DSS (Payment Card Industry Data Security Standard).
5. **Risk Management:** Acquirers assess and manage the financial risk associated with the transactions processed by their merchants.

**Sub-Acquirer:**
1. **Role:** A sub-acquirer is an intermediary entity that works with acquirers to provide payment processing services.
2. **Responsibilities:** Sub-acquirers typically serve as a bridge between the merchant and the acquirer, providing additional services or facilitating transactions in specific markets or regions.
3. **Merchant Relationship:** Sub-acquirers often have relationships with both the acquirer and the merchant. They assist the acquirer in extending their services to a broader range of merchants.
4. **Agreements:** Sub-acquirers may have agreements with multiple acquirers, allowing them to offer a variety of payment processing solutions to their merchant clients.

**Payment Gateway:**
1. **Role:** A payment gateway is a technology service provider that securely transmits payment information between the merchant's website or point of sale and the financial institutions involved in the transaction.
2. **Responsibilities:** Payment gateways handle the technical aspects of the payment process, including encrypting payment data, routing transactions to the acquirer, and facilitating communication with the issuing bank.
3. **Merchant Relationship:** Payment gateways work on behalf of the merchant, and the merchant typically contracts with them to integrate their services into the payment processing workflow.
4. **Technology Focus:** Payment gateways specialize in the technology and infrastructure required for secure and efficient payment processing.
5. **Regulation:** While they must adhere to certain security standards (e.g., PCI DSS), payment gateways are not financial institutions and do not perform underwriting or risk assessment functions.

In summary, acquirers are financial institutions that directly engage with merchants to provide payment processing services and are subject to rigorous financial regulations. Sub-acquirers are intermediary entities that work with acquirers to extend their services or facilitate payments in specific contexts. Payment gateways, on the other hand, are technology service providers that focus on securely transmitting payment information between the merchant and the financial institutions involved in the transaction, without the financial regulation and risk management responsibilities of acquirers.

### Explain what chargebacks are, how they differ from cancellations and what is their connection with fraud in the acquiring world.

Chargebacks are a common occurrence in the world of payments and commerce. They are essentially a form of consumer protection that allows a cardholder to dispute a transaction and request a refund from the card issuer. Chargebacks differ from cancellations, and they are closely connected to fraud prevention in the acquiring world. Here's an explanation of each concept and their relationships:

**Chargebacks:**
1. **Definition:** A chargeback occurs when a cardholder (the customer) contacts their credit card issuer or bank to dispute a transaction on their credit or debit card statement. The issuer initiates a chargeback process, which results in the funds being returned to the cardholder's account, effectively reversing the transaction.
2. **Reasons for Chargebacks:** Chargebacks can happen for various reasons, including unauthorized transactions, billing errors, product or service not delivered as described, or fraud. Cardholders may also use chargebacks if they believe their card was used without their consent or if they experience issues like double billing.
3. **Process:** When a chargeback is initiated, the card issuer investigates the dispute and may ask the merchant (seller) for evidence or documentation to support their case. If the issuer finds the chargeback request valid, the funds are returned to the cardholder, and the merchant loses the sale amount and may incur additional chargeback fees.

**Cancellations:**
1. **Definition:** Cancellations refer to the act of either a customer or a merchant terminating a transaction before it is completed or fulfilled. Cancellations often occur before the payment is fully processed, and they are typically initiated voluntarily by either party.
2. **Reasons for Cancellations:** Cancellations can happen for various reasons, such as changes in the customer's mind, out-of-stock items, or shipping delays. Merchants may also cancel an order if they cannot fulfill it or if they suspect fraudulent activity.
3. **Impact:** In the case of cancellations, the transaction is typically voided, and neither the customer nor the merchant receives or loses any funds related to the transaction. Cancellations are generally less costly and complex than chargebacks.

**Connection with Fraud:**
Chargebacks are closely connected with fraud prevention in the acquiring world for several reasons:

1. **Fraudulent Transactions:** Chargebacks are often initiated due to suspected fraud, such as unauthorized card usage. When cardholders detect fraudulent transactions, they request chargebacks to recover their funds.
2. **Merchant Responsibility:** Merchants are responsible for preventing and mitigating fraud. If they fail to do so and fraudulent transactions occur, they may face chargebacks, financial losses, and potential damage to their reputation.
3. **Chargeback Fees:** Chargebacks result in fees imposed on merchants. To protect themselves from these fees and losses, merchants implement fraud prevention measures, including verification processes and fraud detection tools.
4. **Data and Evidence:** When chargebacks occur, merchants may be required to provide evidence of legitimate transactions. This evidence can help identify fraudulent activity and protect both customers and merchants from fraud.

In summary, chargebacks are a mechanism for consumers to dispute transactions and request refunds for various reasons, including fraud. They differ from cancellations, which are voluntary terminations of transactions. Chargebacks are a crucial aspect of fraud prevention and resolution in the acquiring world, as they help protect consumers and merchants from the financial impact of fraudulent activity.

## 2nd Chalenge- Get your hands dirty
Based on the CSV data, we can try to infer frauds based on:

1. `has_cbk`  historic field
2. `device_id` blank field
3. `transaction_amount` historic average for the user or for the merchant
4. `transaction_date` amount repetition in a certain period of time
5. `user_id` invalid (When not registered on database. A database constraint can prevent this fraud)
6. `merchant_id` invalid (When not registered on database. A database constraint can prevent this fraud)

Another field that could help to detect a fraud is for example the `user_ip`.

## Anti-Fraud App

The app was built respecting these 3 requirements:

- Reject transaction if user is trying too many transactions in a row;
- Reject transactions above a certain amount in a given period;
- Reject transaction if a user had a chargeback before (note that this information does not comes on the payload. The chargeback data is received  **days after the transaction was approved**)

> Since we are just analyzing anti-fraud aspects, we don't have a real implementation for the charge and for the third requirement in terms of searching a chargeback value attribute on a database. This aspect was commented on code: app/services/fraud_detector/interactors/user_with_charge_back.rb:24

To run the app, perform the follow commands:
```sh
$> rails db:create
$> rails db:migrate
$> rails s -p 3000
```
Available endpoint: `POST /api/v1/charge`

Request example using cURL:
```sh
$> curl -X POST http://localhost:3000/api/v1/charge -H  'Content-Type: application/json'  -d  '{"transaction_id": 2345678, "merchant_id": 29744, "user_id": 97051, "card_number": "434505******9116", "transaction_date": "2019-11-31T23:16:32.812632", "transaction_amount": 373, "device_id": 285475}'
```

In this app, you can find test specs for services and requests/controllers that can be found in `/spec/services` and `/spec/requests` folders.

To run all the tests, perform the following command:

```sh
$> rspec
```
