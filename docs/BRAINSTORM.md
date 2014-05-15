# Goal

Track the pie pieces that you spend your money on and make sure you are within budget

# Features

  - Monetary transactions
  - Pies [some default (and required?) pies]
     - Categories
     - Merchants
     - Account

# Software Stack

  - Rails
  - SQLite
  - API First
  - Bootstrap 3
  - AngularJS

# Thoughts



# Future?



# Database Structure

### transaction_records

 - id
 - user_id
 - date
 - created_at
 - updated_at

### transaction_splits

 - id
 - transaction_id
 - amount
 - description
 - created_at
 - updated_at

### pies

 - id
 - title
 - user_id
 - is_required
 - created_at

unique on (user_id, title)

### pie_pieces

 - id
 - pie_id
 - title
 - created_at

unique on (pie_id, title)

### pie_pieces_transactions

 - id
 - pie_id
 - pie_piece_id
 - transaction_id
 - created_at

unique on (pie_id, transaction_id)

### users

 - id
 - email
 - password
 - name
 - created_at
 - updated_at

unique on (email)

# Rails Scaffolding

    rails generate scaffold User email:string:uniq password:string name:string
    rails generate scaffold Pie user:belongs_to title:string is_required:boolean
    rails generate scaffold PiePiece pie:belongs_to title:string
    rails generate scaffold TransactionRecord user:belongs_to transaction_date:date
    rails generate scaffold TransactionSplit transaction_record:belongs_to amount:decimal{12.2} description:string
    rails generate scaffold PiePieceTransactionSplit pie:belongs_to pie_piece:belongs_to transaction_split:belongs_to
    rails g migration MakePieTitlesUniquePerUser

# API

Need to be able to:

 - Create new transaction splits (`POST /api/v1/transaction_splits`)
 - Update transaction splits (`PUT /api/v1/transaction_splits/:id`)
    - Do not allow transaction split to be reassociated with new transaction record
 - Delete transaction splits (`DELETE /api/v1/transaction_splits/:id`)
 - List transaction splits (`GET /api/v1/transaction_splits/`)
 - Create pies (`POST /api/v1/pies`)
 - Update pies (`PUT /api/v1/pies/:id`)
 - Delete pies (`DELETE /api/v1/pies/:id`)
 - Create pie pieces (`POST /api/v1/pie_pieces`)
 - Update pies pieces (`PUT /api/v1/pie_pieces/:id`)
 - Delete pies pieces (`DELETE /api/v1/pie_pieces/:id`)

