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
    rails generate scaffold TransactionRecord user:belongs_to date:date amount:decimal{12.2} description:string
    rails generate scaffold PiePieceTransactionRecord pie:belongs_to pie_piece:belongs_to transaction_record:belongs_to
    rails g migration MakePieTitlesUniquePerUser

# API

Need to be able to:
