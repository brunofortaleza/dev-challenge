json.extract! loan, :id, :amount, :number_installments, :interest_rate, :requester_id, :created_at, :updated_at
json.url loan_url(loan, format: :json)
